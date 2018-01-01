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
///   File: transport.hpp
///
/// Author: $author$
///   Date: 12/27/2017
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_NETWORK_TRANSPORT_HPP
#define _MEDUSA_NETWORK_TRANSPORT_HPP

#include "medusa/network/address.hpp"
/*
#include "nadir/network/ip/v6/tcp/transport.hpp"
#include "nadir/network/ip/v6/udp/transport.hpp"
#include "nadir/network/ip/v4/tcp/transport.hpp"
#include "nadir/network/ip/v4/udp/transport.hpp"
*/
#include "nadir/network/ip/tcp/transport.hpp"
#include "nadir/network/ip/udp/transport.hpp"

namespace medusa {
namespace network {

typedef nadir::network::transport transport;

///////////////////////////////////////////////////////////////////////
/// ip
///////////////////////////////////////////////////////////////////////
namespace ip {

typedef nadir::network::ip::transport transport;

///////////////////////////////////////////////////////////////////////
/// tcp
///////////////////////////////////////////////////////////////////////
namespace tcp {

typedef nadir::network::ip::tcp::transport transport;

} // namespace tcp

///////////////////////////////////////////////////////////////////////
/// udp
///////////////////////////////////////////////////////////////////////
namespace udp {

typedef nadir::network::ip::udp::transport transport;

} // namespace udp

///////////////////////////////////////////////////////////////////////
/// v4
///////////////////////////////////////////////////////////////////////
namespace v4 {

///////////////////////////////////////////////////////////////////////
/// tcp
///////////////////////////////////////////////////////////////////////
namespace tcp {

//typedef nadir::network::ip::v4::tcp::transport transport;

} // namespace tcp

///////////////////////////////////////////////////////////////////////
/// udp
///////////////////////////////////////////////////////////////////////
namespace udp {

//typedef nadir::network::ip::v4::udp::transport transport;

} // namespace udp
} // namespace v4

///////////////////////////////////////////////////////////////////////
/// v6
///////////////////////////////////////////////////////////////////////
namespace v6 {

///////////////////////////////////////////////////////////////////////
/// tcp
///////////////////////////////////////////////////////////////////////
namespace tcp {

//typedef nadir::network::ip::v6::tcp::transport transport;

} // namespace tcp

///////////////////////////////////////////////////////////////////////
/// udp
///////////////////////////////////////////////////////////////////////
namespace udp {

//typedef nadir::network::ip::v6::udp::transport transport;

} // namespace udp
} // namespace v6

} // namespace ip
} // namespace network 
} // namespace medusa 

#endif // _MEDUSA_NETWORK_TRANSPORT_HPP 
