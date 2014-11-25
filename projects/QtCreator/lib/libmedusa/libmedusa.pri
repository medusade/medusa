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
#   File: libmedusa.pri
#
# Author: $author$
#   Date: 11/23/2014
########################################################################

libmedusa_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \

libmedusa_DEFINES += \
$${medusa_DEFINES} \

libmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/identifier.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/name.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/version.hpp \
$${MEDUSA_SRC}/medusa/base/base.hpp \

libmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/identifier.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/name.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/version.cpp \
$${MEDUSA_SRC}/medusa/base/base.cpp \

