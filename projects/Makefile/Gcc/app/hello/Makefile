########################################################################
# Copyright (c) 1988-2019 $organization$
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
#   Date: 4/7/2019
#
# generic Gcc Makefile for medusa Executable hello
########################################################################


#
# target
#
hello_EXETARGET = hello

########################################################################

#
# user c++ flags
#
hello_USRCXXFLAGS += \
${medusa_USRCXXFLAGS} \

#
# user defines
#
hello_USRDEFINES += \
${medusa_USRDEFINES} \

#
# user includes
#
hello_USRINCLUDES += \
${medusa_USRINCLUDES} \

#
# user libdirs
#
hello_USRLIBDIRS += \
${medusa_USRLIBDIRS} \

########################################################################

#
# Executable .c sources
#
#hello_EXE_C_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.c \

#
# Executable .cc sources
#
#hello_EXE_CC_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.cc \

#
# Executable .cxx sources
#
#hello_EXE_CXX_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.cxx \

#
# Executable .cpp sources
#
hello_EXE_CPP_SOURCES += \
${MEDUSA_SRC}/medusa/app/console/hello/main_opt.cpp \
${MEDUSA_SRC}/medusa/app/console/hello/main.cpp \
${MEDUSA_SRC}/medusa/console/main_main.cpp \

#
# Executable .m sources
#
#hello_EXE_M_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.m \

#
# Executable .mm sources
#
#hello_EXE_MM_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.mm \


########################################################################

#
# Executable libraries
#
hello_LIBS += \
${medusa_LIBS}



