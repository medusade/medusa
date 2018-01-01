///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2017 $organization$
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
///   File: sockets.hpp
///
/// Author: $author$
///   Date: 12/27/2017
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_NETWORK_SOCKETS_HPP
#define _MEDUSA_NETWORK_SOCKETS_HPP

#include "medusa/network/socket.hpp"
#include "nadir/network/os/sockets.hpp"

namespace medusa {
namespace network {

///////////////////////////////////////////////////////////////////////
/// sockets
///////////////////////////////////////////////////////////////////////
namespace sockets {

bool startup() {
    bool success = true;
    return success; 
}
bool cleanup() { 
    bool success = true;
    return success; 
}

} // namespace sockets

} // namespace network 
} // namespace medusa 

#endif // _MEDUSA_NETWORK_SOCKETS_HPP 
