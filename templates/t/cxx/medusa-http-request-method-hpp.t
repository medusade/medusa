%########################################################################
%# Copyright (c) 1988-2014 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: medusa-http-request-method-hpp.t
%#
%# Author: $author$
%#   Date: 11/26/2014
%########################################################################
///////////////////////////////////////////////////////////////////////
///
/// %method%
///
///////////////////////////////////////////////////////////////////////
namespace %method% {
namespace request {
typedef http::request::method method_extends;
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS method: public method_extends {
public:
    ///////////////////////////////////////////////////////////////////////
    method(): method_extends(http::request::method::%METHOD%) {}
};
typedef http::request::line line_extends;
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS line: public line_extends {
public:
    ///////////////////////////////////////////////////////////////////////
    line(const char_t* uri): line_extends
    (http::request::method(http::request::method::%METHOD%), uri) {}
};
typedef http::request::message message_extends;
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS message: public message_extends {
public:
    ///////////////////////////////////////////////////////////////////////
    message(const char_t* uri): message_extends(line(uri)) {}
};
} // namespace request
} // namespace %method%
