# $NetBSD: buildlink3.mk,v 1.30 2010/07/13 12:24:34 drochner Exp $

BUILDLINK_TREE+=	evolution

.if !defined(EVOLUTION_BUILDLINK3_MK)
EVOLUTION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.evolution+=	evolution>=2.8.0
BUILDLINK_ABI_DEPENDS.evolution?=	evolution>=2.28.2nb5
BUILDLINK_PKGSRCDIR.evolution?=	../../mail/evolution

.include "../../devel/nspr/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../www/gtkhtml314/buildlink3.mk"
.include "../../x11/gnome-desktop/buildlink3.mk"
.endif # EVOLUTION_BUILDLINK3_MK

BUILDLINK_TREE+=	-evolution
