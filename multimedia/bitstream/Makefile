# $NetBSD: Makefile,v 1.6 2020/01/26 17:31:45 rillig Exp $

DISTNAME=	bitstream-1.5
CATEGORIES=	multimedia
MASTER_SITES=	http://download.videolan.org/pub/videolan/bitstream/${PKGVERSION}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.videolan.org/developers/bitstream.html
COMMENT=	C headers allowing a simpler access to binary structures
LICENSE=	mit

USE_TOOLS+=	gmake
NO_BUILD=	yes
MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	PKGCONFIG=${DESTDIR}${PREFIX}/lib/pkgconfig

.include "../../mk/bsd.pkg.mk"
