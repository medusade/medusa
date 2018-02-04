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
#   File: medusa.pri
#
# Author: $author$
#   Date: 11/23/2014
########################################################################

MEDUSA_PKG = ../../../../..
MEDUSA_BLD = ../..
MEDUSA_PRJ = $${MEDUSA_PKG}
MEDUSA_BIN = $${MEDUSA_BLD}/bin
MEDUSA_LIB = $${MEDUSA_BLD}/lib
MEDUSA_SRC = $${MEDUSA_PKG}/src

########################################################################
# xos
XOS_PKG = $${MEDUSA_PKG}/../xos
XOS_PRJ = $${XOS_PKG}
XOS_SRC = $${XOS_PKG}/src

xos_INCLUDEPATH += \
$${XOS_SRC} \

xos_DEFINES += \

########################################################################
# nadir
NADIR_PKG = $${MEDUSA_PKG}/../nadir
NADIR_PRJ = $${NADIR_PKG}
NADIR_SRC = $${NADIR_PKG}/src

nadir_INCLUDEPATH += \
$${NADIR_SRC} \

nadir_DEFINES += \
NO_USE_XOS_LOGGER_INTERFACE \

nadir_thirdparty_xos_INCLUDEPATH += \
$${NADIR_SRC}/thirdparty/xos \

########################################################################
# coke
COKE_NAME = coke
COKE_VERSION_MAJOR = 0
COKE_VERSION_MINOR = 0
COKE_VERSION_RELEASE = 0
COKE_VERSION = $${COKE_VERSION_MAJOR}.$${COKE_VERSION_MINOR}.$${COKE_VERSION_RELEASE}
COKE_DIR = $${COKE_NAME}-$${COKE_VERSION}
COKE_PKG = $${MEDUSA_PKG}/thirdparty/$${COKE_NAME}/$${COKE_DIR}
COKE_PRJ = $${COKE_PKG}
COKE_SRC = $${COKE_PKG}/src

coke_INCLUDEPATH += \
$${COKE_SRC} \
$${nadir_INCLUDEPATH} \

coke_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# cheyenne
CHEYENNE_NAME = cheyenne
CHEYENNE_VERSION_MAJOR = 0
CHEYENNE_VERSION_MINOR = 0
CHEYENNE_VERSION_RELEASE = 0
CHEYENNE_VERSION = $${CHEYENNE_VERSION_MAJOR}.$${CHEYENNE_VERSION_MINOR}.$${CHEYENNE_VERSION_RELEASE}
CHEYENNE_DIR = $${CHEYENNE_NAME}-$${CHEYENNE_VERSION}
CHEYENNE_PKG = $${MEDUSA_PKG}/thirdparty/$${CHEYENNE_NAME}/$${CHEYENNE_DIR}
CHEYENNE_PRJ = $${CHEYENNE_PKG}
CHEYENNE_SRC = $${CHEYENNE_PKG}/src

cheyenne_INCLUDEPATH += \
$${CHEYENNE_SRC} \
$${coke_INCLUDEPATH} \

cheyenne_DEFINES += \
$${coke_DEFINES} \

########################################################################
# medusa
medusa_INCLUDEPATH += \
$${MEDUSA_SRC} \
$${nadir_INCLUDEPATH} \

medusa_DEFINES += \
$${nadir_DEFINES} \
