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
#   File: medusa.pri
#
# Author: $author$
#   Date: 9/3/2018
#
# QtCreator .pri file for medusa
########################################################################

OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

########################################################################
# rostra
ROSTRA_VERSION_MAJOR = 0
ROSTRA_VERSION_MINOR = 0
ROSTRA_VERSION_RELEASE = 0
ROSTRA_VERSION = $${ROSTRA_VERSION_MAJOR}.$${ROSTRA_VERSION_MINOR}.$${ROSTRA_VERSION_RELEASE}
ROSTRA_NAME = rostra
ROSTRA_GROUP = $${ROSTRA_NAME}
ROSTRA_SOURCE = src
ROSTRA_DIR = $${ROSTRA_GROUP}/$${ROSTRA_NAME}-$${ROSTRA_VERSION}
ROSTRA_PKG_DIR = $${ROSTRA_NAME}
ROSTRA_HOME_BUILD = $${HOME}/build/$${ROSTRA_NAME}
ROSTRA_HOME_BUILD_INCLUDE = $${ROSTRA_HOME_BUILD}/include
ROSTRA_HOME_BUILD_LIB = $${ROSTRA_HOME_BUILD}/lib
ROSTRA_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${ROSTRA_DIR}
ROSTRA_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${ROSTRA_DIR}
ROSTRA_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${ROSTRA_PKG_DIR}
ROSTRA_THIRDPARTY_SRC_GROUP = $${ROSTRA_NAME}
ROSTRA_THIRDPARTY_SRC_NAME = $${ROSTRA_NAME}
ROSTRA_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${ROSTRA_THIRDPARTY_SRC_GROUP}/$${ROSTRA_THIRDPARTY_SRC_NAME} 
ROSTRA_PKG = $${OTHER_PKG}/$${ROSTRA_PKG_DIR}
ROSTRA_PRJ = $${OTHER_PRJ}/$${ROSTRA_PKG_DIR}
#ROSTRA_SRC = $${ROSTRA_THIRDPARTY_SRC_DIR}
#ROSTRA_SRC = $${ROSTRA_THIRDPARTY_PKG}/$${ROSTRA_SOURCE}
#ROSTRA_SRC = $${ROSTRA_THIRDPARTY_PRJ}/$${ROSTRA_SOURCE}
#ROSTRA_SRC = $${ROSTRA_PKG}/$${ROSTRA_SOURCE}
ROSTRA_SRC = $${ROSTRA_PRJ}/$${ROSTRA_SOURCE}

# rostra INCLUDEPATH
#
#rostra_INCLUDEPATH += \
#$${ROSTRA_HOME_BUILD_INCLUDE} \

rostra_INCLUDEPATH += \
$${ROSTRA_SRC} \

# rostra DEFINES
#
rostra_DEFINES += \

########################################################################
# nadir
NADIR_VERSION_MAJOR = 0
NADIR_VERSION_MINOR = 0
NADIR_VERSION_RELEASE = 0
NADIR_VERSION = $${NADIR_VERSION_MAJOR}.$${NADIR_VERSION_MINOR}.$${NADIR_VERSION_RELEASE}
NADIR_NAME = nadir
NADIR_GROUP = $${NADIR_NAME}
NADIR_SOURCE = src
NADIR_DIR = $${NADIR_GROUP}/$${NADIR_NAME}-$${NADIR_VERSION}
NADIR_PKG_DIR = $${NADIR_NAME}
NADIR_HOME_BUILD = $${HOME}/build/$${NADIR_NAME}
NADIR_HOME_BUILD_INCLUDE = $${NADIR_HOME_BUILD}/include
NADIR_HOME_BUILD_LIB = $${NADIR_HOME_BUILD}/lib
NADIR_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${NADIR_DIR}
NADIR_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${NADIR_DIR}
NADIR_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${NADIR_PKG_DIR}
NADIR_THIRDPARTY_SRC_GROUP = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_NAME = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${NADIR_THIRDPARTY_SRC_GROUP}/$${NADIR_THIRDPARTY_SRC_NAME} 
NADIR_PKG = $${OTHER_PKG}/$${NADIR_PKG_DIR}
NADIR_PRJ = $${OTHER_PRJ}/$${NADIR_PKG_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_SRC_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_PKG}/$${NADIR_SOURCE}
#NADIR_SRC = $${NADIR_THIRDPARTY_PRJ}/$${NADIR_SOURCE}
#NADIR_SRC = $${NADIR_PKG}/$${NADIR_SOURCE}
NADIR_SRC = $${NADIR_PRJ}/$${NADIR_SOURCE}

# nadir INCLUDEPATH
#
#nadir_INCLUDEPATH += \
#$${NADIR_HOME_BUILD_INCLUDE} \

nadir_INCLUDEPATH += \
$${NADIR_SRC} \

# nadir DEFINES
#
nadir_DEFINES += \

########################################################################
# xosnadir

# xosnadir INCLUDEPATH
#
xosnadir_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# xosnadir DEFINES
#
xosnadir_DEFINES += \
$${nadir_DEFINES} \
NO_USE_NADIR_BASE \
NO_USE_XOS_LOGGER_INTERFACE \

########################################################################
# coral
CORAL_VERSION_MAJOR = 0
CORAL_VERSION_MINOR = 0
CORAL_VERSION_RELEASE = 0
CORAL_VERSION = $${CORAL_VERSION_MAJOR}.$${CORAL_VERSION_MINOR}.$${CORAL_VERSION_RELEASE}
CORAL_NAME = coral
CORAL_GROUP = $${CORAL_NAME}
CORAL_SOURCE = src
CORAL_DIR = $${CORAL_GROUP}/$${CORAL_NAME}-$${CORAL_VERSION}
CORAL_PKG_DIR = $${CORAL_NAME}
CORAL_HOME_BUILD = $${HOME}/build/$${CORAL_NAME}
CORAL_HOME_BUILD_INCLUDE = $${CORAL_HOME_BUILD}/include
CORAL_HOME_BUILD_LIB = $${CORAL_HOME_BUILD}/lib
CORAL_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${CORAL_DIR}
CORAL_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${CORAL_DIR}
CORAL_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${CORAL_PKG_DIR}
CORAL_THIRDPARTY_SRC_GROUP = $${CORAL_NAME}
CORAL_THIRDPARTY_SRC_NAME = $${CORAL_NAME}
CORAL_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${CORAL_THIRDPARTY_SRC_GROUP}/$${CORAL_THIRDPARTY_SRC_NAME} 
CORAL_PKG = $${OTHER_PKG}/$${CORAL_PKG_DIR}
CORAL_PRJ = $${OTHER_PRJ}/$${CORAL_PKG_DIR}
#CORAL_SRC = $${CORAL_THIRDPARTY_SRC_DIR}
#CORAL_SRC = $${CORAL_THIRDPARTY_PKG}/$${CORAL_SOURCE}
#CORAL_SRC = $${CORAL_THIRDPARTY_PRJ}/$${CORAL_SOURCE}
#CORAL_SRC = $${CORAL_PKG}/$${CORAL_SOURCE}
CORAL_SRC = $${CORAL_PRJ}/$${CORAL_SOURCE}

# coral INCLUDEPATH
#
#coral_INCLUDEPATH += \
#$${CORAL_HOME_BUILD_INCLUDE} \

coral_INCLUDEPATH += \
$${CORAL_SRC} \

# coral DEFINES
#
coral_DEFINES += \

########################################################################
# ncoral

# ncoral INCLUDEPATH
#
#ncoral_INCLUDEPATH += \
#$${CORAL_HOME_BUILD_INCLUDE} \

ncoral_INCLUDEPATH += \
$${CORAL_SRC} \

# ncoral DEFINES
#
ncoral_DEFINES += \

########################################################################
# medusa
FRAMEWORK_NAME = medusa
FRAMEWORK_SOURCE = src

MEDUSA_PKG = ../../../../..
MEDUSA_BLD = ../..

MEDUSA_PRJ = $${MEDUSA_PKG}
MEDUSA_BIN = $${MEDUSA_BLD}/bin
MEDUSA_LIB = $${MEDUSA_BLD}/lib
MEDUSA_SRC = $${MEDUSA_PKG}/$${FRAMEWORK_SOURCE}

# medusa BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
medusa_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
medusa_DEFINES += RELEASE_BUILD
}

# medusa INCLUDEPATH
#
medusa_INCLUDEPATH += \
$${MEDUSA_SRC} \
$${coral_INCLUDEPATH} \
$${xosnadir_INCLUDEPATH} \
$${build_medusa_INCLUDEPATH} \

# medusa DEFINES
#
medusa_DEFINES += \
$${xosnadir_DEFINES} \
$${coral_DEFINES} \
$${build_medusa_DEFINES} \

# medusa LIBS
#
medusa_LIBS += \
-L$${MEDUSA_LIB}/lib$${FRAMEWORK_NAME} \
-l$${FRAMEWORK_NAME} \

########################################################################
# nmedusa

# nmedusa BUILD_CONFIG
#
CONFIG(debug, debug|release) {
nmedusa_DEFINES += DEBUG_BUILD
} else {
nmedusa_DEFINES += RELEASE_BUILD
}

# nmedusa INCLUDEPATH
#
nmedusa_INCLUDEPATH += \
$${MEDUSA_SRC} \
$${rostra_INCLUDEPATH} \
$${coral_INCLUDEPATH} \
$${nadir_INCLUDEPATH} \
$${build_nmedusa_INCLUDEPATH} \

# nmedusa DEFINES
#
nmedusa_DEFINES += \
$${rostra_DEFINES} \
$${nadir_DEFINES} \
$${coral_DEFINES} \
$${build_nmedusa_DEFINES} \

# nmedusa LIBS
#
nmedusa_LIBS += \
-L$${MEDUSA_LIB}/libn$${FRAMEWORK_NAME} \
-ln$${FRAMEWORK_NAME} \
