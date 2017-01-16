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

QMAKE_CXXFLAGS += -std=c++11
BUILD_OS = macosx

CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
DEFINES += RELEASE_BUILD
}

########################################################################
# nadir
NADIR_BLD = ../$${NADIR_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
NADIR_LIB = $${NADIR_BLD}/lib

nadir_LIBS += \
-L$${NADIR_LIB}/libnadir \
-lnadir \
-lpthread \
-ldl \

xosnadir_LIBS += \
-L$${NADIR_LIB}/libxosnadir \
-lxosnadir \
-lpthread \
-ldl \

########################################################################
# medusa
medusa_LIBS += \
-L$${MEDUSA_LIB}/libmedusa \
-lmedusa \
$${nadir_LIBS} \

xosmedusa_LIBS += \
-L$${MEDUSA_LIB}/libxosmedusa \
-lxosmedusa \
$${xosnadir_LIBS} \
