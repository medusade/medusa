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
#   File: libnmedusa.pro
#
# Author: $author$
#   Date: 12/19/2018
#
# QtCreator .pro file for medusa library libnmedusa
########################################################################
include(../../../../../build/QtCreator/medusa.pri)
include(../../../../QtCreator/medusa.pri)
include(../../medusa.pri)
include(../../../../QtCreator/lib/libnmedusa/libnmedusa.pri)

TARGET = $${libnmedusa_TARGET}
TEMPLATE = $${libnmedusa_TEMPLATE}
CONFIG += $${libnmedusa_CONFIG}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${libnmedusa_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${libnmedusa_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${libnmedusa_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${libnmedusa_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${libnmedusa_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${libnmedusa_SOURCES} \

########################################################################


