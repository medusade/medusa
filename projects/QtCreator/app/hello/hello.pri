########################################################################
# Copyright (c) 1988-2017 $organization$
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
#   File: hello.pri
#
# Author: $author$
#   Date: 1/15/2017
########################################################################

hello_TARGET = medusa-hello

hello_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \

hello_DEFINES += \
$${medusa_DEFINES} \
USE_NADIR_BASE \

########################################################################
hello_HEADERS += \
$${MEDUSA_SRC}/medusa/console/main.hpp \
$${MEDUSA_SRC}/medusa/console/main_main.hpp \

hello_SOURCES += \
$${MEDUSA_SRC}/medusa/console/main.cpp \
$${MEDUSA_SRC}/medusa/console/main_main.cpp \

########################################################################
hello_LIBS += \
$${medusa_LIBS} \
