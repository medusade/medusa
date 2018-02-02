///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2018 $organization$
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
///   File: SerpentResponseWrapper.hpp
///
/// Author: $author$
///   Date: 2/1/2018
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_CHEYENNE_SERPENT_SERPENTRESPONSEWRAPPER_HPP
#define _MEDUSA_CHEYENNE_SERPENT_SERPENTRESPONSEWRAPPER_HPP
#include "coke/lang/Object.hpp"

namespace medusa {
namespace cheyenne { 
namespace serpent {


typedef ObjectImplements SerpentResponseWrapperTImplements;
typedef Object SerpentResponseWrapperTExtends;
///////////////////////////////////////////////////////////////////////
///  Class: SerpentResponseWrapperT
///////////////////////////////////////////////////////////////////////
template
<class TImplements = SerpentResponseWrapperTImplements, class TExtends = SerpentResponseWrapperTExtends>
class _EXPORT_CLASS SerpentResponseWrapperT: virtual public TImplements,public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    SerpentResponseWrapperT() {
    }
    virtual ~SerpentResponseWrapperT() {
    }
};


} // namespace serpent 
} // namespace cheyenne 
} // namespace medusa 


#endif // _MEDUSA_CHEYENNE_SERPENT_SERPENTRESPONSEWRAPPER_HPP 

        

