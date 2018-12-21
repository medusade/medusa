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
#   File: nmedusa.pri
#
# Author: $author$
#   Date: 12/19/2018
#
# QtCreator .pri file for medusa executable nmedusa
########################################################################

########################################################################
# nmedusa

# nmedusa_exe TARGET
#
nmedusa_exe_TARGET = nmedusa

# nmedusa_exe INCLUDEPATH
#
nmedusa_exe_INCLUDEPATH += \
$${nmedusa_INCLUDEPATH} \

# nmedusa_exe DEFINES
#
nmedusa_exe_DEFINES += \
$${nmedusa_DEFINES} \

########################################################################
# nmedusa_exe OBJECTIVE_HEADERS
#
#nmedusa_exe_OBJECTIVE_HEADERS += \
#$${MEDUSA_SRC}/medusa/base/Base.hh \

# nmedusa_exe OBJECTIVE_SOURCES
#
#nmedusa_exe_OBJECTIVE_SOURCES += \
#$${MEDUSA_SRC}/medusa/base/Base.mm \

########################################################################
# nmedusa_exe HEADERS
#
nmedusa_exe_HEADERS += \
$${MEDUSA_SRC}/medusa/app/console/medusa/main.hpp \

# nmedusa_exe SOURCES
#
nmedusa_exe_SOURCES += \
$${MEDUSA_SRC}/medusa/app/console/medusa/main.cpp \

########################################################################
# nmedusa_exe FRAMEWORKS
#
nmedusa_exe_FRAMEWORKS += \
$${nmedusa_FRAMEWORKS} \

# nmedusa_exe LIBS
#
nmedusa_exe_LIBS += \
$${nmedusa_LIBS} \
