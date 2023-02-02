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


module adw.ComboRow;

private import adw.ActionRow;
private import adw.c.functions;
public  import adw.c.types;
private import gio.ListModelIF;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Expression;
private import gtk.ListItemFactory;
private import gtk.Widget;


/**
 * A [class@Gtk.ListBoxRow] used to choose from a list of items.
 * 
 * <picture>
 * <source srcset="combo-row-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="combo-row.png" alt="combo-row">
 * </picture>
 * 
 * The `AdwComboRow` widget allows the user to choose from a list of valid
 * choices. The row displays the selected choice. When activated, the row
 * displays a popover which allows the user to make a new choice.
 * 
 * Example of an `AdwComboRow` UI definition:
 * ```xml
 * <object class="AdwComboRow">
 * <property name="title" translatable="yes">Combo Row</property>
 * <property name="model">
 * <object class="GtkStringList">
 * <items>
 * <item translatable="yes">Foo</item>
 * <item translatable="yes">Bar</item>
 * <item translatable="yes">Baz</item>
 * </items>
 * </object>
 * </property>
 * </object>
 * ```
 * 
 * The [property@ComboRow:selected] and [property@ComboRow:selected-item]
 * properties can be used to keep track of the selected item and react to their
 * changes.
 * 
 * `AdwComboRow` mirrors [class@Gtk.DropDown], see that widget for details.
 * 
 * `AdwComboRow` is [property@Gtk.ListBoxRow:activatable] if a model is set.
 * 
 * ## CSS nodes
 * 
 * `AdwComboRow` has a main CSS node with name `row` and the `.combo` style
 * class.
 * 
 * Its popover has the node named `popover` with the `.menu` style class, it
 * contains a [class@Gtk.ScrolledWindow], which in turn contains a
 * [class@Gtk.ListView], both are accessible via their regular nodes.
 * 
 * ## Accessibility
 * 
 * `AdwComboRow` uses the `GTK_ACCESSIBLE_ROLE_COMBO_BOX` role.
 *
 * Since: 1.0
 */
public class ComboRow : ActionRow
{
	/** the main Gtk struct */
	protected AdwComboRow* adwComboRow;

	/** Get the main Gtk struct */
	public AdwComboRow* getComboRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwComboRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwComboRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwComboRow* adwComboRow, bool ownedRef = false)
	{
		this.adwComboRow = adwComboRow;
		super(cast(AdwActionRow*)adwComboRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_combo_row_get_type();
	}

	/**
	 * Creates a new `AdwComboRow`.
	 *
	 * Returns: the newly created `AdwComboRow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_combo_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwComboRow*) __p);
	}

	/**
	 * Gets the expression used to obtain strings from items.
	 *
	 * Returns: the expression used to obtain strings from items
	 *
	 * Since: 1.0
	 */
	public Expression getExpression()
	{
		auto __p = adw_combo_row_get_expression(adwComboRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Expression)(cast(GtkExpression*) __p);
	}

	/**
	 * Gets the factory for populating list items.
	 *
	 * Returns: the factory in use
	 *
	 * Since: 1.0
	 */
	public ListItemFactory getFactory()
	{
		auto __p = adw_combo_row_get_factory(adwComboRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the factory for populating list items in the popup.
	 *
	 * Returns: the factory in use
	 *
	 * Since: 1.0
	 */
	public ListItemFactory getListFactory()
	{
		auto __p = adw_combo_row_get_list_factory(adwComboRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListItemFactory)(cast(GtkListItemFactory*) __p);
	}

	/**
	 * Gets the model that provides the displayed items.
	 *
	 * Returns: The model in use
	 *
	 * Since: 1.0
	 */
	public ListModelIF getModel()
	{
		auto __p = adw_combo_row_get_model(adwComboRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Gets the position of the selected item.
	 *
	 * Returns: the position of the selected item, or
	 *     [const@Gtk.INVALID_LIST_POSITION] if no item is selected
	 *
	 * Since: 1.0
	 */
	public uint getSelected()
	{
		return adw_combo_row_get_selected(adwComboRow);
	}

	/**
	 * Gets the selected item.
	 *
	 * Returns: the selected item
	 *
	 * Since: 1.0
	 */
	public ObjectG getSelectedItem()
	{
		auto __p = adw_combo_row_get_selected_item(adwComboRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets whether to use the current value as the subtitle.
	 *
	 * Returns: whether to use the current value as the subtitle
	 *
	 * Since: 1.0
	 */
	public bool getUseSubtitle()
	{
		return adw_combo_row_get_use_subtitle(adwComboRow) != 0;
	}

	/**
	 * Sets the expression used to obtain strings from items.
	 *
	 * The expression must have a value type of `G_TYPE_STRING`.
	 *
	 * It's used to bind strings to labels produced by the default factory if
	 * [property@ComboRow:factory] is not set, or when
	 * [property@ComboRow:use-subtitle] is set to `TRUE`.
	 *
	 * Params:
	 *     expression = an expression
	 *
	 * Since: 1.0
	 */
	public void setExpression(Expression expression)
	{
		adw_combo_row_set_expression(adwComboRow, (expression is null) ? null : expression.getExpressionStruct());
	}

	/**
	 * Sets the factory for populating list items.
	 *
	 * This factory is always used for the item in the row. It is also used for
	 * items in the popup unless [property@ComboRow:list-factory] is set.
	 *
	 * Params:
	 *     factory = the factory to use
	 *
	 * Since: 1.0
	 */
	public void setFactory(ListItemFactory factory)
	{
		adw_combo_row_set_factory(adwComboRow, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * Sets the factory for populating list items in the popup.
	 *
	 * If this is not set, [property@ComboRow:factory] is used.
	 *
	 * Params:
	 *     factory = the factory to use
	 *
	 * Since: 1.0
	 */
	public void setListFactory(ListItemFactory factory)
	{
		adw_combo_row_set_list_factory(adwComboRow, (factory is null) ? null : factory.getListItemFactoryStruct());
	}

	/**
	 * Sets the model that provides the displayed items.
	 *
	 * Params:
	 *     model = the model to use
	 *
	 * Since: 1.0
	 */
	public void setModel(ListModelIF model)
	{
		adw_combo_row_set_model(adwComboRow, (model is null) ? null : model.getListModelStruct());
	}

	/**
	 * Selects the item at the given position.
	 *
	 * Params:
	 *     position = the position of the item to select, or
	 *         [const@Gtk.INVALID_LIST_POSITION]
	 *
	 * Since: 1.0
	 */
	public void setSelected(uint position)
	{
		adw_combo_row_set_selected(adwComboRow, position);
	}

	/**
	 * Sets whether to use the current value as the subtitle.
	 *
	 * If you use a custom list item factory, you will need to give the row a
	 * name conversion expression with [property@ComboRow:expression].
	 *
	 * If set to `TRUE`, you should not access [property@ActionRow:subtitle].
	 *
	 * The subtitle is interpreted as Pango markup if
	 * [property@PreferencesRow:use-markup] is set to `TRUE`.
	 *
	 * Params:
	 *     useSubtitle = whether to use the current value as the subtitle
	 *
	 * Since: 1.0
	 */
	public void setUseSubtitle(bool useSubtitle)
	{
		adw_combo_row_set_use_subtitle(adwComboRow, useSubtitle);
	}
}
