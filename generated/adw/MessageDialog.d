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


module adw.MessageDialog;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.RootIF;
private import gtk.RootT;
private import gtk.ShortcutManagerIF;
private import gtk.ShortcutManagerT;
private import gtk.Widget;
private import gtk.Window;
private import std.algorithm;


/**
 * A dialog presenting a message or a question.
 * 
 * <picture>
 * <source srcset="message-dialog-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="message-dialog.png" alt="message-dialog">
 * </picture>
 * 
 * Message dialogs have a heading, a body, an optional child widget, and one or
 * multiple responses, each presented as a button.
 * 
 * Each response has a unique string ID, and a button label. Additionally, each
 * response can be enabled or disabled, and can have a suggested or destructive
 * appearance.
 * 
 * When one of the responses is activated, or the dialog is closed, the
 * [signal@MessageDialog::response] signal will be emitted. This signal is
 * detailed, and the detail, as well as the `response` parameter will be set to
 * the ID of the activated response, or to the value of the
 * [property@MessageDialog:close-response] property if the dialog had been
 * closed without activating any of the responses.
 * 
 * Response buttons can be presented horizontally or vertically depending on
 * available space.
 * 
 * When a response is activated, `AdwMessageDialog` is closed automatically.
 * 
 * An example of using a message dialog:
 * 
 * ```c
 * GtkWidget *dialog;
 * 
 * dialog = adw_message_dialog_new (parent, _("Replace File?"), NULL);
 * 
 * adw_message_dialog_format_body (ADW_MESSAGE_DIALOG (dialog),
 * _("A file named “%s” already exists. Do you want to replace it?"),
 * filename);
 * 
 * adw_message_dialog_add_responses (ADW_MESSAGE_DIALOG (dialog),
 * "cancel",  _("_Cancel"),
 * "replace", _("_Replace"),
 * NULL);
 * 
 * adw_message_dialog_set_response_appearance (ADW_MESSAGE_DIALOG (dialog), "replace", ADW_RESPONSE_DESTRUCTIVE);
 * 
 * adw_message_dialog_set_default_response (ADW_MESSAGE_DIALOG (dialog), "cancel");
 * adw_message_dialog_set_close_response (ADW_MESSAGE_DIALOG (dialog), "cancel");
 * 
 * g_signal_connect (dialog, "response", G_CALLBACK (response_cb), self);
 * 
 * gtk_window_present (GTK_WINDOW (dialog));
 * ```
 * 
 * ## AdwMessageDialog as GtkBuildable
 * 
 * `AdwMessageDialog` supports adding responses in UI definitions by via the
 * `<responses>` element that may contain multiple `<response>` elements, each
 * respresenting a response.
 * 
 * Each of the `<response>` elements must have the `id` attribute specifying the
 * response ID. The contents of the element are used as the response label.
 * 
 * Response labels can be translated with the usual `translatable`, `context`
 * and `comments` attributes.
 * 
 * The `<response>` elements can also have `enabled` and/or `appearance`
 * attributes. See [method@MessageDialog.set_response_enabled] and
 * [method@MessageDialog.set_response_appearance] for details.
 * 
 * Example of an `AdwMessageDialog` UI definition:
 * 
 * ```xml
 * <object class="AdwMessageDialog" id="dialog">
 * <property name="heading" translatable="yes">Save Changes?</property>
 * <property name="body" translatable="yes">Open documents contain unsaved changes. Changes which are not saved will be permanently lost.</property>
 * <property name="default-response">save</property>
 * <property name="close-response">cancel</property>
 * <signal name="response" handler="response_cb"/>
 * <responses>
 * <response id="cancel" translatable="yes">_Cancel</response>
 * <response id="discard" translatable="yes" appearance="destructive">_Discard</response>
 * <response id="save" translatable="yes" appearance="suggested" enabled="false">_Save</response>
 * </responses>
 * </object>
 * ```
 * 
 * ## Accessibility
 * 
 * `AdwMessageDialog` uses the `GTK_ACCESSIBLE_ROLE_DIALOG` role.
 *
 * Since: 1.2
 */
public class MessageDialog : Window
{
	/** the main Gtk struct */
	protected AdwMessageDialog* adwMessageDialog;

	/** Get the main Gtk struct */
	public AdwMessageDialog* getMessageDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwMessageDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwMessageDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwMessageDialog* adwMessageDialog, bool ownedRef = false)
	{
		this.adwMessageDialog = adwMessageDialog;
		super(cast(GtkWindow*)adwMessageDialog, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_message_dialog_get_type();
	}

	/**
	 * Creates a new `AdwMessageDialog`.
	 *
	 * @heading and @body can be set to `NULL`. This can be useful if they need to
	 * be formatted or use markup. In that case, set them to `NULL` and call
	 * [method@MessageDialog.format_body] or similar methods afterwards:
	 *
	 * ```c
	 * GtkWidget *dialog;
	 *
	 * dialog = adw_message_dialog_new (parent, _("Replace File?"), NULL);
	 * adw_message_dialog_format_body (ADW_MESSAGE_DIALOG (dialog),
	 * _("A file named “%s” already exists.  Do you want to replace it?"),
	 * filename);
	 * ```
	 *
	 * Params:
	 *     parent = transient parent
	 *     heading = the heading
	 *     body_ = the body text
	 *
	 * Returns: the newly created `AdwMessageDialog`
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window parent, string heading, string body_)
	{
		auto __p = adw_message_dialog_new((parent is null) ? null : parent.getWindowStruct(), Str.toStringz(heading), Str.toStringz(body_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwMessageDialog*) __p);
	}

	/**
	 * Adds a response with @id and @label to @self.
	 *
	 * Responses are represented as buttons in the dialog.
	 *
	 * Response ID must be unique. It will be used in
	 * [signal@MessageDialog::response] to tell which response had been activated,
	 * as well as to inspect and modify the response later.
	 *
	 * An embedded underline in @label indicates a mnemonic.
	 *
	 * [method@MessageDialog.set_response_label] can be used to change the response
	 * label after it had been added.
	 *
	 * [method@MessageDialog.set_response_enabled] and
	 * [method@MessageDialog.set_response_appearance] can be used to customize the
	 * responses further.
	 *
	 * Params:
	 *     id = the response ID
	 *     label = the response label
	 *
	 * Since: 1.2
	 */
	public void addResponse(string id, string label)
	{
		adw_message_dialog_add_response(adwMessageDialog, Str.toStringz(id), Str.toStringz(label));
	}

	/**
	 * Gets the body text of @self.
	 *
	 * Returns: the body of @self.
	 *
	 * Since: 1.2
	 */
	public string getBody()
	{
		return Str.toString(adw_message_dialog_get_body(adwMessageDialog));
	}

	/**
	 * Gets whether the body text of @self includes Pango markup.
	 *
	 * Returns: whether @self uses markup for body text
	 *
	 * Since: 1.2
	 */
	public bool getBodyUseMarkup()
	{
		return adw_message_dialog_get_body_use_markup(adwMessageDialog) != 0;
	}

	/**
	 * Gets the ID of the close response of @self.
	 *
	 * Returns: the close response ID
	 *
	 * Since: 1.2
	 */
	public string getCloseResponse()
	{
		return Str.toString(adw_message_dialog_get_close_response(adwMessageDialog));
	}

	/**
	 * Gets the ID of the default response of @self.
	 *
	 * Returns: the default response ID
	 *
	 * Since: 1.2
	 */
	public string getDefaultResponse()
	{
		return Str.toString(adw_message_dialog_get_default_response(adwMessageDialog));
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of @self.
	 *
	 * Since: 1.2
	 */
	public Widget getExtraChild()
	{
		auto __p = adw_message_dialog_get_extra_child(adwMessageDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the heading of @self.
	 *
	 * Returns: the heading of @self.
	 *
	 * Since: 1.2
	 */
	public string getHeading()
	{
		return Str.toString(adw_message_dialog_get_heading(adwMessageDialog));
	}

	/**
	 * Gets whether the heading of @self includes Pango markup.
	 *
	 * Returns: whether @self uses markup for heading
	 *
	 * Since: 1.2
	 */
	public bool getHeadingUseMarkup()
	{
		return adw_message_dialog_get_heading_use_markup(adwMessageDialog) != 0;
	}

	/**
	 * Gets the appearance of @response.
	 *
	 * See [method@MessageDialog.set_response_appearance].
	 *
	 * Params:
	 *     response = a response ID
	 *
	 * Returns: the appearance of @response
	 *
	 * Since: 1.2
	 */
	public AdwResponseAppearance getResponseAppearance(string response)
	{
		return adw_message_dialog_get_response_appearance(adwMessageDialog, Str.toStringz(response));
	}

	/**
	 * Gets whether @response is enabled.
	 *
	 * See [method@MessageDialog.set_response_enabled].
	 *
	 * Params:
	 *     response = a response ID
	 *
	 * Returns: whether @response is enabled
	 *
	 * Since: 1.2
	 */
	public bool getResponseEnabled(string response)
	{
		return adw_message_dialog_get_response_enabled(adwMessageDialog, Str.toStringz(response)) != 0;
	}

	/**
	 * Gets the label of @response.
	 *
	 * See [method@MessageDialog.set_response_label].
	 *
	 * Params:
	 *     response = a response ID
	 *
	 * Returns: the label of @response
	 *
	 * Since: 1.2
	 */
	public string getResponseLabel(string response)
	{
		return Str.toString(adw_message_dialog_get_response_label(adwMessageDialog, Str.toStringz(response)));
	}

	/**
	 * Gets whether @self has a response with the ID @response.
	 *
	 * Params:
	 *     response = response ID
	 *
	 * Returns: whether @self has a response with the ID @response.
	 *
	 * Since: 1.2
	 */
	public bool hasResponse(string response)
	{
		return adw_message_dialog_has_response(adwMessageDialog, Str.toStringz(response)) != 0;
	}

	/**
	 * Emits the [signal@MessageDialog::response] signal with the given response ID.
	 *
	 * Used to indicate that the user has responded to the dialog in some way.
	 *
	 * Params:
	 *     response = response ID
	 *
	 * Since: 1.2
	 */
	public void response(string response)
	{
		adw_message_dialog_response(adwMessageDialog, Str.toStringz(response));
	}

	/**
	 * Sets the body text of @self.
	 *
	 * Params:
	 *     body_ = the body of @self
	 *
	 * Since: 1.2
	 */
	public void setBody(string body_)
	{
		adw_message_dialog_set_body(adwMessageDialog, Str.toStringz(body_));
	}

	/**
	 * Sets whether the body text of @self includes Pango markup.
	 *
	 * See [func@Pango.parse_markup].
	 *
	 * Params:
	 *     useMarkup = whether to use markup for body text
	 *
	 * Since: 1.2
	 */
	public void setBodyUseMarkup(bool useMarkup)
	{
		adw_message_dialog_set_body_use_markup(adwMessageDialog, useMarkup);
	}

	/**
	 * Sets the ID of the close response of @self.
	 *
	 * It will be passed to [signal@MessageDialog::response] if the window is
	 * closed by pressing <kbd>Escape</kbd> or with a system action.
	 *
	 * It doesn't have to correspond to any of the responses in the dialog.
	 *
	 * The default close response is `close`.
	 *
	 * Params:
	 *     response = the close response ID
	 *
	 * Since: 1.2
	 */
	public void setCloseResponse(string response)
	{
		adw_message_dialog_set_close_response(adwMessageDialog, Str.toStringz(response));
	}

	/**
	 * Sets the ID of the default response of @self.
	 *
	 * If set, pressing <kbd>Enter</kbd> will activate the corresponding button.
	 *
	 * If set to `NULL` or to a non-existent response ID, pressing <kbd>Enter</kbd>
	 * will do nothing.
	 *
	 * Params:
	 *     response = the default response ID
	 *
	 * Since: 1.2
	 */
	public void setDefaultResponse(string response)
	{
		adw_message_dialog_set_default_response(adwMessageDialog, Str.toStringz(response));
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * The child widget is displayed below the heading and body.
	 *
	 * Params:
	 *     child = the child widget
	 *
	 * Since: 1.2
	 */
	public void setExtraChild(Widget child)
	{
		adw_message_dialog_set_extra_child(adwMessageDialog, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the heading of @self.
	 *
	 * Params:
	 *     heading = the heading of @self
	 *
	 * Since: 1.2
	 */
	public void setHeading(string heading)
	{
		adw_message_dialog_set_heading(adwMessageDialog, Str.toStringz(heading));
	}

	/**
	 * Sets whether the heading of @self includes Pango markup.
	 *
	 * See [func@Pango.parse_markup].
	 *
	 * Params:
	 *     useMarkup = whether to use markup for heading
	 *
	 * Since: 1.2
	 */
	public void setHeadingUseMarkup(bool useMarkup)
	{
		adw_message_dialog_set_heading_use_markup(adwMessageDialog, useMarkup);
	}

	/**
	 * Sets the appearance for @response.
	 *
	 * <picture>
	 * <source srcset="message-dialog-appearance-dark.png" media="(prefers-color-scheme: dark)">
	 * <img src="message-dialog-appearance.png" alt="message-dialog-appearance">
	 * </picture>
	 *
	 * Use `ADW_RESPONSE_SUGGESTED` to mark important responses such as the
	 * affirmative action, like the Save button in the example.
	 *
	 * Use `ADW_RESPONSE_DESTRUCTIVE` to draw attention to the potentially damaging
	 * consequences of using @response. This appearance acts as a warning to the
	 * user. The Discard button in the example is using this appearance.
	 *
	 * The default appearance is `ADW_RESPONSE_DEFAULT`.
	 *
	 * Negative responses like Cancel or Close should use the default appearance.
	 *
	 * Params:
	 *     response = a response ID
	 *     appearance = appearance for @response
	 *
	 * Since: 1.2
	 */
	public void setResponseAppearance(string response, AdwResponseAppearance appearance)
	{
		adw_message_dialog_set_response_appearance(adwMessageDialog, Str.toStringz(response), appearance);
	}

	/**
	 * Sets whether @response is enabled.
	 *
	 * If @response is not enabled, the corresponding button will have
	 * [property@Gtk.Widget:sensitive] set to `FALSE` and it can't be activated as
	 * a default response.
	 *
	 * @response can still be used as [property@MessageDialog:close-response] while
	 * it's not enabled.
	 *
	 * Responses are enabled by default.
	 *
	 * Params:
	 *     response = a response ID
	 *     enabled = whether to enable @response
	 *
	 * Since: 1.2
	 */
	public void setResponseEnabled(string response, bool enabled)
	{
		adw_message_dialog_set_response_enabled(adwMessageDialog, Str.toStringz(response), enabled);
	}

	/**
	 * Sets the label of @response to @label.
	 *
	 * Labels are displayed on the dialog buttons. An embedded underline in @label
	 * indicates a mnemonic.
	 *
	 * Params:
	 *     response = a response ID
	 *     label = the label of @response
	 *
	 * Since: 1.2
	 */
	public void setResponseLabel(string response, string label)
	{
		adw_message_dialog_set_response_label(adwMessageDialog, Str.toStringz(response), Str.toStringz(label));
	}

	/**
	 * This signal is emitted when the dialog is closed.
	 *
	 * @response will be set to the response ID of the button that had been
	 * activated.
	 *
	 * if the dialog was closed by pressing <kbd>Escape</kbd> or with a system
	 * action, @response will be set to the value of
	 * [property@MessageDialog:close-response].
	 *
	 * Params:
	 *     response = the response ID
	 *
	 * Since: 1.2
	 */
	gulong addOnResponse(void delegate(string, MessageDialog) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "response", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
