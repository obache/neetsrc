# $NetBSD: Makefile,v 1.3 2020/12/30 12:26:02 nia Exp $

PKGREVISION=	1

USE_LANGUAGES=	c99 c++
USE_CMAKE=	yes
AUTO_MKDIRS=	yes

DEPENDS+=	${PYPKGPREFIX}-angr-[0-9]*:../../devel/py-angr
DEPENDS+=	${PYPKGPREFIX}-cachetools-[0-9]*:../../devel/py-cachetools
DEPENDS+=	${PYPKGPREFIX}-cparser-[0-9]*:../../devel/py-cparser
DEPENDS+=	${PYPKGPREFIX}-decorator-[0-9]*:../../devel/py-decorator
DEPENDS+=	${PYPKGPREFIX}-future-[0-9]*:../../devel/py-future
DEPENDS+=	${PYPKGPREFIX}-gitpython-[0-9]*:../../devel/py-gitpython
DEPENDS+=	${PYPKGPREFIX}-manticore-[0-9]*:../../devel/py-manticore
DEPENDS+=	${PYPKGPREFIX}-networkx-[0-9]*:../../math/py-networkx
DEPENDS+=	${PYPKGPREFIX}-pefile-[0-9]*:../../sysutils/py-pefile
DEPENDS+=	${PYPKGPREFIX}-ana-[0-9]*:../../databases/py-ana
DEPENDS+=	${PYPKGPREFIX}-bintrees-[0-9]*:../../devel/py-bintrees
DEPENDS+=	${PYPKGPREFIX}-bitstring-[0-9]*:../../devel/py-bitstring
DEPENDS+=	${PYPKGPREFIX}-cooldict-[0-9]*:../../devel/py-cooldict
DEPENDS+=	${PYPKGPREFIX}-dpkt-[0-9]*:../../net/py-dpkt
DEPENDS+=	${PYPKGPREFIX}-mulpyplexer-[0-9]*:../../devel/py-mulpyplexer
DEPENDS+=	${PYPKGPREFIX}-progressbar2-[0-9]*:../../devel/py-progressbar2
DEPENDS+=	${PYPKGPREFIX}-rpyc-[0-9]*:../../net/py-rpyc
DEPENDS+=	${PYPKGPREFIX}-z3solver-[0-9]*:../../math/py-z3solver

PYTHON_VERSIONS_INCOMPATIBLE=	27

CONFIGURE_DIRS=	build
CMAKE_ARG_PATH=	${WRKSRC}

CMAKE_ARGS+=	-DPYTHON=${PREFIX}/bin/python${PYVERSSUFFIX}

pre-configure:
	cd ${WRKSRC} && ${MKDIR} ${CONFIGURE_DIRS}

post-install:
.for binaryfile in futurize pasteurize
	${MV} ${FAKEHOMEDIR}/.local/bin/${binaryfile} ${DESTDIR}${PREFIX}/bin/${binaryfile}
.endfor

.include "Makefile.common"
.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
