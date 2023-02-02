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


module adw.PasswordEntryRow;

private import adw.EntryRow;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * A [class@EntryRow] tailored for entering secrets.
 * 
 * <picture>
 * <source srcset="password-entry-row-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="password-entry-row.png" alt="password-entry-row">
 * </picture>
 * 
 * It does not show its contents in clear text, does not allow to copy it to the
 * clipboard, and shows a warning when Caps Lock is engaged. If the underlying
 * platform allows it, `AdwPasswordEntryRow` will also place the text in a
 * non-pageable memory area, to avoid it being written out to disk by the
 * operating system.
 * 
 * It offer a way to reveal the contents in clear text.
 * 
 * ## CSS Nodes
 * 
 * `AdwPasswordEntryRow` has a single CSS node with name `row` that carries
 * `.entry` and `.password` style classes.
 *
 * Since: 1.2
 */
public class PasswordEntryRow : EntryRow
{
	/** the main Gtk struct */
	protected AdwPasswordEntryRow* adwPasswordEntryRow;

	/** Get the main Gtk struct */
	public AdwPasswordEntryRow* getPasswordEntryRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPasswordEntryRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPasswordEntryRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPasswordEntryRow* adwPasswordEntryRow, bool ownedRef = false)
	{
		this.adwPasswordEntryRow = adwPasswordEntryRow;
		super(cast(AdwEntryRow*)adwPasswordEntryRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_password_entry_row_get_type();
	}

	/**
	 * Creates a new `AdwPasswordEntryRow`.
	 *
	 * Returns: the newly created `AdwPasswordEntryRow`
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_password_entry_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPasswordEntryRow*) __p);
	}
}
