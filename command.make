#### Define shell commands ####
SHELL           = sh
PATH_SEP        =/
RM    = rm -fr
CP    = cp -fr
MKDIR = mkdir -p
MV    = mv
LN    = ln -s

# find all the source code in root directory
getSource = $(shell find $(ROOT_SOURCE_DIR) -name "*.d")

ifeq ($(shell uname), Linux)
    OS              = "Linux"
    STATIC_LIB_EXT  = .a
    DYNAMIC_LIB_EXT = .so
    message         = @(echo \033[31m $1 \033[0;0m1)
    Filter          = %/win32/%.d %/darwin/%.d %/freebsd/%.d %/solaris/%.d
else ifeq ($(shell uname), Solaris)
    STATIC_LIB_EXT  = .a
    DYNAMIC_LIB_EXT = .so
    OS              = "Solaris"
    message         = @(echo \033[31m $1 \033[0;0m1)
    Filter          = %/win32/%.d %/linux/%.d %/darwin/%.d %/freebsd/%.d
else ifeq ($(shell uname),Freebsd)
    STATIC_LIB_EXT  = .a
    DYNAMIC_LIB_EXT = .so
    OS              = "Freebsd"
    message         = @(echo \033[31m $1 \033[0;0m1)
    Filter          = %/win32/%.d %/linux/%.d %/darwin/%.d %/solaris/%.d
else ifeq ($(shell uname),Darwin)
    STATIC_LIB_EXT  = .a
    DYNAMIC_LIB_EXT = .so
    OS              = "Darwin"
    message         = @(echo \033[31m $1 \033[0;0m1)
    Filter          = %/win32/%.d %/linux/%.d %/freebsd/%.d %/solaris/%.d
endif

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
    DCFLAGS    = -O
    LINKERFLAG= -Xlinker
    OUTPUT    = -o
    HF        = -Hf
    DF        = -Df
    NO_OBJ    = -o-
    DDOC_MACRO=
else
    DCFLAGS    = -O
    LINKERFLAG= -L
    OUTPUT    = -of
    HF        = -Hf
    DF        = -Df
    NO_OBJ    = -o-
    DDOC_MACRO=
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
    PHOBOS      = phobos2-ldc
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
    SONAME_FLAG = $(LINKERFLAG)
    PHOBOS      = libphobos2.so
    DRUNTIME    = druntime
else ifeq ($(DC),dmd2)
    COMPILER    = dmd
    VERSION     = -d-version
    SONAME_FLAG = $(LINKERFLAG)
    PHOBOS      = phobos2
    DRUNTIME    = druntime
endif

# Define relocation model for ldc or other
ifneq (,$(findstring ldc,$(DC)))
    FPIC = -fPIC
else ifneq (,$(findstring gdc,$(DC)))
    FPIC = -fPIC
else
    FPIC = -fPIC
endif

# Add -ldl flag for linux
ifeq ($(OS),"Linux")
    ifneq (,(findstring gdc,$(DC)))
        LDCFLAGS += $(LINKERFLAG)
    else
        LDCFLAGS += $(LINKERFLAG)-ldl
    endif
endif

ifndef DESTDIR
    DESTDIR =
endif

# Define var PREFIX, BIN_DIR, LIB_DIR, INCLUDE_DIR, DATA_DIR
ifndef PREFIX
    ifeq ($(OS), "Linux")
        PREFIX = /usr/local
    else ifeq ($(OS), "Darwin")
        PREFIX = /usr/local
    endif
endif

ifndef BIN_DIR
    ifeq ($(OS), "Linux")
        BIN_DIR = $(PREFIX)/bin
    else ifeq ($(OS), "Darwin")
        BIN_DIR = $(PREFIX)/bin
    endif
endif

ifndef LIB_DIR
    ifeq ($(OS), "Linux")
        LIB_DIR = $(PREFIX)/lib
    else ifeq ($(OS), "Darwin")
        LIB_DIR = $(PREFIX)/lib
    endif
endif


INCLUDE_DIR = $(PREFIX)/include/d
DATA_DIR = $(PREFIX)/share
PKGCONFIG_DIR = $(DATA_DIR)/pkgconfig

ifndef CC
    CC = gcc
endif

DLIB_PATH           = ./lib
IMPORT_PATH         = ./import
DOC_PATH            = ./doc
DDOC_PATH           = ./ddoc
BUILD_PATH          = ./build

DCFLAGS_IMPORT      =
DCFLAGS_LINK        = $(LDCFLAGS)

STATIC_LIBNAME      = lib$(PROJECT_NAME)-$(COMPILER)$(STATIC_LIB_EXT)
SHARED_LIBNAME      = lib$(PROJECT_NAME)-$(COMPILER)$(DYNAMIC_LIB_EXT)

PKG_CONFIG_FILE     = $(PROJECT_NAME).pc

MAKE                = make
AR                  = ar
ARFLAGS             = rcs
RANLIB              = ranlib

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
export DOC_PATH
export DDOC_PATH
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
