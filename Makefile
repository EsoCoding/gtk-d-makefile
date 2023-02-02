
export PROJECT_NAME     = gtk-d
export AUTHOR           = Gert-jan Poortman
export DESCRIPTION      = Dlang bindings for gtk4
export MAJOR_VERSION    = 1
export MINOR_VERSION    = 0
export PATCH_VERSION    = 0
export PROJECT_VERSION  = $(MAJOR_VERSION).$(MINOR_VERSION).$(PATCH_VERSION)
export LICENSE          = LICENSE
export ROOT_SOURCE_DIR  = ./generated

# include some command
include command.make

SOURCES             = $(getSource)
OBJECTS             = $(patsubst %.d,$(BUILD_PATH)/%.o,    $(SOURCES))
PICOBJECTS          = $(patsubst %.d,$(BUILD_PATH)/%.pic.o,$(SOURCES))
HEADERFILES         = $(patsubst %.d,$(IMPORT_PATH)/%.di,  $(SOURCES))
DCFLAGS_IMPORT     += $(foreach dir,$(ROOT_SOURCE_DIR), -I$(dir))
space :=
space +=

stripBugfix = $(subst $(space),.,$(strip $(wordlist 1, 2, $(subst ., ,$(1)))))

define make-lib
	$(MKDIR) $(DLIB_PATH)
	$(AR) rcs $(DLIB_PATH)/$@ $^
	$(RANLIB) $(DLIB_PATH)/$@
endef

############# BUILD #############
all: generated-runtime static-lib header pkgfile-static

	@echo ------------------ Building done

all-shared: generate-compiletime shared-lib header pkgfile-shared

	@echo ------------------ Building done


static-lib: $(STATIC_LIBNAME)
	
shared-lib: $(SHARED_LIBNAME)

header: $(HEADERFILES)

.PHONY : generated

generate: generate-compiletime 
	@echo ------------------ Start converting gir to d files
generated-runtime:  $(GIR_FOLDER)
	@echo ------------------ Start converting gir to d files
	girtod -i gtk-d -o generated
generated-compiletime: $(GIR_FOLDER)
	@echo ------------------ Start converting gir to d files
	girtod --use-runtime-linker -i gtk-d -o generated

.PHONY : pkgfile

pkgfile-shared:
	@echo ------------------ Building pkg-config file
	@echo "# Package Information for pkg-config"                        >  $(PKG_CONFIG_FILE)
	@echo "# Author: $(AUTHOR)"                                         >> $(PKG_CONFIG_FILE)
	@echo "# Created: `date`"                                           >> $(PKG_CONFIG_FILE)
	@echo "# Licence: $(LICENSE)"                                       >> $(PKG_CONFIG_FILE)
	@echo                                                               >> $(PKG_CONFIG_FILE)
	@echo prefix=$(PREFIX)                                              >> $(PKG_CONFIG_FILE)
	@echo exec_prefix=$(PREFIX)                                         >> $(PKG_CONFIG_FILE)
	@echo libdir=$(LIB_DIR)                                             >> $(PKG_CONFIG_FILE)
	@echo includedir=$(INCLUDE_DIR)                                     >> $(PKG_CONFIG_FILE)
	@echo                                                               >> $(PKG_CONFIG_FILE)
	@echo Name: "$(PROJECT_NAME)"                                       >> $(PKG_CONFIG_FILE)
	@echo Description: "$(DESCRIPTION)"                                 >> $(PKG_CONFIG_FILE)
	@echo Version: "$(PROJECT_VERSION)"                                 >> $(PKG_CONFIG_FILE)
	@echo Libs: $(LINKERFLAG)-l$(PROJECT_NAME)-$(COMPILER)              >> $(PKG_CONFIG_FILE)
	@echo Cflags: -I$(INCLUDE_DIR)$(PATH_SEP)$(PROJECT_NAME) $(LDCFLAGS)>> $(PKG_CONFIG_FILE)
	@echo                                                               >> $(PKG_CONFIG_FILE)

pkgfile-static:
	@echo ------------------ Building pkg-config file
	@echo "# Package Information for pkg-config"                        >  $(PKG_CONFIG_FILE)
	@echo "# Author: $(AUTHOR)"                                         >> $(PKG_CONFIG_FILE)
	@echo "# Created: `date`"                                           >> $(PKG_CONFIG_FILE)
	@echo "# Licence: $(LICENSE)"                                       >> $(PKG_CONFIG_FILE)
	@echo                                                               >> $(PKG_CONFIG_FILE)
	@echo prefix=$(PREFIX)                                              >> $(PKG_CONFIG_FILE)
	@echo exec_prefix=$(PREFIX)                                         >> $(PKG_CONFIG_FILE)
	@echo libdir=$(LIB_DIR)                                             >> $(PKG_CONFIG_FILE)
	@echo includedir=$(INCLUDE_DIR)                                     >> $(PKG_CONFIG_FILE)
	@echo                                                               >> $(PKG_CONFIG_FILE)
	@echo Name: "$(PROJECT_NAME)"                                       >> $(PKG_CONFIG_FILE)
	@echo Description: "$(DESCRIPTION)"                                 >> $(PKG_CONFIG_FILE)
	@echo Version: "$(PROJECT_VERSION)"                                 >> $(PKG_CONFIG_FILE)
	@echo Libs: $(LIB_DIR)$(PATH_SEP)$(STATIC_LIBNAME)                  >> $(PKG_CONFIG_FILE)
	@echo Cflags: -I$(INCLUDE_DIR)$(PATH_SEP)$(PROJECT_NAME) $(LDCFLAGS)>> $(PKG_CONFIG_FILE)
	@echo                                                               >> $(PKG_CONFIG_FILE)

# For build lib need create object files and after run make-lib
$(STATIC_LIBNAME): $(OBJECTS)
	@echo ------------------ Building static library
	$(make-lib)

# For build shared lib need create shared object files
$(SHARED_LIBNAME): $(PICOBJECTS)
	@echo ------------------ Building shared library
	$(MKDIR) $(DLIB_PATH)
	$(DC) -shared $(SONAME_FLAG) $@.$(MAJOR_VERSION) $(OUTPUT)$(DLIB_PATH)$(PATH_SEP)$@.$(PROJECT_VERSION) $^
#$(CC) -l$(PHOBOS) -l$(DRUNTIME) -shared -Wl,-soname,$@.$(MAJOR_VERSION) -o $(DLIB_PATH)$(PATH_SEP)$@.$(PROJECT_VERSION) $^

# create object files
$(BUILD_PATH)/%.o : %.d
	$(DC) $(DCFLAGS) $(DCFLAGS_LINK) $(GENERATED_PATH) -c $< $(OUTPUT)$@

# create shared object files
$(BUILD_PATH)/%.pic.o : %.d
	$(DC) $(DCFLAGS) $(DCFLAGS_LINK) $(FPIC) $(GENERATED_PATH) -c $< $(OUTPUT)$@

# Generate Header files
$(IMPORT_PATH)/%.di : %.d
	$(DC) $(DCFLAGS) $(DCFLAGS_LINK) $(GENERATED_PATH) -c $(NO_OBJ) $< $(HF)$@

############# CLEAN #############
.PHONY : clean

clean: clean-build clean-lib clean-header clean-pkgfile clean-generated
	@echo ------------------ Finished cleaning all files!

clean-build:
	$(RM) $(BUILD_PATH)
	@echo ------------------ Cleaning $^ objects done

clean-lib:
	$(RM) $(DLIB_PATH)
	@echo ------------------ Cleaning $^ shared-lib done

clean-header:
	$(RM) $(HEADERFILES)
	@echo ------------------ Cleaning $^ header-files done

clean-pkgfile:
	$(RM) $(PKG_CONFIG_FILE)
	@echo ------------------ Cleaning $^ pkgfile done

clean-generated:
	$(RM) $(GENERATED_PATH)
	@echo ------------------ Cleaning $^ gtk-d done

############# INSTALL #############

install: install-static-lib install-header install-pkgfile
	@echo ------------------ Finished installing Gtk-d to the system folders.

install-shared: install-shared-lib install-header install-pkgfile
	@echo ------------------ Finished installing Gtk-d to the system folders.

install-static-lib:
	$(MKDIR) $(DESTDIR)$(LIB_DIR)
	$(CP) $(DLIB_PATH)$(PATH_SEP)$(STATIC_LIBNAME) $(DESTDIR)$(LIB_DIR)
	@echo ------------------ Installing static-lib is done

install-shared-lib:
	$(MKDIR) $(DESTDIR)$(LIB_DIR)
	$(CP) $(DLIB_PATH)$(PATH_SEP)$(SHARED_LIBNAME).$(PROJECT_VERSION) $(DESTDIR)$(LIB_DIR)
	cd $(DESTDIR)$(LIB_DIR)$(PATH_SEP) && $(LN) $(SHARED_LIBNAME).$(PROJECT_VERSION) $(SHARED_LIBNAME).$(MAJOR_VERSION)
	cd $(DESTDIR)$(LIB_DIR)$(PATH_SEP) && $(LN) $(SHARED_LIBNAME).$(MAJOR_VERSION) $(SHARED_LIBNAME)
	@echo ------------------ Installing shared-lib is done

install-header:
	$(MKDIR) $(DESTDIR)$(HEADERS_DIR)
	$(CP) $(IMPORT_PATH)/$(GENERATED_PATH)/. $(DESTDIR)$(HEADERS_DIR)
	@echo ------------------ Installing header-files is done 

install-pkgfile:
	$(MKDIR) $(DESTDIR)$(PKGCONFIG_DIR)
	$(CP) $(PKG_CONFIG_FILE) $(DESTDIR)$(PKGCONFIG_DIR)$(PATH_SEP)$(PROJECT_NAME).pc
	@echo ------------------ Installing pkgfile is done 

#############m UNINSTALL ################
.PHONY : uninstall

uninstall: uninstall-lib uninstall-headers uninstall-pkgfile

uninstall-lib:
	$(RM) $(DESTDIR)$(LIB_DIR)/$(STATIC_LIBNAME)
	$(RM) $(DESTDIR)$(LIB_DIR)/$(SHARED_LIBNAME).$(PROJECT_VERSION)
	$(RM) $(DESTDIR)$(LIB_DIR)/$(SHARED_LIBNAME).$(SHARED_LIBNAME).$(MAJOR_VERSION)

uninstall-headers:
	$(RM) $(DESTDIR)$(HEADERS_DIR)

uninstall-pkgfile:
	$(RM) $(DESTDIR)$(PKGCONFIG_DIR)/$(PROJECT_NAME).pc





	
