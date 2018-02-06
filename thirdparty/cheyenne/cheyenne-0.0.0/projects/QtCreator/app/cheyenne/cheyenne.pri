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
#   Date: 2/5/2018
#
# QtCreator .pri file for cheyenne executable cheyenne
########################################################################

########################################################################
# cheyenne
cheyenne_exe_TARGET = cheyenne

cheyenne_exe_INCLUDEPATH += \
$${cheyenne_INCLUDEPATH} \

cheyenne_exe_DEFINES += \
$${cheyenne_DEFINES} \

########################################################################
cheyenne_exe_HEADERS += \
$${COKE_SRC}/coke/system/console/Main_main.hpp \

cheyenne_exe_SOURCES += \
$${COKE_SRC}/coke/system/console/Main_main.cpp \

########################################################################
cheyenne_exe_LIBS += \
$${cheyenne_LIBS} \
