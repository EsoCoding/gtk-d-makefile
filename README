# GTK_D

**GTK_D is unofficial fork of [GtkD](https://gtkd.org/) with some features**

## Description

GTK_D is a DLang wrapper for Gtk+ and some other Gtk libs like Adwaita, Shumate. 
You can use all libraries together or take one you need thanks DUB submodules

| Library  | Submodule name | Description |
| :------- | :------------- | :---------- |
| Linker   | linker         | A library for dynamic libs loading |
| GLib     | glib           | GLib is a bundle of three low-level system libraries |
| Graphene | graphene       | Graphene is a lightweight library OS, designed to run a single application with minimal host requirements |
| Cairo   | cairo           | Cairo is an open source graphics library |
| HarfBuzz | harfbuzz | HarfBuzz is a software development library for text shaping |
| Pango | pango | Pango is a text layout engine library which works with the HarfBuzz shaping engine for displaying multi-language text |
| GIO | gio | GIO is a library, designed to present programmers with a modern and usable interface to a virtual file system |
| GdkPixbuf | gdkpixbuf | dkPixbuf is a library that loads image data in various formats and stores it as linear buffers in memory |
| Atk | atk | Accessibility Toolkit is an open source software library, part of the GNOME project, which provides application programming interfaces for implementing accessibility support in software |
| GDK | gdk | GDK is a library that acts as a wrapper around the low-level functions provided by the underlying windowing and graphics systems |
| librsvg | rsvg | librsvg is a free software SVG rendering library |
| GSK | gsk | GTK Scene Graph Kit (GSK) is the rendering and scene graph API for GTK |
| GTK | gtk | GTK is a free and open-source cross-platform widget toolkit for creating graphical user interfaces |
| libadwaita | adw |  Building blocks for modern GNOME applications. |
| GtkSourceView | sourceview | GtkSourceView is a GNOME library that extends GtkTextView, the standard GTK+ widget for multiline text editing |
| libsoup | soup | libsoup is an HTTP client/server library for GNOME |
| libshumate | shumate | libshumate is a C library providing a GtkWidget to display maps |

## Additional info

To generate code from GIR use this gir-to-d fork : https://github.com/KonstantIMP/gir-to-d
```bash
# Clone and build
git clone https://github.com/KonstantIMP/gir-to-d.git
cd gir-to-d
meson builddir
ninja -C builddir

# Generate for dynamic linking
girtod --use-runtime-linker -i source/ -o source/generated

# Generate for static linking
girtod -i source/ -o source/generated
```

### Windows libraries
You can get required dll form MSYS2 project`s repo :)

# LICENSE
GTK_D and gtkD use LGPLv3 license
