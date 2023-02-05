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


module shumate.VectorRenderer;

private import gdkpixbuf.Pixbuf;
private import gio.InitableIF;
private import gio.InitableT;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import shumate.MapSource;
private import shumate.c.functions;
public  import shumate.c.types;


/**
 * A [class@MapSource] that renders tiles from a given vector data source.
 */
public class VectorRenderer : MapSource, InitableIF
{
	/** the main Gtk struct */
	protected ShumateVectorRenderer* shumateVectorRenderer;

	/** Get the main Gtk struct */
	public ShumateVectorRenderer* getVectorRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return shumateVectorRenderer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)shumateVectorRenderer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (ShumateVectorRenderer* shumateVectorRenderer, bool ownedRef = false)
	{
		this.shumateVectorRenderer = shumateVectorRenderer;
		super(cast(ShumateMapSource*)shumateVectorRenderer, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(ShumateVectorRenderer);


	/** */
	public static GType getType()
	{
		return shumate_vector_renderer_get_type();
	}

	/**
	 * Creates a new [class@VectorRenderer] from the given JSON style.
	 *
	 * The stylesheet should contain a list of tile sources. Tiles will be
	 * downloaded using [class@TileDownloader]s.
	 *
	 * See the [MapLibre Style Specification](https://maplibre.org/maplibre-gl-js-docs/style-spec/)
	 * for details on @style_json, but be aware that libshumate does not support
	 * every feature of the specification.
	 *
	 * Params:
	 *     id = an ID for the map source
	 *     styleJson = a vector style
	 *
	 * Returns: a newly constructed [class@VectorRenderer], or %NULL if @error is set
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string id, string styleJson)
	{
		GError* err = null;

		auto __p = shumate_vector_renderer_new(Str.toStringz(id), Str.toStringz(styleJson), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(ShumateVectorRenderer*) __p, true);
	}

	/**
	 * Checks whether libshumate was compiled with vector tile support. If it was
	 * not, vector renderers cannot be created or used.
	 *
	 * Returns: %TRUE if libshumate was compiled with `-Dvector_renderer=true` or
	 *     %FALSE if it was not
	 */
	public static bool isSupported()
	{
		return shumate_vector_renderer_is_supported() != 0;
	}

	/**
	 * Sets the sprite sheet used by the style JSON to render icons and textures.
	 *
	 * See <https://maplibre.org/maplibre-gl-js-docs/style-spec/sprite/> for
	 * details about the spritesheet format. Most stylesheets provide these files
	 * along with the main style JSON.
	 *
	 * Params:
	 *     spritesPixbuf = a [class@GdkPixbuf.Pixbuf]
	 *     spritesJson = a JSON string
	 *
	 * Returns: whether the sprite sheet was loaded successfully
	 *
	 * Throws: GException on failure.
	 */
	public bool setSpriteSheetData(Pixbuf spritesPixbuf, string spritesJson)
	{
		GError* err = null;

		auto __p = shumate_vector_renderer_set_sprite_sheet_data(shumateVectorRenderer, (spritesPixbuf is null) ? null : spritesPixbuf.getPixbufStruct(), Str.toStringz(spritesJson), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
