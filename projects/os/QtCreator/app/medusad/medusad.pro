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
#   File: medusad.pro
#
# Author: $author$
#   Date: 9/3/2018
#
# QtCreator .pro file for medusa executable medusad
########################################################################
include(../../../../../build/QtCreator/medusa.pri)
include(../../../../QtCreator/medusa.pri)
include(../../medusa.pri)
include(../../../../QtCreator/app/medusad/medusad.pri)

TARGET = $${medusad_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${medusad_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${medusad_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${medusad_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${medusad_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${medusad_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${medusad_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${medusad_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${medusad_LIBS} \
$${FRAMEWORKS} \


