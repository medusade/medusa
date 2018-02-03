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
///   File: SerpentContextAttributeListener.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SERPENTCONTEXTATTRIBUTELISTENER_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SERPENTCONTEXTATTRIBUTELISTENER_HPP

#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase SerpentContextAttributeListenerTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: SerpentContextAttributeListenerT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SerpentContextAttributeListenerTImplements>

class _EXPORT_CLASS SerpentContextAttributeListenerT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef SerpentContextAttributeListenerT<> SerpentContextAttributeListener;
typedef SerpentContextAttributeListener::Implements SerpentContextAttributeListenerImplements;

typedef SerpentContextAttributeListener NullSerpentContextAttributeListenerTImplements;
typedef ::coke::lang::Object NullSerpentContextAttributeListenerTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullSerpentContextAttributeListenerT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullSerpentContextAttributeListenerTImplements, class TExtends = NullSerpentContextAttributeListenerTExtends>

class _EXPORT_CLASS NullSerpentContextAttributeListenerT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullSerpentContextAttributeListenerT(const NullSerpentContextAttributeListenerT& copy): Extends(copy) {
    }
    NullSerpentContextAttributeListenerT() {
    }
    virtual ~NullSerpentContextAttributeListenerT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullSerpentContextAttributeListenerT<> NullSerpentContextAttributeListener;
typedef NullSerpentContextAttributeListener::Implements NullSerpentContextAttributeListenerImplements;
typedef NullSerpentContextAttributeListener::Extends NullSerpentContextAttributeListenerExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_SERPENTCONTEXTATTRIBUTELISTENER_HPP 
