# $NetBSD: buildlink3.mk,v 1.30 2011/01/13 13:36:41 wiz Exp $

BUILDLINK_TREE+=	pygtk2

.if !defined(PYGTK2_BUILDLINK3_MK)
PYGTK2_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pygtk2+=	${PYPKGPREFIX}-gtk2>=2.8.4
BUILDLINK_ABI_DEPENDS.pygtk2+=	${PYPKGPREFIX}-gtk2>=2.22.0nb2
BUILDLINK_PKGSRCDIR.pygtk2?=	../../x11/py-gtk2

.include "../../devel/py-gobject/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # PYGTK2_BUILDLINK3_MK

BUILDLINK_TREE+=	-pygtk2
