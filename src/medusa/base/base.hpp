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

#if !defined(USE_NADIR_BASE)
#include "xos/base/base.hpp"
#else // !defined(USE_NADIR_BASE)
#include "nadir/base/base.hpp"
#endif // !defined(USE_NADIR_BASE)

#define MEDUSA_2STRINGX(value) "" #value ""
#define MEDUSA_2STRING(value) MEDUSA_2STRINGX(value)

namespace medusa {

///////////////////////////////////////////////////////////////////////
/// base
///////////////////////////////////////////////////////////////////////
#if !defined(USE_NADIR_BASE)
typedef xos::base::implement_base implement_base;
typedef xos::base::base base;
#else // !defined(USE_NADIR_BASE)
typedef nadir::implement_base implement_base;
typedef nadir::base base;
#endif // !defined(USE_NADIR_BASE)

} // namespace medusa

#include "medusa/base/types.hpp"
#include "medusa/base/array.hpp"
#include "medusa/base/string.hpp"
#include "medusa/io/file.hpp"
#include "medusa/io/reader.hpp"
#include "medusa/io/sequence.hpp"
#include "medusa/io/logger.hpp"

#endif // _MEDUSA_BASE_BASE_HPP
