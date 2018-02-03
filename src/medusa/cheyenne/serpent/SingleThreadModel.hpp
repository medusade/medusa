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
///   File: SingleThreadModel.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SINGLETHREADMODEL_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SINGLETHREADMODEL_HPP

#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase SingleThreadModelTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: SingleThreadModelT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SingleThreadModelTImplements>

class _EXPORT_CLASS SingleThreadModelT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef SingleThreadModelT<> SingleThreadModel;
typedef SingleThreadModel::Implements SingleThreadModelImplements;

typedef SingleThreadModel NullSingleThreadModelTImplements;
typedef ::coke::lang::Object NullSingleThreadModelTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullSingleThreadModelT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullSingleThreadModelTImplements, class TExtends = NullSingleThreadModelTExtends>

class _EXPORT_CLASS NullSingleThreadModelT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullSingleThreadModelT(const NullSingleThreadModelT& copy): Extends(copy) {
    }
    NullSingleThreadModelT() {
    }
    virtual ~NullSingleThreadModelT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullSingleThreadModelT<> NullSingleThreadModel;
typedef NullSingleThreadModel::Implements NullSingleThreadModelImplements;
typedef NullSingleThreadModel::Extends NullSingleThreadModelExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_SINGLETHREADMODEL_HPP 
