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


module gdk.FileList;

private import gdk.c.functions;
public  import gdk.c.types;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.ListSG;
private import gobject.ObjectG;


/**
 * An opaque type representing a list of files.
 *
 * Since: 4.6
 */
public class FileList
{
	/** the main Gtk struct */
	protected GdkFileList* gdkFileList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkFileList* getFileListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkFileList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkFileList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkFileList* gdkFileList, bool ownedRef = false)
	{
		this.gdkFileList = gdkFileList;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gdk_file_list_get_type();
	}

	/**
	 * Creates a new `GdkFileList` for the given array of files.
	 *
	 * This function is meant to be used by language bindings.
	 *
	 * Params:
	 *     files = the files to add to the list
	 *
	 * Returns: the newly create files list
	 *
	 * Since: 4.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(FileIF[] files)
	{
		GFile*[] filesArray = new GFile*[files.length];
		for ( int i = 0; i < files.length; i++ )
		{
			filesArray[i] = files[i].getFileStruct();
		}

		auto __p = gdk_file_list_new_from_array(filesArray.ptr, cast(size_t)files.length);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_array");
		}

		this(cast(GdkFileList*) __p);
	}

	/**
	 * Creates a new files list container from a singly linked list of
	 * `GFile` instances.
	 *
	 * This function is meant to be used by language bindings
	 *
	 * Params:
	 *     files = a list of files
	 *
	 * Returns: the newly created files list
	 *
	 * Since: 4.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListSG files)
	{
		auto __p = gdk_file_list_new_from_list((files is null) ? null : files.getListSGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_list");
		}

		this(cast(GdkFileList*) __p);
	}

	/**
	 * Retrieves the list of files inside a `GdkFileList`.
	 *
	 * This function is meant for language bindings.
	 *
	 * Returns: the files inside the list
	 *
	 * Since: 4.6
	 */
	public ListSG getFiles()
	{
		auto __p = gdk_file_list_get_files(gdkFileList);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}
}
