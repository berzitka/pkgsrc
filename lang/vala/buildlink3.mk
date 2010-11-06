# $NetBSD: buildlink3.mk,v 1.4 2010/11/06 15:02:56 gls Exp $

BUILDLINK_TREE+=	vala

.if !defined(VALA_BUILDLINK3_MK)
VALA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vala+=	vala>=0.10.1
BUILDLINK_PKGSRCDIR.vala?=	../../lang/vala

.include "../../devel/glib2/buildlink3.mk"
.endif	# VALA_BUILDLINK3_MK

BUILDLINK_TREE+=	-vala
