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
#   File: libmedusa.pro
#
# Author: $author$
#   Date: 12/6/2014
########################################################################
include(../../../../QtCreator/medusa.pri)
include(../../medusa.pri)
include(../../../../QtCreator/lib/libmedusa/libmedusa.pri)

TARGET = $${libmedusa_TARGET}

########################################################################
INCLUDEPATH += \
$${libmedusa_INCLUDEPATH} \

DEFINES += \
$${libmedusa_DEFINES} \

########################################################################
HEADERS += \
$${libmedusa_HEADERS} \

SOURCES += \
$${libmedusa_SOURCES} \

########################################################################
