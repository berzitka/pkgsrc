# $NetBSD: Makefile,v 1.8 2013/08/30 15:49:48 schmonz Exp $
#

DISTNAME=		Text-Markdown-Discount-0.10
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Text-Markdown-Discount/
COMMENT=		Convert Markdown to (X)HTML
LICENSE=		${PERL5_LICENSE}

#WRKSRC=			${WRKDIR}/sekimura-text-markdown-discount-c45fb0c
PERL5_PACKLIST=		auto/Text/Markdown/Discount/.packlist
USE_LANGUAGES=		c

MAKE_JOBS_SAFE=		no

post-extract:
	cd ${WRKSRC} && mv discount/VERSION discount/MYVERSION

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
