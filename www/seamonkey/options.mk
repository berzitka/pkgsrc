# $NetBSD: options.mk,v 1.18 2011/07/11 20:46:36 tnn Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.seamonkey
PKG_SUPPORTED_OPTIONS=	debug mozilla-jemalloc gnome

PLIST_VARS+=	gnome

.if ${OPSYS} == "Linux" || ${OPSYS} == "SunOS"
PKG_SUGGESTED_OPTIONS+=	mozilla-jemalloc
.endif

.if !empty(MACHINE_ARCH:Mi386) || !empty(MACHINE_ARCH:Msparc) || \
	!empty(MACHINE_ARCH:Marm) || !empty(MACHINE_ARCH:Mx86_64)
PKG_SUPPORTED_OPTIONS+=	mozilla-jit
PKG_SUGGESTED_OPTIONS+=	mozilla-jit
.endif

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgnome)
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../sysutils/gnome-vfs/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-gnomevfs --enable-dbus --enable-gnomeui
PLIST.gnome=		yes
.else
CONFIGURE_ARGS+=	--disable-gnomevfs --disable-dbus --disable-gnomeui
.endif

.if !empty(PKG_OPTIONS:Mmozilla-jemalloc)
CONFIGURE_ARGS+=	--enable-jemalloc
.else
CONFIGURE_ARGS+=	--disable-jemalloc
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
.else
CONFIGURE_ARGS+=	--disable-debug
.endif

.if !empty(PKG_OPTIONS:Mmozilla-jit)
CONFIGURE_ARGS+=	--enable-jit
.else
CONFIGURE_ARGS+=	--disable-jit
.endif
