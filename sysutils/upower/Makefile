# $NetBSD: Makefile,v 1.16 2020/04/02 11:38:49 bsiegert Exp $

DISTNAME=	upower-0.99.11
CATEGORIES=	sysutils
MASTER_SITES=	https://upower.freedesktop.org/releases/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://upower.freedesktop.org/
COMMENT=	Power management system message bus service
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config xgettext msgmerge msgfmt

TOOL_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-libintl-prefix=${BUILDLINK_PREFIX.gettext}

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/${PKGBASE}
CONF_FILES+=	${PREFIX}/share/examples/${PKGBASE}/UPower/UPower.conf \
		${PKG_SYSCONFDIR}/UPower/UPower.conf

OWN_DIRS+=	${VARBASE}/lib/upower
OWN_DIRS+=	${PKG_SYSCONFDIR}/UPower

PKGCONFIG_OVERRIDE+=	upower-glib.pc.in
USE_PKGLOCALEDIR=	yes

BUILDLINK_TRANSFORM.SunOS+=	opt:-Wl,--no-as-needed:-Wl,-zrecord
BUILDLINK_TRANSFORM.SunOS+=	opt:-Wl,--as-needed:-Wl,-zignore

TEST_TARGET=	check

# with --nonet, xsltproc needs a helping hand finding some dtds
XSLTPROC_PATH=	${PREFIX}/share/doc/dbus

.include "options.mk"

BUILD_DEFS+=	VARBASE

.include "../../devel/gettext-lib/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.34.0
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.dbus+=	dbus>=1.0
.include "../../sysutils/dbus/buildlink3.mk"
BUILDLINK_API_DEPENDS.dbus-glib+=	dbus-glib>=0.76
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../textproc/libxslt/xsltproc-nonet.mk"
.include "../../mk/bsd.pkg.mk"
