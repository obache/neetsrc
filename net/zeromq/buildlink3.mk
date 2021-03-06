# $NetBSD: buildlink3.mk,v 1.5 2014/11/15 01:59:37 obache Exp $
#

BUILDLINK_TREE+=	zeromq

.if !defined(ZEROMQ_BUILDLINK3_MK)
ZEROMQ_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zeromq+=	zeromq>=2.0.11
BUILDLINK_ABI_DEPENDS.zeromq+=	zeromq>=4.1.2
BUILDLINK_PKGSRCDIR.zeromq?=	../../net/zeromq

.include "../../security/libsodium/buildlink3.mk"

.include "../../mk/bsd.fast.prefs.mk"
pkgbase := zeromq
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.zeromq:Mgssapi)
.include "../../mk/krb5.buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.zeromq:Mpgm)
.include "../../net/openpgm/buildlink3.mk"
.endif

.if ${OPSYS} == "Linux" || ${OPSYS} == "SunOS"
.include "../../devel/libuuid/buildlink3.mk"
.endif

.include "../../mk/pthread.buildlink3.mk"
.endif	# ZEROMQ_BUILDLINK3_MK

BUILDLINK_TREE+=	-zeromq
