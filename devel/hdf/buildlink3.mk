# $NetBSD: buildlink3.mk,v 1.10 2012/05/07 01:53:23 dholland Exp $

BUILDLINK_TREE+=	hdf

.if !defined(HDF_BUILDLINK3_MK)
HDF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hdf+=	hdf>=4.1r5
BUILDLINK_ABI_DEPENDS.hdf+=	hdf>=4.2r1nb1
BUILDLINK_PKGSRCDIR.hdf?=	../../devel/hdf
.endif # HDF_BUILDLINK3_MK

.include "../../archivers/szip/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"

BUILDLINK_TREE+=	-hdf
