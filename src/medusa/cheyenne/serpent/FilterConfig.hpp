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
///   File: FilterConfig.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_FILTERCONFIG_HPP
#define _MEDUSA_CHEYENNE_SERPENT_FILTERCONFIG_HPP

#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase FilterConfigTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: FilterConfigT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = FilterConfigTImplements>

class _EXPORT_CLASS FilterConfigT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef FilterConfigT<> FilterConfig;
typedef FilterConfig::Implements FilterConfigImplements;

typedef FilterConfig NullFilterConfigTImplements;
typedef ::coke::lang::Object NullFilterConfigTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullFilterConfigT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullFilterConfigTImplements, class TExtends = NullFilterConfigTExtends>

class _EXPORT_CLASS NullFilterConfigT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullFilterConfigT(const NullFilterConfigT& copy): Extends(copy) {
    }
    NullFilterConfigT() {
    }
    virtual ~NullFilterConfigT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullFilterConfigT<> NullFilterConfig;
typedef NullFilterConfig::Implements NullFilterConfigImplements;
typedef NullFilterConfig::Extends NullFilterConfigExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_FILTERCONFIG_HPP 
