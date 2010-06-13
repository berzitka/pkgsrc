# $NetBSD: buildlink3.mk,v 1.21 2010/06/13 22:45:19 wiz Exp $

BUILDLINK_TREE+=	libfwbuilder

.if !defined(LIBFWBUILDER_BUILDLINK3_MK)
LIBFWBUILDER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libfwbuilder+=	libfwbuilder>=2.0.12
BUILDLINK_ABI_DEPENDS.libfwbuilder+=	libfwbuilder>=2.0.12nb3
BUILDLINK_PKGSRCDIR.libfwbuilder?=	../../security/libfwbuilder

.include "../../devel/glib2/buildlink3.mk"
.include "../../net/net-snmp/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/qt3-libs/buildlink3.mk"
.endif # LIBFWBUILDER_BUILDLINK3_MK

BUILDLINK_TREE+=	-libfwbuilder
