# $NetBSD: buildlink3.mk,v 1.9 2010/11/15 22:57:09 abs Exp $
#

BUILDLINK_TREE+=	clutter

.if !defined(CLUTTER_BUILDLINK3_MK)
CLUTTER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.clutter+=	clutter>=1.0.0
BUILDLINK_ABI_DEPENDS.clutter?=	clutter>=1.2.14nb1
BUILDLINK_PKGSRCDIR.clutter?=	../../graphics/clutter

pkgbase := clutter
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.clutter:Mx11)
BUILDLINK_API_DEPENDS.MesaLib+=	MesaLib>=7.0
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXdamage/buildlink3.mk"
.include "../../x11/libXfixes/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.endif # CLUTTER_BUILDLINK3_MK

BUILDLINK_TREE+=	-clutter
