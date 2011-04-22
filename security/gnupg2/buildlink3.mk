# $NetBSD: buildlink3.mk,v 1.6 2011/04/22 13:42:48 obache Exp $

BUILDLINK_TREE+=	gnupg2

.if !defined(GNUPG2_BUILDLINK3_MK)
GNUPG2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnupg2+=	gnupg2>=2.0.0
BUILDLINK_ABI_DEPENDS.gnupg2?=	gnupg2>=2.0.17nb1
BUILDLINK_PKGSRCDIR.gnupg2?=	../../security/gnupg2
BUILDLINK_PREFIX.gnupg2?=	${LOCALBASE}

.include "../../security/libgpg-error/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/libksba/buildlink3.mk"
.include "../../security/pinentry/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.endif # GNUPG2_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnupg2
