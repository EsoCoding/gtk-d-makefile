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


module adw.EntryRow;

private import adw.PreferencesRow;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.EditableIF;
private import gtk.EditableT;
private import gtk.Widget;
private import pango.PgAttributeList;
private import std.algorithm;


/**
 * A [class@Gtk.ListBoxRow] with an embedded text entry.
 * 
 * <picture>
 * <source srcset="entry-row-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="entry-row.png" alt="entry-row">
 * </picture>
 * 
 * `AdwEntryRow` has a title that doubles as placeholder text. It shows an icon
 * indicating that it's editable and can receive additional widgets before or
 * after the editable part.
 * 
 * If [property@EntryRow:show-apply-button] is set to `TRUE`, `AdwEntryRow` can
 * show an apply button when editing its contents. This can be useful if
 * changing its contents can result in an expensive operation, such as network
 * activity.
 * 
 * `AdwEntryRow` provides only minimal API and should be used with the
 * [iface@Gtk.Editable] API.
 * 
 * See also [class@PasswordEntryRow].
 * 
 * ## AdwEntryRow as GtkBuildable
 * 
 * The `AdwEntryRow` implementation of the [iface@Gtk.Buildable] interface
 * supports adding a child at its end by specifying “suffix” or omitting the
 * “type” attribute of a <child> element.
 * 
 * It also supports adding a child as a prefix widget by specifying “prefix” as
 * the “type” attribute of a <child> element.
 * 
 * ## CSS nodes
 * 
 * `AdwEntryRow` has a single CSS node with name `row` and the `.entry` style
 * class.
 *
 * Since: 1.2
 */
public class EntryRow : PreferencesRow, EditableIF
{
	/** the main Gtk struct */
	protected AdwEntryRow* adwEntryRow;

	/** Get the main Gtk struct */
	public AdwEntryRow* getEntryRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwEntryRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwEntryRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwEntryRow* adwEntryRow, bool ownedRef = false)
	{
		this.adwEntryRow = adwEntryRow;
		super(cast(AdwPreferencesRow*)adwEntryRow, ownedRef);
	}

	// add the Editable capabilities
	mixin EditableT!(AdwEntryRow);


	/** */
	public static GType getType()
	{
		return adw_entry_row_get_type();
	}

	/**
	 * Creates a new `AdwEntryRow`.
	 *
	 * Returns: the newly created `AdwEntryRow`
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_entry_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwEntryRow*) __p);
	}

	/**
	 * Adds a prefix widget to @self.
	 *
	 * Params:
	 *     widget = a widget
	 *
	 * Since: 1.2
	 */
	public void addPrefix(Widget widget)
	{
		adw_entry_row_add_prefix(adwEntryRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Adds a suffix widget to @self.
	 *
	 * Params:
	 *     widget = a widget
	 *
	 * Since: 1.2
	 */
	public void addSuffix(Widget widget)
	{
		adw_entry_row_add_suffix(adwEntryRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Gets whether activating the embedded entry can activate the default widget.
	 *
	 * Returns: whether to activate the default widget
	 */
	public bool getActivatesDefault()
	{
		return adw_entry_row_get_activates_default(adwEntryRow) != 0;
	}

	/**
	 * Gets Pango attributes applied to the text of the embedded entry.
	 *
	 * Returns: the list of attributes
	 *
	 * Since: 1.2
	 */
	public PgAttributeList getAttributes()
	{
		auto __p = adw_entry_row_get_attributes(adwEntryRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}

	/**
	 * Gets whether to suggest emoji replacements on @self.
	 *
	 * Returns: whether or not emoji completion is enabled
	 *
	 * Since: 1.2
	 */
	public bool getEnableEmojiCompletion()
	{
		return adw_entry_row_get_enable_emoji_completion(adwEntryRow) != 0;
	}

	/**
	 * Gets the additional input hints of @self.
	 *
	 * Returns: The input hints
	 *
	 * Since: 1.2
	 */
	public GtkInputHints getInputHints()
	{
		return adw_entry_row_get_input_hints(adwEntryRow);
	}

	/**
	 * Gets the input purpose of @self.
	 *
	 * Returns: the input purpose
	 *
	 * Since: 1.2
	 */
	public GtkInputPurpose getInputPurpose()
	{
		return adw_entry_row_get_input_purpose(adwEntryRow);
	}

	/**
	 * Gets whether @self can show the apply button.
	 *
	 * Returns: whether to show the apply button
	 *
	 * Since: 1.2
	 */
	public bool getShowApplyButton()
	{
		return adw_entry_row_get_show_apply_button(adwEntryRow) != 0;
	}

	/**
	 * Removes a child from @self.
	 *
	 * Params:
	 *     widget = the child to be removed
	 *
	 * Since: 1.2
	 */
	public void remove(Widget widget)
	{
		adw_entry_row_remove(adwEntryRow, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Sets whether activating the embedded entry can activate the default widget.
	 *
	 * Params:
	 *     activates = whether to activate the default widget
	 *
	 * Since: 1.2
	 */
	public void setActivatesDefault(bool activates)
	{
		adw_entry_row_set_activates_default(adwEntryRow, activates);
	}

	/**
	 * Sets Pango attributes to apply to the text of the embedded entry.
	 *
	 * The [struct@Pango.Attribute]'s `start_index` and `end_index` must refer to
	 * the [class@Gtk.EntryBuffer] text, i.e. without the preedit string.
	 *
	 * Params:
	 *     attributes = a list of attributes
	 *
	 * Since: 1.2
	 */
	public void setAttributes(PgAttributeList attributes)
	{
		adw_entry_row_set_attributes(adwEntryRow, (attributes is null) ? null : attributes.getPgAttributeListStruct());
	}

	/**
	 * Sets whether to suggest emoji replacements on @self.
	 *
	 * Emoji replacement is done with :-delimited names, like `:heart:`.
	 *
	 * Params:
	 *     enableEmojiCompletion = Whether emoji completion should be enabled or not
	 *
	 * Since: 1.2
	 */
	public void setEnableEmojiCompletion(bool enableEmojiCompletion)
	{
		adw_entry_row_set_enable_emoji_completion(adwEntryRow, enableEmojiCompletion);
	}

	/**
	 * Set additional input hints for @self.
	 *
	 * Input hints allow input methods to fine-tune their behavior.
	 *
	 * See also: [property@AdwEntryRow:input-purpose]
	 *
	 * Params:
	 *     hints = the hints
	 *
	 * Since: 1.2
	 */
	public void setInputHints(GtkInputHints hints)
	{
		adw_entry_row_set_input_hints(adwEntryRow, hints);
	}

	/**
	 * Sets the input purpose of @self.
	 *
	 * The input purpose can be used by input methods to adjust their behavior.
	 *
	 * Params:
	 *     purpose = the purpose
	 *
	 * Since: 1.2
	 */
	public void setInputPurpose(GtkInputPurpose purpose)
	{
		adw_entry_row_set_input_purpose(adwEntryRow, purpose);
	}

	/**
	 * Sets whether @self can show the apply button.
	 *
	 * When set to `TRUE`, typing text in the entry will reveal an apply button.
	 * Clicking it or pressing the <kbd>Enter</kbd> key will hide the button and
	 * emit the [signal@EntryRow::apply] signal.
	 *
	 * This is useful if changing the entry contents can trigger an expensive
	 * operation, e.g. network activity, to avoid triggering it after typing every
	 * character.
	 *
	 * Params:
	 *     showApplyButton = whether to show the apply button
	 *
	 * Since: 1.2
	 */
	public void setShowApplyButton(bool showApplyButton)
	{
		adw_entry_row_set_show_apply_button(adwEntryRow, showApplyButton);
	}

	/**
	 * Emitted when the apply button is pressed.
	 *
	 * See [property@EntryRow:show-apply-button].
	 *
	 * Since: 1.2
	 */
	gulong addOnApply(void delegate(EntryRow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "apply", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the embedded entry is activated.
	 *
	 * Since: 1.2
	 */
	gulong addOnEntryActivated(void delegate(EntryRow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "entry-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
