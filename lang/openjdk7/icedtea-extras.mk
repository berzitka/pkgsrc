# $NetBSD: icedtea-extras.mk,v 1.8 2010/05/23 10:50:11 tnn Exp $

# Needed to extract icedtea
EXTRACT_USING=			bsdtar

DIST_SUBDIR=			openjdk7

ICEDTEA=			icedtea-8dc6e1ff8ccf
ICEDTEA_TGZ=			8dc6e1ff8ccf.tar.bz2
SITES.${ICEDTEA_TGZ}=		http://icedtea.classpath.org/hg/icedtea/archive/
DISTFILES+=			${ICEDTEA_TGZ}
EXTRACT_ONLY+=			${ICEDTEA_TGZ}

XALAN=				xalan-j_2_7_1
XALAN_TGZ=			${XALAN}-bin.zip
SITES.${XALAN_TGZ}=		${MASTER_SITE_APACHE:=xml/xalan-j/}
DISTFILES+=			${XALAN_TGZ}
EXTRACT_ONLY+=			${XALAN_TGZ}

RHINO=				rhino1_7R2
RHINO_TGZ=			${RHINO}.zip
SITES.${RHINO_TGZ}=		${MASTER_SITE_MOZILLA:=js/}
DISTFILES+=			${RHINO_TGZ}
EXTRACT_ONLY+=			${RHINO_TGZ}

# fixme: Should depend on devel/apache-ant?
ANT=				apache-ant-1.8.1
ANT_TGZ=			${ANT}-bin.tar.bz2
SITES.${ANT_TGZ}=		http://archive.apache.org/dist/ant/binaries/
DISTFILES+=			${ANT_TGZ}
EXTRACT_ONLY+=			${ANT_TGZ}
ANT_BIN=			${WRKDIR}/${ANT}/bin
PREPEND_PATH+=			${ANT_BIN}

ICEDTEA_CONFIGURE_ARGS=	\
	  --with-xalan2-jar=${WRKDIR}/${XALAN}/xalan.jar \
	  --with-xalan2-serializer-jar=${WRKDIR}/${XALAN}/serializer.jar \
	  --with-xerces2-jar=${WRKDIR}/${XALAN}/xercesImpl.jar \
	  --with-rhino=${WRKDIR}/${RHINO}/js.jar \
	  --with-jdk-home=${PREFIX}/java/openjdk7

.if defined(ICEDTEA_PACKAGE)
CONFIGURE_ARGS+=	${ICEDTEA_CONFIGURE_ARGS}

USE_LANGUAGES=		c c++
USE_TOOLS+=	gawk gmake pkg-config autoconf automake
BUILD_DEPENDS+=	zip-[0-9]*:../../archivers/zip
CONFIGURE_ENV+=	ac_cv_path_MD5SUM=/usr/bin/true
CONFIGURE_ENV+=	ac_cv_path_SHA256SUM=/usr/bin/true
CONFIGURE_ENV+=	ac_cv_path_WGET=/usr/bin/true

pre-configure: icedtea-autoconf
.PHONY: icedtea-autoconf
icedtea-autoconf:
	cd ${WRKDIR}/${ICEDTEA} && ${SETENV} ${CONFIGURE_ENV} autoreconf -if

post-extract: icedtea-post-extract
.PHONY: icedtea-post-extract
icedtea-post-extract:
	chmod +x ${ANT_BIN}/ant

BUILDLINK_DEPMETHOD.cups?=     build
.include "../../print/cups/buildlink3.mk"
.include "../../lang/openjdk7/buildlink3.mk"
.include "../../devel/xulrunner/buildlink3.mk"
.include "../../graphics/libungif/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXp?=	build
.include "../../x11/libXp/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXt?=	build
.include "../../x11/libXt/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXtst?=	build
.include "../../x11/libXtst/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif
