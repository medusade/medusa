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
///   File: SerpentConfig.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SERPENTCONFIG_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SERPENTCONFIG_HPP

#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase SerpentConfigTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: SerpentConfigT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SerpentConfigTImplements>

class _EXPORT_CLASS SerpentConfigT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef SerpentConfigT<> SerpentConfig;
typedef SerpentConfig::Implements SerpentConfigImplements;

typedef SerpentConfig NullSerpentConfigTImplements;
typedef ::coke::lang::Object NullSerpentConfigTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullSerpentConfigT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullSerpentConfigTImplements, class TExtends = NullSerpentConfigTExtends>

class _EXPORT_CLASS NullSerpentConfigT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullSerpentConfigT(const NullSerpentConfigT& copy): Extends(copy) {
    }
    NullSerpentConfigT() {
    }
    virtual ~NullSerpentConfigT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullSerpentConfigT<> NullSerpentConfig;
typedef NullSerpentConfig::Implements NullSerpentConfigImplements;
typedef NullSerpentConfig::Extends NullSerpentConfigExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_SERPENTCONFIG_HPP 
