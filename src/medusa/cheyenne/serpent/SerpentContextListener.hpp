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
///   File: SerpentContextListener.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SERPENTCONTEXTLISTENER_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SERPENTCONTEXTLISTENER_HPP

#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase SerpentContextListenerTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: SerpentContextListenerT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SerpentContextListenerTImplements>

class _EXPORT_CLASS SerpentContextListenerT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef SerpentContextListenerT<> SerpentContextListener;
typedef SerpentContextListener::Implements SerpentContextListenerImplements;

typedef SerpentContextListener NullSerpentContextListenerTImplements;
typedef ::coke::lang::Object NullSerpentContextListenerTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullSerpentContextListenerT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullSerpentContextListenerTImplements, class TExtends = NullSerpentContextListenerTExtends>

class _EXPORT_CLASS NullSerpentContextListenerT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullSerpentContextListenerT(const NullSerpentContextListenerT& copy): Extends(copy) {
    }
    NullSerpentContextListenerT() {
    }
    virtual ~NullSerpentContextListenerT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullSerpentContextListenerT<> NullSerpentContextListener;
typedef NullSerpentContextListener::Implements NullSerpentContextListenerImplements;
typedef NullSerpentContextListener::Extends NullSerpentContextListenerExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_SERPENTCONTEXTLISTENER_HPP 
