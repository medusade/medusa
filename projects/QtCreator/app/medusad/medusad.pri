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
#   File: medusad.pri
#
# Author: $author$
#   Date: 11/24/2014
########################################################################
medusa_USE_NADIR_BASE = USE_XOS_NADIR_BASE

medusad_TARGET = medusad

medusad_INCLUDEPATH += \
$${nadir_thirdparty_xos_INCLUDEPATH} \
$${medusa_INCLUDEPATH} \
$${xos_INCLUDEPATH} \

medusad_DEFINES += \
$${medusa_DEFINES} \
$${medusa_USE_NADIR_BASE} \

########################################################################
medusad_HEADERS += \
$${NADIR_SRC}/thirdparty/xos/xos/os/Logger.hpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/String.hpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/Array.hpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/Base.hpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/Platform.hpp \

medusad_SOURCES += \
$${NADIR_SRC}/thirdparty/xos/xos/os/Logger.cpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/String.cpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/Array.cpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/Base.cpp \
$${NADIR_SRC}/thirdparty/xos/xos/base/Platform.cpp \

########################################################################
medusad_HEADERS += \
$${NADIR_SRC}/xos/io/socket/writer.hpp \
$${NADIR_SRC}/xos/io/socket/udp/writer.hpp \
$${NADIR_SRC}/xos/io/socket/tcp/writer.hpp \
$${NADIR_SRC}/xos/io/socket/reader.hpp \
$${NADIR_SRC}/xos/io/socket/udp/reader.hpp \
$${NADIR_SRC}/xos/io/socket/tcp/reader.hpp \
$${NADIR_SRC}/xos/io/string/reader.hpp \
$${NADIR_SRC}/xos/mt/signaler.hpp \
$${NADIR_SRC}/xos/base/string.hpp \

medusad_SOURCES += \
$${NADIR_SRC}/xos/mt/signaler.cpp \
$${NADIR_SRC}/xos/base/string.cpp \

########################################################################
medusad_HEADERS += \
$${MEDUSA_SRC}/medusa/io/socket/writer.hpp \
$${MEDUSA_SRC}/medusa/io/socket/reader.hpp \
$${MEDUSA_SRC}/medusa/io/writer.hpp \
$${MEDUSA_SRC}/medusa/io/reader.hpp \
$${MEDUSA_SRC}/medusa/base/base.hpp \

########################################################################
medusad_HEADERS += \
$${XOS_SRC}/xos/jdk/javax/servlet/http/RootHttpServlet.hpp \
$${XOS_SRC}/xos/jdk/javax/servlet/http/HttpServletRequest.hpp \
$${XOS_SRC}/xos/jdk/java/Types.hpp \

medusad_SOURCES += \
$${XOS_SRC}/xos/jdk/javax/servlet/http/RootHttpServlet.cpp \
$${XOS_SRC}/xos/jdk/java/Types.cpp \

########################################################################
medusad_HEADERS += \
$${MEDUSA_SRC}/medusa/inet/xttp/javax/HttpServletRequest.hpp \

medusad_SOURCES += \
$${MEDUSA_SRC}/medusa/inet/xttp/javax/HttpServletRequest.cpp \

########################################################################
medusad_HEADERS += \
$${MEDUSA_SRC}/medusa/inet/xttp/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/response/message.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/response/status/line.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/response/status/code.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/response/status/reason.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/request/reader.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/request/message.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/request/line.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/request/method.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/request/parameters.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/message/header/reader.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/message/header/fields.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/message/header/field.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/reader.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/protocol/identifier.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/xttp.hpp \

########################################################################
medusad_HEADERS += \
$${MEDUSA_SRC}/medusa/mt/mt.hpp \
$${MEDUSA_SRC}/medusa/network/server/daemon/tcp/service.hpp \
$${MEDUSA_SRC}/medusa/network/server/daemon/tcp/processor.hpp \
$${MEDUSA_SRC}/medusa/network/server/daemon/tcp/connections.hpp \
$${MEDUSA_SRC}/medusa/network/network.hpp \
$${MEDUSA_SRC}/medusa/daemon/main.hpp \
$${MEDUSA_SRC}/medusa/console/main.hpp \
$${MEDUSA_SRC}/medusa/console/main_main.hpp \

medusad_SOURCES += \
$${MEDUSA_SRC}/medusa/network/server/daemon/tcp/service.cpp \
$${MEDUSA_SRC}/medusa/network/server/daemon/tcp/connections.cpp \
$${MEDUSA_SRC}/medusa/network/network.cpp \
$${MEDUSA_SRC}/medusa/mt/mt.cpp \

########################################################################
medusad_HEADERS += \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/http/path/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/http/method/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/http/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/hello/processors.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processors.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor_instance.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main_instance.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main.hpp \

medusad_SOURCES += \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processors.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor_instance.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main_instance.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main.cpp \
$${MEDUSA_SRC}/medusa/console/main_main.cpp \

########################################################################
contains($${medusa_USE_NADIR_BASE}, USE_NADIR_BASE) {
medusad_LIBS += \
$${medusa_LIBS}
} else {
medusad_LIBS += \
$${xosmedusa_LIBS}
}
