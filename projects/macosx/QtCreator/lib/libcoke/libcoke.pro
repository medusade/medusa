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
#   File: libcoke.pro
#
# Author: $author$
#   Date: 1/30/2018
########################################################################
include(../../../../QtCreator/medusa.pri)
include(../../medusa.pri)
include($${COKE_PRJ}/QtCreator/lib/libcoke/libcoke.pri)
include(../../../../QtCreator/lib/libcoke/libcoke.pri)

TARGET = $${libcoke_TARGET}
TEMPLATE = $${libcoke_TEMPLATE}
CONFIG += $${libcoke_CONFIG}

INCLUDEPATH += \
$${libcoke_INCLUDEPATH} \

DEFINES += \
$${libcoke_DEFINES} \

########################################################################
HEADERS += \
$${libcoke_HEADERS} \

SOURCES += \
$${libcoke_SOURCES} \

########################################################################
