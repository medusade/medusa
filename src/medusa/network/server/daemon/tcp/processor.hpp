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
///   File: processor.hpp
///
/// Author: $author$
///   Date: 2/9/2015
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_NETWORK_SERVER_DAEMON_TCP_PROCESSOR_HPP
#define _MEDUSA_NETWORK_SERVER_DAEMON_TCP_PROCESSOR_HPP

#include "medusa/network/server/daemon/tcp/connections.hpp"
#include "medusa/inet/xttp/response/message.hpp"
#include "medusa/inet/xttp/request/message.hpp"
#include "medusa/base/base.hpp"
#include "xos/app/console/hello/base.hpp"

namespace medusa {
namespace network {
namespace server {
namespace daemon {
namespace tcp {

typedef implement_base processor_implements;
typedef base processor_extends;
///////////////////////////////////////////////////////////////////////
///  Class: processor
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS processor
: virtual public processor_implements, public processor_extends {
public:
    typedef processor_implements Implements;
    typedef processor_extends Extends;

    enum status {
        processing_done,
        processing_failed,
        processing_continued
    };
    typedef inet::xttp::request::message request_t;
    typedef inet::xttp::request::message::line_t line_t;
    typedef inet::xttp::request::message::line_t::method_t method_t;
    typedef network::socket socket_t;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    processor
    (int optind, int argc, const char_t*const* argv, const char_t*const* env)
    : optind_(optind), argc_(argc), argv_(argv), env_(env) {
    }
    virtual ~processor() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual status operator()
    (mt::signaler& restart, mt::signaler& stop, socket_t& s, const request_t& rq) {
        line_t line = rq.line();
        const char_t* chars = 0;
        size_t length = 0;

        if ((chars = line.has_chars(length))) {
            MEDUSA_LOG_MESSAGE_DEBUG("line = \"" << chars << "\"");

            if ((chars = line.method().has_chars(length))) {
                MEDUSA_LOG_MESSAGE_DEBUG("method = \"" << chars << "\"");

                if (!(chars_t::compare(chars, XOS_APP_CONSOLE_HELLO_BYE_MESSAGE))) {
                    stop();
                } else {
                    if (!(chars_t::compare(chars, XOS_APP_CONSOLE_HELLO_HELLO_MESSAGE))) {
                        restart();
                        stop();
                    } else {
                    }
                }
                return processing_done;
            }
        }
        return processing_failed;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    int optind_, argc_;
    const char_t *const* argv_, *const* env_;
};

} // namespace tcp 
} // namespace daemon 
} // namespace server 
} // namespace network 
} // namespace medusa 

#endif // _MEDUSA_NETWORK_SERVER_DAEMON_TCP_PROCESSOR_HPP 
