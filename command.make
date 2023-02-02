# defines for command command line usage
SHELL           = sh
PATH_SEP        =/
RM    = rm -fr
CP    = cp -fr
MKDIR = mkdir -p
MV    = mv
LN    = ln -s

# Define var PREFIX, BIN_DIR, LIB_DIR, INCLUDE_DIR, DATA_DIR
PREFIX = /usr/local
BIN_DIR = $(PREFIX)/bin
LIB_DIR = $(PREFIX)/lib
INCLUDE_DIR = $(PREFIX)/include/d
HEADERS_DIR = $(INCLUDE_DIR)/$(PROJECT_NAME)
DATA_DIR = $(PREFIX)/share
PKGCONFIG_DIR = $(DATA_DIR)/pkgconfig

# Some defines for Library's
STATIC_LIBNAME      = lib$(PROJECT_NAME)-$(COMPILER)$(STATIC_LIB_EXT)
SHARED_LIBNAME      = lib$(PROJECT_NAME)-$(COMPILER)$(DYNAMIC_LIB_EXT)
STATIC_LIB_EXT  = .a
DYNAMIC_LIB_EXT = .so
message         = @(echo \033[31m $1 \033[0;0m1)

# folders names for lib, import build
DLIB_PATH           = lib
IMPORT_PATH         = import
BUILD_PATH          = build
GENERATED_PATH      = generated
 


# DCFLAGS and DCFLINK defines
DCFLAGS_IMPORT      =
DCFLAGS_LINK        = $(LDCFLAGS)

#pkg config file define
PKG_CONFIG_FILE     = $(PROJECT_NAME).pc

#defines for some needed linux utility's
MAKE                = make
AR                  = ar
ARFLAGS             = rcs
RANLIB              = ranlib

# arch will be looked up automaticly
ARCH = $(shell arch 2>/dev/null|| uname -m)

# create the root source folder if it not exists.
ifeq "$(wildcard $(ROOT_SOURCE_DIR) )" ""
    $(shell mkdir -p $(ROOT_SOURCE_DIR))
endif

# Get source from root souce folder
getSource       =$(shell find $(ROOT_SOURCE_DIR) -name "*.d")

# If compiler is not define try to find it
ifndef DC
    ifneq ($(strip $(shell which dmd 2>/dev/null)),)
        DC=dmd
    else ifneq ($(strip $(shell which ldc 2>/dev/null)),)
        DC=ldc
    else ifneq ($(strip $(shell which ldc2 2>/dev/null)),)
        DC=ldc2
    else
        DC=gdc
    endif
endif

# Define flag for gdc other
ifeq ($(DC),gdc)
    DCFLAGS    = -O2 -fdeprecated
    LINKERFLAG= -Xlinker
    OUTPUT    = -o
    HF        = -fintfc-file=
    NO_OBJ    = -fsyntax-only
else
    DCFLAGS    = -O -d
    LINKERFLAG= -L
    OUTPUT    = -of
    HF        = -Hf
    DF        = -Df
    NO_OBJ    = -o-
endif

#define a suffix lib who inform is build with which compiler, name of phobos lib
ifeq ($(DC),gdc)
    COMPILER    = gdc
    VERSION     = -fversion
    SONAME_FLAG = $(LINKERFLAG) -soname
    PHOBOS      = gphobos2
    DRUNTIME    = gdruntime
else ifeq ($(DC),gdmd)
    COMPILER    = gdc
    VERSION     = -fversion
    SONAME_FLAG = $(LINKERFLAG) -soname
    PHOBOS      = gphobos2
    DRUNTIME    = gdruntime
else ifeq ($(DC),ldc)
    COMPILER    = ldc
    VERSION     = -d-version
    SONAME_FLAG = -soname
    PHOBOS      = phobos-ldc
    DRUNTIME    = druntime-ldc
else ifeq ($(DC),ldc2)
    COMPILER    = ldc
    VERSION     = -d-version
    SONAME_FLAG = -soname
    PHOBOS      = phobos-ldc
    DRUNTIME    = druntime-ldc
else ifeq ($(DC),ldmd)
    COMPILER    = ldc
    VERSION     = -d-version
    SONAME_FLAG = -soname
    PHOBOS      = phobos2-ldc
    DRUNTIME    = druntime-ldc
else ifeq ($(DC),dmd)
    COMPILER    = dmd
    VERSION     = -version
    SONAME_FLAG = $(LINKERFLAG)-soname
    PHOBOS      = phobos2
    DRUNTIME    = druntime
else ifeq ($(DC),dmd2)
    COMPILER    = dmd
    VERSION     = -d-version
    SONAME_FLAG = $(LINKERFLAG)-soname
    PHOBOS      = phobos2
    DRUNTIME    = druntime
endif

# Define relocation model for ldc or other
ifneq (,$(findstring ldc,$(DC)))
    FPIC = -relocation-model=pic
else
    FPIC = -fPIC
endif

# Add -ldl flag for linux
ifeq ($(OS),"Linux")
    LDCFLAGS += $(LINKERFLAG)-ldl
endif

ifndef MODEL
    ifeq ($(ARCH), x86_64)
        MODEL = 64
    else
        MODEL = 32
    endif
endif

ifeq ($(MODEL), 64)
    DCFLAGS  += -m64
    LDCFLAGS += -m64
else
    DCFLAGS  += -m32
    LDCFLAGS += -m32
endif

ifndef DESTDIR
    DESTDIR =
endif

ifndef CC
    CC = gcc
endif

export AR
export ARCH
export ARFLAGS
export BIN_DIR
export BUILD_PATH
export CC
export COMPILER
export CP
export DATA_DIR
export DC
export DF
export DCFLAGS
export DCFLAGS_IMPORT
export DCFLAGS_LINK
export DESTDIR
export DLIB_PATH
export DYNAMIC_LIB_EXT
export FixPath
export HF
export INCLUDE_DIR
export IMPORT_PATH
export LDCFLAGS
export FPIC
export LIBNAME
export LIB_DIR
export LINKERFLAG
export message
export MAKE
export MKDIR
export MODEL
export MV
export OUTPUT
export OS
export PATH_SEP
export PKG_CONFIG_FILE
export PREFIX
export RANLIB
export RM
export STATIC_LIB_EXT
export SONAME
