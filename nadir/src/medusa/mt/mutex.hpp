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
///   File: mutex.hpp
///
/// Author: $author$
///   Date: 12/27/2017
///////////////////////////////////////////////////////////////////////
#ifndef _MEDUSA_MT_MUTEX_HPP
#define _MEDUSA_MT_MUTEX_HPP

#include "medusa/base/base.hpp"
#include "nadir/mt/os/mutex.hpp"

namespace medusa {
namespace mt {

typedef nadir::lock_status lock_status;
static const lock_status lock_success = nadir::lock_success;
static const lock_status lock_failed = nadir::lock_failed;
static const lock_status lock_busy = nadir::lock_busy;
static const lock_status lock_interrupted = nadir::lock_interrupted;
static const lock_status lock_invalid = nadir::lock_invalid;

typedef nadir::lock_exception lock_exception;
typedef nadir::locked locked;
typedef nadir::locker lock;

typedef nadir::mt::os::mutex mutex;

} // namespace mt 
} // namespace medusa 

#endif // _MEDUSA_MT_MUTEX_HPP 
