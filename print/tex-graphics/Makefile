# $NetBSD: Makefile,v 1.19 2021/02/13 04:51:46 markd Exp $

DISTNAME=	graphics
PKGNAME=	tex-${DISTNAME}-1.4c
TEXLIVE_REV=	56514

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/latex-graphics
COMMENT=	Standard LaTeX graphics
LICENSE=	lppl-1.3c

DEPENDS+=	tex-graphics-cfg-[0-9]*:../../print/tex-graphics-cfg
DEPENDS+=	tex-graphics-def-[0-9]*:../../print/tex-graphics-def

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
