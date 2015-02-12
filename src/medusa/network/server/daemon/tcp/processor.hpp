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
#include "medusa/inet/medusa/server/response.hpp"
#include "medusa/inet/medusa/server/request.hpp"
#include "medusa/inet/medusa/server/protocol.hpp"
#include "medusa/base/base.hpp"

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
    typedef inet::medusa::server::request::message request_t;
    typedef network::socket socket_t;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    processor() {
    }
    virtual ~processor() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual status operator() (socket_t& s, const request_t& rq) {
        const char_t* chars = 0;
        size_t length = 0;

        if ((chars = rq.line().has_chars(length))) {
            MEDUSA_LOG_MESSAGE_DEBUG("line = \"" << chars << "\"");

            if (!(rq.line().protocol().name().compare(MEDUSA_SERVER_PROTOCOL_NAME))) {
            } else {
            }
        }
        return processing_failed;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};

} // namespace tcp 
} // namespace daemon 
} // namespace server 
} // namespace network 
} // namespace medusa 

#endif // _MEDUSA_NETWORK_SERVER_DAEMON_TCP_PROCESSOR_HPP 
