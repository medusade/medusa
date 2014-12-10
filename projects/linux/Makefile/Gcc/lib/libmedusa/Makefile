########################################################################
# Copyright (c) 1988-2014 $organization$
#
# This software is provided by the author and contributors ``as is'' 
# and any express or implied warranties, including, but not limited to, 
# the implied warranties of merchantability and fitness for a particular 
# purpose are disclaimed. In no event shall the author or contributors 
# be liable for any direct, indirect, incidental, special, exemplary, 
# or consequential damages (including, but not limited to, procurement 
# of substitute goods or services; loss of use, data, or profits; or 
# business interruption) however caused and on any theory of liability, 
# whether in contract, strict liability, or tort (including negligence 
# or otherwise) arising in any way out of the use of this software, 
# even if advised of the possibility of such damage.
#
#   File: Makefile
#
# Author: $author$
#   Date: 12/8/2014
#
# Linux Gcc Makefile for Xde libmedusa Static Library
########################################################################
PKG = ../../../../../..

MAK = projects/Makefile/Gcc
PRJ = projects/linux/Makefile/Gcc
SRC = src

include $(PKG)/$(PRJ)/Makedefines
include $(PKG)/$(MAK)/Makefile
include $(PKG)/$(MAK)/lib/libmedusa/Makefile

#
# target
#
LIBTARGET = libmedusa.$(LIBEXT)

#
# user defines
#
USRDEFINES = \
$(libmedusa_USRDEFINES) \

#
# user includes
#
USRINCLUDES = \
$(libmedusa_USRINCLUDES) \

#
# user libdirs
#
USRLIBDIRS = \
$(libmedusa_USRLIBDIRS) \

#
# user c++ flags
#
USRCXXFLAGS = \
$(libmedusa_USRCXXFLAGS) \

#
# user c flags
#
USRCFLAGS = \
$(libmedusa_USRCFLAGS) \

#
# user ld flags
#
USRLDFLAGS = \
$(libmedusa_USRLDFLAGS) \

#
# Static Library C sources
#
LIB_C_SOURCES = \
$(libmedusa_C_SOURCES) \

#
# Static Library C++ .cc sources
#
LIB_CC_SOURCES = \
$(libmedusa_CC_SOURCES) \

#
# Static Library C++ .cxx sources
#
LIB_CXX_SOURCES = \
$(libmedusa_CXX_SOURCES) \

#
# Static Library C++ .cpp sources
#
LIB_CPP_SOURCES = \
$(libmedusa_CPP_SOURCES) \

#
# Static Library Objective C .m sources
#
LIB_M_SOURCES = \
$(libmedusa_M_SOURCE) \

#
# Static Library Objective C++ .mm sources
#
LIB_MM_SOURCES = \
$(libmedusa_MM_SOURCES) \

#
# Static Library depends
#
#LIBDEP = \
#$(PKG)/$(BLD)/libsomelib \
#
LIBDEP = \

#
# Static Library depend dirs
#
#LIBDEP_DIRS = \
#../libsomelib
#
LIBDEP_DIRS = \

include $(PKG)/$(PRJ)/Makerules

#
# Static Library depend rules
#
#$(PKG)/$(BLD)/libsomelib.a:
#	@(echo Building libsomelib.a ...;\
#	  pushd ../libsomelib;\
#	  ((make) || (exit 1));\
#	  popd)
#

        

