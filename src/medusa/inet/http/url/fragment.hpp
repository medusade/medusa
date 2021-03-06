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
///   File: fragment.hpp
///
/// Author: $author$
///   Date: 10/27/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_INET_HTTP_URL_FRAGMENT_HPP
#define _MEDUSA_INET_HTTP_URL_FRAGMENT_HPP

#include "medusa/inet/http/url/part.hpp"

namespace medusa {
namespace inet {
namespace http {
namespace url {

typedef part::Implements fragment_implements;
typedef part fragment_extends;
///////////////////////////////////////////////////////////////////////
///  Class: fragment
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS fragment: virtual public fragment_implements, public fragment_extends {
public:
    typedef fragment_implements Implements;
    typedef fragment_extends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    fragment(const char_t* copy, size_t length): Extends(copy, length) {}
    fragment(const char_t* copy): Extends(copy) {}
    fragment(const string_t& copy): Extends(copy) {}
    fragment(const fragment& copy): Extends(copy) {}
    fragment() {}
    virtual ~fragment() {}
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
}; /// class _EXPORT_CLASS fragment

} /// namespace url
} /// namespace http
} /// namespace inet
} /// namespace medusa

#endif ///ndef _MEDUSA_INET_HTTP_URL_FRAGMENT_HPP
