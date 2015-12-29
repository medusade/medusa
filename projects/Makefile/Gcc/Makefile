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
# Common Gcc Makefile for medusa
########################################################################
MEDUSA_PKG = ${PKG}
MEDUSA_SRC = ${MEDUSA_PKG}/src
MEDUSA_BLD = ${MEDUSA_PKG}/${BLD}/${BUILD_TYPE}
MEDUSA_LIB = ${MEDUSA_BLD}/lib
MEDUSA_BIN = ${MEDUSA_BLD}/bin

########################################################################
# xos
XOS_PKG = ${MEDUSA_PKG}/../nadir
XOS_SRC = ${XOS_PKG}/src
XOS_BLD = ${XOS_PKG}/${BLD}/${BUILD_TYPE}
XOS_LIB = ${XOS_BLD}/lib
XOS_BIN = ${XOS_BLD}/bin

########################################################################
# coral
CORAL_PKG = ${MEDUSA_PKG}/../coral
CORAL_PRJ = ${CORAL_PKG}
CORAL_SRC = ${CORAL_PKG}/src
CORAL_BLD = ${CORAL_PKG}/${BLD}/${BUILD_TYPE}
CORAL_LIB = ${CORAL_BLD}/lib
CORAL_BIN = ${CORAL_BLD}/bin

########################################################################
# medusa
medusa_USRDEFINES += \

medusa_USRINCLUDES += \
-I${MEDUSA_SRC} \
-I${CORAL_SRC} \
-I${XOS_SRC} \

medusa_USRCXXFLAGS += \
-std=c++0x

medusa_USRLIBDIRS += \
-L${CORAL_LIB} \
-L${XOS_LIB} \

medusa_LIBS += \
-lcoral \
-lxosnadir \
