# $NetBSD: Makefile,v 1.8 2013/05/31 12:40:48 wiz Exp $

DISTNAME=	Test-Distribution-2.00
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	6
SVR4_PKGNAME=	p5tdi
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-Distribution/
COMMENT=	Perl5 module testing all modules of a distribution

PKG_INSTALLATION_TYPES=	overwrite pkgviews

# In perl, but since when?
#DEPENDS+=	p5-ExtUtils-Manifest>=1.43
#DEPENDS+=	p5-Test-More>=0.45

DEPENDS+=	p5-File-Find-Rule>=0.03:../../devel/p5-File-Find-Rule
DEPENDS+=	{perl>=5.16.0,p5-Module-CoreList>=1.93}:../../devel/p5-Module-CoreList
DEPENDS+=	p5-Test-Pod>=0.95:../../devel/p5-Test-Pod
DEPENDS+=	p5-Test-Pod-Coverage-[0-9]*:../../devel/p5-Test-Pod-Coverage
DEPENDS+=	p5-Pod-Coverage>=0.17:../../textproc/p5-Pod-Coverage

PERL5_PACKLIST=		auto/Test/Distribution/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
