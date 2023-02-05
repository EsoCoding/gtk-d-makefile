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


module adw.TabPage;

private import adw.c.functions;
public  import adw.c.types;
private import gio.IconIF;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * An auxiliary class used by [class@TabView].
 */
public class TabPage : ObjectG
{
	/** the main Gtk struct */
	protected AdwTabPage* adwTabPage;

	/** Get the main Gtk struct */
	public AdwTabPage* getTabPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwTabPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwTabPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwTabPage* adwTabPage, bool ownedRef = false)
	{
		this.adwTabPage = adwTabPage;
		super(cast(GObject*)adwTabPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_tab_page_get_type();
	}

	/**
	 * Gets the child of @self.
	 *
	 * Returns: the child of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_tab_page_get_child(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the icon of @self.
	 *
	 * Returns: the icon of @self
	 *
	 * Since: 1.0
	 */
	public IconIF getIcon()
	{
		auto __p = adw_tab_page_get_icon(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Gets whether the indicator of @self is activatable.
	 *
	 * Returns: whether the indicator is activatable
	 *
	 * Since: 1.0
	 */
	public bool getIndicatorActivatable()
	{
		return adw_tab_page_get_indicator_activatable(adwTabPage) != 0;
	}

	/**
	 * Gets the indicator icon of @self.
	 *
	 * Returns: the indicator icon of @self
	 *
	 * Since: 1.0
	 */
	public IconIF getIndicatorIcon()
	{
		auto __p = adw_tab_page_get_indicator_icon(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p);
	}

	/**
	 * Gets the tooltip of the indicator icon of @self.
	 *
	 * Returns: the indicator tooltip of @self
	 *
	 * Since: 1.2
	 */
	public string getIndicatorTooltip()
	{
		return Str.toString(adw_tab_page_get_indicator_tooltip(adwTabPage));
	}

	/**
	 * Gets whether @self is loading.
	 *
	 * Returns: whether @self is loading
	 *
	 * Since: 1.0
	 */
	public bool getLoading()
	{
		return adw_tab_page_get_loading(adwTabPage) != 0;
	}

	/**
	 * Gets whether @self needs attention.
	 *
	 * Returns: whether @self needs attention
	 *
	 * Since: 1.0
	 */
	public bool getNeedsAttention()
	{
		return adw_tab_page_get_needs_attention(adwTabPage) != 0;
	}

	/**
	 * Gets the parent page of @self.
	 *
	 * See [method@TabView.add_page] and [method@TabView.close_page].
	 *
	 * Returns: the parent page
	 *
	 * Since: 1.0
	 */
	public TabPage getParent()
	{
		auto __p = adw_tab_page_get_parent(adwTabPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TabPage)(cast(AdwTabPage*) __p);
	}

	/**
	 * Gets whether @self is pinned.
	 *
	 * See [method@TabView.set_page_pinned].
	 *
	 * Returns: whether @self is pinned
	 *
	 * Since: 1.0
	 */
	public bool getPinned()
	{
		return adw_tab_page_get_pinned(adwTabPage) != 0;
	}

	/**
	 * Gets whether @self is selected.
	 *
	 * Returns: whether @self is selected
	 *
	 * Since: 1.0
	 */
	public bool getSelected()
	{
		return adw_tab_page_get_selected(adwTabPage) != 0;
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title of @self
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_tab_page_get_title(adwTabPage));
	}

	/**
	 * Gets the tooltip of @self.
	 *
	 * Returns: the tooltip of @self
	 *
	 * Since: 1.0
	 */
	public string getTooltip()
	{
		return Str.toString(adw_tab_page_get_tooltip(adwTabPage));
	}

	/**
	 * Sets the icon of @self.
	 *
	 * [class@TabBar] displays the icon next to the title.
	 *
	 * It will not show the icon if [property@TabPage:loading] is set to `TRUE`,
	 * or if the page is pinned and [propertyTabPage:indicator-icon] is set.
	 *
	 * Params:
	 *     icon = the icon of @self
	 *
	 * Since: 1.0
	 */
	public void setIcon(IconIF icon)
	{
		adw_tab_page_set_icon(adwTabPage, (icon is null) ? null : icon.getIconStruct());
	}

	/**
	 * Sets whether the indicator of @self is activatable.
	 *
	 * If set to `TRUE`, [signal@TabView::indicator-activated] will be emitted
	 * when the indicator icon is clicked.
	 *
	 * If [property@TabPage:indicator-icon] is not set, does nothing.
	 *
	 * Params:
	 *     activatable = whether the indicator is activatable
	 *
	 * Since: 1.0
	 */
	public void setIndicatorActivatable(bool activatable)
	{
		adw_tab_page_set_indicator_activatable(adwTabPage, activatable);
	}

	/**
	 * Sets the indicator icon of @self.
	 *
	 * A common use case is an audio or camera indicator in a web browser.
	 *
	 * [class@TabBar] will show it at the beginning of the tab, alongside icon
	 * representing [property@TabPage:icon] or loading spinner.
	 *
	 * If the page is pinned, the indicator will be shown instead of icon or
	 * spinner.
	 *
	 * [property@TabPage:indicator-tooltip] can be used to set the tooltip on the
	 * indicator icon.
	 *
	 * If [property@TabPage:indicator-activatable] is set to `TRUE`, the
	 * indicator icon can act as a button.
	 *
	 * Params:
	 *     indicatorIcon = the indicator icon of @self
	 *
	 * Since: 1.0
	 */
	public void setIndicatorIcon(IconIF indicatorIcon)
	{
		adw_tab_page_set_indicator_icon(adwTabPage, (indicatorIcon is null) ? null : indicatorIcon.getIconStruct());
	}

	/**
	 * Sets the tooltip of the indicator icon of @self.
	 *
	 * The tooltip can be marked up with the Pango text markup language.
	 *
	 * See [property@TabPage:indicator-icon].
	 *
	 * Params:
	 *     tooltip = the indicator tooltip of @self
	 *
	 * Since: 1.2
	 */
	public void setIndicatorTooltip(string tooltip)
	{
		adw_tab_page_set_indicator_tooltip(adwTabPage, Str.toStringz(tooltip));
	}

	/**
	 * Sets whether @self is loading.
	 *
	 * If set to `TRUE`, [class@TabBar] will display a spinner in place of icon.
	 *
	 * If the page is pinned and [property@TabPage:indicator-icon] is set, the
	 * loading status will not be visible.
	 *
	 * Params:
	 *     loading = whether @self is loading
	 *
	 * Since: 1.0
	 */
	public void setLoading(bool loading)
	{
		adw_tab_page_set_loading(adwTabPage, loading);
	}

	/**
	 * Sets whether @self needs attention.
	 *
	 * [class@TabBar] will display a line under the tab representing the page if
	 * set to `TRUE`. If the tab is not visible, the corresponding edge of the tab
	 * bar will be highlighted.
	 *
	 * Params:
	 *     needsAttention = whether @self needs attention
	 *
	 * Since: 1.0
	 */
	public void setNeedsAttention(bool needsAttention)
	{
		adw_tab_page_set_needs_attention(adwTabPage, needsAttention);
	}

	/**
	 * [class@TabBar] will display it in the center of the tab unless it's pinned,
	 * and will use it as a tooltip unless [property@TabPage:tooltip] is set.
	 *
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = the title of @self
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_tab_page_set_title(adwTabPage, Str.toStringz(title));
	}

	/**
	 * Sets the tooltip of @self.
	 *
	 * The tooltip can be marked up with the Pango text markup language.
	 *
	 * If not set, [class@TabBar] will use [property@TabPage:title] as a tooltip
	 * instead.
	 *
	 * Params:
	 *     tooltip = the tooltip of @self
	 *
	 * Since: 1.0
	 */
	public void setTooltip(string tooltip)
	{
		adw_tab_page_set_tooltip(adwTabPage, Str.toStringz(tooltip));
	}
}
