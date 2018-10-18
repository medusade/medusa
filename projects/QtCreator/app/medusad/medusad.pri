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
#   File: medusad.pri
#
# Author: $author$
#   Date: 9/3/2018
#
# QtCreator .pri file for medusa executable medusad
########################################################################

########################################################################
# medusad

# medusad TARGET
#
medusad_TARGET = medusad

# medusad INCLUDEPATH
#
medusad_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \

# medusad DEFINES
#
medusad_DEFINES += \
$${medusa_DEFINES} \

########################################################################
# medusad OBJECTIVE_HEADERS
#
#medusad_OBJECTIVE_HEADERS += \
#$${MEDUSA_SRC}/medusa/base/Base.hh \

# medusad OBJECTIVE_SOURCES
#
#medusad_OBJECTIVE_SOURCES += \
#$${MEDUSA_SRC}/medusa/base/Base.mm \

########################################################################
# medusad HEADERS
#
medusad_HEADERS += \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/http/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/http/path/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/http/method/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor_instance.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processors.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/hello/processors.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main.hpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main_instance.hpp \
$${MEDUSA_SRC}/medusa/console/main_main.hpp \

# medusad SOURCES
#
medusad_SOURCES += \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processor_instance.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/processors.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main.cpp \
$${MEDUSA_SRC}/medusa/inet/xttp/server/daemon/main_instance.cpp \
$${MEDUSA_SRC}/medusa/console/main_main.cpp \

########################################################################
# medusad FRAMEWORKS
#
medusad_FRAMEWORKS += \
$${medusa_FRAMEWORKS} \

# medusad LIBS
#
medusad_LIBS += \
$${medusa_LIBS} \


