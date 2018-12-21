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
#   File: medusa.pri
#
# Author: $author$
#   Date: 9/3/2018
#
# build QtCreator .pri file for medusa
########################################################################

########################################################################
# rostra
#
# pkg-config --cflags --libs rostra
#

# build rostra INCLUDEPATH
#
build_rostra_INCLUDEPATH += \

# build rostra DEFINES
#
build_rostra_DEFINES += \

# build rostra FRAMEWORKS
#
build_rostra_FRAMEWORKS += \

# build rostra LIBS
#
build_rostra_LIBS += \

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#

# build nadir INCLUDEPATH
#
build_nadir_INCLUDEPATH += \

# build nadir DEFINES
#
build_nadir_DEFINES += \

# build nadir LIBS
#
build_nadir_LIBS += \

########################################################################
# xosnadir

# build xosnadir INCLUDEPATH
#
build_xosnadir_INCLUDEPATH += \

# build xosnadir DEFINES
#
build_xosnadir_DEFINES += \

# build xosnadir LIBS
#
build_xosnadir_LIBS += \

########################################################################
# coral
#
# pkg-config --cflags --libs coral
#

# build coral INCLUDEPATH
#
build_coral_INCLUDEPATH += \

# build coral DEFINES
#
build_coral_DEFINES += \

# build coral LIBS
#
build_coral_LIBS += \

########################################################################
# ncoral
#
# pkg-config --cflags --libs ncoral
#

# build ncoral INCLUDEPATH
#
build_ncoral_INCLUDEPATH += \

# build ncoral DEFINES
#
build_ncoral_DEFINES += \

# build ncoral FRAMEWORKS
#
build_ncoral_FRAMEWORKS += \

# build ncoral LIBS
#
build_ncoral_LIBS += \

########################################################################
# medusa

# build medusa INCLUDEPATH
#
build_medusa_INCLUDEPATH += \
$${build_coral_INCLUDEPATH} \
$${build_xosnadir_INCLUDEPATH} \


# build medusa DEFINES
#
build_medusa_DEFINES += \
$${build_xosnadir_DEFINES} \
$${build_coral_DEFINES} \


# build medusa LIBS
#
build_medusa_LIBS += \
$${build_coral_LIBS} \
$${build_xosnadir_LIBS} \

########################################################################
# nmedusa

# build nmedusa INCLUDEPATH
#
build_nmedusa_INCLUDEPATH += \
$${build_ncoral_INCLUDEPATH} \
$${build_nadir_INCLUDEPATH} \
$${build_rostra_INCLUDEPATH} \


# build nmedusa DEFINES
#
build_nmedusa_DEFINES += \
$${build_rostra_DEFINES} \
$${build_nadir_DEFINES} \
$${build_ncoral_DEFINES} \


# build nmedusa FRAMEWORKS
#
build_nmedusa_FRAMEWORKS += \
$${build_ncoral_FRAMEWORKS} \
$${build_nadir_FRAMEWORKS} \
$${build_rostra_FRAMEWORKS} \


# build nmedusa LIBS
#
build_nmedusa_LIBS += \
$${build_ncoral_LIBS} \
$${build_nadir_LIBS} \
$${build_rostra_LIBS} \
