#!@PERL5@
#
# $NetBSD: patchdiff.pl,v 1.11 2010/07/04 22:18:28 sbd Exp $
#
# patchdiff: compares a set of patches patch-aa, patch-ab, ... in
#   $WRKDIR/.newpatches in the with another set in patches.
#
# Copyright (c) 2000 by Dieter Baron <dillo@giga.or.at> and
#                       Thomas Klausner <wiz@NetBSD.org>  
# All Rights Reserved.  Absolutely no warranty.  

use Getopt::Std;
use Cwd;
use File::Spec;

my $oldpatchdir, $newpatchdir;
my $wrkdir, $thisdir;
my %orig, %new;

sub getfilename {
    my $fname=shift;
    local $_;
    local *handle;
    open(handle, $fname);
    while (<handle>) {
	next unless m/^\+\+\+[	 ]([^ 	]*)/;
	close(handle);
	$_ = $1;
	chomp();
	s/^\.\///; # ignore leading "./", if any.
	return $_;
     }
     close(handle);
     return undef;
}

sub putinhash {
    my $hash=shift;
    my $files=shift;
    my $temp;
    local *handle;
    open(handle, "ls $files|");
    while(<handle>) {
	chomp;
	$temp=getfilename($_);
	$$hash{$temp}=File::Spec->abs2rel($_, $thisdir);
     }
     close(handle);
}

getopts('d:h');

if ($opt_h) {
		($prog) = ($0 =~ /([^\/]+)$/);
		print STDERR <<EOF;
usage: $prog [-d output-directory]
    -d dirname	directory to compare the patches in patches/ to;
		defaults to \$WRKDIR/.newpatches
EOF
		exit 0;
};

%orig=();
%new=();
$thisdir=cwd();
chomp($thisdir);
$oldpatchdir=`@MAKE@ show-var VARNAME=PATCHDIR` or
    die ("can't find PATCHDIR -- wrong dir?");
chomp($oldpatchdir);

$wrkdir=`@MAKE@ show-var VARNAME=WRKDIR` or 
    die ("can't find WRKDIR -- wrong dir?");
chomp($wrkdir);

if ($opt_d) {
    $newpatchdir = cwd()."/$opt_d";
} 
else {
    $newpatchdir="$wrkdir"."/.newpatches";
}

if ( ! -d $oldpatchdir) {
    print "No old patches found (directory $oldpatchdir not found)\n";
    exit(0);
}
if ( ! -d $newpatchdir ) {
    print "No new patches found (directory $newpatchdir not found)\n";
    exit(0);
}
putinhash(\%orig,"$oldpatchdir/patch-*");
putinhash(\%new,"$newpatchdir/patch-*");
foreach $patch (keys%orig) {
    print "Only in old: $orig{$patch} ($patch)\n" unless defined($new{$patch});
}
foreach $patch (keys%new) {
    if (defined($orig{$patch})) {
#	system("diff",$orig{$patch},$new{$patch});
	$diff=`diff $orig{$patch} $new{$patch}`;
	# the following regex try to eliminate uninteresting differences
	# The general structure of the diffs-to-be-removed is:
	# 25c25
	# < --- something.orig 2008-08-08 08:08
	# ---
	# > --- something.orig 2008-08-08 18:08
	#
	# In particular, remove hunks with:
	# . NetBSD RCS Id tag differences
	$diff=~s/^[\d,]+c[\d,]+\n..\$[N]etBSD.*\$\n---\n..\$[N]etBSD.*\$\n//m;
	# . only the name or date of the output file changed
	$diff=~s/^[\d,]+c[\d,]+\n..\+\+\+.*\n---\n..\+\+\+.*\n//m;
	# . only the name or date of the input file changed
	$diff=~s/^[\d,]+c[\d,]+\n.\s---\s.*\.orig\s.*\n---\n.\s---\s.*\n//m;
	$diff=~s/^[\d,]+c[\d,]+\n.\s---\s.*\n---\n.\s---\s.*\.orig\s.*\n//m;
	# . only line numbers changed
	$diff=~s/^[\d,]+c[\d,]+\n.\s@@\s.*\s@@.*\n---\n.\s@@\s.*\s@@.*\n//mg;
	if ($diff) {
	     print "Comparing $orig{$patch} to $new{$patch}\n$diff";
	}
     } else {
	print "Only in new: $new{$patch} ($patch)\n" 
     }
}
