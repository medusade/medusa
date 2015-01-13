///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2014 $organization$
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
///   File: base.hpp
///
/// Author: $author$
///   Date: 11/23/2014
///
/// Define some of the base types using nadir
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_BASE_BASE_HPP
#define _MEDUSA_BASE_BASE_HPP

#include "xos/base/base.hpp"
#include "xos/base/string.hpp"
#include "xos/base/types.hpp"
#include "xos/io/read/file.hpp"
#include "xos/io/write/file.hpp"
#include "xos/io/reader.hpp"
#include "xos/io/sequence.hpp"
#include "xos/io/logger.hpp"

#define MEDUSA_2STRINGX(value) "" #value ""
#define MEDUSA_2STRING(value) MEDUSA_2STRINGX(value)

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

namespace medusa {

///////////////////////////////////////////////////////////////////////
/// base
///////////////////////////////////////////////////////////////////////
typedef xos::base::implement_base implement_base;
typedef xos::base::base base;

///////////////////////////////////////////////////////////////////////
/// types
///////////////////////////////////////////////////////////////////////
typedef xos::base::chars_t chars_t;
typedef xos::base::tchars_t tchars_t;
typedef xos::base::wchars_t wchars_t;
typedef xos::base::bytes_t bytes_t;

///////////////////////////////////////////////////////////////////////
/// string
///////////////////////////////////////////////////////////////////////
typedef xos::base::string_implement string_implements;
#if !defined(CPP_11)
#error Requires C++11
#else // !defined(CPP_11)
template
<typename TChar = char, typename TEnd = TChar, TEnd VEnd = 0,
 class TExtends = xos::base::stringt<TChar, TEnd, VEnd>,
 class TImplements = string_implements>

using stringt = typename xos::base::stringt
<TChar, TEnd, VEnd, TExtends, TImplements>;
#endif // !defined(CPP_11)
typedef xos::base::string string_extends;
typedef xos::base::string string_t;
typedef xos::base::tstring tstring_t;
typedef xos::base::wstring wstring_t;

namespace io {
///////////////////////////////////////////////////////////////////////
/// sequencet
///////////////////////////////////////////////////////////////////////
#if !defined(CPP_11)
#error Requires C++11
#else // !defined(CPP_11)
template
<typename TWhat = char_t, typename TEnd = int, TEnd VEnd = 0,
 class TImplements = xos::io::sequence_implement>

using sequencet = typename xos::io::sequencet
<TWhat, TEnd, VEnd, TImplements>;
#endif // !defined(CPP_11)
typedef xos::io::sequence sequence;
typedef xos::io::char_sequence char_sequence;
typedef xos::io::wchar_sequence wchar_sequence;
typedef xos::io::tchar_sequence tchar_sequence;
///////////////////////////////////////////////////////////////////////
///  reader
///////////////////////////////////////////////////////////////////////
#if !defined(CPP_11)
#error Requires C++11
#else // !defined(CPP_11)
template
<typename TWhat = void, typename TSized = char,
 typename TEnd = int, TEnd VEnd = 0,
 class TImplements = xos::io::reader_implement>

using readert = typename xos::io::readert
<TWhat, TSized, TEnd, VEnd, TImplements>;
#endif // !defined(CPP_11)
typedef xos::io::reader reader;
typedef xos::io::char_reader char_reader;
typedef xos::io::wchar_reader wchar_reader;
typedef xos::io::tchar_reader tchar_reader;
} // namespace io

///////////////////////////////////////////////////////////////////////
/// file
///////////////////////////////////////////////////////////////////////
namespace io {
namespace read {
typedef xos::io::read::file file;
} // namespace read
namespace write {
typedef xos::io::write::file file;
} // namespace write
} // namespace io

///////////////////////////////////////////////////////////////////////
/// logger
///////////////////////////////////////////////////////////////////////
namespace io {
typedef xos::io::logger logger_t;
} // namespace io

} // namespace medusa

#endif // _MEDUSA_BASE_BASE_HPP 
