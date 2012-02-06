# $NetBSD: buildlink3.mk,v 1.6 2012/02/06 11:48:32 drochner Exp $

BUILDLINK_TREE+=	vala

.if !defined(VALA_BUILDLINK3_MK)
VALA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vala+=	vala>=0.10.1
BUILDLINK_ABI_DEPENDS.vala?=	vala>=0.12.0nb1
BUILDLINK_PKGSRCDIR.vala?=	../../lang/vala

VALAC=${LOCALBASE}/bin/valac-0.12
VAPIGEN=${LOCALBASE}/bin/vapigen-0.12
.if defined(GNU_CONFIGURE)
CONFIGURE_ENV+=	VALAC=${VALAC} VAPIGEN=${VAPIGEN}
.endif

.include "../../devel/glib2/buildlink3.mk"
.endif	# VALA_BUILDLINK3_MK

BUILDLINK_TREE+=	-vala
