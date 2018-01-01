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
///   File: string.hpp
///
/// Author: $author$
///   Date: 4/9/2015
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_BASE_STRING_HPP
#define _MEDUSA_BASE_STRING_HPP

#include "medusa/base/array.hpp"
#include "xos/base/string.hpp"

namespace medusa {

typedef xos::base::string_implements string_implements;
typedef xos::base::string string_extends;

typedef string_implements string_t_implements;
typedef string_implements wstring_t_implements;
typedef string_implements tstring_t_implements;
typedef string_implements bstring_t_implements;

typedef xos::base::string string_t;
typedef xos::base::tstring tstring_t;
typedef xos::base::wstring wstring_t;
typedef xos::base::bstring bstring_t;

} // namespace medusa

#endif // _MEDUSA_BASE_STRING_HPP 
