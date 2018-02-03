///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2018 $organization
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
///   File: HttpSessionEvent.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_HTTP_HTTPSESSIONEVENT_HPP
#define _MEDUSA_CHEYENNE_SERPENT_HTTP_HTTPSESSIONEVENT_HPP

#include "coke/lang/Object.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {
namespace http {

typedef ::coke::lang::ImplementBase HttpSessionEventTImplements;
typedef ::coke::lang::Object HttpSessionEventTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: HttpSessionEventT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = HttpSessionEventTImplements, class TExtends = HttpSessionEventTExtends>

class _EXPORT_CLASS HttpSessionEventT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    HttpSessionEventT(const HttpSessionEventT& copy): Extends(copy) {
    }
    HttpSessionEventT() {
    }
    virtual ~HttpSessionEventT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef HttpSessionEventT<> HttpSessionEvent;
typedef HttpSessionEvent::Implements HttpSessionEventImplements;
typedef HttpSessionEvent::Extends HttpSessionEventExtends;

} // namespace http
} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_HTTP_HTTPSESSIONEVENT_HPP 
