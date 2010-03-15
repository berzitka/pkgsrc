# $NetBSD: sites.mk,v 1.78 2010/03/15 10:00:49 wiz Exp $
#
# This Makefile fragment defines read-only MASTER_SITE_* variables
# representing some well-known master distribution sites for software.
#

MASTER_SITE_XCONTRIB+=  \
	ftp://ftp.gwdg.de/pub/x11/x.org/contrib/ \
	ftp://sunsite.icm.edu.pl/pub/X11/contrib/ \
	ftp://mirror.switch.ch/mirror/X11/contrib/ \
	ftp://ftp.x.org/contrib/

MASTER_SITE_GNU+=       \
	http://ftp.gnu.org/pub/gnu/ \
	ftp://ftp.gnu.org/pub/gnu/ \
	ftp://ftp.funet.fi/pub/gnu/prep/ \
	ftp://ftp.kddlabs.co.jp/pub/gnu/gnu/ \
	ftp://ftp.dti.ad.jp/pub/GNU/ \
	ftp://mirrors.kernel.org/gnu/ \
	ftp://ftp.sunet.se/pub/gnu/ \
	ftp://ftp.lip6.fr/pub/gnu/ \
	http://gd.tuwien.ac.at/gnu/gnusrc/ \
	ftp://ftp.chg.ru/pub/gnu/

MASTER_SITE_GNUSTEP+=   \
	ftp://ftp.gnustep.org/pub/gnustep/

MASTER_SITE_PERL_CPAN+= \
	ftp://cpan.pair.com/modules/by-module/ \
	ftp://ftp.funet.fi/pub/languages/perl/CPAN/modules/by-module/ \
	ftp://ftp.gmd.de/mirrors/CPAN/modules/by-module/ \
	http://ftp.tuwien.ac.at/pub/CPAN/modules/by-module/ \
	http://cpan.perl.org/CPAN/modules/by-module/ \
	ftp://ftp.fi.muni.cz/pub/CPAN/modules/by-module/

MASTER_SITE_R_CRAN+=    \
	http://cran.r-project.org/src/ \
	ftp://cran.r-project.org/pub/R/src/ \
	http://cran.at.r-project.org/src/ \
	ftp://cran.at.r-project.org/pub/R/src/ \
	http://cran.ch.r-project.org/src/ \
	http://cran.uk.r-project.org/src/ \
	http://cran.us.r-project.org/src/ \
	http://lib.stat.cmu.edu/R/CRAN/src/ \
	ftp://ftp.u-aizu.ac.jp/pub/lang/R/CRAN/src/ \
	http://stat.ethz.ch/CRAN/src/ \
	http://www.stats.bris.ac.uk/R/src/

MASTER_SITE_TEX_CTAN+= \
	ftp://ftp.funet.fi/pub/TeX/CTAN/ \
	ftp://ftp.tex.ac.uk/tex-archive/ \
	ftp://ftp.dante.de/tex-archive/ \
	ftp://www.t.ring.gr.jp/pub/text/CTAN/ \
	http://www.t.ring.gr.jp/archives/text/CTAN/

MASTER_SITE_SUNSITE+=   \
	ftp://sunsite.unc.edu/pub/Linux/ \
	ftp://ftp.chg.ru/pub/Linux/sunsite/ \
	ftp://ftp.kddlabs.co.jp/Linux/metalab.unc.edu/ \
	ftp://ftp.icm.edu.pl/pub/Linux/sunsite/ \
	ftp://ftp.nvg.ntnu.no/pub/mirrors/metalab.unc.edu/ \
	ftp://ftp.lip6.fr/pub/linux/sunsite/ \
	ftp://ftp.cs.tu-berlin.de/pub/linux/Mirrors/sunsite.unc.edu/ \
	http://ftp.tuwien.ac.at/pub/linux/ibiblio/

MASTER_SITE_GNOME+=     \
	http://ftp.gnome.org/pub/GNOME/ \
	ftp://ftp.gnome.org/pub/GNOME/ \
	ftp://ftp.sunet.se/pub/X11/GNOME/ \
	http://ftp.tuwien.ac.at/hci/gnome.org/ \
	ftp://ftp.cse.buffalo.edu/pub/Gnome/ \
	ftp://ftp.dti.ad.jp/pub/X/gnome/ \
	ftp://ftp.kddlabs.co.jp/pub/GNOME/ \
	ftp://ftp.chg.ru/pub/X11/gnome/ \
	ftp://ftp.dit.upm.es/linux/gnome/

MASTER_SITE_KDE+=	\
	ftp://ftp.kde.org/pub/kde/stable/ \
	ftp://www.t.ring.gr.jp/pub/X/kde/stable/ \
	http://www.t.ring.gr.jp/archives/X/kde/stable/ \
	ftp://ftp.kddlabs.co.jp/pub/X/kde/stable/ \
	http://mirrors.isc.org/pub/kde/stable/ \
	ftp://ftp.gtlib.cc.gatech.edu/pub/kde/stable/ \
	ftp://kde.mirrors.tds.net/pub/kde/stable/ \
	http://gd.tuwien.ac.at/kde/stable/ \
	ftp://ftp.solnet.ch/mirror/KDE/stable/ \
	ftp://ftp-stud.fht-esslingen.de/pub/Mirrors/ftp.kde.org/pub/kde/stable/ \
	ftp://mirrors.dotsrc.org/kde/stable/ \
	ftp://ftp.fi.muni.cz/pub/kde/stable/

MASTER_SITE_SOURCEFORGE+=	\
	http://downloads.sourceforge.net/sourceforge/

MASTER_SITE_SOURCEFORGE_JP+=	\
	http://osdn.dl.sourceforge.jp/ \
	http://jaist.dl.sourceforge.jp/ \
	http://keihanna.dl.sourceforge.jp/ \
	http://globalbase.dl.sourceforge.jp/ \
	http://iij.dl.sourceforge.jp/ \
	http://download.sourceforge.jp/

MASTER_SITE_SUSE+=	\
	ftp://rpmfind.net/linux/SuSE-Linux/${MACHINE_ARCH}/update/${SUSE_VERSION}/ \
	ftp://fr.rpmfind.net/linux/SuSE-Linux/${MACHINE_ARCH}/update/${SUSE_VERSION}/ \
	ftp://fr2.rpmfind.net/linux/SuSE-Linux/${MACHINE_ARCH}/update/${SUSE_VERSION}/

MASTER_SITE_MOZILLA_ALL+=   \
	http://ftp.mozilla.org/pub/mozilla.org/ \
	ftp://ftp.mozilla.org/pub/mozilla.org/

# see http://www.mozilla.org/mirrors.html
MASTER_SITE_MOZILLA+=	\
	http://ftp.mozilla.org/pub/mozilla.org/ \
	ftp://ftp.mozilla.org/pub/mozilla.org/ \
	http://releases.mozilla.org/pub/mozilla.org/ \
	ftp://releases.mozilla.org/pub/mozilla.org/ \
	http://mirror3.mirrors.tds.net/pub/mozilla.org/ \
	http://mozilla.isc.org/pub/mozilla.org/ \
	http://pv-mirror02.mozilla.org/pub/mozilla.org/ \
	http://mirror.uoregon.edu/mozilla/releases/ \
	http://mozilla.mirrors.tds.net/pub/mozilla.org/ \
	http://mirrors.yocum.org/mozilla/ \
	http://mozilla.isohunt.com/ \
	http://mozilla.ussg.indiana.edu/pub/mozilla.org/ \
	http://mirror.atlanticmetro.net/mozilla/ \
	http://mirror.csclub.uwaterloo.ca/pub/mozilla.org/ \
	http://mozilla.mirror.rafal.ca/ \
	http://mirror.cc.vt.edu/pub/mozilla/ \
	http://mirror.its.uidaho.edu/pub/mozilla.org/ \
	http://mozilla.mirror.facebook.com/ \
	http://www.gtlib.gatech.edu/pub/mozilla.org/ \
	http://mozilla.cs.utah.edu/pub/mozilla.org/ \
	http://mirror.mcs.anl.gov/mozilla.org/ \
	http://mirrors.gigenet.com/mozilla/ \
	http://pv-mirror01.mozilla.org/pub/mozilla.org/ \
	http://mozilla-mirror.internap.com/ \
	http://mirror.umoss.org/mozilla/ \
	http://mirrors.xmission.com/mozilla.org/ \
	http://mozilla.mirrors.hoobly.com/ \
	http://ftp.utexas.edu/mozilla/ \
	http://mozilla.mirror.ac.za/ \
	http://ftp.saix.net/mozilla/ \
	http://kyoto-mz-dl.sinet.ad.jp/pub/mozilla.org/ \
	http://jp-nii02.mozilla.org/pub/mozilla.org/ \
	http://ftp.cs.pu.edu.tw/pub/Mozilla/ \
	http://mozilla.mtk.nao.ac.jp/pub/mozilla.org/ \
	http://ftp.twaren.net/Unix/Mozilla/ \
	http://pj-mirror01.mozilla.org/pub/mozilla.org/ \
	http://mozilla.sakura.ad.jp/pub/mozilla.org/ \
	http://ftp.daum.net/mozilla/ \
	http://mozilla.stu.edu.tw/ \
	http://mozilla.ftp.iij.ad.jp/pub/mozilla/mozilla.org/ \
	http://mozilla-mirror.naist.jp/ \
	http://mirror.kr.freebsd.org/mozilla.org/ \
	http://ftp.kaist.ac.kr/pub/mozilla/ \
	http://ftp.ncnu.edu.tw/mozilla.org/ \
	http://ftp.yz.yamagata-u.ac.jp/pub/network/mozilla/ \
	http://ftp.ntu.edu.tw/pub/mozilla/ \
	http://ftp.kddilabs.jp/Mozilla/ \
	http://mozilla.hongo.wide.ad.jp/pub/mozilla.org/ \
	http://mozilla.hns.net.in/ \
	http://mozilla.unpad.ac.id/ \
	http://mirror-fpt-telecom.fpt.net/mozilla/ \
	http://mirror.internode.on.net/pub/mozilla/ \
	http://mozilla.mirror.ihug.co.nz/ \
	http://mirror.waia.asn.au/pub/mozilla/ \
	http://mozilla.mirror.pacific.net.au/ \
	http://vlaai.snt.utwente.nl/pub/software/mozilla.org/ \
	http://ftp.sunet.se/pub/www/clients/mozilla.org/ \
	http://mozmirror01.true.nl/pub/mozilla.org/ \
	http://ftp.uni-kl.de/pub/mozilla/ \
	http://mirror.yandex.ru/mozilla/ \
	http://elizabeth.acc.umu.se/pub/mozilla.org/ \
	http://www.mirrorservice.org/sites/releases.mozilla.org/pub/mozilla.org/ \
	http://ftp.cvut.cz/mozilla/ \
	http://mozilla.kn.vutbr.cz/ \
	http://mirror.switch.ch/ftp/mirror/mozilla/ \
	http://ftp.plusline.de/mozilla/ \
	http://mozilla.mirrors.skynet.be/pub/ftp.mozilla.org/ \
	http://mirrors.linux.edu.lv/mozilla.org/ \
	http://www.artfiles.org/mozilla.org/ \
	http://mirrors.xservers.ro/mozilla/ \
	http://ftp.bayanat.com.sa/pub/mirror/ftp.mozilla.org/ \
	http://ftp.spnet.net/mozilla/ \
	http://ftp.ntua.gr/pub/mozilla.org/ \
	http://www.mirrorspace.org/mozilla/ \
	http://ftp.pwr.wroc.pl/pub/mozilla/ \
	http://ftp.heanet.ie/mirrors/ftp.mozilla.org/pub/mozilla.org/ \
	http://mozilla.wpro.lv/ \
	http://mozilla.c3sl.ufpr.br/releases/ \
	http://mozilla.mirror.pop-sc.rnp.br/mirror/mozilla.org/ \
	http://mozilla.patan.com.ar/

MASTER_SITE_XEMACS+=    \
	ftp://ftp.xemacs.org/pub/xemacs/ \
	ftp://ftp.dti.ad.jp/pub/unix/editor/xemacs/ \
	ftp://ftp.pasteur.fr/pub/computing/xemacs/ \
	ftp://mirror.aarnet.edu.au/pub/xemacs/ \
	ftp://mirror.cict.fr/xemacs/ \
	ftp://ftp.t.ring.gr.jp/pub/text/xemacs/

MASTER_SITE_APACHE+=    \
	http://www.apache.org/dist/ \
	http://www.eu.apache.org/dist/ \
	http://apache.mirror.aussiehq.net.au/ \
	http://apache.oregonstate.edu/ \
	http://www.ibiblio.org/pub/mirrors/apache/ \
	http://mirror.nyi.net/apache/ \
	http://apache.mirrors.tds.net/ \
	http://ftp.unicamp.br/pub/apache/ \
	http://www.mirrorservice.org/sites/ftp.apache.org/ \
	http://www.meisei-u.ac.jp/mirror/apache/dist/ \
	http://ftp.twaren.net/Unix/Web/apache/ \
	http://ftp.cuhk.edu.hk/pub/packages/apache.org/ \
	ftp://ftp.oregonstate.edu/pub/apache/ \
	ftp://www.ibiblio.org/pub/mirrors/apache/ \
	ftp://mirror.nyi.net/apache/ \
	ftp://apache.mirrors.tds.net/pub/apache.org/ \
	ftp://ftp.mirrorservice.org/sites/ftp.apache.org/ \
	http://gd.tuwien.ac.at/pub/infosys/servers/http/apache/dist/ \
	ftp://ftp.meisei-u.ac.jp/pub/www/apache/dist/ \
	ftp://ftp.twaren.net/Unix/Web/apache/

MASTER_SITE_MYSQL+=	\
	http://mysql.skynet.be/Downloads/ \
	ftp://ftp.mysql.skynet.be/pub/ftp.mysql.com/Downloads/ \
	http://mysql.mirror.kangaroot.net/Downloads/ \
	ftp://mysql.mirror.kangaroot.net/pub/mysql/Downloads/ \
	http://mysql.linux.cz/Downloads/ \
	ftp://ftp.fi.muni.cz/pub/mysql/Downloads/ \
	http://mirrors.dotsrc.org/mysql/Downloads/ \
	ftp://mirrors.dotsrc.org/mysql/Downloads/ \
	http://mysql.mirrors.webname.dk/Downloads/ \
	http://mysql.borsen.dk/Downloads/ \
	http://mir2.ovh.net/ftp.mysql.com/Downloads/ \
	ftp://mir1.ovh.net/ftp.mysql.com/Downloads/ \
	http://mirrors.ircam.fr/pub/mysql/Downloads/ \
	ftp://mirrors.ircam.fr/pub/mysql/Downloads/ \
	http://ftp.gwdg.de/pub/misc/mysql/Downloads/ \
	ftp://ftp.gwdg.de/pub/misc/mysql/Downloads/ \
	http://sunsite.informatik.rwth-aachen.de/mysql/Downloads/ \
	ftp://sunsite.informatik.rwth-aachen.de/pub/mirror/www.mysql.com/Downloads/ \
	ftp://ftp.fu-berlin.de/unix/databases/mysql/Downloads/ \
	http://ftp.ntua.gr/pub/databases/mysql/Downloads/ \
	ftp://ftp.ntua.gr/pub/databases/mysql/Downloads/ \
	http://mysql.mirrors.crysys.hit.bme.hu/Downloads/ \
	ftp://ftp.crysys.hu/pub/mysql/Downloads/ \
	ftp://ftp.rhnet.is/pub/mysql/Downloads/ \
	http://ftp.heanet.ie/mirrors/www.mysql.com/Downloads/ \
	ftp://ftp.heanet.ie/mirrors/www.mysql.com/Downloads/ \
	http://na.mirror.garr.it/mirrors/MySQL/Downloads/ \
	http://mysql.bst.lt/Downloads/ \
	http://mysql.proserve.nl/Downloads/ \
	http://mysql.nfsi.pt/Downloads/ \
	ftp://ftp.nfsi.pt/pub/mysql/Downloads/ \
	http://mirrors.xservers.ro/mysql/Downloads/ \
	http://ftp.astral.ro/mirrors/mysql.com/Downloads/ \
	ftp://ftp.astral.ro/mirrors/mysql.com/Downloads/ \
	http://mirrors.bevc.net/mysql/Downloads/ \
	http://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/ \
	ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/ \
	http://mysql.dataphone.se/Downloads/ \
	ftp://mirror2.dataphone.se/pub/mysql/Downloads/ \
	ftp://ftp.solnet.ch/mirror/mysql/Downloads/ \
	http://mirror.switch.ch/ftp/mirror/mysql/Downloads/ \
	ftp://mirror.switch.ch/mirror/mysql/Downloads/ \
	http://ftp.itu.edu.tr/Mirror/Mysql/Downloads/ \
	ftp://ftp.itu.edu.tr/Mirror/Mysql/Downloads/ \
	http://mysql.infocom.ua/Downloads/ \
	http://mirrors.dedipower.com/www.mysql.com/Downloads/ \
	http://www.mirrorservice.org/sites/ftp.mysql.com/Downloads/ \
	ftp://ftp.mirrorservice.org/sites/ftp.mysql.com/Downloads/ \
	ftp://ftp.mysql.serenitynet.com/ \
	http://mysql.mirror.rafal.ca/Downloads/ \
	ftp://mysql.mirror.rafal.ca/pub/mysql/Downloads/ \
	http://mirror.csclub.uwaterloo.ca/mysql/Downloads/ \
	ftp://mirror.csclub.uwaterloo.ca/mysql/Downloads/ \
	http://mirror.trouble-free.net/mysql_mirror/Downloads/ \
	http://mysql.llarian.net/Downloads/ \
	ftp://mysql.llarian.net/pub/mysql/Downloads/ \
	ftp://mirror.anl.gov/pub/mysql/Downloads/ \
	http://mirror.services.wisc.edu/mysql/Downloads/ \
	ftp://mirror.services.wisc.edu/mirrors/mysql/Downloads/ \
	http://mysql.he.net/Downloads/ \
	http://mysql.patan.com.ar/Downloads/ \
	http://mysql.cce.usp.br/Downloads/ \
	http://mysql.mirrors.adc.am/Downloads/ \
	http://mysql.mirrors.arminco.com/Downloads/ \
	http://mysql.spd.co.il/Downloads/ \
	http://mirror.mirimar.net/mysql/Downloads/ \
	http://ftp.iij.ad.jp/pub/db/mysql/Downloads/ \
	ftp://ftp.iij.ad.jp/pub/db/mysql/Downloads/ \
	http://mirror.pakistani.org/mysql/Downloads/ \
	ftp://mirror.pakistani.org/pub/mysql/Downloads/ \
	http://mysql.oss.eznetsols.org/Downloads/ \
	ftp://ftp.oss.eznetsols.org/mysql/Downloads/ \
	http://mysql.cs.pu.edu.tw/Downloads/ \
	ftp://ftp.cs.pu.edu.tw/Unix/mysql/Downloads/ \
	http://mysql.ntu.edu.tw/Downloads/ \
	ftp://ftp.ntu.edu.tw/pub/MySQL/Downloads/ \
	http://mysql.cdpa.nsysu.edu.tw/Downloads/ \
	ftp://mysql.cdpa.nsysu.edu.tw/Unix/Database/MySQL/Downloads/ \
	http://mirror-fpt-telecom.fpt.net/mysql/Downloads/ \
	ftp://mirror-fpt-telecom.fpt.net//mysql/Downloads/ \
	http://mysql.mirror.ac.za/Downloads/ \
	http://mysql.inspire.net.nz/Downloads/ \
	ftp://mysql.inspire.net.nz/mysql/Downloads/

MASTER_SITE_DEBIAN+= \
	http://ftp.debian.org/debian/ \
	http://ftp.at.debian.org/debian/ \
	http://ftp.au.debian.org/debian/ \
	http://ftp.wa.au.debian.org/debian/ \
	http://ftp.bg.debian.org/debian/ \
	http://ftp.cl.debian.org/debian/ \
	http://ftp.cz.debian.org/debian/ \
	http://ftp.de.debian.org/debian/ \
	http://ftp2.de.debian.org/debian/ \
	http://ftp.ee.debian.org/debian/ \
	http://ftp.fi.debian.org/debian/ \
	http://ftp.fr.debian.org/debian/ \
	http://ftp2.fr.debian.org/debian/ \
	http://ftp.uk.debian.org/debian/ \
	http://ftp.hr.debian.org/debian/ \
	http://ftp.ie.debian.org/debian/ \
	http://ftp.is.debian.org/debian/ \
	http://ftp.it.debian.org/debian/ \
	http://ftp.jp.debian.org/debian/ \
	http://ftp.nl.debian.org/debian/ \
	http://ftp.no.debian.org/debian/ \
	http://ftp.nz.debian.org/debian/ \
	http://ftp.pl.debian.org/debian/ \
	http://ftp.ru.debian.org/debian/ \
	http://ftp.se.debian.org/debian/ \
	http://ftp.si.debian.org/debian/ \
	http://ftp.sk.debian.org/debian/ \
	http://ftp.us.debian.org/debian/

MASTER_SITE_OPENOFFICE+=	\
	http://mirrors.isc.org/pub/openoffice/ \
	http://openoffice.mirrors.ilisys.com.au/ \
	http://www.ibiblio.org/pub/mirrors/openoffice/ \
	ftp://ftp.ussg.iu.edu/pub/openoffice/ \
	http://openoffice.mirrors.pair.com/ftp/ \
	http://gd.tuwien.ac.at/office/openoffice/ \
	http://ftp.belnet.be/pub/mirror/ftp.openoffice.org/ \
	http://ftp.sh.cvut.cz/MIRRORS/OpenOffice/ \
	ftp://ftp.funet.fi/pub/mirrors/openoffice.org/ \
	ftp://openoffice.cict.fr/openoffice/ \
	ftp://sunsite.informatik.rwth-aachen.de/pub/mirror/OpenOffice/ \
	ftp://ftp.tu-chemnitz.de/pub/openoffice/ \
	ftp://ftp-stud.fht-esslingen.de/pub/Mirrors/ftp.openoffice.org/ \
	ftp://ftp.join.uni-muenster.de/pub/software/OpenOffice/ \
	http://ftp.ntua.gr/pub/OpenOffice/ \
	http://ftp.fsf.hu/OpenOffice.org/ \
	http://ftp.rhnet.is/pub/OpenOffice/ \
	http://na.mirror.garr.it/mirrors/openoffice/ \
	http://vlaai.snt.utwente.nl/pub/software/openoffice/ \
	http://niihau.student.utwente.nl/openoffice/ \
	http://borft.student.utwente.nl/openoffice/ \
	http://ftp.iasi.roedu.net/mirrors/openoffice.org/ \
	ftp://ftp.arnes.si/packages/OpenOffice.org/ \
	ftp://ftp.saix.net/pub/OpenOffice.org/ \
	http://ftp.sunet.se/pub/Office/OpenOffice.org/ \
	ftp://mirror.switch.ch/mirror/OpenOffice/ \
	http://mirror.pacific.net.au/openoffice/ \
	http://komo.vlsm.org/openoffice/ \
	ftp://ftp.kddlabs.co.jp/office/openoffice/ \
	ftp://ftp.t.ring.gr.jp/pub/misc/openoffice/ \
	ftp://ftp.kr.freebsd.org/pub/openoffice/

MASTER_SITE_CYGWIN+= \
	http://mirrors.kernel.org/sources.redhat.com/cygwin/ \
	http://mirrors.xmission.com/cygwin/ \
	ftp://ftp.t.ring.gr.jp/pub/pc/gnu-win32/ \
	ftp://ftp.funet.fi/pub/mirrors/cygwin.com/pub/cygwin/

MASTER_SITE_IFARCHIVE+= \
	http://ifarchive.flavorplex.com/if-archive/ \
	http://ifarchive.heanet.ie/if-archive/ \
	ftp://ftp.giga.or.at/pub/ifarchive/

### PGSQL list was last updated on 20100220
MASTER_SITE_PGSQL+=	\
	ftp://ftp.ar.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp2.au.postgresql.org/pub/postgresql/ \
	ftp://ftp5.ca.postgresql.org/mirrors/postgresql/ \
	http://ftp.cz.postgresql.org/ \
	ftp://ftp.cz.postgresql.org/pgsql/ \
	http://ftp2.cz.postgresql.org/pub/postgresql/ \
	ftp://ftp2.cz.postgresql.org/pub/postgresql/ \
	http://ftp.dk.postgresql.org/postgresql/ \
	ftp://ftp.dk.postgresql.org/postgresql/ \
	http://ftp.ee.postgresql.org/pub/postgresql/ \
	ftp://ftp.fi.postgresql.org/pub/postgresql/ \
	http://ftp4.fr.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp4.fr.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp.fr.postgresql.org/ \
	http://ftp3.de.postgresql.org/pub/Mirrors/ftp.postgresql.org/ \
	ftp://ftp3.de.postgresql.org/pub/Mirrors/ftp.postgresql.org/ \
	http://ftp8.de.postgresql.org/pub/misc/pgsql/ \
	ftp://ftp8.de.postgresql.org/pub/misc/pgsql/ \
	ftp://ftp7.de.postgresql.org/pub/ftp.postgresql.org/ \
	ftp://ftp9.de.postgresql.org/unix/databases/postgresql/ \
	ftp://ftp10.de.postgresql.org/pub/mirror/postgresql/ \
	http://ftp.gr.postgresql.org/pub/databases/postgresql/ \
	ftp://ftp.gr.postgresql.org/pub/databases/postgresql/ \
	http://ftp3.gr.postgresql.org/ \
	ftp://ftp3.gr.postgresql.org/mirrors/postgresql/ \
	http://ftp9.id.postgresql.org/ \
	ftp://ftp9.id.postgresql.org/postgresql/ \
	http://ftp.ie.postgresql.org/mirrors/ftp.postgresql.org/pub/ \
	ftp://ftp.ie.postgresql.org/mirrors/ftp.postgresql.org/pub/ \
	http://ftp2.ie.postgresql.org/mirrors/ftp.postgresql.org/ \
	ftp://ftp2.ie.postgresql.org/mirrors/ftp.postgresql.org/ \
	http://ftp2.it.postgresql.org/mirrors/postgres/ \
	ftp://ftp2.it.postgresql.org/mirrors/postgres/ \
	ftp://ftp3.jp.postgresql.org/pub/db/postgresql/ \
	ftp://ftp2.kr.postgresql.org/pub/postgresql/ \
	ftp://ftp.lv.postgresql.org/mirrors/ftp.postgresql.org/ \
	http://ftp2.nl.postgresql.org/ \
	ftp://ftp2.nl.postgresql.org/mirror/postgresql/ \
	ftp://ftp.nl.postgresql.org:21/pub/mirror/postgresql/ \
	ftp://ftp.nz.postgresql.org/postgresql/ \
	http://ftp6.pl.postgresql.org/pub/postgresql/ \
	ftp://ftp6.pl.postgresql.org/pub/postgresql/ \
	http://ftp8.pl.postgresql.org/pub/postgresql/ \
	ftp://ftp8.pl.postgresql.org/pub/postgresql/ \
	http://ftp9.pl.postgresql.org/pub/mirrors/ftp.postgresql.org/ \
	ftp://ftp9.pl.postgresql.org/pub/mirrors/ftp.postgresql.org/ \
	ftp://ftp7.pl.postgresql.org/pub/mirror/ftp.postgresql.org/ \
	http://ftp.pt.postgresql.org/pub/postgresql/ \
	ftp://ftp.pt.postgresql.org/pub/postgresql/ \
	ftp://ftp6.ro.postgresql.org/pub/mirrors/ftp.postgresql.org/ \
	ftp://ftp2.ru.postgresql.org/pub/databases/postgresql/ \
	ftp://ftp3.ru.postgresql.org/pub/mirror/postgresql/pub/ \
	ftp://ftp.si.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp.za.postgresql.org/mirror/ftp.postgresql.org/ \
	http://ftp.se.postgresql.org/pub/databases/relational/postgresql/ \
	ftp://ftp.se.postgresql.org/pub/databases/relational/postgresql/ \
	http://ftp2.ch.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp2.ch.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp.ch.postgresql.org/mirror/postgresql/ \
	http://ftp3.tw.postgresql.org/postgresql/ \
	ftp://ftp3.tw.postgresql.org/postgresql/ \
	http://ftp4.tw.postgresql.org/pub/postgresql/ \
	ftp://ftp4.tw.postgresql.org/pub/postgresql/ \
	http://ftp9.us.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp9.us.postgresql.org/pub/mirrors/postgresql/ \
	ftp://ftp5.us.postgresql.org/pub/PostgreSQL/ \
	ftp://ftp10.us.postgresql.org/pub/postgresql/ \
	ftp://ftp2.ua.postgresql.org/pub/postgresql/ \
	ftp://ftp3.ua.postgresql.org/pub/mirrors/postgresql/ \
	http://ftp2.uk.postgresql.org/sites/ftp.postgresql.org/ \
	ftp://ftp2.uk.postgresql.org/sites/ftp.postgresql.org/

MASTER_SITE_GENTOO+= \
	http://distfiles.gentoo.org/ \
	ftp://gentoo.arcticnetwork.ca/pub/gentoo/ \
	http://gentoo.arcticnetwork.ca/ \
	ftp://mirrors.tera-byte.com/pub/gentoo/ \
	http://gentoo.mirrors.tera-byte.com/ \
	ftp://mirror.csclub.uwaterloo.ca/gentoo-distfiles/ \
	http://mirror.csclub.uwaterloo.ca/gentoo-distfiles/ \
	http://mirror.mcs.anl.gov/pub/gentoo/ \
	ftp://mirror.mcs.anl.gov/pub/gentoo/ \
	ftp://gentoo.chem.wisc.edu/gentoo/ \
	http://gentoo.chem.wisc.edu/gentoo/ \
	http://mirrors.cs.wmich.edu/gentoo/ \
	http://mirror.datapipe.net/gentoo/ \
	ftp://mirror.datapipe.net/gentoo/ \
	ftp://ftp.gtlib.gatech.edu/pub/gentoo/ \
	http://www.gtlib.gatech.edu/pub/gentoo/ \
	http://gentoo.mirrors.hoobly.com/ \
	ftp://distro.ibiblio.org/pub/linux/distributions/gentoo/ \
	http://distro.ibiblio.org/pub/linux/distributions/gentoo/ \
	ftp://ftp.ussg.iu.edu/pub/linux/gentoo/ \
	ftp://lug.mtu.edu/gentoo/ \
	http://lug.mtu.edu/gentoo/ \
	http://gentoo.netnitco.net/ \
	ftp://gentoo.netnitco.net/pub/mirrors/gentoo/source/ \
	http://gentoo.osuosl.org/ \
	http://gentoo.mirrors.pair.com/ \
	ftp://gentoo.mirrors.pair.com/ \
	http://gentoo.llarian.net/ \
	ftp://gentoo.llarian.net/pub/gentoo/ \
	http://gentoo.mirrors.tds.net/gentoo/ \
	ftp://gentoo.mirrors.tds.net/gentoo/ \
	ftp://ftp.ucsb.edu/pub/mirrors/linux/gentoo/ \
	http://ftp.ucsb.edu/pub/mirrors/linux/gentoo/ \
	http://gentoo.cites.uiuc.edu/pub/gentoo/ \
	ftp://gentoo.cites.uiuc.edu/pub/gentoo/ \
	http://mirror.usu.edu/mirrors/gentoo/ \
	http://gentoo.localhost.net.ar/ \
	ftp://mirrors.localhost.net.ar/pub/mirrors/gentoo/ \
	http://www.las.ic.unicamp.br/pub/gentoo/ \
	ftp://ftp.las.ic.unicamp.br/pub/gentoo/ \
	http://gentoo.inode.at/ \
	ftp://gentoo.inode.at/source/ \
	http://gd.tuwien.ac.at/opsys/linux/gentoo/ \
	http://mirror.bih.net.ba/gentoo/ \
	ftp://mirror.bih.net.ba/gentoo/ \
	http://distfiles.gentoo.bg/ \
	http://ftp.gentoo.bg/ \
	http://mirrors.ludost.net/gentoo/ \
	ftp://mirrors.ludost.net/gentoo/ \
	http://gentoo.supp.name/ \
	http://ftp.fi.muni.cz/pub/linux/gentoo/ \
	ftp://ftp.fi.muni.cz/pub/linux/gentoo/ \
	http://gentoo.mirror.dkm.cz/pub/gentoo/ \
	ftp://gentoo.mirror.dkm.cz/pub/gentoo/ \
	http://gentoo.mirror.web4u.cz/ \
	ftp://gentoo.mirror.web4u.cz/ \
	ftp://ftp.klid.dk/gentoo/ \
	http://ftp.klid.dk/ftp/gentoo/ \
	http://trumpetti.atm.tut.fi/gentoo/ \
	ftp://trumpetti.atm.tut.fi/gentoo/ \
	ftp://ftp.free.fr/mirrors/ftp.gentoo.org/ \
	ftp://gentoo.imj.fr/pub/gentoo/ \
	http://mirror.ovh.net/gentoo-distfiles/ \
	ftp://mirror.ovh.net/gentoo-distfiles/ \
	ftp://de-mirror.org/distro/gentoo/ \
	http://de-mirror.org/distro/gentoo/ \
	ftp://ftp.wh2.tu-dresden.de/pub/mirrors/gentoo/ \
	ftp://ftp.gentoo.mesh-solutions.com/gentoo/ \
	http://gentoo.mneisen.org/ \
	http://linux.rz.ruhr-uni-bochum.de/download/gentoo-mirror/ \
	ftp://linux.rz.ruhr-uni-bochum.de/gentoo-mirror/ \
	ftp://sunsite.informatik.rwth-aachen.de/pub/Linux/gentoo/ \
	ftp://ftp.tu-clausthal.de/pub/linux/gentoo/ \
	http://ftp.uni-erlangen.de/pub/mirrors/gentoo/ \
	ftp://ftp.uni-erlangen.de/pub/mirrors/gentoo/ \
	ftp://ftp.join.uni-muenster.de/pub/linux/distributions/gentoo/ \
	http://ftp-stud.fht-esslingen.de/pub/Mirrors/gentoo/ \
	ftp://ftp-stud.fht-esslingen.de/pub/Mirrors/gentoo/ \
	ftp://ftp6.uni-muenster.de/pub/linux/distributions/gentoo/ \
	ftp://files.gentoo.gr/ \
	http://files.gentoo.gr/ \
	ftp://ftp.ntua.gr/pub/linux/gentoo/ \
	http://ftp.ntua.gr/pub/linux/gentoo/ \
	ftp://ftp.cc.uoc.gr/mirrors/linux/gentoo/ \
	http://ftp.cc.uoc.gr/mirrors/linux/gentoo/ \
	http://gentoo.inf.elte.hu/ \
	ftp://gentoo.inf.elte.hu/ \
	http://ftp.rhnet.is/pub/gentoo/ \
	ftp://ftp.rhnet.is/pub/gentoo/ \
	http://ftp.heanet.ie/pub/gentoo/ \
	ftp://ftp.heanet.ie/pub/gentoo/ \
	http://gentoo.tups.lv/source/ \
	http://mirror.muntinternet.net/pub/gentoo/ \
	ftp://mirror.muntinternet.net/pub/gentoo/ \
	http://gentoo.tiscali.nl/ \
	ftp://gentoo.tiscali.nl/pub/mirror/gentoo/ \
	http://ftp.snt.utwente.nl/pub/os/linux/gentoo/ \
	ftp://ftp.snt.utwente.nl/pub/os/linux/gentoo/ \
	http://mirror.gentoo.no/ \
	http://gentoo.prz.rzeszow.pl/ \
	http://gentoo.po.opole.pl/ \
	ftp://gentoo.po.opole.pl/ \
	http://ftp.vectranet.pl/gentoo/ \
	ftp://ftp.vectranet.pl/gentoo/ \
	http://gentoo.mirror.pw.edu.pl/ \
	http://darkstar.ist.utl.pt/gentoo/ \
	ftp://darkstar.ist.utl.pt/pub/gentoo/ \
	ftp://cesium.di.uminho.pt/pub/gentoo/ \
	ftp://ftp.dei.uc.pt/pub/linux/gentoo/ \
	http://ftp.dei.uc.pt/pub/linux/gentoo/ \
	http://mirrors.evolva.ro/gentoo/ \
	ftp://mirrors.evolva.ro/gentoo/ \
	http://ftp.roedu.net/pub/mirrors/gentoo.org/ \
	ftp://ftp.roedu.net/pub/mirrors/gentoo.org/ \
	http://mirrors.xservers.ro/gentoo/ \
	http://mirror.yandex.ru/gentoo-distfiles/ \
	ftp://mirror.yandex.ru/gentoo-distfiles/ \
	http://gentoo.ynet.sk/pub/ \
	http://gentoo-euetib.upc.es/mirror/gentoo/ \
	http://ftp.udc.es/gentoo/ \
	ftp://ftp.udc.es/gentoo/ \
	ftp://ftp.ds.karen.hj.se/gentoo/ \
	http://ftp.ds.karen.hj.se/gentoo/ \
	ftp://ftp.ing.umu.se/linux/gentoo/ \
	http://ftp.ing.umu.se/linux/gentoo/ \
	ftp://mirror.mdfnet.se/gentoo/ \
	http://mirror.mdfnet.se/mirror/gentoo/ \
	http://mirror.switch.ch/ftp/mirror/gentoo/ \
	ftp://mirror.switch.ch/mirror/gentoo/ \
	http://mirror.bytemark.co.uk/gentoo/ \
	http://mirror.qubenet.net/mirror/gentoo/ \
	ftp://mirror.qubenet.net/mirror/gentoo/ \
	http://www.mirrorservice.org/sites/www.ibiblio.org/gentoo/ \
	ftp://ftp.mirrorservice.org/sites/www.ibiblio.org/gentoo/ \
	http://gentoo.virginmedia.com/ \
	ftp://gentoo.virginmedia.com/mirrors/gentoo/ \
	http://mirror.pacific.net.au/linux/Gentoo/ \
	ftp://mirror.pacific.net.au/linux/Gentoo/ \
	ftp://ftp.swin.edu.au/gentoo/ \
	http://ftp.swin.edu.au/gentoo/ \
	http://gentoo.channelx.biz/ \
	http://gentoo.gg3.net/ \
	ftp://gg3.net/pub/linux/gentoo/ \
	http://ftp.iij.ad.jp/pub/linux/gentoo/ \
	ftp://ftp.iij.ad.jp/pub/linux/gentoo/ \
	http://ftp.jaist.ac.jp/pub/Linux/Gentoo/ \
	ftp://ftp.jaist.ac.jp/pub/Linux/Gentoo/ \
	http://ftp.daum.net/gentoo/ \
	http://ftp.kaist.ac.kr/pub/gentoo/ \
	ftp://ftp.kaist.ac.kr/gentoo/ \
	http://ftp.lecl.net/pub/gentoo/ \
	ftp://ftp.lecl.net/pub/gentoo/ \
	http://ftp.twaren.net/Linux/Gentoo/ \
	ftp://ftp.twaren.net/Linux/Gentoo/ \
	ftp://ftp.ncnu.edu.tw/Linux/Gentoo/ \
	http://ftp.ncnu.edu.tw/Linux/Gentoo/ \
	ftp://gentoo.cs.nctu.edu.tw/gentoo/ \
	http://gentoo.cs.nctu.edu.tw/gentoo/ \
	ftp://ftp.cs.pu.edu.tw/Linux/Gentoo/ \
	http://ftp.cs.pu.edu.tw/Linux/Gentoo/ \
	http://gentoo.kems.net/ \
	ftp://gentoo.kems.net/mirrors/gentoo/

MASTER_SITE_XORG+= \
	http://xorg.freedesktop.org/releases/individual/ \
	ftp://ftp.x.org/pub/individual/ \
	ftp://ftp.sunet.se/pub/X11/ftp.x.org/individual/ \
	ftp://sunsite.uio.no/pub/X11/individual/

MASTER_SITE_FREEBSD+= \
	ftp://ftp.FreeBSD.org/pub/FreeBSD/distfiles/ \
	ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/distfiles/

MASTER_SITE_FREEBSD_LOCAL+= \
	ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/ \
	ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/

MASTER_SITE_NETLIB+= \
	http://netlib.org/ \
	http://netlib.sandia.gov/ \
	http://www.netlib.no/netlib/ \
	http://www.mirrorservice.org/sites/netlib.bell-labs.com/netlib/

# The primary backup site.
MASTER_SITE_BACKUP?=	\
	ftp://ftp.fi.NetBSD.org/pub/NetBSD/packages/distfiles/ \
	ftp://ftp.NetBSD.org/pub/NetBSD/packages/distfiles/ \
	http://ftp.NetBSD.org/pub/NetBSD/packages/distfiles/ \
	ftp://ftp.FreeBSD.org/pub/FreeBSD/distfiles/
