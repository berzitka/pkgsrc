# $NetBSD: Makefile,v 1.65 2013/09/21 22:37:22 pettai Exp $

DISTNAME=	nsd-3.2.16
CATEGORIES=	net
MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://www.nlnetlabs.nl/nsd/index.html
COMMENT=	Authoritative-only DNS server
LICENSE=	modified-bsd

BUILD_DEFS+=	VARBASE

BUILDLINK_API_DEPENDS.openssl+=	openssl>=0.9.7

PKG_OPTIONS_VAR=	PKG_OPTIONS.nsd
PKG_SUPPORTED_OPTIONS=	inet6 rrl
PKG_SUGGESTED_OPTIONS=	inet6

.include "../../mk/bsd.options.mk"

GNU_CONFIGURE=	yes

PKG_SYSCONFSUBDIR=	nsd

CONFIGURE_ARGS+=--with-configdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=--enable-bind8-stats
.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=--enable-ipv6
.else
CONFIGURE_ARGS+=--disable-ipv6
.endif
.if !empty(PKG_OPTIONS:Mrrl)
CONFIGURE_ARGS+=--enable-ratelimit
.else
CONFIGURE_ARGS+=--disable-ratelimit
.endif

CONFIGURE_ARGS+=--with-pidfile=${VARBASE}/run/nsd.pid
CONFIGURE_ARGS+=--with-user=${NSD_USER}
CONFIGURE_ARGS+=--with-dbfile=${VARBASE}/db/nsd.db
CONFIGURE_ARGS+=--with-difffile=${VARBASE}/db/nsd-ixfr.db
CONFIGURE_ARGS+=--with-xfrdfile=${VARBASE}/db/nsd-xfrd.state
CONFIGURE_ARGS+=--with-ssl=${BUILDLINK_PREFIX.openssl}

RCD_SCRIPTS=	nsd

NSD_USER?=	nsd
NSD_GROUP?=	nsd

PKG_GROUPS=	${NSD_GROUP}
PKG_USERS=	${NSD_USER}:${NSD_GROUP}

CONF_FILES+=	share/examples/nsd/nsd.conf ${PKG_SYSCONFDIR}/nsd.conf

INSTALLATION_DIRS=	share/examples/nsd

CFLAGS.SunOS+=	-Du_int32_t=uint32_t

post-install:
	${INSTALL_DATA} ${WRKSRC}/contrib/nsd.zones2nsd.conf ${DESTDIR}${PREFIX}/share/examples/nsd

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
