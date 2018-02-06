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
#   File: cheyenne.pro
#
# Author: $author$
#   Date: 2/3/2018
#
# QtCreator .pro file for medusa executable cheyenne
########################################################################
include(../../../../../build/QtCreator/medusa.pri)
include(../../../../QtCreator/medusa.pri)
include(../../medusa.pri)
include($${COKE_PRJ}/QtCreator/lib/libcoke/libcoke.pri)
include(../../../../QtCreator/lib/libcoke/libcoke.pri)
include($${CHEYENNE_PRJ}/QtCreator/lib/libcheyenne/libcheyenne.pri)
include(../../../../QtCreator/lib/libcheyenne/libcheyenne.pri)
include(../../../../QtCreator/app/cheyenne/cheyenne.pri)

TARGET = $${cheyenne_TARGET}

########################################################################
INCLUDEPATH += \
$${cheyenne_INCLUDEPATH} \

DEFINES += \
$${cheyenne_DEFINES} \

########################################################################
HEADERS += \
$${cheyenne_HEADERS} \
$${libcheyenne_HEADERS} \
$${libcoke_HEADERS} \

SOURCES += \
$${cheyenne_SOURCES} \
$${libcheyenne_SOURCES} \
$${libcoke_SOURCES} \

########################################################################
LIBS += \
$${cheyenne_LIBS} \
