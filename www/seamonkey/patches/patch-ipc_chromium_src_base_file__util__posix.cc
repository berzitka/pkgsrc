$NetBSD: patch-ipc_chromium_src_base_file__util__posix.cc,v 1.4 2012/04/28 22:48:06 ryoon Exp $

--- mozilla/ipc/chromium/src/base/file_util_posix.cc.orig	2012-04-23 06:27:38.000000000 +0000
+++ mozilla/ipc/chromium/src/base/file_util_posix.cc
@@ -31,7 +31,7 @@
 #include "base/time.h"
 
 // FreeBSD/OpenBSD lacks stat64, but its stat handles files >2GB just fine
-#if defined(OS_FREEBSD) || defined(OS_OPENBSD)
+#ifndef __linux__
 #define stat64 stat
 #endif
 
