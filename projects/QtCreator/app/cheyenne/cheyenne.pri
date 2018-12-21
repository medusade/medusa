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
#   Date: 2/3/2018
#
# QtCreator .pri file for medusa executable cheyenne
########################################################################

cheyenne_TARGET = cheyenne

########################################################################
cheyenne_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \
$${cheyenne_INCLUDEPATH} \

cheyenne_DEFINES += \
$${medusa_DEFINES} \
$${cheyenne_DEFINES} \

########################################################################
# medusa
cheyenne_HEADERS += \
$${MEDUSA_SRC}/medusa/console/main_main.hpp \

cheyenne_SOURCES += \
$${MEDUSA_SRC}/medusa/console/main_main.cpp \

########################################################################
cheyenne_LIBS += \
$${medusa_LIBS} \