///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2018 $organization$
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
///   File: Base.hpp
///
/// Author: $author$
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_BASE_HPP
#define _MEDUSA_CHEYENNE_BASE_HPP

#include "coke/lang/String.hpp"

namespace medusa {
namespace cheyenne {

typedef ::coke::byte_t byte_t;
typedef ::coke::short_t short_t;
typedef ::coke::long_t long_t;
typedef ::coke::int_t int_t;
typedef ::coke::float_t float_t;
typedef ::coke::double_t double_t;
typedef ::coke::boolean_t boolean_t;
typedef ::coke::char_t char_t;

typedef ::coke::lang::String String;
typedef ::coke::lang::NullString NullString;

} // namespace cheyenne 
} // namespace medusa 

#endif // _MEDUSA_CHEYENNE_BASE_HPP 
