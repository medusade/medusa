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

TEMPLATE = lib
CONFIG += staticlib

########################################################################
# libmedusa
libmedusa_TARGET = medusa

libmedusa_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \

libmedusa_DEFINES += \
$${medusa_DEFINES} \

########################################################################
libmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/base/string.hpp \
$${MEDUSA_SRC}/medusa/base/array.hpp \
$${MEDUSA_SRC}/medusa/base/types.hpp \
$${MEDUSA_SRC}/medusa/base/base.hpp \

libmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/base/string.cpp \
$${MEDUSA_SRC}/medusa/base/array.cpp \
$${MEDUSA_SRC}/medusa/base/types.cpp \
$${MEDUSA_SRC}/medusa/base/base.cpp \

########################################################################
libmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/mt/mt.hpp \
$${MEDUSA_SRC}/medusa/mt/signaler.hpp \
$${MEDUSA_SRC}/medusa/mt/semaphore.hpp \
$${MEDUSA_SRC}/medusa/mt/mutex.hpp \

libmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/mt/mt.cpp \
$${MEDUSA_SRC}/medusa/mt/signaler.cpp \
$${MEDUSA_SRC}/medusa/mt/semaphore.cpp \
$${MEDUSA_SRC}/medusa/mt/mutex.cpp \

########################################################################
libmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/network/network.hpp \
$${MEDUSA_SRC}/medusa/network/sockets.hpp \
$${MEDUSA_SRC}/medusa/network/socket.hpp \
$${MEDUSA_SRC}/medusa/network/endpoint.hpp \
$${MEDUSA_SRC}/medusa/network/transport.hpp \
$${MEDUSA_SRC}/medusa/network/address.hpp \

libmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/network/network.cpp \
$${MEDUSA_SRC}/medusa/network/sockets.cpp \
$${MEDUSA_SRC}/medusa/network/socket.cpp \
$${MEDUSA_SRC}/medusa/network/endpoint.cpp \
$${MEDUSA_SRC}/medusa/network/transport.cpp \
$${MEDUSA_SRC}/medusa/network/address.cpp \

########################################################################
libmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/io/socket/writer.hpp \
$${MEDUSA_SRC}/medusa/io/socket/reader.hpp \
$${MEDUSA_SRC}/medusa/io/logger.hpp \
$${MEDUSA_SRC}/medusa/io/file.hpp \
$${MEDUSA_SRC}/medusa/io/reader.hpp \
$${MEDUSA_SRC}/medusa/io/sequence.hpp \

libmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/io/socket/writer.cpp \
$${MEDUSA_SRC}/medusa/io/socket/reader.cpp \
$${MEDUSA_SRC}/medusa/io/logger.cpp \
$${MEDUSA_SRC}/medusa/io/file.cpp \
$${MEDUSA_SRC}/medusa/io/sequence.cpp \

########################################################################
libmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/identifier.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/name.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/version.hpp \

libmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/identifier.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/name.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/version.cpp \
