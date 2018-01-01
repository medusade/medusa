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
#include "nadir/io/logger.hpp"

#define MEDUSA_LOG_FATAL LOG_FATAL
#define MEDUSA_LOG_ERROR LOG_ERROR
#define MEDUSA_LOG_WARN LOG_WARN
#define MEDUSA_LOG_INFO LOG_INFO
#define MEDUSA_LOG_DEBUG LOG_DEBUG
#define MEDUSA_LOG_TRACE LOG_TRACE

namespace medusa {
namespace io {

///////////////////////////////////////////////////////////////////////
/// logger
///////////////////////////////////////////////////////////////////////
typedef nadir::io::logger logger;

} // namespace io
} // namespace medusa 

#endif // _MEDUSA_IO_LOGGER_HPP 
