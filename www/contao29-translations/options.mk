# $NetBSD: options.mk,v 1.15 2010/10/11 15:23:55 taca Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.contao-translations

# Not yet ready for Contao 2.9: af ca gl id is lt no pt sk sq sr th tl zh
#
CT_SUPPORTED_LANGUAGES=	bg bs cs da es fa fi fr gn hr hu it ja \
			ku lv nl pl ro ru sl sv tr uk

CT_TRANSLATIONS.af=	TYPOlight-Afrikaans-v1.zip	# 2008/01/15
CT_TRANSLATIONS.bg=	Contao-Bulgarian-v20.zip	# 2010/09/08
CT_TRANSLATIONS.bs=	Contao-Bosnian-v15.zip		# 2010/09/12
CT_TRANSLATIONS.ca=	TYPOlight-Catalan-v4.zip	# 2008/09/24
CT_TRANSLATIONS.cs=	Contao-Czech-v25.zip		# 2010/10/10
CT_TRANSLATIONS.da=	Contao-Danish-v13.zip		# 2010/09/26
CT_TRANSLATIONS.es=	Contao-Spanish-v14.zip		# 2010/06/10
CT_TRANSLATIONS.fa=	Contao-Persian-v6.zip		# 2010/09/24
CT_TRANSLATIONS.fi=	Contao-Finnish-v2.zip		# 2010/08/22
CT_TRANSLATIONS.fr=	Contao-French-v59.zip		# 2010/08/13
CT_TRANSLATIONS.gl=	TYPOlight-Galician-v3.zip	# 2010/03/26
CT_TRANSLATIONS.gn=	Contao-Guarani-v2.zip		# 2010/08/09
CT_TRANSLATIONS.hr=	Contao-Croatian-v11.zip		# 2010/08/17
CT_TRANSLATIONS.hu=	Contao-Hungarian-v9.zip		# 2010/10/01
CT_TRANSLATIONS.id=	TYPOlight-Indonesian-v1.zip	# 2009/01/13
CT_TRANSLATIONS.is=	TYPOlight-Icelandic-v5.zip	# 2010/02/10
CT_TRANSLATIONS.it=	Contao-Italian-v25.zip		# 2010/08/09
CT_TRANSLATIONS.ja=	Contao-Japanese-v35.zip		# 2010/08/12
CT_TRANSLATIONS.ku=	Contao-Kurdish-v2.zip		# 2010/09/05
CT_TRANSLATIONS.lt=	TYPOlight-Lithuanian-v4.zip	# 2010/04/14
CT_TRANSLATIONS.lv=	Contao-Latvian-v26.zip		# 2010/09/14
CT_TRANSLATIONS.nl=	Contao-Dutch-v47.zip		# 2010/08/09
CT_TRANSLATIONS.no=	TYPOlight-Norwegian-v11.zip	# 2009/11/16
CT_TRANSLATIONS.pl=	Contao-Polish-v29.zip		# 2010/09/28
CT_TRANSLATIONS.pt=	TYPOlight-Portuguese-v7.zip	# 2009/11/01
CT_TRANSLATIONS.ro=	Contao-Romanian-v10.zip		# 2009/07/02
CT_TRANSLATIONS.ru=	Contao-Russian-v35.zip		# 2010/08/09
CT_TRANSLATIONS.sk=	TYPOlight-Slovak-v8.zip		# 2009/08/15
CT_TRANSLATIONS.sl=	Contao-Slovenian-v7.zip		# 2010/07/15
CT_TRANSLATIONS.sq=	TYPOlight-Albanian-v4.zip	# 2008/12/14
CT_TRANSLATIONS.sr=	TYPOlight-Serbian-v7.zip	# 2010/05/10
CT_TRANSLATIONS.sv=	Contao-Swedish-v53.zip		# 2010/08/09
CT_TRANSLATIONS.th=	TYPOlight-Thai-v2.zip		# 2008/11/23
CT_TRANSLATIONS.tl=	TYPOlight-Tagalog-v1.zip	# 2010/01/29
CT_TRANSLATIONS.tr=	Contao-Turkish-v12.zip		# 2010/08/23
CT_TRANSLATIONS.uk=	Contao-Ukrainian-v14.zip	# 2010/07/02
CT_TRANSLATIONS.zh=	TYPOlight-Chinese-v20.zip	# 2010/01/29

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
PLIST_SRC+=	PLIST.${l}
.endfor
