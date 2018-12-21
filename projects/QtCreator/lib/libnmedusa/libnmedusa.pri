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
#   File: libnmedusa.pri
#
# Author: $author$
#   Date: 12/19/2018
#
# QtCreator .pri file for medusa library libnmedusa
########################################################################

########################################################################
# libnmedusa

# libnmedusa TARGET
#
libnmedusa_TARGET = nmedusa
libnmedusa_TEMPLATE = lib
libnmedusa_CONFIG += staticlib

# libnmedusa INCLUDEPATH
#
libnmedusa_INCLUDEPATH += \
$${nmedusa_INCLUDEPATH} \

# libnmedusa DEFINES
#
libnmedusa_DEFINES += \
$${nmedusa_DEFINES} \

########################################################################
# libnmedusa OBJECTIVE_HEADERS
#
#libnmedusa_OBJECTIVE_HEADERS += \
#$${MEDUSA_SRC}/medusa/base/Base.hh \

# libnmedusa OBJECTIVE_SOURCES
#
#libnmedusa_OBJECTIVE_SOURCES += \
#$${MEDUSA_SRC}/medusa/base/Base.mm \

########################################################################
# libnmedusa HEADERS
#
libnmedusa_HEADERS += \
$${MEDUSA_SRC}/medusa/nadir/base/base.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/types.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/array.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/string.hpp \
$${MEDUSA_SRC}/medusa/nadir/base/opened.hpp \
\
$${MEDUSA_SRC}/medusa/nadir/mt/locked.hpp \
$${MEDUSA_SRC}/medusa/nadir/mt/waited.hpp \
$${MEDUSA_SRC}/medusa/nadir/mt/mutex.hpp \
$${MEDUSA_SRC}/medusa/nadir/mt/signaler.hpp \
$${MEDUSA_SRC}/medusa/nadir/mt/semaphore.hpp \
\
$${MEDUSA_SRC}/medusa/nadir/io/sequence.hpp \
$${MEDUSA_SRC}/medusa/nadir/io/reader.hpp \
$${MEDUSA_SRC}/medusa/nadir/io/writer.hpp \
$${MEDUSA_SRC}/medusa/nadir/io/file.hpp \
$${MEDUSA_SRC}/medusa/nadir/io/logger.hpp \
\
$${MEDUSA_SRC}/medusa/nadir/console/main_opt.hpp \
$${MEDUSA_SRC}/medusa/nadir/console/main.hpp \
$${MEDUSA_SRC}/medusa/nadir/console/main_main.hpp \
\
$${MEDUSA_SRC}/medusa/lib/medusa/version.hpp \

# libnmedusa SOURCES
#
libnmedusa_SOURCES += \
$${MEDUSA_SRC}/medusa/nadir/base/base.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/types.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/array.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/string.cpp \
$${MEDUSA_SRC}/medusa/nadir/base/opened.cpp \
\
$${MEDUSA_SRC}/medusa/nadir/mt/locked.cpp \
$${MEDUSA_SRC}/medusa/nadir/mt/waited.cpp \
$${MEDUSA_SRC}/medusa/nadir/mt/mutex.hpp \
$${MEDUSA_SRC}/medusa/nadir/mt/signaler.cpp \
$${MEDUSA_SRC}/medusa/nadir/mt/semaphore.cpp \
\
$${MEDUSA_SRC}/medusa/nadir/io/sequence.cpp \
$${MEDUSA_SRC}/medusa/nadir/io/reader.cpp \
$${MEDUSA_SRC}/medusa/nadir/io/writer.cpp \
$${MEDUSA_SRC}/medusa/nadir/io/file.cpp \
$${MEDUSA_SRC}/medusa/nadir/io/logger.cpp \
\
$${MEDUSA_SRC}/medusa/nadir/console/main_opt.cpp \
$${MEDUSA_SRC}/medusa/nadir/console/main.cpp \
\
$${MEDUSA_SRC}/medusa/lib/medusa/version.cpp \

########################################################################



