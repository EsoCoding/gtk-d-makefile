/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gtk.StyleProviderT;

public  import gobject.Signals;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import std.algorithm;


/**
 * `GtkStyleProvider` is an interface for style information used by
 * `GtkStyleContext`.
 * 
 * See [method@Gtk.StyleContext.add_provider] and
 * [func@Gtk.StyleContext.add_provider_for_display] for
 * adding `GtkStyleProviders`.
 * 
 * GTK uses the `GtkStyleProvider` implementation for CSS in
 * [class@Gtk.CssProvider].
 */
public template StyleProviderT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkStyleProvider* getStyleProviderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkStyleProvider*)getStruct();
	}


	/** */
	gulong addOnGtkPrivateChanged(void delegate(StyleProviderIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "gtk-private-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
