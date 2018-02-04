########################################################################
# Copyright (c) 1988-2018 $organization$
#
# This software is provided by the author and contributors ``as is'' 
# and any express or implied warranties, including, but not limited to, 
# the implied warranties of merchantability and fitness for a particular 
# purpose are disclaimed. In no event shall the author or contributors 
# be liable for any direct, indirect, incidental, special, exemplary, 
# or consequential damages (including, but not limited to, procurement 
# of substitute goods or services; loss of use, data, or profits; or 
# business interruption) however caused and on any theory of liability, 
# whether in contract, strict liability, or tort (including negligence 
# or otherwise) arising in any way out of the use of this software, 
# even if advised of the possibility of such damage.
#
#   File: Makefile
#
# Author: $author$
#   Date: 2/4/2018
#
# Thirdpary Makefile for cheyenne
########################################################################

########################################################################
#
# cheyenne defs
#
########################################################################
CHEYENNE_MAKEDIR=$(PWD)

CHEYENNE_THIRDPARTY = $(CHEYENNE_MAKEDIR)/..
#CHEYENNE_BUILD_HOME = $(CHEYENNE_THIRDPARTY)

ifndef CHEYENNE_UNAME
CHEYENNE_UNAME = $(shell uname)
endif

ifndef CHEYENNE_OS
ifneq ($(CHEYENNE_UNAME), Darwin)
CHEYENNE_OS = linux
else
CHEYENNE_OS = macosx
endif
endif

#
# cheyenne version
#
CHEYENNE_VERSION_MAJOR = 0
CHEYENNE_VERSION_MINOR = 0
CHEYENNE_VERSION_RELEASE = 0

CHEYENNE_VERSION_SEPARATOR = .
CHEYENNE_VERSION_MAJOR_SEPARATOR = $(CHEYENNE_VERSION_SEPARATOR)
CHEYENNE_VERSION_MINOR_SEPARATOR = $(CHEYENNE_VERSION_SEPARATOR)

CHEYENNE_VERSION_SHORT = $(CHEYENNE_VERSION_MAJOR)$(CHEYENNE_VERSION_MINOR)$(CHEYENNE_VERSION_RELEASE)
CHEYENNE_VERSION = $(CHEYENNE_VERSION_MAJOR)$(CHEYENNE_VERSION_MAJOR_SEPARATOR)$(CHEYENNE_VERSION_MINOR)$(CHEYENNE_VERSION_MINOR_SEPARATOR)$(CHEYENNE_VERSION_RELEASE)

#
# cheyenne name
#
CHEYENNE_NAME_SEPARATOR = -
CHEYENNE_NAME_BASE = cheyenne
CHEYENNE_NAME = $(CHEYENNE_NAME_BASE)$(CHEYENNE_NAME_SEPARATOR)$(CHEYENNE_VERSION)
CHEYENNE_INSTALL_NAME_SEPARATOR = -
CHEYENNE_INSTALL_NAME = $(CHEYENNE_NAME_BASE)$(CHEYENNE_INSTALL_NAME_SEPARATOR)$(CHEYENNE_VERSION)
CHEYENNE_DIR = $(CHEYENNE_NAME)

#
# cheyenne archive
#
CHEYENNE_ARCHIVED = tar
CHEYENNE_COMPRESSED = gz
CHEYENNE_ARCHIVE_SEPARATOR = .
CHEYENNE_ARCHIVED_SEPARATOR = $(CHEYENNE_ARCHIVE_SEPARATOR)
CHEYENNE_COMPRESSED_SEPARATOR = $(CHEYENNE_ARCHIVE_SEPARATOR)

CHEYENNE_EXTRACT_DIR = $(CHEYENNE_NAME)
CHEYENNE_TGZ_PREFIX = 
CHEYENNE_TGZ = $(CHEYENNE_NAME)$(CHEYENNE_TGZ_PREFIX)$(CHEYENNE_ARCHIVED_SEPARATOR)$(CHEYENNE_ARCHIVED)$(CHEYENNE_COMPRESSED_SEPARATOR)$(CHEYENNE_COMPRESSED)
CHEYENNE_PATCH_TGZ_PREFIX = $(CHEYENNE_NAME_SEPARATOR)patch
CHEYENNE_PATCH_TGZ = $(CHEYENNE_NAME)$(CHEYENNE_PATCH_TGZ_PREFIX)$(CHEYENNE_ARCHIVED_SEPARATOR)$(CHEYENNE_ARCHIVED)$(CHEYENNE_COMPRESSED_SEPARATOR)$(CHEYENNE_COMPRESSED)
CHEYENNE_DOCS_TGZ_PREFIX = $(CHEYENNE_NAME_SEPARATOR)docs
CHEYENNE_DOCS_TGZ = $(CHEYENNE_NAME)$(CHEYENNE_DOCS_TGZ_PREFIX)$(CHEYENNE_ARCHIVED_SEPARATOR)$(CHEYENNE_ARCHIVED)$(CHEYENNE_COMPRESSED_SEPARATOR)$(CHEYENNE_COMPRESSED)

#
# cheyenne extract
#
ifeq ($(CHEYENNE_ARCHIVED),tar)
ifeq ($(CHEYENNE_COMPRESSED),gz)
CHEYENNE_TAR_UNCOMPRESS = z
CHEYENNE_TAR_COMPRESS = z
else
ifeq ($(CHEYENNE_COMPRESSED),bz2)
CHEYENNE_TAR_UNCOMPRESS = j
CHEYENNE_TAR_COMPRESS = j
else
ifeq ($(CHEYENNE_COMPRESSED),xz)
CHEYENNE_TAR_UNCOMPRESS = J
CHEYENNE_TAR_COMPRESS = J
else
endif
endif
endif
CHEYENNE_LIST = tar -tv$(CHEYENNE_TAR_UNCOMPRESS)f
CHEYENNE_EXTRACT = tar -x$(CHEYENNE_TAR_UNCOMPRESS)f
CHEYENNE_ARCHIVE = tar -cv$(CHEYENNE_TAR_COMPRESS)f
else
ifeq ($(CHEYENNE_ARCHIVED),zip)
CHEYENNE_LIST = unzip -l
CHEYENNE_EXTRACT = unzip
CHEYENNE_ARCHIVE = zip
else
CHEYENNE_LIST = echo unable to list
CHEYENNE_EXTRACT = echo unable to extract
CHEYENNE_ARCHIVE = echo unable to archive
endif
endif

CHEYENNE_LIST_TGZ = $(CHEYENNE_LIST) $(CHEYENNE_TGZ)
CHEYENNE_EXTRACT_TGZ = $(CHEYENNE_EXTRACT) $(CHEYENNE_TGZ)
CHEYENNE_TOUCH_EXTRACT = touch $(CHEYENNE_DIR)
CHEYENNE_REMOVE_DIR = $(CHEYENNE_REMOVE) $(CHEYENNE_DIR)

CHEYENNE_LIST_PATCH = $(CHEYENNE_LIST)
CHEYENNE_EXTRACT_PATCH = $(CHEYENNE_EXTRACT)
CHEYENNE_LIST_PATCH_TGZ = $(CHEYENNE_LIST_PATCH) $(CHEYENNE_PATCH_TGZ)
CHEYENNE_EXTRACT_PATCH_TGZ = $(CHEYENNE_EXTRACT_PATCH) $(CHEYENNE_PATCH_TGZ)

CHEYENNE_LIST_DOCS = $(CHEYENNE_LIST)
CHEYENNE_EXTRACT_DOCS = $(CHEYENNE_EXTRACT)
CHEYENNE_LIST_DOCS_TGZ = $(CHEYENNE_LIST_DOCS) $(CHEYENNE_DOCS_TGZ)
CHEYENNE_EXTRACT_DOCS_TGZ = $(CHEYENNE_EXTRACT_DOCS) $(CHEYENNE_DOCS_TGZ) -C$(CHEYENNE_DOCS_PREFIX)

#
# cheyenne build
#
ifndef CHEYENNE_BUILD_HOME
CHEYENNE_BUILD = $(HOME)/build
else
CHEYENNE_BUILD = $(CHEYENNE_BUILD_HOME)/build
endif
CHEYENNE_PREFIX = $(CHEYENNE_BUILD)/$(CHEYENNE_INSTALL_NAME)
CHEYENNE_EXEC_PREFIX = $(CHEYENNE_PREFIX)
CHEYENNE_CONF_PREFIX = $(CHEYENNE_PREFIX)
CHEYENNE_DOCS_PREFIX = $(CHEYENNE_PREFIX)
CHEYENNE_LINK_NAME = $(CHEYENNE_BUILD)/$(CHEYENNE_NAME_BASE)

CHEYENNE_MKDIR = mkdir -p
CHEYENNE_REMOVE = rm -r -f

CHEYENNE_MAKE_DIR = $(CHEYENNE_DIR)
CHEYENNE_MAKE_PUSHD = pushd $(CHEYENNE_MAKE_DIR)
CHEYENNE_MAKE = make

#
# cheyenne configure
#
ifneq ($(CHEYENNE_UNAME), Darwin)
CHEYENNE_CONFIGURE_UNAME = 
else
CHEYENNE_CONFIGURE_UNAME = 
endif
CHEYENNE_CONFIGURE_CONFIGURE = ./configure
CHEYENNE_CONFIGURE_HELP = $(CHEYENNE_CONFIGURE_CONFIGURE) --help
CHEYENNE_CONFIGURE_PUSHD = pushd $(CHEYENNE_MAKE_DIR)
CHEYENNE_CONFIGURE = $(CHEYENNE_CONFIGURE_CONFIGURE) \
$(CHEYENNE_CONFIGURE_UNAME) --prefix=$(CHEYENNE_PREFIX) --exec_prefix=$(CHEYENNE_EXEC_PREFIX)

#
# cheyenne help
#
CHEYENNE_HELP = $(CHEYENNE_CONFIGURE_HELP)

########################################################################
#
# rules
#
########################################################################

all: build

package: archive unextract

again: unextract build

test: test-cheyenne

install-links: install-cheyenne-links

install-docs: install-cheyenne-docs

install-prefix: install-cheyenne-prefix

install: install-cheyenne

build: build-cheyenne

clean: clean-cheyenne

configed: configed-$(CHEYENNE_DIR)

config: config-$(CHEYENNE_DIR)

help: help-cheyenne

list-docs: list-cheyenne-docs

list-patch: list-cheyenne-patch

extract-patch: extract-cheyenne-patch

list: list-cheyenne

extract: extract-cheyenne

unextract: unextract-cheyenne

archive: archive-cheyenne

linked: cheyenne-linked

prefixed: cheyenne-prefixed

archived: cheyenne-archived

extracted: cheyenne-extracted

########################################################################
#
# cheyenne rules
#
########################################################################

#
# Help cheyenne
#
help-cheyenne: $(CHEYENNE_DIR)
	@($(CHEYENNE_CONFIGURE_PUSHD);\
	  (($(CHEYENNE_HELP)) || (exit 1));\
	  popd)

#
# Install cheyenne
#
install-cheyenne: configed-$(CHEYENNE_DIR)
	@(echo Installing $(CHEYENNE_DIR)...;\
	  $(CHEYENNE_MAKE_PUSHD);\
	  (($(CHEYENNE_MAKE) install) || (exit 1)) && \
	  ((touch $(CHEYENNE_MAKEDIR)/configed-$(CHEYENNE_DIR)) || (exit 1));\
	  popd)
	  
#
# Build cheyenne
#
build-cheyenne: configed-$(CHEYENNE_DIR)
	@(echo Building $(CHEYENNE_DIR)...;\
	  $(CHEYENNE_MAKE_PUSHD);\
	  (($(CHEYENNE_MAKE)) || (exit 1)) && \
	  ((touch $(CHEYENNE_MAKEDIR)/configed-$(CHEYENNE_DIR)) || (exit 1));\
	  popd)
	  
#
# Clean cheyenne
#
clean-cheyenne: configed-$(CHEYENNE_DIR)
	@(echo Cleaning $(CHEYENNE_DIR)...;\
	  $(CHEYENNE_MAKE_PUSHD);\
	  (($(CHEYENNE_MAKE) clean) || (exit 1)) && \
	  ((touch $(CHEYENNE_MAKEDIR)/configed-$(CHEYENNE_DIR)) || (exit 1));\
	  popd)
	  
#
# Test cheyenne
#
test-cheyenne: configed-$(CHEYENNE_DIR)
	@(echo Building test $(CHEYENNE_DIR)...;\
	  $(CHEYENNE_MAKE_PUSHD);\
	  (($(CHEYENNE_MAKE) test) || (exit 1)) && \
	  ((touch $(CHEYENNE_MAKEDIR)/configed-$(CHEYENNE_DIR)) || (exit 1));\
	  popd)
	  
#
# Config cheyenne
#
config-$(CHEYENNE_DIR): unconfig-$(CHEYENNE_DIR) configed-$(CHEYENNE_DIR)

unconfig-$(CHEYENNE_DIR):
	@(rm -f configed-$(CHEYENNE_DIR))

configed-$(CHEYENNE_DIR): $(CHEYENNE_DIR)
	@(echo Configing $(CHEYENNE_DIR)...;\
	  $(CHEYENNE_CONFIGURE_PUSHD);\
	  (($(CHEYENNE_CONFIGURE)) || (exit 1)) && \
	  ((touch $(CHEYENNE_DIR)) || (exit 1)) && \
	  ((touch $(CHEYENNE_MAKEDIR)/configed-$(CHEYENNE_DIR)) || (exit 1));\
	  popd)

########################################################################
# docs
########################################################################

#
# List cheyenne Docs
#
list-cheyenne-docs: $(CHEYENNE_DOCS_TGZ)
	@(echo Listing $(CHEYENNE_DOCS_TGZ)...;\
	  (($(CHEYENNE_LIST_DOCS_TGZ)) || (exit 1)))

#
# Install cheyenne Docs
#
install-cheyenne-docs: $(CHEYENNE_DOCS_PREFIX)
	@(echo Extracting $(CHEYENNE_DOCS_TGZ)...;\
	  (($(CHEYENNE_EXTRACT_DOCS_TGZ)) || (exit 1)))

########################################################################
# patch
########################################################################

#
# List cheyenne Patch
#
list-cheyenne-patch: $(CHEYENNE_PATCH_TGZ)
	@(echo Listing $(CHEYENNE_PATCH_TGZ)...;\
	  (($(CHEYENNE_LIST_PATCH_TGZ)) || (exit 1)))

#
# Extract cheyenne patch
#
extract-cheyenne-patch: $(CHEYENNE_DIR)
	@(echo Extracting $(CHEYENNE_PATCH_TGZ)...;\
	  (($(CHEYENNE_EXTRACT_PATCH_TGZ)) || (exit 1)))

########################################################################
# archive
########################################################################

#
# List cheyenne
#
list-cheyenne: 
	@(echo Listing $(CHEYENNE_TGZ)...;\
	  (($(CHEYENNE_LIST_TGZ)) || (exit 1)))

#
# cheyenne extracted
#
cheyenne-extracted: 
	@(echo $(CHEYENNE_EXTRACT) $(CHEYENNE_TGZ))

#
# Extract cheyenne
#
extract-cheyenne: unextract-cheyenne $(CHEYENNE_DIR)

unextract-cheyenne: unconfig-$(CHEYENNE_DIR)
	@(echo Removing $(CHEYENNE_DIR)...;\
	  (($(CHEYENNE_REMOVE_DIR)) || (exit 1)))

$(CHEYENNE_DIR): $(CHEYENNE_TGZ)
	@(echo Extracting $(CHEYENNE_TGZ)...;\
	  (($(CHEYENNE_EXTRACT_TGZ)) || (exit 1)) && \
	  (($(CHEYENNE_TOUCH_EXTRACT)) || (exit 1)))
	  
#
# cheyenne archived
#
cheyenne-archived: 
	@(echo $(CHEYENNE_TGZ))
	  
#
# Archive cheyenne
#
archive-cheyenne: 
	@(echo Archiving $(CHEYENNE_DIR) to $(CHEYENNE_TGZ)...;\
	  (($(CHEYENNE_ARCHIVE) $(CHEYENNE_TGZ) $(CHEYENNE_DIR)) || (exit 1)))

########################################################################
# links
########################################################################

#
# cheyenne linked
#
cheyenne-linked: 
	@echo link is $(CHEYENNE_LINK_NAME) "->" $(CHEYENNE_PREFIX)
	  
#
# Install cheyenne links
#
install-cheyenne-links: 
	@((echo removing $(CHEYENNE_LINK_NAME)) && \
	  ((rm -f $(CHEYENNE_LINK_NAME)) || (exit 1)) && \
	  (echo Linking $(CHEYENNE_LINK_NAME) "->" $(CHEYENNE_PREFIX)) && \
	  ((ln -s $(CHEYENNE_PREFIX) $(CHEYENNE_LINK_NAME)) || (exit 1)))
	  
########################################################################
# prefix
########################################################################

#
# cheyenne prefixed
#
cheyenne-prefixed: 
	@((echo prefix is $(CHEYENNE_PREFIX)) && \
	  (echo exec prefix is $(CHEYENNE_EXEC_PREFIX)) && \
	  (echo conf prefix is $(CHEYENNE_CONF_PREFIX)) && \
	  (echo docs prefix is $(CHEYENNE_DOCS_PREFIX)))
	  
#
# Install cheyenne prefix
#
install-cheyenne-prefix: 
	@((echo makeing $(CHEYENNE_PREFIX)) && \
	  ((mkdir -p $(CHEYENNE_PREFIX)) || (exit 1)) && \
	  (echo makeing $(CHEYENNE_EXEC_PREFIX)) && \
	  ((mkdir -p $(CHEYENNE_EXEC_PREFIX)) || (exit 1)))
	  
$(CHEYENNE_PREFIX):
	@(echo Makeing Directory $(CHEYENNE_PREFIX)...;\
	  (($(CHEYENNE_MKDIR) $(CHEYENNE_PREFIX)) || (exit 1)))

$(CHEYENNE_EXEC_PREFIX):
	@(echo Makeing Directory $(CHEYENNE_EXEC_PREFIX)...;\
	  (($(CHEYENNE_MKDIR) $(CHEYENNE_EXEC_PREFIX)) || (exit 1)))

$(CHEYENNE_CONF_PREFIX):
	@(echo Makeing Directory $(CHEYENNE_CONF_PREFIX)...;\
	  (($(CHEYENNE_MKDIR) $(CHEYENNE_CONF_PREFIX)) || (exit 1)))

$(CHEYENNE_DOCS_PREFIX):
	@(echo Makeing Directory $(CHEYENNE_DOCS_PREFIX)...;\
	  (($(CHEYENNE_MKDIR) $(CHEYENNE_DOCS_PREFIX)) || (exit 1)))




        

