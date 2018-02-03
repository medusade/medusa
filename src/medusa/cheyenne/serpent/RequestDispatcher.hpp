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
///   File: RequestDispatcher.hpp
///
/// Author: $author
///   Date: 2/2/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_REQUESTDISPATCHER_HPP
#define _MEDUSA_CHEYENNE_SERPENT_REQUESTDISPATCHER_HPP

#include "medusa/cheyenne/Base.hpp"

namespace medusa {
namespace cheyenne {
namespace serpent {

typedef ::coke::lang::ImplementBase RequestDispatcherTImplements;
///////////////////////////////////////////////////////////////////////
///  Class: RequestDispatcherT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = RequestDispatcherTImplements>

class _EXPORT_CLASS RequestDispatcherT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef RequestDispatcherT<> RequestDispatcher;
typedef RequestDispatcher::Implements RequestDispatcherImplements;

typedef RequestDispatcher NullRequestDispatcherTImplements;
typedef ::coke::lang::Object NullRequestDispatcherTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: NullRequestDispatcherT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = NullRequestDispatcherTImplements, class TExtends = NullRequestDispatcherTExtends>

class _EXPORT_CLASS NullRequestDispatcherT: virtual public TImplements , public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    NullRequestDispatcherT(const NullRequestDispatcherT& copy): Extends(copy) {
    }
    NullRequestDispatcherT() {
    }
    virtual ~NullRequestDispatcherT() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual boolean_t isNull() const {
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef NullRequestDispatcherT<> NullRequestDispatcher;
typedef NullRequestDispatcher::Implements NullRequestDispatcherImplements;
typedef NullRequestDispatcher::Extends NullRequestDispatcherExtends;

} // namespace serpent
} // namespace cheyenne
} // namespace medusa

#endif // _MEDUSA_CHEYENNE_SERPENT_REQUESTDISPATCHER_HPP 
