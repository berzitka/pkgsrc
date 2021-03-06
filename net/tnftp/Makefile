# $NetBSD: Makefile,v 1.33 2013/09/12 11:18:40 jperkin Exp $

DISTNAME=		tnftp-20070806
SVR4_PKGNAME=		tnftp
CATEGORIES=		net
MASTER_SITES=		# empty
DISTFILES=		# empty

# distfile obtained from: ftp://ftp.NetBSD.org/pub/NetBSD/misc/tnftp

CONFLICTS+=		kth-krb4-[0-9]*
CONFLICTS+=		lukemftp-[0-9]*

MAINTAINER=		lukem@NetBSD.org
COMMENT=		The enhanced FTP client in NetBSD
LICENSE=		original-bsd

BOOTSTRAP_PKG=	yes

GNU_CONFIGURE=		yes
CHECK_PERMS=		no

OPSYSVARS+=		MAKE_ENV
MAKE_ENV.SunOS+=	CPPFLAGS=""

MAKE_ENV+=		CATMAN_SECTION_SUFFIX=${CATMAN_SECTION_SUFFIX:Q}
MAKE_ENV+=		MANINSTALL=${MANINSTALL:Q}

.include "options.mk"

do-extract:
	@${CP} -R ${FILESDIR} ${WRKSRC}
	@${RM} -f ${WRKSRC}/INSTALL

# Use mk/readline.builtin.mk to check for an editline library on the
# system.  If we use the system editline library, then use the built-in
# termcap library.
#
CHECK_BUILTIN.readline:=	yes
.include "../../mk/readline.builtin.mk"
CHECK_BUILTIN.readline:=	no

.if !empty(BUILTIN_LIB_FOUND.edit:M[yY][eE][sS])
USE_BUILTIN.termcap?=	yes
.endif

# Check usability of builtin termcap if FETCH_USING=ftp
# to avoid circular dependency with termcap from pkgsrc (devel/ncurses).
CHECK_BUILTIN.termcap:=	yes
.include "../../mk/termcap.builtin.mk"
CHECK_BUILTIN.termcap:=	no

.if !empty(FETCH_USING:Mftp) && !empty(USE_BUILTIN.termcap:M[Nn][Oo])
CONFIGURE_ARGS+=	--disable-editcomplete
.else
.include "../../mk/termcap.buildlink3.mk"
.endif

.include "../../mk/bsd.pkg.mk"
