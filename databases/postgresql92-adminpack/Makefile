# $NetBSD: Makefile,v 1.4 2013/02/09 11:19:17 adam Exp $

PKGNAME=	${DISTNAME:C/-/92-adminpack-/}
COMMENT=	Admin pack module for pgAdmin management

DEPENDS+=	postgresql92-server>=${PKGVERSION_NOREV}:../../databases/postgresql92-server

.include "../../databases/postgresql92/Makefile.common"

BUILD_MAKE_FLAGS=	PGXS=1

BUILD_DIRS=		contrib/adminpack

.include "../../databases/postgresql92-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
