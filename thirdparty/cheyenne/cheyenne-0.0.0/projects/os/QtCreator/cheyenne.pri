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
#   File: cheyenne.pri
#
# Author: $author$
#   Date: 2/5/2018
#
# Os QtCreator .pri file for cheyenne
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
CHEYENNE_OS = macosx
} else {
CHEYENNE_OS = linux
}

#CONFIG += c++11
#CONFIG += c++0x

########################################################################
# nadir
NADIR_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${CHEYENNE_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_LIB = $${NADIR_BLD}/lib

nadir_LIBS += \
-L$${NADIR_LIB}/libxosnadir \
-lxosnadir \

########################################################################
# coke
COKE_BLD = $${OTHER_BLD}/$${COKE_PKG}/build/$${CHEYENNE_OS}/QtCreator/$${BUILD_CONFIG}
COKE_LIB = $${COKE_BLD}/lib

coke_LIBS += \
-L$${COKE_LIB}/libcoke \
-lcoke \

########################################################################
# cheyenne
cheyenne_INCLUDEPATH += \

cheyenne_DEFINES += \

cheyenne_LIBS += \
$${coke_LIBS} \
$${nadir_LIBS} \
$${build_cheyenne_LIBS} \

contains(UNAME,Darwin) {
cheyenne_LIBS += \
-lpthread \
-ldl \

} else {
cheyenne_LIBS += \
-lpthread \
-ldl \
-lrt \

}
