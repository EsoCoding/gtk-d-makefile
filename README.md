# Gtk-d

**Gtk-d is unofficial mix of [Gtk_D](https://github.com/KonstantIMP/gtk_d) and [GtkD](https://gtkd.org/) version with some extra features**

## Description

This is another Gtk-d version for Gtk-4 and some other Gtk libs like Adwaita, Shumate, Gstreamer. I am planning to add some more library's and add some extra options like a extending templates. If you need help you or if you want discuss, talk, support please join us at https://matrix.to/#/#gtk-d:matrix.org


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

## Install 
At this moment only system install is supoorted which will be installed using a makefile. So there is not yet support for dub and meson, tough this will soon be implemented. In order to be able to generate and install Gtk-d, its neccesarly to have the GIR files for the Library's. You can get them by installing the dev version of all the packages. For shared library simply use the usual:
````
make shared-lib
````
for static library'ś type
````
make static-lib
````
And to finalize the install and copy the files to the system:
````
make install
````

## Additional info

I have included gir-to-d in compile process. To Link the gtk functions with the runtime linker use and generate files for shared-lib:
````
make generate-runtime using linker
````
and for static files choose:
````
make generate-compiletime
````


### Windows libraries
You can get required dll form MSYS2 project`s repo :)

# LICENSE
Gtkd and gtkD use LGPLv3 license
