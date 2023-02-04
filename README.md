# GTK-D

#### GTK-d is the continuation of [GtkD](https://gtkd.org/) which no longer seems to be under active development. Because the inactivity on the git of gtkd, it was impossible to merge or continue the official project, which is why i created a new organization and trying to bring in some new energy and ambition and want to compete with other languages like Python, Vala, who did improve and added some extra options, like composite templates ####

## Description

[Gtk-d](http://www.github.com/gtk-d/gtk-dhttp://www.github.com/gtk-d/gtk-d) is a dlang (Digitial Mars D) wrapper for Gtk4 and other GObject library's like Gio, Shumate, Libsoup etc. This version of gtk-d is a tempory solution to make it possible to install [Gtk-d](http://www.github.com/gtk-d/gtk-d) to your system without the need of dub and will install all the files in the usual folders you may expect files to be installed on a Linux system. In the mean while i work on something more sophisticated using meson, but for now this version should do the job for a regular installation. For install instructions scroll down.

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

## Installation 
To install gtk-d to your system, you need to install all the packages required dev version of the GObject packages that are included into Gtk-d. These dev versions have the gir files you need to generate the bindings. See next section for a repo with gir files for gtk-4.8.3, which can be used as long the packages are installed on the system.

You can install the project as you usually do with any other makefile project. The default options creates a shared library.
````
make
make install
````

If you want to compile and install the static Library dont forget to use the --use-runtime-linker flag when using girtod to generate the bindings.
````
make static-all
make install
````

There is also support for override veriables and install parts to different directorys:
````
make install PREFIX=/usr LIB_DIR=/usr/lib64
````

For cleaning just run:
````
make clean
````

And for uninstalling gtk-d from your system run:
````
make uninstall
````

## Additional info
To generate your own gtk bindings you need to install this version of [girtod](https://github.com/gtk-d/gir-to-d). Just run the makefile, meson or dub install. And then you can start generating the bindings with the following commands:

For static bindings:
````
girtod --use-runtime-linker -i gtk-d -o src
````
for shared bindings:
````
girtod -i gtk-d -o src
````

## gir files
In case you need gir files and can't find working ones, this [repo](https://github.com/gtk-d/gir-files) will give you working gir files from which girtod can create the bindigns.

## Not tested
I have not tested this install on any other system then Ubuntu 22.10. If you did try to install this gtk-d version to any other system, please let me know if it worked and if not, then please post a issue, so i can look into it. I have messed a little with the makefile since the original had bug for which i made temporary solution.

## Windows libraries
Cant tell if this makefile will run on windows, tough according to [MakefileforD](https://github.com/EsoCoding/MakefileForD) template i it should be able to work. I think it requires the [MSYS2](https://github.com/msys2) to make it work, but since i dont use windows. I can't tell for sure.

## LICENSE
Gtkd and gtkD use LGPLv3 license