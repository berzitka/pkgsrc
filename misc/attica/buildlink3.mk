# $NetBSD: buildlink3.mk,v 1.8 2012/01/13 10:55:18 obache Exp $

BUILDLINK_TREE+=	attica

.if !defined(ATTICA_BUILDLINK3_MK)
ATTICA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.attica+=	attica>=0.1.2
BUILDLINK_ABI_DEPENDS.attica?=	attica>=0.2.0nb5
BUILDLINK_PKGSRCDIR.attica?=	../../misc/attica

.include "../../x11/qt4-libs/buildlink3.mk"
.endif	# ATTICA_BUILDLINK3_MK

BUILDLINK_TREE+=	-attica
