# GTK-D

#### GTK-d is the continuation of [GtkD](https://gtkd.org/) which no longer seems to be under active development. ####

## Description

GTK-d is a DLang wrapper for Gtk-4 and some other Gtk library's like Adwaita, Shumate. You can use all libraries together or take one you need thanks to DUB submodules.

## Contributing
Anyone is free to help and contribute wether this is trough posting issues, adding examples, adding library's or perhaps you have published some helpfull tutorials, please feel free to commit and support the progress in anyway you can. If you want to make contact, you can send me a email at info@gtk-d.com or find me in [gtk-d](https://matrix.to/#/#gtkd:matrix.org) channel of the matrix chat server.


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
This Gtk-d version is for those who want to install this project to a linux distro. This makefile is a tempory solution to install the complete [Gtk-d](http://www.github.com/gtk-d/gtk-d) package to the system. To install this to your system, you need to install all the required dev version of the GObject packages that are included into Gtk-d.

You can install the project as you usually do with any other makefile project. The default will make command will install static library using the 'all' targer.
````
make
make install
````
If you want to compile and install the shared Library use:
````
make shared-all
make install
````

## Additional info

To generate your own gtk bindings you need to install gir-to-d, 
To genereate static linking you have to install gir-to-d and run 
````
girtod --use-runtime-linker -i sources/ -o generated
````
Or for shared linking
````
girtod -i sources/ -o generated

````
and for static files choose:
````
make generate-compiletime
````


### Windows libraries
You can get required dll form MSYS2 project`s repo :)

# LICENSE
Gtkd and gtkD use LGPLv3 license