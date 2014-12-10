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
///   File: message.hpp
///
/// Author: $author$
///   Date: 11/24/2014
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_INET_XTTP_RESPONSE_MESSAGE_HPP
#define _MEDUSA_INET_XTTP_RESPONSE_MESSAGE_HPP

#include "medusa/inet/xttp/response/status/line.hpp"
#include "medusa/inet/xttp/message/header/fields.hpp"
#include "medusa/inet/xttp/message/body/content.hpp"
#include "medusa/base/base.hpp"

namespace medusa {
namespace inet {
namespace xttp {
namespace response {

typedef string_implements message_implements;
typedef string_t message_extends;
///////////////////////////////////////////////////////////////////////
///  Class: messaget
///////////////////////////////////////////////////////////////////////
template
<class TImplements = message_implements,
 class TExtends = message_extends>

class _EXPORT_CLASS messaget
: virtual public message_implements, public message_extends {
public:
    typedef message_implements Implements;
    typedef message_extends Extends;

    typedef xttp::response::status::line line_t;
    typedef xttp::message::header::fields headers_t;
    typedef xttp::message::body::content body_t;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    messaget
    (const line_t& line, const headers_t& headers, const body_t& body)
    : cr_((char_t)MEDUSA_INET_XTTP_CR),
      lf_((char_t)MEDUSA_INET_XTTP_LF),
      line_(line), headers_(headers), body_(body) {
        combine();
    }
    messaget
    (const line_t& line, const headers_t& headers)
    : cr_((char_t)MEDUSA_INET_XTTP_CR),
      lf_((char_t)MEDUSA_INET_XTTP_LF),
      line_(line), headers_(headers) {
        combine();
    }
    messaget
    (const line_t& line, const body_t& body)
    : cr_((char_t)MEDUSA_INET_XTTP_CR),
      lf_((char_t)MEDUSA_INET_XTTP_LF),
      line_(line), body_(body) {
        combine();
    }
    messaget
    (const line_t& line)
    : cr_((char_t)MEDUSA_INET_XTTP_CR),
      lf_((char_t)MEDUSA_INET_XTTP_LF),
      line_(line) {
        combine();
    }
    messaget
    (const messaget& copy)
    : Extends(copy),
      cr_((char_t)MEDUSA_INET_XTTP_CR),
      lf_((char_t)MEDUSA_INET_XTTP_LF) {
    }
    virtual ~messaget() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual messaget& combine() {
        this->assign(line_.chars());
        if (0 < (headers_.length())) {
            this->append(headers_.chars());
        }
        this->append(&cr_, 1);
        this->append(&lf_, 1);
        if (0 < (body_.length())) {
            this->append(body_.chars());
        }
        return *this;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    const char_t cr_, lf_;
    line_t line_;
    headers_t headers_;
    body_t body_;
};
typedef messaget<> message;

} // namespace response 
} // namespace xttp 
} // namespace inet 
} // namespace medusa 

#endif // _MEDUSA_INET_XTTP_RESPONSE_MESSAGE_HPP 