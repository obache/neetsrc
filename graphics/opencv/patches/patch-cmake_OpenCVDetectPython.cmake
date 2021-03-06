$NetBSD: patch-cmake_OpenCVDetectPython.cmake,v 1.1 2019/12/16 08:24:39 adam Exp $

Do not look for Python 2.x.

--- cmake/OpenCVDetectPython.cmake.orig	2019-12-16 06:04:25.000000000 +0000
+++ cmake/OpenCVDetectPython.cmake
@@ -268,13 +268,6 @@ if(OPENCV_PYTHON_SKIP_DETECTION)
   return()
 endif()
 
-find_python("" "${MIN_VER_PYTHON2}" PYTHON2_LIBRARY PYTHON2_INCLUDE_DIR
-    PYTHON2INTERP_FOUND PYTHON2_EXECUTABLE PYTHON2_VERSION_STRING
-    PYTHON2_VERSION_MAJOR PYTHON2_VERSION_MINOR PYTHON2LIBS_FOUND
-    PYTHON2LIBS_VERSION_STRING PYTHON2_LIBRARIES PYTHON2_LIBRARY
-    PYTHON2_DEBUG_LIBRARIES PYTHON2_LIBRARY_DEBUG PYTHON2_INCLUDE_PATH
-    PYTHON2_INCLUDE_DIR PYTHON2_INCLUDE_DIR2 PYTHON2_PACKAGES_PATH
-    PYTHON2_NUMPY_INCLUDE_DIRS PYTHON2_NUMPY_VERSION)
 
 option(OPENCV_PYTHON3_VERSION "Python3 version" "")
 find_python("${OPENCV_PYTHON3_VERSION}" "${MIN_VER_PYTHON3}" PYTHON3_LIBRARY PYTHON3_INCLUDE_DIR
