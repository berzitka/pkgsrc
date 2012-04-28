$NetBSD: patch-mozilla_netwerk_protocol_http_HttpChannelParent.cpp,v 1.2 2012/04/28 22:48:06 ryoon Exp $

* Fix build with gcc<4.5, for example, DragonFly 3.0.1.
  See https://bugzilla.mozilla.org/show_bug.cgi?id=621446

--- mozilla/netwerk/protocol/http/HttpChannelParent.cpp.orig	2012-04-23 06:28:12.000000000 +0000
+++ mozilla/netwerk/protocol/http/HttpChannelParent.cpp
@@ -331,10 +331,15 @@ HttpChannelParent::RecvUpdateAssociatedC
   return true;
 }
 
-// Bug 621446 investigation, we don't want conditional PR_Aborts bellow to be
+// Bug 621446 investigation, we don't want conditional PR_Aborts below to be
 // merged to a single address.
 #pragma warning(disable : 4068)
+// Compiling with a version of GCC <= 4.4 fails with an internal compiler
+// error.
+#if !defined(__GNUC__) || \
+  (__GNUC__ >= 5) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5)
 #pragma GCC optimize ("O0")
+#endif
 
 bool
 HttpChannelParent::RecvRedirect2Verify(const nsresult& result, 
