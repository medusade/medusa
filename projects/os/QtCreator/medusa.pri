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
# Os QtCreator .pri file for medusa
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
MEDUSA_OS = macosx
} else {
MEDUSA_OS = linux
}

#CONFIG += c++11
#CONFIG += c++0x

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${MEDUSA_OS}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${NADIR_THIRDPARTY_PRJ}/build/$${MEDUSA_OS}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${NADIR_THIRDPARTY_PRJ}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
#NADIR_LIB = $${NADIR_PKG_BLD}/lib
NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${MEDUSA_LIB}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_NAME} \
-l$${NADIR_NAME} \

# xosnadir LIBS
#
xosnadir_LIBS += \
-L$${NADIR_LIB}/libxos$${NADIR_NAME} \
-lxos$${NADIR_NAME} \

########################################################################
# coral
CORAL_THIRDPARTY_PKG_MAKE_BLD = $${CORAL_THIRDPARTY_PKG}/build/$${MEDUSA_OS}/$${BUILD_CONFIG}
CORAL_THIRDPARTY_PRJ_MAKE_BLD = $${CORAL_THIRDPARTY_PRJ}/build/$${MEDUSA_OS}/$${BUILD_CONFIG}
CORAL_THIRDPARTY_PKG_BLD = $${CORAL_THIRDPARTY_PKG}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
CORAL_THIRDPARTY_PRJ_BLD = $${CORAL_THIRDPARTY_PRJ}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
CORAL_PKG_BLD = $${OTHER_BLD}/$${CORAL_PKG}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
CORAL_PRJ_BLD = $${OTHER_BLD}/$${CORAL_PRJ}/build/$${MEDUSA_OS}/QtCreator/$${BUILD_CONFIG}
#CORAL_LIB = $${CORAL_THIRDPARTY_PKG_MAKE_BLD}/lib
#CORAL_LIB = $${CORAL_THIRDPARTY_PRJ_MAKE_BLD}/lib
#CORAL_LIB = $${CORAL_THIRDPARTY_PKG_BLD}/lib
#CORAL_LIB = $${CORAL_THIRDPARTY_PRJ_BLD}/lib
#CORAL_LIB = $${CORAL_PKG_BLD}/lib
CORAL_LIB = $${CORAL_PRJ_BLD}/lib
#CORAL_LIB = $${MEDUSA_LIB}

# coral LIBS
#
coral_LIBS += \
-L$${CORAL_LIB}/lib$${CORAL_NAME} \
-l$${CORAL_NAME} \

########################################################################
# medusa

# medusa INCLUDEPATH
#
medusa_INCLUDEPATH += \

# medusa DEFINES
#
medusa_DEFINES += \

# medusa LIBS
#
medusa_LIBS += \
$${coral_LIBS} \
$${xosnadir_LIBS} \
$${build_medusa_LIBS} \
-lpthread \
-ldl \

contains(MEDUSA_OS,linux) {
medusa_LIBS += \
-lrt
} else {
}

