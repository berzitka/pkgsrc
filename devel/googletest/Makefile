# $NetBSD: Makefile,v 1.7 2013/05/09 13:49:10 joerg Exp $
#

DISTNAME=	gtest-1.6.0
PKGNAME=	${DISTNAME:S/gtest/googletest/}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://googletest.googlecode.com/files/
EXTRACT_SUFX=	.zip

MAINTAINER=	reed@reedmedia.net
HOMEPAGE=	http://code.google.com/p/googletest/
COMMENT=	Google's C++ testing framework
LICENSE=	modified-bsd

INSTALLATION_DIRS=	bin

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c++ c
USE_LIBTOOL=	yes

SUBST_CLASSES+=		rpathfix
SUBST_FILES.rpathfix=	scripts/gtest-config.in
SUBST_MESSAGE.rpathfix=	Adding rpath to gtest-config
SUBST_SED.rpathfix=	-e 's/-L$${libdir}/${COMPILER_RPATH_FLAG}$${libdir} -L$${libdir}/g'
SUBST_STAGE.rpathfix=	pre-configure

SUBST_CLASSES+=			fix-python
SUBST_STAGE.fix-python=		pre-configure
SUBST_MESSAGE.fix-python=	Fixing dynamic python
SUBST_FILES.fix-python+=	scripts/*py
SUBST_SED.fix-python+=		-e 's,/usr/bin/env python,${PYTHONBIN},'

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CXXFLAGS+=	-std=c++11
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/gtest-config ${DESTDIR}${PREFIX}/bin

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
