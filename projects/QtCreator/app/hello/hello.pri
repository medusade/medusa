########################################################################
# Copyright (c) 1988-2017 $organization$
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
#   File: hello.pri
#
# Author: $author$
#   Date: 1/15/2017
########################################################################
medusa_USE_NADIR_BASE = USE_NADIR_BASE

hello_TARGET = medusa-hello

hello_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \

hello_DEFINES += \
$${medusa_DEFINES} \
$${medusa_USE_NADIR_BASE} \

########################################################################
hello_HEADERS += \
$${NADIR_SRC}/nadir/mt/signaler.hpp \
$${NADIR_SRC}/nadir/base/raised.hpp \

hello_SOURCES += \
$${NADIR_SRC}/nadir/mt/signaler.cpp \
$${NADIR_SRC}/nadir/base/raised.cpp \

########################################################################
hello_xos_HEADERS += \
$${MEDUSA_SRC}/medusa/xos/base/main.hpp \
$${MEDUSA_SRC}/medusa/xos/base/sockets.hpp \
$${MEDUSA_SRC}/medusa/xos/base/network.hpp \
$${MEDUSA_SRC}/medusa/xos/base/mt.hpp \
$${MEDUSA_SRC}/medusa/xos/base/logger.hpp \
$${MEDUSA_SRC}/medusa/xos/base/base.hpp \

hello_xos_SOURCES += \
$${MEDUSA_SRC}/medusa/xos/base/sockets.cpp \
$${MEDUSA_SRC}/medusa/xos/base/network.cpp \
$${MEDUSA_SRC}/medusa/xos/base/mt.cpp \
$${MEDUSA_SRC}/medusa/xos/base/logger.cpp \
$${MEDUSA_SRC}/medusa/xos/base/base.cpp \

########################################################################
hello_nadir_HEADERS += \
$${MEDUSA_SRC}/medusa/nadir/base/main.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/network.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/logger.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/mt.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/base.hpp \

hello_nadir_SOURCES += \
$${MEDUSA_SRC}/medusa/nadir/base/network.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/logger.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/mt.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/base.cpp \

########################################################################
hello_HEADERS += $${hello_nadir_HEADERS} $${hello_xos_HEADERS}

contains($${medusa_USE_NADIR_BASE}, USE_NADIR_BASE) {
hello_SOURCES += $${hello_nadir_SOURCES}
} else {
hello_SOURCES += $${hello_xos_SOURCES}
}

########################################################################
hello_HEADERS += \
$${MEDUSA_SRC}/medusa/io/socket/writer.hpp \
$${MEDUSA_SRC}/medusa/io/socket/reader.hpp \
$${MEDUSA_SRC}/medusa/io/logger.hpp \
$${MEDUSA_SRC}/medusa/io/file.hpp \
$${MEDUSA_SRC}/medusa/io/reader.hpp \
$${MEDUSA_SRC}/medusa/io/sequence.hpp \
$${MEDUSA_SRC}/medusa/base/string.hpp \
$${MEDUSA_SRC}/medusa/base/array.hpp \
$${MEDUSA_SRC}/medusa/base/types.hpp \
$${MEDUSA_SRC}/medusa/base/base.hpp \
$${MEDUSA_SRC}/medusa/console/main.hpp \
$${MEDUSA_SRC}/medusa/console/main_main.hpp \

hello_SOURCES += \
$${MEDUSA_SRC}/medusa/console/main.cpp \
$${MEDUSA_SRC}/medusa/console/main_main.cpp \

########################################################################
contains($${medusa_USE_NADIR_BASE}, USE_NADIR_BASE) {
hello_LIBS += \
$${medusa_LIBS}
} else {
hello_LIBS += \
$${xosmedusa_LIBS}
}
