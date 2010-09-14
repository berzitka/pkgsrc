# $NetBSD: buildlink3.mk,v 1.22 2010/09/14 11:00:48 wiz Exp $

BUILDLINK_TREE+=	gtkmm

.if !defined(GTKMM_BUILDLINK3_MK)
GTKMM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gtkmm+=	gtkmm>=2.20.3
BUILDLINK_ABI_DEPENDS.gtkmm+=	gtkmm>=2.20.3nb3
BUILDLINK_PKGSRCDIR.gtkmm?=	../../x11/gtkmm

.include "../../devel/pangomm/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # GTKMM_BUILDLINK3_MK

BUILDLINK_TREE+=	-gtkmm
