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
#   Date: 2/1/2018
#
# Thirdpary Makefile for coke
########################################################################

########################################################################
#
# coke defs
#
########################################################################
COKE_MAKEDIR=$(PWD)

COKE_THIRDPARTY = $(COKE_MAKEDIR)/..
#COKE_BUILD_HOME = $(COKE_THIRDPARTY)

ifndef COKE_UNAME
COKE_UNAME = $(shell uname)
endif

ifndef COKE_OS
ifneq ($(COKE_UNAME), Darwin)
COKE_OS = linux
else
COKE_OS = macosx
endif
endif

#
# coke version
#
COKE_VERSION_MAJOR = 0
COKE_VERSION_MINOR = 0
COKE_VERSION_RELEASE = 0

COKE_VERSION_SEPARATOR = .
COKE_VERSION_MAJOR_SEPARATOR = $(COKE_VERSION_SEPARATOR)
COKE_VERSION_MINOR_SEPARATOR = $(COKE_VERSION_SEPARATOR)

COKE_VERSION_SHORT = $(COKE_VERSION_MAJOR)$(COKE_VERSION_MINOR)$(COKE_VERSION_RELEASE)
COKE_VERSION = $(COKE_VERSION_MAJOR)$(COKE_VERSION_MAJOR_SEPARATOR)$(COKE_VERSION_MINOR)$(COKE_VERSION_MINOR_SEPARATOR)$(COKE_VERSION_RELEASE)

#
# coke name
#
COKE_NAME_SEPARATOR = -
COKE_NAME_BASE = coke
COKE_NAME = $(COKE_NAME_BASE)$(COKE_NAME_SEPARATOR)$(COKE_VERSION)
COKE_INSTALL_NAME_SEPARATOR = -
COKE_INSTALL_NAME = $(COKE_NAME_BASE)$(COKE_INSTALL_NAME_SEPARATOR)$(COKE_VERSION)
COKE_DIR = $(COKE_NAME)

#
# coke archive
#
COKE_ARCHIVED = tar
COKE_COMPRESSED = gz
COKE_ARCHIVE_SEPARATOR = .
COKE_ARCHIVED_SEPARATOR = $(COKE_ARCHIVE_SEPARATOR)
COKE_COMPRESSED_SEPARATOR = $(COKE_ARCHIVE_SEPARATOR)

COKE_EXTRACT_DIR = $(COKE_NAME)
COKE_TGZ_PREFIX = 
COKE_TGZ = $(COKE_NAME)$(COKE_TGZ_PREFIX)$(COKE_ARCHIVED_SEPARATOR)$(COKE_ARCHIVED)$(COKE_COMPRESSED_SEPARATOR)$(COKE_COMPRESSED)
COKE_PATCH_TGZ_PREFIX = $(COKE_NAME_SEPARATOR)patch
COKE_PATCH_TGZ = $(COKE_NAME)$(COKE_PATCH_TGZ_PREFIX)$(COKE_ARCHIVED_SEPARATOR)$(COKE_ARCHIVED)$(COKE_COMPRESSED_SEPARATOR)$(COKE_COMPRESSED)
COKE_DOCS_TGZ_PREFIX = $(COKE_NAME_SEPARATOR)docs
COKE_DOCS_TGZ = $(COKE_NAME)$(COKE_DOCS_TGZ_PREFIX)$(COKE_ARCHIVED_SEPARATOR)$(COKE_ARCHIVED)$(COKE_COMPRESSED_SEPARATOR)$(COKE_COMPRESSED)

#
# coke extract
#
ifeq ($(COKE_ARCHIVED),tar)
ifeq ($(COKE_COMPRESSED),gz)
COKE_TAR_UNCOMPRESS = z
COKE_TAR_COMPRESS = z
else
ifeq ($(COKE_COMPRESSED),bz2)
COKE_TAR_UNCOMPRESS = j
COKE_TAR_COMPRESS = j
else
ifeq ($(COKE_COMPRESSED),xz)
COKE_TAR_UNCOMPRESS = J
COKE_TAR_COMPRESS = J
else
endif
endif
endif
COKE_LIST = tar -tv$(COKE_TAR_UNCOMPRESS)f
COKE_EXTRACT = tar -x$(COKE_TAR_UNCOMPRESS)f
COKE_ARCHIVE = tar -cv$(COKE_TAR_COMPRESS)f
else
ifeq ($(COKE_ARCHIVED),zip)
COKE_LIST = unzip -l
COKE_EXTRACT = unzip
COKE_ARCHIVE = zip
else
COKE_LIST = echo unable to list
COKE_EXTRACT = echo unable to extract
COKE_ARCHIVE = echo unable to archive
endif
endif

COKE_LIST_TGZ = $(COKE_LIST) $(COKE_TGZ)
COKE_EXTRACT_TGZ = $(COKE_EXTRACT) $(COKE_TGZ)
COKE_TOUCH_EXTRACT = touch $(COKE_DIR)
COKE_REMOVE_DIR = $(COKE_REMOVE) $(COKE_DIR)

COKE_LIST_PATCH = $(COKE_LIST)
COKE_EXTRACT_PATCH = $(COKE_EXTRACT)
COKE_LIST_PATCH_TGZ = $(COKE_LIST_PATCH) $(COKE_PATCH_TGZ)
COKE_EXTRACT_PATCH_TGZ = $(COKE_EXTRACT_PATCH) $(COKE_PATCH_TGZ)

COKE_LIST_DOCS = $(COKE_LIST)
COKE_EXTRACT_DOCS = $(COKE_EXTRACT)
COKE_LIST_DOCS_TGZ = $(COKE_LIST_DOCS) $(COKE_DOCS_TGZ)
COKE_EXTRACT_DOCS_TGZ = $(COKE_EXTRACT_DOCS) $(COKE_DOCS_TGZ) -C$(COKE_DOCS_PREFIX)

#
# coke build
#
ifndef COKE_BUILD_HOME
COKE_BUILD = $(HOME)/build
else
COKE_BUILD = $(COKE_BUILD_HOME)/build
endif
COKE_PREFIX = $(COKE_BUILD)/$(COKE_INSTALL_NAME)
COKE_EXEC_PREFIX = $(COKE_PREFIX)
COKE_CONF_PREFIX = $(COKE_PREFIX)
COKE_DOCS_PREFIX = $(COKE_PREFIX)
COKE_LINK_NAME = $(COKE_BUILD)/$(COKE_NAME_BASE)

COKE_MKDIR = mkdir -p
COKE_REMOVE = rm -r -f

COKE_MAKE_DIR = $(COKE_DIR)
COKE_MAKE_PUSHD = pushd $(COKE_MAKE_DIR)
COKE_MAKE = make

#
# coke configure
#
ifneq ($(COKE_UNAME), Darwin)
COKE_CONFIGURE_UNAME = 
else
COKE_CONFIGURE_UNAME = 
endif
COKE_CONFIGURE_CONFIGURE = ./configure
COKE_CONFIGURE_HELP = $(COKE_CONFIGURE_CONFIGURE) --help
COKE_CONFIGURE_PUSHD = pushd $(COKE_MAKE_DIR)
COKE_CONFIGURE = $(COKE_CONFIGURE_CONFIGURE) \
$(COKE_CONFIGURE_UNAME) --prefix=$(COKE_PREFIX) --exec_prefix=$(COKE_EXEC_PREFIX)

#
# coke help
#
COKE_HELP = $(COKE_CONFIGURE_HELP)

########################################################################
#
# rules
#
########################################################################

all: build

package: archive unextract

again: unextract build

test: test-coke

install-links: install-coke-links

install-docs: install-coke-docs

install-prefix: install-coke-prefix

install: install-coke

build: build-coke

clean: clean-coke

configed: configed-$(COKE_DIR)

config: config-$(COKE_DIR)

help: help-coke

list-docs: list-coke-docs

list-patch: list-coke-patch

extract-patch: extract-coke-patch

list: list-coke

extract: extract-coke

unextract: unextract-coke

archive: archive-coke

linked: coke-linked

prefixed: coke-prefixed

archived: coke-archived

extracted: coke-extracted

########################################################################
#
# coke rules
#
########################################################################

#
# Help coke
#
help-coke: $(COKE_DIR)
	@($(COKE_CONFIGURE_PUSHD);\
	  (($(COKE_HELP)) || (exit 1));\
	  popd)

#
# Install coke
#
install-coke: configed-$(COKE_DIR)
	@(echo Installing $(COKE_DIR)...;\
	  $(COKE_MAKE_PUSHD);\
	  (($(COKE_MAKE) install) || (exit 1)) && \
	  ((touch $(COKE_MAKEDIR)/configed-$(COKE_DIR)) || (exit 1));\
	  popd)
	  
#
# Build coke
#
build-coke: configed-$(COKE_DIR)
	@(echo Building $(COKE_DIR)...;\
	  $(COKE_MAKE_PUSHD);\
	  (($(COKE_MAKE)) || (exit 1)) && \
	  ((touch $(COKE_MAKEDIR)/configed-$(COKE_DIR)) || (exit 1));\
	  popd)
	  
#
# Clean coke
#
clean-coke: configed-$(COKE_DIR)
	@(echo Cleaning $(COKE_DIR)...;\
	  $(COKE_MAKE_PUSHD);\
	  (($(COKE_MAKE) clean) || (exit 1)) && \
	  ((touch $(COKE_MAKEDIR)/configed-$(COKE_DIR)) || (exit 1));\
	  popd)
	  
#
# Test coke
#
test-coke: configed-$(COKE_DIR)
	@(echo Building test $(COKE_DIR)...;\
	  $(COKE_MAKE_PUSHD);\
	  (($(COKE_MAKE) test) || (exit 1)) && \
	  ((touch $(COKE_MAKEDIR)/configed-$(COKE_DIR)) || (exit 1));\
	  popd)
	  
#
# Config coke
#
config-$(COKE_DIR): unconfig-$(COKE_DIR) configed-$(COKE_DIR)

unconfig-$(COKE_DIR):
	@(rm -f configed-$(COKE_DIR))

configed-$(COKE_DIR): $(COKE_DIR)
	@(echo Configing $(COKE_DIR)...;\
	  $(COKE_CONFIGURE_PUSHD);\
	  (($(COKE_CONFIGURE)) || (exit 1)) && \
	  ((touch $(COKE_DIR)) || (exit 1)) && \
	  ((touch $(COKE_MAKEDIR)/configed-$(COKE_DIR)) || (exit 1));\
	  popd)

########################################################################
# docs
########################################################################

#
# List coke Docs
#
list-coke-docs: $(COKE_DOCS_TGZ)
	@(echo Listing $(COKE_DOCS_TGZ)...;\
	  (($(COKE_LIST_DOCS_TGZ)) || (exit 1)))

#
# Install coke Docs
#
install-coke-docs: $(COKE_DOCS_PREFIX)
	@(echo Extracting $(COKE_DOCS_TGZ)...;\
	  (($(COKE_EXTRACT_DOCS_TGZ)) || (exit 1)))

########################################################################
# patch
########################################################################

#
# List coke Patch
#
list-coke-patch: $(COKE_PATCH_TGZ)
	@(echo Listing $(COKE_PATCH_TGZ)...;\
	  (($(COKE_LIST_PATCH_TGZ)) || (exit 1)))

#
# Extract coke patch
#
extract-coke-patch: $(COKE_DIR)
	@(echo Extracting $(COKE_PATCH_TGZ)...;\
	  (($(COKE_EXTRACT_PATCH_TGZ)) || (exit 1)))

########################################################################
# archive
########################################################################

#
# List coke
#
list-coke: 
	@(echo Listing $(COKE_TGZ)...;\
	  (($(COKE_LIST_TGZ)) || (exit 1)))

#
# coke extracted
#
coke-extracted: 
	@(echo $(COKE_EXTRACT) $(COKE_TGZ))

#
# Extract coke
#
extract-coke: unextract-coke $(COKE_DIR)

unextract-coke: unconfig-$(COKE_DIR)
	@(echo Removing $(COKE_DIR)...;\
	  (($(COKE_REMOVE_DIR)) || (exit 1)))

$(COKE_DIR): $(COKE_TGZ)
	@(echo Extracting $(COKE_TGZ)...;\
	  (($(COKE_EXTRACT_TGZ)) || (exit 1)) && \
	  (($(COKE_TOUCH_EXTRACT)) || (exit 1)))
	  
#
# coke archived
#
coke-archived: 
	@(echo $(COKE_TGZ))
	  
#
# Archive coke
#
archive-coke: 
	@(echo Archiving $(COKE_DIR) to $(COKE_TGZ)...;\
	  (($(COKE_ARCHIVE) $(COKE_TGZ) $(COKE_DIR)) || (exit 1)))

########################################################################
# links
########################################################################

#
# coke linked
#
coke-linked: 
	@echo link is $(COKE_LINK_NAME) "->" $(COKE_PREFIX)
	  
#
# Install coke links
#
install-coke-links: 
	@((echo removing $(COKE_LINK_NAME)) && \
	  ((rm -f $(COKE_LINK_NAME)) || (exit 1)) && \
	  (echo Linking $(COKE_LINK_NAME) "->" $(COKE_PREFIX)) && \
	  ((ln -s $(COKE_PREFIX) $(COKE_LINK_NAME)) || (exit 1)))
	  
########################################################################
# prefix
########################################################################

#
# coke prefixed
#
coke-prefixed: 
	@((echo prefix is $(COKE_PREFIX)) && \
	  (echo exec prefix is $(COKE_EXEC_PREFIX)) && \
	  (echo conf prefix is $(COKE_CONF_PREFIX)) && \
	  (echo docs prefix is $(COKE_DOCS_PREFIX)))
	  
#
# Install coke prefix
#
install-coke-prefix: 
	@((echo makeing $(COKE_PREFIX)) && \
	  ((mkdir -p $(COKE_PREFIX)) || (exit 1)) && \
	  (echo makeing $(COKE_EXEC_PREFIX)) && \
	  ((mkdir -p $(COKE_EXEC_PREFIX)) || (exit 1)))
	  
$(COKE_PREFIX):
	@(echo Makeing Directory $(COKE_PREFIX)...;\
	  (($(COKE_MKDIR) $(COKE_PREFIX)) || (exit 1)))

$(COKE_EXEC_PREFIX):
	@(echo Makeing Directory $(COKE_EXEC_PREFIX)...;\
	  (($(COKE_MKDIR) $(COKE_EXEC_PREFIX)) || (exit 1)))

$(COKE_CONF_PREFIX):
	@(echo Makeing Directory $(COKE_CONF_PREFIX)...;\
	  (($(COKE_MKDIR) $(COKE_CONF_PREFIX)) || (exit 1)))

$(COKE_DOCS_PREFIX):
	@(echo Makeing Directory $(COKE_DOCS_PREFIX)...;\
	  (($(COKE_MKDIR) $(COKE_DOCS_PREFIX)) || (exit 1)))




        

