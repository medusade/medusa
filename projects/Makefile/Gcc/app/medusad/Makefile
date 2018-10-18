########################################################################
# Copyright (c) 1988-2018 $organization$
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
#   Date: 10/18/2018
#
# generic Gcc Makefile for medusa Executable medusad
########################################################################


#
# target
#
medusad_EXETARGET = medusad

########################################################################

#
# user c++ flags
#
medusad_USRCXXFLAGS += \
${medusa_USRCXXFLAGS} \

#
# user defines
#
medusad_USRDEFINES += \
${medusa_USRDEFINES} \

#
# user includes
#
medusad_USRINCLUDES += \
${medusa_USRINCLUDES} \

#
# user libdirs
#
medusad_USRLIBDIRS += \
${medusa_USRLIBDIRS} \

########################################################################

#
# Executable .c sources
#
#medusad_EXE_C_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.c \

#
# Executable .cc sources
#
#medusad_EXE_CC_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.cc \

#
# Executable .cxx sources
#
#medusad_EXE_CXX_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.cxx \

#
# Executable .cpp sources
#
medusad_EXE_CPP_SOURCES += \
${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor.cpp \
${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor_instance.cpp \
${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processors.cpp \
${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main.cpp \
${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main_instance.cpp \
${MEDUSA_SRC}/medusa/console/main_main.cpp \

#
# Executable .m sources
#
#medusad_EXE_M_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.m \

#
# Executable .mm sources
#
#medusad_EXE_MM_SOURCES += \
#${MEDUSA_SRC}/medusa/base/Base.mm \


########################################################################

#
# Executable libraries
#
medusad_LIBS += \
${medusa_LIBS}



