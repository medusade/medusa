///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2016 $organization$
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
///   File: array.hpp
///
/// Author: $author$
///   Date: 2/14/2016
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_BASE_ARRAY_HPP
#define _MEDUSA_BASE_ARRAY_HPP

#include "medusa/base/base.hpp"
#if !defined(USE_NADIR_BASE)
#include "xos/base/array.hpp"
#else // !defined(USE_NADIR_BASE)
#include "nadir/base/array.hpp"
#endif // !defined(USE_NADIR_BASE)

namespace medusa {

///////////////////////////////////////////////////////////////////////
/// array
///////////////////////////////////////////////////////////////////////
#if !defined(USE_NADIR_BASE)
typedef xos::base::byte_array byte_array;
typedef xos::base::char_array char_array;
typedef xos::base::wchar_array wchar_array;
typedef xos::base::tchar_array tchar_array;
#else // !defined(USE_NADIR_BASE)
typedef nadir::char_array char_array;
typedef nadir::wchar_array wchar_array;
typedef nadir::tchar_array tchar_array;
#endif // !defined(USE_NADIR_BASE)

} // namespace medusa 

#endif // _MEDUSA_BASE_ARRAY_HPP 
