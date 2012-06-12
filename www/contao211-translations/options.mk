# $NetBSD: options.mk,v 1.13 2012/06/12 14:55:58 taca Exp $

# Not yet ready for Contao 2.11:
#	af ar bs ca da gl gn hr hu id is ku
#	no rm sr th tl tr zh
#
CT_SUPPORTED_LANGUAGES=	bg cs da es fa fi fr it ja lt lv nl pl pt \
			ro ru sk sl sv uk

CT_TRANSLATIONS.af=	TYPOlight-Afrikaans-v1.zip	# 2008/01/15
CT_TRANSLATIONS.ar=	Contao-Arabic-v3.zip		# 2010/10/30
CT_TRANSLATIONS.bg=	Contao-Bulgarian-v25.zip	# 2012/05/01
CT_TRANSLATIONS.bs=	Contao-Bosnian-v15.zip		# 2010/09/12
CT_TRANSLATIONS.ca=	TYPOlight-Catalan-v4.zip	# 2008/09/24
CT_TRANSLATIONS.cs=	Contao-Czech-v49.zip		# 2012/03/13
CT_TRANSLATIONS.da=	Contao-Danish-v16.zip		# 2012/03/15
CT_TRANSLATIONS.es=	Contao-Spanish-v18.zip		# 2011/03/16
CT_TRANSLATIONS.fa=	Contao-Persian-v13.zip		# 2012/05/05
CT_TRANSLATIONS.fi=	Contao-Finnish-v10.zip		# 2012/06/07
CT_TRANSLATIONS.fr=	Contao-French-v80.zip		# 2012/03/09
CT_TRANSLATIONS.gl=	TYPOlight-Galician-v3.zip	# 2010/03/26
CT_TRANSLATIONS.gn=	Contao-Guarani-v6.zip		# 2011/09/18
CT_TRANSLATIONS.hr=	Contao-Croatian-v16.zip		# 2011/09/02
CT_TRANSLATIONS.hu=	Contao-Hungarian-v12.zip	# 2011/09/14
CT_TRANSLATIONS.id=	TYPOlight-Indonesian-v1.zip	# 2009/01/13
CT_TRANSLATIONS.is=	TYPOlight-Icelandic-v5.zip	# 2010/02/10
CT_TRANSLATIONS.it=	Contao-Italian-v31.zip		# 2012/03/09
CT_TRANSLATIONS.ja=	Contao-Japanese-v85.zip		# 2012/05/05
CT_TRANSLATIONS.ku=	Contao-Kurdish-v5.zip		# 2010/12/24
CT_TRANSLATIONS.lt=	Contao-Lithuanian-v10.zip	# 2012/05/24
CT_TRANSLATIONS.lv=	Contao-Latvian-v37.zip		# 2012/04/03
CT_TRANSLATIONS.nl=	Contao-Dutch-v59.zip		# 2012/03/15
CT_TRANSLATIONS.no=	TYPOlight-Norwegian-v11.zip	# 2009/11/16
CT_TRANSLATIONS.pl=	Contao-Polish-v32.zip		# 2012/02/17
CT_TRANSLATIONS.pt=	Contao-Portuguese-v13.zip	# 2012/05/08
CT_TRANSLATIONS.rm=	Contao-Rhaeto-Romance-v5.zip	# 2011/10/22
CT_TRANSLATIONS.ro=	Contao-Romanian-v15.zip		# 2012/03/28
CT_TRANSLATIONS.ru=	Contao-Russian-v47.zip		# 2012/05/08
CT_TRANSLATIONS.sk=	Contao-Slovak-v13.zip		# 2012/04/29
CT_TRANSLATIONS.sl=	Contao-Slovenian-v13.zip	# 2012/03/15
CT_TRANSLATIONS.sq=	Contao-Albanian-v7.zip		# 2012/02/16
CT_TRANSLATIONS.sr=	Contao-Serbian-v8.zip		# 2011/05/24
CT_TRANSLATIONS.sv=	Contao-Swedish-v65.zip		# 2012/05/15
CT_TRANSLATIONS.th=	TYPOlight-Thai-v2.zip		# 2008/11/23
CT_TRANSLATIONS.tl=	TYPOlight-Tagalog-v1.zip	# 2010/01/29
CT_TRANSLATIONS.tr=	Contao-Turkish-v14.zip		# 2011/03/24
CT_TRANSLATIONS.uk=	Contao-Ukrainian-v16.zip	# 2011/05/04
CT_TRANSLATIONS.zh=	TYPOlight-Chinese-v20.zip	# 2010/01/29

PKG_OPTIONS_VAR=	PKG_OPTIONS.contao${CT_VERS}-translations

.for l in ${CT_SUPPORTED_LANGUAGES}
PKG_SUPPORTED_OPTIONS+=	lang-${l}
PKG_SUGGESTED_OPTIONS+=	lang-${l}
.endfor

.include "../../mk/bsd.options.mk"

.for l in ${PKG_OPTIONS:Mlang-*}
CT_LANGUAGES+=	${l:S/^lang-//1}
.endfor

.for l in ${CT_LANGUAGES}
CT_DISTFILES+=	${CT_TRANSLATIONS.${l}}
SITES.${CT_TRANSLATIONS.${l}}= \
	http://www.contao.org/download.html?iso=${l}&file=tl_files/languages/${l}/
.endfor
