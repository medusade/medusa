///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2015 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: logger.hpp
///
/// Author: $author$
///   Date: 4/9/2015
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_IO_LOGGER_HPP
#define _MEDUSA_IO_LOGGER_HPP

#include "medusa/base/base.hpp"
#if !defined(USE_NADIR_BASE)
#include "medusa/xos/base/logger.hpp"
//#include "xos/io/logger.hpp"
#else // !defined(USE_NADIR_BASE)
#include "medusa/nadir/base/logger.hpp"
//#include "nadir/io/logger.hpp"
#endif // !defined(USE_NADIR_BASE)

#if !defined(USE_NADIR_BASE)
/*
#define MEDUSA_LOG_ANY XOS_LOG_ANY
#define MEDUSA_LOG_FATAL XOS_LOG_FATAL
#define MEDUSA_LOG_ERROR XOS_LOG_ERROR
#define MEDUSA_LOG_WARN XOS_LOG_WARN
#define MEDUSA_LOG_INFO XOS_LOG_INFO
#define MEDUSA_LOG_DEBUG XOS_LOG_DEBUG
#define MEDUSA_LOG_TRACE XOS_LOG_TRACE

#define MEDUSA_LOG_ANYF XOS_LOG_ANYF
#define MEDUSA_LOG_FATALF XOS_LOG_FATALF
#define MEDUSA_LOG_ERRORF XOS_LOG_ERRORF
#define MEDUSA_LOG_WARNF XOS_LOG_WARNF
#define MEDUSA_LOG_INFOF XOS_LOG_INFOF
#define MEDUSA_LOG_DEBUGF XOS_LOG_DEBUGF
#define MEDUSA_LOG_TRACEF XOS_LOG_TRACEF

#define MEDUSA_LOG_MESSAGE_ANY XOS_LOG_MESSAGE_ANY
#define MEDUSA_LOG_MESSAGE_FATAL XOS_LOG_MESSAGE_FATAL
#define MEDUSA_LOG_MESSAGE_ERROR XOS_LOG_MESSAGE_ERROR
#define MEDUSA_LOG_MESSAGE_WARN XOS_LOG_MESSAGE_WARN
#define MEDUSA_LOG_MESSAGE_INFO XOS_LOG_MESSAGE_INFO
#define MEDUSA_LOG_MESSAGE_DEBUG XOS_LOG_MESSAGE_DEBUG
#define MEDUSA_LOG_MESSAGE_TRACE XOS_LOG_MESSAGE_TRACE

#define MEDUSA_LOG_MESSAGE_ANYF XOS_LOG_MESSAGE_ANYF
#define MEDUSA_LOG_MESSAGE_FATALF XOS_LOG_MESSAGE_FATALF
#define MEDUSA_LOG_MESSAGE_ERRORF XOS_LOG_MESSAGE_ERRORF
#define MEDUSA_LOG_MESSAGE_WARNF XOS_LOG_MESSAGE_WARNF
#define MEDUSA_LOG_MESSAGE_INFOF XOS_LOG_MESSAGE_INFOF
#define MEDUSA_LOG_MESSAGE_DEBUGF XOS_LOG_MESSAGE_DEBUGF
#define MEDUSA_LOG_MESSAGE_TRACEF XOS_LOG_MESSAGE_TRACEF
*/
#else // !defined(USE_NADIR_BASE)
/*
#define MEDUSA_LOG_FATAL LOG_FATAL
#define MEDUSA_LOG_ERROR LOG_ERROR
#define MEDUSA_LOG_WARN LOG_WARN
#define MEDUSA_LOG_INFO LOG_INFO
#define MEDUSA_LOG_DEBUG LOG_DEBUG
#define MEDUSA_LOG_TRACE LOG_TRACE
*/
#endif // !defined(USE_NADIR_BASE)

namespace medusa {
namespace io {

///////////////////////////////////////////////////////////////////////
/// logger
///////////////////////////////////////////////////////////////////////
#if !defined(USE_NADIR_BASE)
//typedef xos::io::logger logger_t;
#else // !defined(USE_NADIR_BASE)
//typedef nadir::io::logger logger_t;
#endif // !defined(USE_NADIR_BASE)

} // namespace io
} // namespace medusa 

#endif // _MEDUSA_IO_LOGGER_HPP 
