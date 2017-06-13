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
///   File: reader.hpp
///
/// Author: $author$
///   Date: 4/9/2015
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_IO_READER_HPP
#define _MEDUSA_IO_READER_HPP

#include "medusa/base/base.hpp"
#if !defined(USE_NADIR_BASE)
/*
#include "xos/io/string/reader.hpp"
#include "xos/io/reader.hpp"
*/
#else // !defined(USE_NADIR_BASE)
#include "nadir/io/reader.hpp"
#endif // !defined(USE_NADIR_BASE)

namespace medusa {
namespace io {

///////////////////////////////////////////////////////////////////////
///  Class: reader
///////////////////////////////////////////////////////////////////////
#if !defined(USE_NADIR_BASE)
#if defined(USE_CPP_11)
template
<typename TWhat = void, typename TSized = char,
 typename TEnd = int, TEnd VEnd = 0,
 class TImplements = xos::io::reader_implement>

using readert = typename xos::io::readert
<TWhat, TSized, TEnd, VEnd, TImplements>;
#else // defined(USE_CPP_11)
#endif // defined(USE_CPP_11)
/*
typedef xos::io::reader reader;
typedef xos::io::byte_reader byte_reader;
typedef xos::io::char_reader char_reader;
typedef xos::io::wchar_reader wchar_reader;
typedef xos::io::tchar_reader tchar_reader;
*/
#else // !defined(USE_NADIR_BASE)
typedef nadir::io::reader reader;
typedef nadir::io::char_reader char_reader;
typedef nadir::io::wchar_reader wchar_reader;
typedef nadir::io::tchar_reader tchar_reader;
#endif // !defined(USE_NADIR_BASE)

namespace string {
#if !defined(USE_NADIR_BASE)
//typedef xos::io::string::readert<string_t> reader;
#else // !defined(USE_NADIR_BASE)
#endif // !defined(USE_NADIR_BASE)
} // namespace string

namespace bstring {
#if !defined(USE_NADIR_BASE)
//typedef xos::io::string::readert<bstring_t> reader;
#else // !defined(USE_NADIR_BASE)
#endif // !defined(USE_NADIR_BASE)
} // namespace bstring

} // namespace io
} // namespace medusa 

#endif // _MEDUSA_IO_READER_HPP 
