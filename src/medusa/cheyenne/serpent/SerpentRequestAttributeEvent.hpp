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
///   File: SerpentRequestAttributeEvent.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SERPENTREQUESTATTRIBUTEEVENT_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SERPENTREQUESTATTRIBUTEEVENT_HPP

#include "coke/lang/Object.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase SerpentRequestAttributeEventTImplements;
typedef ::coke::lang::Object SerpentRequestAttributeEventTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: SerpentRequestAttributeEventT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SerpentRequestAttributeEventTImplements, class TExtends = SerpentRequestAttributeEventTExtends>

class _EXPORT_CLASS SerpentRequestAttributeEventT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    SerpentRequestAttributeEventT(const SerpentRequestAttributeEventT& copy): Extends(copy) {
    }
    SerpentRequestAttributeEventT() {
    }
    virtual ~SerpentRequestAttributeEventT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef SerpentRequestAttributeEventT<> SerpentRequestAttributeEvent;
typedef SerpentRequestAttributeEvent::Implements SerpentRequestAttributeEventImplements;
typedef SerpentRequestAttributeEvent::Extends SerpentRequestAttributeEventExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_SERPENTREQUESTATTRIBUTEEVENT_HPP 
