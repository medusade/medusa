%########################################################################
%# Copyright (c) 1988-2017 $organization$
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
%#   File: medusa-headers-pri.t
%#
%# Author: $author$
%#   Date: 6/4/2017
%########################################################################
%with(%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(medusa)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%(%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%(linux)%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%src,%(%else-then(%src%,%(src)%)%)%,%
%Src,%(%else-then(%Src%,%(%src%)%)%)%,%
%SRC,%(%else-then(%SRC%,%(%toupper(%Src%)%)%)%)%,%
%src,%(%else-then(%_Src%,%(%tolower(%Src%)%)%)%)%,%
%headers,%(%else-then(%headers%,%(%include(%filepath%/../cxx/%Framework%-headers.t)%)%)%)%,%
%Headers,%(%else-then(%Headers%,%(%headers%)%)%)%,%
%HEADERS,%(%else-then(%HEADERS%,%(%toupper(%Headers%)%)%)%)%,%
%headers,%(%else-then(%_Headers%,%(%tolower(%Headers%)%)%)%)%,%
%%(%
%%parse(%Headers%,%(

)%,%()%,%()%,%(
########################################################################
%Target%_HEADERS += \
%parse(%Headers%,%(
)%,%($${%FRAMEWORK%_%SRC%}/)%,%( \
)%)%

)%,Headers)%%
%)%)%