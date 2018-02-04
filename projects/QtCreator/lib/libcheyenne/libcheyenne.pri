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
libcheyenne_TARGET = cheyenne
libcheyenne_TEMPLATE = lib
libcheyenne_CONFIG += staticlib

libcheyenne_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \
$${cheyenne_INCLUDEPATH} \

libcheyenne_DEFINES += \
$${cheyenne_DEFINES} \
$${medusa_DEFINES} \

########################################################################
libcheyenne_HEADERS += \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentResponse.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentRequestAttributeListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentRequestListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentRequest.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentContextAttributeListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentContextListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentContext.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/Serpent.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/AsyncListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/AsyncContext.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SingleThreadModel.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/RequestDispatcher.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/FilterConfig.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/FilterChain.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/Filter.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/Base.hpp \

libcheyenne_SOURCES += \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentResponse.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentRequestAttributeListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentRequestListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentRequest.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentContextAttributeListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentContextListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SerpentContext.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/Serpent.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/AsyncListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/AsyncContext.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/SingleThreadModel.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/RequestDispatcher.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/FilterConfig.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/FilterChain.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/Filter.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/Base.cpp \

########################################################################
libcheyenne_HEADERS += \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentResponseWrapper.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentResponse.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentRequestWrapper.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentRequest.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionActivationListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionAttributeListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionBindingListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionListener.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionContext.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionBindingEvent.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionEvent.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSession.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpent.hpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpUtils.hpp \

libcheyenne_SOURCES += \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentResponseWrapper.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentResponse.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentRequestWrapper.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpentRequest.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionActivationListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionAttributeListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionBindingListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionListener.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionContext.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionBindingEvent.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSessionEvent.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSession.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpSerpent.cpp \
$${CHEYENNE_SRC}/cokex/cheyenne/serpent/http/HttpUtils.cpp \

########################################################################
