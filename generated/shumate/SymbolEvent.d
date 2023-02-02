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


module shumate.SymbolEvent;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import shumate.LocationIF;
private import shumate.LocationT;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * An object containing the details of a map feature that has been clicked.
 * It is the argument of the [signal@MapLayer::symbol-clicked] and
 * [signal@SimpleMap::symbol-clicked] signals.
 * 
 * When vector maps are rendered, they may contain labels and icons. When one
 * of these symbols is clicked, these signals are emitted to give the
 * application access to the original location and details of the map feature.
 * 
 * [class@SymbolEvent] implements [iface@Location] so you can get the latitude
 * and longitude of the feature that was clicked.
 */
public class SymbolEvent : ObjectG, LocationIF
{
	/** the main Gtk struct */
	protected ShumateSymbolEvent* shumateSymbolEvent;

	/** Get the main Gtk struct */
	public ShumateSymbolEvent* getSymbolEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateSymbolEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateSymbolEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateSymbolEvent* shumateSymbolEvent, bool ownedRef = false)
	{
		this.shumateSymbolEvent = shumateSymbolEvent;
		super(cast(GObject*)shumateSymbolEvent, ownedRef);
	}

	// add the Location capabilities
	mixin LocationT!(ShumateSymbolEvent);


	/** */
	public static GType getType()
	{
		return shumate_symbol_event_get_type();
	}

	/**
	 * Gets the feature ID as specified in the data source. The meaning of the
	 * ID, if any, is up to the source.
	 *
	 * Feature IDs in Mapbox Vector Tile format are integers, but they are
	 * formatted as a string here for futureproofing.
	 *
	 * Returns: the feature ID
	 */
	public string getFeatureId()
	{
		return Str.toString(shumate_symbol_event_get_feature_id(shumateSymbolEvent));
	}

	/**
	 * Gets the name of the layer the clicked symbol is in, as named in the vector
	 * stylesheet.
	 *
	 * Note that this is distinct from the name of the layer in the vector tile
	 * schema. Some styles have multiple symbol layers derived from the same
	 * data source layer.
	 *
	 * Returns: the layer name
	 */
	public string getLayer()
	{
		return Str.toString(shumate_symbol_event_get_layer(shumateSymbolEvent));
	}

	/**
	 * Gets a tag from the source feature.
	 *
	 * The available tags depend on the vector tile schema and the source layer.
	 * Check the documentation for the tiles you're using to see what information
	 * is available.
	 *
	 * Params:
	 *     tagName = the tag to get
	 *
	 * Returns: the tag value, formatted as a string
	 */
	public string getTag(string tagName)
	{
		return Str.toString(shumate_symbol_event_get_tag(shumateSymbolEvent, Str.toStringz(tagName)));
	}
}
