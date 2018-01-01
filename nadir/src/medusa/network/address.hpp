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
///   File: address.hpp
///
/// Author: $author$
///   Date: 12/27/2017
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_NETWORK_ADDRESS_HPP
#define _MEDUSA_NETWORK_ADDRESS_HPP

#include "medusa/base/base.hpp"
#include "nadir/network/ip/v6/address.hpp"
#include "nadir/network/ip/v4/address.hpp"

namespace medusa {
namespace network {

typedef nadir::network::address address;

///////////////////////////////////////////////////////////////////////
/// ip
///////////////////////////////////////////////////////////////////////
namespace ip {

typedef nadir::network::ip::address address;

///////////////////////////////////////////////////////////////////////
/// v4
///////////////////////////////////////////////////////////////////////
namespace v4 {

typedef nadir::network::ip::v4::address address;

} // namespace v4

///////////////////////////////////////////////////////////////////////
/// v6
///////////////////////////////////////////////////////////////////////
namespace v6 {

typedef nadir::network::ip::v6::address address;

} // namespace v6

} // namespace ip
} // namespace network 
} // namespace medusa 

#endif // _MEDUSA_NETWORK_ADDRESS_HPP 
