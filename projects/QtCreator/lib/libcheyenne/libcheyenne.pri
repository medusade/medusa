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
#   File: libcheyenne.pri
#
# Author: $author$
#   Date: 2/2/2018
########################################################################

########################################################################
# libcheyenne
libcheyenne_TARGET = medusa
libcheyenne_TEMPLATE = lib
libcheyenne_CONFIG += staticlib

libcheyenne_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \
$${coke_INCLUDEPATH} \

libcheyenne_DEFINES += \
$${coke_DEFINES} \
$${medusa_DEFINES} \

########################################################################
libcheyenne_HEADERS += \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentResponseWrapper.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentResponse.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentRequestWrapper.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentRequest.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionActivationListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionAttributeListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionBindingListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionContext.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionBindingEvent.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionEvent.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSession.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpent.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpUtils.hpp \
\
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentResponse.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentRequestAttributeListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentRequestListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentRequest.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentContextAttributeListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentContextListener.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentContext.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/Serpent.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SingleThreadModel.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/RequestDispatcher.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/FilterConfig.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/FilterChain.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/Filter.hpp \
$${MEDUSA_SRC}/medusa/cheyenne/Base.hpp \

libcheyenne_SOURCES += \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentResponseWrapper.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentResponse.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentRequestWrapper.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpentRequest.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionActivationListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionAttributeListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionBindingListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionContext.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionBindingEvent.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSessionEvent.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSession.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpSerpent.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/http/HttpUtils.cpp \
\
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentResponse.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentRequestAttributeListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentRequestListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentRequest.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentContextAttributeListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentContextListener.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SerpentContext.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/Serpent.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/SingleThreadModel.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/RequestDispatcher.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/FilterConfig.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/FilterChain.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/serpent/Filter.cpp \
$${MEDUSA_SRC}/medusa/cheyenne/Base.cpp \

########################################################################
