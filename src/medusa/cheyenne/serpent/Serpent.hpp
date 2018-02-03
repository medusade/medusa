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
///   File: Serpent.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SERPENT_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SERPENT_HPP

#include "medusa/cheyenne/serpent/SerpentResponse.hpp"
#include "medusa/cheyenne/serpent/SerpentRequest.hpp"
#include "medusa/cheyenne/serpent/SerpentConfig.hpp"
#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase SerpentTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: SerpentT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SerpentTImplements>

class _EXPORT_CLASS SerpentT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t init(const SerpentConfig& config) {
        return true;
    }
    virtual boolean_t destroy() {
        return true;
    }
    virtual boolean_t service(const SerpentRequest& req, SerpentResponse& res) {
        return false;
    }
    virtual const SerpentConfig& getSerpentConfig() const {
        static const NullSerpentConfig config;
        return config;
    }
    virtual const String& getSerpentInfo() const {
        static const NullString info;
        return info;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef SerpentT<> Serpent;
typedef Serpent::Implements SerpentImplements;

typedef Serpent NullSerpentTImplements;
typedef ::coke::lang::Object NullSerpentTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullSerpentT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullSerpentTImplements, class TExtends = NullSerpentTExtends>

class _EXPORT_CLASS NullSerpentT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullSerpentT(const NullSerpentT& copy): Extends(copy) {
    }
    NullSerpentT() {
    }
    virtual ~NullSerpentT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullSerpentT<> NullSerpent;
typedef NullSerpent::Implements NullSerpentImplements;
typedef NullSerpent::Extends NullSerpentExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_SERPENT_HPP 
