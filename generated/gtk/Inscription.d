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


module gtk.Inscription;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgAttributeList;


/**
 * `GtkInscription` is a widget to show text in a predefined area.
 * 
 * You likely want to use `GtkLabel` instead as this widget is intended only
 * for a small subset of use cases. The main scenario envisaged is inside lists
 * such as `GtkColumnView`.
 * 
 * While a `GtkLabel` sizes itself depending on the text that is displayed,
 * `GtkInscription` is given a size and inscribes the given text into that
 * space as well as it can.
 * 
 * Users of this widget should take care to plan behaviour for the common case
 * where the text doesn't fit exactly in the allocated space, .
 *
 * Since: 4.8
 */
public class Inscription : Widget
{
	/** the main Gtk struct */
	protected GtkInscription* gtkInscription;

	/** Get the main Gtk struct */
	public GtkInscription* getInscriptionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkInscription;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkInscription;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkInscription* gtkInscription, bool ownedRef = false)
	{
		this.gtkInscription = gtkInscription;
		super(cast(GtkWidget*)gtkInscription, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_inscription_get_type();
	}

	/**
	 * Creates a new `GtkInscription` with the given text.
	 *
	 * Params:
	 *     text = The text to display.
	 *
	 * Returns: a new `GtkInscription`
	 *
	 * Since: 4.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string text)
	{
		auto __p = gtk_inscription_new(Str.toStringz(text));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkInscription*) __p);
	}

	/**
	 * Gets the inscription's attribute list.
	 *
	 * Returns: the attribute list
	 *
	 * Since: 4.8
	 */
	public PgAttributeList getAttributes()
	{
		auto __p = gtk_inscription_get_attributes(gtkInscription);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p);
	}

	/**
	 * Gets the `min-chars` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:min-chars] property.
	 *
	 * Returns: the min-chars property
	 *
	 * Since: 4.8
	 */
	public uint getMinChars()
	{
		return gtk_inscription_get_min_chars(gtkInscription);
	}

	/**
	 * Gets the `min-lines` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:min-lines] property.
	 *
	 * Returns: the min-lines property
	 *
	 * Since: 4.8
	 */
	public uint getMinLines()
	{
		return gtk_inscription_get_min_lines(gtkInscription);
	}

	/**
	 * Gets the `nat-chars` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:nat-chars] property.
	 *
	 * Returns: the nat-chars property
	 *
	 * Since: 4.8
	 */
	public uint getNatChars()
	{
		return gtk_inscription_get_nat_chars(gtkInscription);
	}

	/**
	 * Gets the `nat-lines` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:nat-lines] property.
	 *
	 * Returns: the nat-lines property
	 *
	 * Since: 4.8
	 */
	public uint getNatLines()
	{
		return gtk_inscription_get_nat_lines(gtkInscription);
	}

	/**
	 * Gets the text that is displayed.
	 *
	 * Returns: The displayed text
	 *
	 * Since: 4.8
	 */
	public string getText()
	{
		return Str.toString(gtk_inscription_get_text(gtkInscription));
	}

	/**
	 * Gets the inscription's overflow method.
	 *
	 * Returns: the overflow method
	 *
	 * Since: 4.8
	 */
	public GtkInscriptionOverflow getTextOverflow()
	{
		return gtk_inscription_get_text_overflow(gtkInscription);
	}

	/**
	 * Returns line wrap mode used by the inscription.
	 *
	 * See [method@Gtk.Inscription.set_wrap_mode].
	 *
	 * Returns: the line wrap mode
	 *
	 * Since: 4.8
	 */
	public PangoWrapMode getWrapMode()
	{
		return gtk_inscription_get_wrap_mode(gtkInscription);
	}

	/**
	 * Gets the `xalign` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:xalign] property.
	 *
	 * Returns: the xalign property
	 *
	 * Since: 4.8
	 */
	public float getXalign()
	{
		return gtk_inscription_get_xalign(gtkInscription);
	}

	/**
	 * Gets the `yalign` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:yalign] property.
	 *
	 * Returns: the yalign property
	 *
	 * Since: 4.8
	 */
	public float getYalign()
	{
		return gtk_inscription_get_yalign(gtkInscription);
	}

	/**
	 * Apply attributes to the inscription text.
	 *
	 * These attributes will not be evaluated for sizing the inscription.
	 *
	 * Params:
	 *     attrs = a [struct@Pango.AttrList]
	 *
	 * Since: 4.8
	 */
	public void setAttributes(PgAttributeList attrs)
	{
		gtk_inscription_set_attributes(gtkInscription, (attrs is null) ? null : attrs.getPgAttributeListStruct());
	}

	/**
	 * Utility function to set the text and attributes to be displayed.
	 *
	 * See the [property@Gtk.Inscription:markup] property.
	 *
	 * Params:
	 *     markup = The markup to display
	 *
	 * Since: 4.8
	 */
	public void setMarkup(string markup)
	{
		gtk_inscription_set_markup(gtkInscription, Str.toStringz(markup));
	}

	/**
	 * Sets the `min-chars` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:min-chars] property.
	 *
	 * Params:
	 *     minChars = the minimum number of characters that should fit, approximately
	 *
	 * Since: 4.8
	 */
	public void setMinChars(uint minChars)
	{
		gtk_inscription_set_min_chars(gtkInscription, minChars);
	}

	/**
	 * Sets the `min-lines` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:min-lines] property.
	 *
	 * Params:
	 *     minLines = the minimum number of lines that should fit, approximately
	 *
	 * Since: 4.8
	 */
	public void setMinLines(uint minLines)
	{
		gtk_inscription_set_min_lines(gtkInscription, minLines);
	}

	/**
	 * Sets the `nat-chars` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:nat-chars] property.
	 *
	 * Params:
	 *     natChars = the number of characters that should ideally fit, approximately
	 *
	 * Since: 4.8
	 */
	public void setNatChars(uint natChars)
	{
		gtk_inscription_set_nat_chars(gtkInscription, natChars);
	}

	/**
	 * Sets the `nat-lines` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:nat-lines] property.
	 *
	 * Params:
	 *     natLines = the number of lines that should ideally fit
	 *
	 * Since: 4.8
	 */
	public void setNatLines(uint natLines)
	{
		gtk_inscription_set_nat_lines(gtkInscription, natLines);
	}

	/**
	 * Sets the text to be displayed.
	 *
	 * Params:
	 *     text = The text to display
	 *
	 * Since: 4.8
	 */
	public void setText(string text)
	{
		gtk_inscription_set_text(gtkInscription, Str.toStringz(text));
	}

	/**
	 * Sets what to do when the text doesn't fit.
	 *
	 * Params:
	 *     overflow = the overflow method to use
	 *
	 * Since: 4.8
	 */
	public void setTextOverflow(GtkInscriptionOverflow overflow)
	{
		gtk_inscription_set_text_overflow(gtkInscription, overflow);
	}

	/**
	 * Controls how line wrapping is done.
	 *
	 * Params:
	 *     wrapMode = the line wrapping mode
	 *
	 * Since: 4.8
	 */
	public void setWrapMode(PangoWrapMode wrapMode)
	{
		gtk_inscription_set_wrap_mode(gtkInscription, wrapMode);
	}

	/**
	 * Sets the `xalign` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:xalign] property.
	 *
	 * Params:
	 *     xalign = the new xalign value, between 0 and 1
	 *
	 * Since: 4.8
	 */
	public void setXalign(float xalign)
	{
		gtk_inscription_set_xalign(gtkInscription, xalign);
	}

	/**
	 * Sets the `yalign` of the inscription.
	 *
	 * See the [property@Gtk.Inscription:yalign] property.
	 *
	 * Params:
	 *     yalign = the new yalign value, between 0 and 1
	 *
	 * Since: 4.8
	 */
	public void setYalign(float yalign)
	{
		gtk_inscription_set_yalign(gtkInscription, yalign);
	}
}
