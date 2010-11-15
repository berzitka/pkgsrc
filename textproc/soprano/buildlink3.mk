# $NetBSD: buildlink3.mk,v 1.7 2010/11/15 22:58:42 abs Exp $

BUILDLINK_TREE+=	soprano

.if !defined(SOPRANO_BUILDLINK3_MK)
SOPRANO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.soprano+=	soprano>=2.0.3
BUILDLINK_ABI_DEPENDS.soprano?=	soprano>=2.5.2nb1
BUILDLINK_PKGSRCDIR.soprano?=	../../textproc/soprano

.include "../../textproc/libclucene/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"
.endif # SOPRANO_BUILDLINK3_MK

BUILDLINK_TREE+=	-soprano
