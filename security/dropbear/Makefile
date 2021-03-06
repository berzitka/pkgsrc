# $NetBSD: Makefile,v 1.28 2013/09/14 03:40:01 mspo Exp $

DISTNAME=	dropbear-2013.58
CATEGORIES=	security
MASTER_SITES=	http://matt.ucc.asn.au/dropbear/releases/

MAINTAINER=	snj@NetBSD.org
HOMEPAGE=	http://matt.ucc.asn.au/dropbear/dropbear.html
COMMENT=	Small SSH2 server and client, aimed at embedded market

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

PKG_OPTIONS_VAR=	PKG_OPTIONS.dropbear
PKG_SUPPORTED_OPTIONS=	pam
.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpam)
.  include "../../mk/pam.buildlink3.mk"
CONFIGURE_ARGS+=	--enable-pam
SUBST_CLASSES+=		pam
SUBST_MESSAGE.pam=	Enabling PAM in options.h
SUBST_STAGE.pam=	post-patch
SUBST_FILES.pam=	options.h
SUBST_SED.pam=		-e "s/ENABLE_SVR_PASSWORD_AUTH/ENABLE_SVR_PAM_AUTH/"
.endif

MAKEFLAGS+=	ROOT_USER=${ROOT_USER:Q} ROOT_GROUP=${ROOT_GROUP:Q}

OWN_DIRS+=		${PKG_SYSCONFDIR}/dropbear

SUBST_CLASSES+=		config
SUBST_MESSAGE.config=	Fixing path to config directory.
SUBST_STAGE.config=	post-build
SUBST_FILES.config=	dropbear.8 dropbearkey.8
SUBST_SED.config=	-e "s,/etc/dropbear/,"${PKG_SYSCONFDIR:Q}"/dropbear/,g"

# used by dbscp
CPPFLAGS+=		-D_PATH_SSH_PROGRAM="\"${PREFIX}/bin/dbclient\""

# XXX use base xauth if present, otherwise _ass_ume pkgsrc. better than nothing
.if exists(${X11BASE}/bin/xauth)
CPPFLAGS+=-DXAUTH_COMMAND="\"${X11BASE}/bin/xauth\""
.else
CPPFLAGS+=-DXAUTH_COMMAND="\"${X11PREFIX}/bin/xauth\""
.endif

.if ${OPSYS} == "NetBSD"
CFLAGS+=	-DHAVE_NETINET_IN_SYSTM_H
.endif

INSTALLATION_DIRS=	share/doc/dropbear ${PKGMANDIR}/man1 ${PKGMANDIR}/man8

BUILD_TARGET=		all scp

post-install:
	${INSTALL_MAN} ${WRKSRC}/dbclient.1 \
		${DESTDIR}/${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/dropbear.8 \
		${DESTDIR}/${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_MAN} ${WRKSRC}/dropbearkey.8 \
		${DESTDIR}/${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_DATA} ${WRKSRC}/README \
		${DESTDIR}/${PREFIX}/share/doc/dropbear
	${INSTALL_PROGRAM} ${WRKSRC}/scp ${DESTDIR}/${PREFIX}/bin/dbscp

.include "../../devel/zlib/buildlink3.mk"
.include "../../math/ltm/buildlink3.mk"
.include "../../security/libtomcrypt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
