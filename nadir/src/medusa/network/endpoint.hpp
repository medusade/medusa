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
///   File: endpoint.hpp
///
/// Author: $author$
///   Date: 12/27/2017
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_NETWORK_ENDPOINT_HPP
#define _MEDUSA_NETWORK_ENDPOINT_HPP

#include "medusa/network/transport.hpp"
#include "nadir/network/ip/v6/endpoint.hpp"
#include "nadir/network/ip/v4/endpoint.hpp"

namespace medusa {
namespace network {

typedef nadir::network::endpoint endpoint;

///////////////////////////////////////////////////////////////////////
/// ip
///////////////////////////////////////////////////////////////////////
namespace ip {

//typedef nadir::network::ip::endpoint endpoint;

///////////////////////////////////////////////////////////////////////
/// v4
///////////////////////////////////////////////////////////////////////
namespace v4 {

typedef nadir::network::ip::v4::endpoint endpoint;

} // namespace v4

///////////////////////////////////////////////////////////////////////
/// v6
///////////////////////////////////////////////////////////////////////
namespace v6 {

typedef nadir::network::ip::v6::endpoint endpoint;

} // namespace v6

} // namespace ip
} // namespace network 
} // namespace medusa 

#endif // _MEDUSA_NETWORK_ENDPOINT_HPP 
