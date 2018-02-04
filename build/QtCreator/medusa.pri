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
#   Date: 2/3/2018
#
# build QtCreator .pri file for medusa
########################################################################

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#
build_nadir_INCLUDEPATH += \

build_nadir_DEFINES += \

build_nadir_LIBS += \

########################################################################
# coke
#
# pkg-config --cflags --libs coke
#
build_coke_INCLUDEPATH += \

build_coke_DEFINES += \

build_coke_LIBS += \

########################################################################
# cheyenne
#
# pkg-config --cflags --libs cheyenne
#
build_cheyenne_INCLUDEPATH += \

build_cheyenne_DEFINES += \

build_cheyenne_LIBS += \

########################################################################
# medusa
build_medusa_INCLUDEPATH += \
$${build_cheyenne_INCLUDEPATH} \
$${build_coke_INCLUDEPATH} \
$${build_nadir_INCLUDEPATH} \


build_medusa_DEFINES += \
$${build_nadir_DEFINES} \
$${build_coke_DEFINES} \
$${build_cheyenne_DEFINES} \


build_medusa_LIBS += \
$${build_cheyenne_LIBS} \
$${build_coke_LIBS} \
$${build_nadir_LIBS} \


