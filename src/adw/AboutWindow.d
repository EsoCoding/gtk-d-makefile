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


module adw.AboutWindow;

private import adw.Window;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import std.algorithm;


/**
 * A window showing information about the application.
 * 
 * <picture>
 * <source srcset="about-window-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="about-window.png" alt="about-window">
 * </picture>
 * 
 * An about window is typically opened when the user activates the `About …`
 * item in the application's primary menu. All parts of the window are optional.
 * 
 * ## Main page
 * 
 * `AdwAboutWindow` prominently displays the application's icon, name, developer
 * name and version. They can be set with the [property@AboutWindow:application-icon],
 * [property@AboutWindow:application-name],
 * [property@AboutWindow:developer-name] and [property@AboutWindow:version]
 * respectively.
 * 
 * ## What's New
 * 
 * `AdwAboutWindow` provides a way for applications to display their release
 * notes, set with the [property@AboutWindow:release-notes] property.
 * 
 * Release notes are formatted the same way as
 * [AppStream descriptions](https://freedesktop.org/software/appstream/docs/chap-Metadata.html#tag-description).
 * 
 * The supported formatting options are:
 * 
 * * Paragraph (`<p>`)
 * * Ordered list (`<ol>`), with list items (`<li>`)
 * * Unordered list (`<ul>`), with list items (`<li>`)
 * 
 * Within paragraphs and list items, emphasis (`<em>`) and inline code
 * (`<code>`) text styles are supported. The emphasis is rendered in italic,
 * while inline code is shown in a monospaced font.
 * 
 * Any text outside paragraphs or list items is ignored.
 * 
 * Nested lists are not supported.
 * 
 * Only one version can be shown at a time. By default, the displayed version
 * number matches [property@AboutWindow:version]. Use
 * [property@AboutWindow:release-notes-version] to override it.
 * 
 * ## Details
 * 
 * The Details page displays the application comments and links.
 * 
 * The comments can be set with the [property@AboutWindow:comments] property.
 * Unlike [property@Gtk.AboutDialog:comments], this string can be long and
 * detailed. It can also contain links and Pango markup.
 * 
 * To set the application website, use [property@AboutWindow:website].
 * To add extra links below the website, use [method@AboutWindow.add_link].
 * 
 * If the Details page doesn't have any other content besides website, the
 * website will be displayed on the main page instead.
 * 
 * ## Troubleshooting
 * 
 * `AdwAboutWindow` displays the following two links on the main page:
 * 
 * * Support Questions, set with the [property@AboutWindow:support-url] property,
 * * Report an Issue, set with the [property@AboutWindow:issue-url] property.
 * 
 * Additionally, applications can provide debugging information. It will be
 * shown separately on the Troubleshooting page. Use the
 * [property@AboutWindow:debug-info] property to specify it.
 * 
 * It's intended to be attached to issue reports when reporting issues against
 * the application. As such, it cannot contain markup or links.
 * 
 * `AdwAboutWindow` provides a quick way to save debug information to a file.
 * When saving, [property@AboutWindow:debug-info-filename] would be used as
 * the suggested filename.
 * 
 * ## Credits and Acknowledgements
 * 
 * The Credits page has the following default sections:
 * 
 * * Developers, set with the [property@AboutWindow:developers] property,
 * * Designers, set with the [property@AboutWindow:designers] property,
 * * Artists, set with the [property@AboutWindow:artists] property,
 * * Documenters, set with the [property@AboutWindow:documenters] property,
 * * Translators, set with the [property@AboutWindow:translator-credits] property.
 * 
 * When setting translator credits, use the strings `"translator-credits"` or
 * `"translator_credits"` and mark them as translatable.
 * 
 * The default sections that don't contain any names won't be displayed.
 * 
 * The Credits page can also contain an arbitrary number of extra sections below
 * the default ones. Use [method@AboutWindow.add_credit_section] to add them.
 * 
 * The Acknowledgements page can be used to acknowledge additional people and
 * organizations for their non-development contributions. Use
 * [method@AboutWindow.add_acknowledgement_section] to add sections to it. For
 * example, it can be used to list backers in a crowdfunded project or to give
 * special thanks.
 * 
 * Each of the people or organizations can have an email address or a website
 * specified. To add a email address, use a string like
 * `Edgar Allan Poe <edgar@poe.com>`. To specify a website with a title, use a
 * string like `The GNOME Project https://www.gnome.org`:
 * 
 * <picture>
 * <source srcset="about-window-credits-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="about-window-credits.png" alt="about-window-credits">
 * </picture>
 * 
 * ## Legal
 * 
 * The Legal page displays the copyright and licensing information for the
 * application and other modules.
 * 
 * The copyright string is set with the [property@AboutWindow:copyright]
 * property and should be a short string of one or two lines, for example:
 * `© 2022 Example`.
 * 
 * Licensing information can be quickly set from a list of known licenses with
 * the [property@AboutWindow:license-type] property. If the application's
 * license is not in the list, [property@AboutWindow:license] can be used
 * instead.
 * 
 * To add information about other modules, such as application dependencies or
 * data, use [method@AboutWindow.add_legal_section].
 * 
 * ## Constructing
 * 
 * To make constructing an `AdwAboutWindow` as convenient as possible, you can
 * use the function [func@show_about_window] which constructs and shows a
 * window.
 * 
 * ```c
 * static void
 * show_about (GtkApplication *app)
 * {
 * const char *developers[] = {
 * "Angela Avery",
 * NULL
 * };
 * 
 * const char *designers[] = {
 * "GNOME Design Team",
 * NULL
 * };
 * 
 * adw_show_about_window (gtk_application_get_active_window (app),
 * "application-name", _("Example"),
 * "application-icon", "org.example.App",
 * "version", "1.2.3",
 * "copyright", "© 2022 Angela Avery",
 * "issue-url", "https://gitlab.gnome.org/example/example/-/issues/new",
 * "license-type", GTK_LICENSE_GPL_3_0,
 * "developers", developers,
 * "designers", designers,
 * "translator-credits", _("translator-credits"),
 * NULL);
 * }
 * ```
 * 
 * ## CSS nodes
 * 
 * `AdwAboutWindow` has a main CSS node with the name `window` and the
 * style class `.about`.
 *
 * Since: 1.2
 */
public class AboutWindow : Window
{
	/** the main Gtk struct */
	protected AdwAboutWindow* adwAboutWindow;

	/** Get the main Gtk struct */
	public AdwAboutWindow* getAboutWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwAboutWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwAboutWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwAboutWindow* adwAboutWindow, bool ownedRef = false)
	{
		this.adwAboutWindow = adwAboutWindow;
		super(cast(AdwWindow*)adwAboutWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_about_window_get_type();
	}

	/**
	 * Creates a new `AdwAboutWindow`.
	 *
	 * Returns: the newly created `AdwAboutWindow`
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_about_window_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwAboutWindow*) __p);
	}

	/**
	 * Adds a section to the Acknowledgements page.
	 *
	 * This can be used to acknowledge additional people and organizations for their
	 * non-development contributions - for example, backers in a crowdfunded
	 * project.
	 *
	 * Each name may contain email addresses and URLs, see the introduction for more
	 * details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:developers]
	 * * [property@AboutWindow:designers]
	 * * [property@AboutWindow:artists]
	 * * [property@AboutWindow:documenters]
	 * * [property@AboutWindow:translator-credits]
	 * * [method@AboutWindow.add_credit_section]
	 *
	 * Params:
	 *     name = the section name
	 *     people = the list of names
	 *
	 * Since: 1.2
	 */
	public void addAcknowledgementSection(string name, string[] people)
	{
		adw_about_window_add_acknowledgement_section(adwAboutWindow, Str.toStringz(name), Str.toStringzArray(people));
	}

	/**
	 * Adds an extra section to the Credits page.
	 *
	 * Extra sections are displayed below the standard categories.
	 *
	 * Each name may contain email addresses and URLs, see the introduction for more
	 * details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:developers]
	 * * [property@AboutWindow:designers]
	 * * [property@AboutWindow:artists]
	 * * [property@AboutWindow:documenters]
	 * * [property@AboutWindow:translator-credits]
	 * * [method@AboutWindow.add_acknowledgement_section]
	 *
	 * Params:
	 *     name = the section name
	 *     people = the list of names
	 *
	 * Since: 1.2
	 */
	public void addCreditSection(string name, string[] people)
	{
		adw_about_window_add_credit_section(adwAboutWindow, Str.toStringz(name), Str.toStringzArray(people));
	}

	/**
	 * Adds an extra section to the Legal page.
	 *
	 * Extra sections will be displayed below the application's own information.
	 *
	 * The parameters @copyright, @license_type and @license will be used to present
	 * the it the same way as [property@AboutWindow:copyright],
	 * [property@AboutWindow:license-type] and [property@AboutWindow:license] are
	 * for the application's own information.
	 *
	 * See those properties for more details.
	 *
	 * This can be useful to attribute the application dependencies or data.
	 *
	 * Examples:
	 *
	 * ```c
	 * adw_about_window_add_legal_section (ADW_ABOUT_WINDOW (about),
	 * _("Copyright and a known license"),
	 * "© 2022 Example",
	 * GTK_LICENSE_LGPL_2_1,
	 * NULL);
	 *
	 * adw_about_window_add_legal_section (ADW_ABOUT_WINDOW (about),
	 * _("Copyright and custom license"),
	 * "© 2022 Example",
	 * GTK_LICENSE_CUSTOM,
	 * "Custom license text");
	 *
	 * adw_about_window_add_legal_section (ADW_ABOUT_WINDOW (about),
	 * _("Copyright only"),
	 * "© 2022 Example",
	 * GTK_LICENSE_UNKNOWN,
	 * NULL);
	 *
	 * adw_about_window_add_legal_section (ADW_ABOUT_WINDOW (about),
	 * _("Custom license only"),
	 * NULL,
	 * GTK_LICENSE_CUSTOM,
	 * "Something completely custom here.");
	 * ```
	 *
	 * Params:
	 *     title = the name of the section
	 *     copyright = a copyright string
	 *     licenseType = the type of license
	 *     license = custom license information
	 *
	 * Since: 1.2
	 */
	public void addLegalSection(string title, string copyright, GtkLicense licenseType, string license)
	{
		adw_about_window_add_legal_section(adwAboutWindow, Str.toStringz(title), Str.toStringz(copyright), licenseType, Str.toStringz(license));
	}

	/**
	 * Adds an extra link to the Details page.
	 *
	 * Extra links are displayed under the comment and website.
	 *
	 * Underlines in @title will be interpreted as indicating a mnemonic.
	 *
	 * See [property@AboutWindow:website].
	 *
	 * Params:
	 *     title = the link title
	 *     url = the link URL
	 *
	 * Since: 1.2
	 */
	public void addLink(string title, string url)
	{
		adw_about_window_add_link(adwAboutWindow, Str.toStringz(title), Str.toStringz(url));
	}

	/**
	 * Gets the name of the application icon for @self.
	 *
	 * Returns: the application icon name
	 *
	 * Since: 1.2
	 */
	public string getApplicationIcon()
	{
		return Str.toString(adw_about_window_get_application_icon(adwAboutWindow));
	}

	/**
	 * Gets the application name for @self.
	 *
	 * Returns: the application name
	 *
	 * Since: 1.2
	 */
	public string getApplicationName()
	{
		return Str.toString(adw_about_window_get_application_name(adwAboutWindow));
	}

	/**
	 * Gets the list of artists of the application.
	 *
	 * Returns: The list of artists
	 *
	 * Since: 1.2
	 */
	public string[] getArtists()
	{
		return Str.toStringArray(adw_about_window_get_artists(adwAboutWindow));
	}

	/**
	 * Gets the comments about the application.
	 *
	 * Returns: the comments
	 *
	 * Since: 1.2
	 */
	public string getComments()
	{
		return Str.toString(adw_about_window_get_comments(adwAboutWindow));
	}

	/**
	 * Gets the copyright information for @self.
	 *
	 * Returns: the copyright information
	 *
	 * Since: 1.2
	 */
	public string getCopyright()
	{
		return Str.toString(adw_about_window_get_copyright(adwAboutWindow));
	}

	/**
	 * Gets the debug information for @self.
	 *
	 * Returns: the debug information
	 *
	 * Since: 1.2
	 */
	public string getDebugInfo()
	{
		return Str.toString(adw_about_window_get_debug_info(adwAboutWindow));
	}

	/**
	 * Gets the debug information filename for @self.
	 *
	 * Returns: the debug information filename
	 *
	 * Since: 1.2
	 */
	public string getDebugInfoFilename()
	{
		return Str.toString(adw_about_window_get_debug_info_filename(adwAboutWindow));
	}

	/**
	 * Gets the list of designers of the application.
	 *
	 * Returns: The list of designers
	 *
	 * Since: 1.2
	 */
	public string[] getDesigners()
	{
		return Str.toStringArray(adw_about_window_get_designers(adwAboutWindow));
	}

	/**
	 * Gets the developer name for @self.
	 *
	 * Returns: the developer_name
	 *
	 * Since: 1.2
	 */
	public string getDeveloperName()
	{
		return Str.toString(adw_about_window_get_developer_name(adwAboutWindow));
	}

	/**
	 * Gets the list of developers of the application.
	 *
	 * Returns: The list of developers
	 *
	 * Since: 1.2
	 */
	public string[] getDevelopers()
	{
		return Str.toStringArray(adw_about_window_get_developers(adwAboutWindow));
	}

	/**
	 * Gets the list of documenters of the application.
	 *
	 * Returns: The list of documenters
	 *
	 * Since: 1.2
	 */
	public string[] getDocumenters()
	{
		return Str.toStringArray(adw_about_window_get_documenters(adwAboutWindow));
	}

	/**
	 * Gets the issue tracker URL for @self.
	 *
	 * Returns: the issue tracker URL
	 *
	 * Since: 1.2
	 */
	public string getIssueUrl()
	{
		return Str.toString(adw_about_window_get_issue_url(adwAboutWindow));
	}

	/**
	 * Gets the license for @self.
	 *
	 * Returns: the license
	 *
	 * Since: 1.2
	 */
	public string getLicense()
	{
		return Str.toString(adw_about_window_get_license(adwAboutWindow));
	}

	/**
	 * Gets the license type for @self.
	 *
	 * Returns: the license type
	 *
	 * Since: 1.2
	 */
	public GtkLicense getLicenseType()
	{
		return adw_about_window_get_license_type(adwAboutWindow);
	}

	/**
	 * Gets the release notes for @self.
	 *
	 * Returns: the release notes
	 *
	 * Since: 1.2
	 */
	public string getReleaseNotes()
	{
		return Str.toString(adw_about_window_get_release_notes(adwAboutWindow));
	}

	/**
	 * Gets the version described by the application's release notes.
	 *
	 * Returns: the release notes version
	 *
	 * Since: 1.2
	 */
	public string getReleaseNotesVersion()
	{
		return Str.toString(adw_about_window_get_release_notes_version(adwAboutWindow));
	}

	/**
	 * Gets the URL of the support page for @self.
	 *
	 * Returns: the support page URL
	 *
	 * Since: 1.2
	 */
	public string getSupportUrl()
	{
		return Str.toString(adw_about_window_get_support_url(adwAboutWindow));
	}

	/**
	 * Gets the translator credits string.
	 *
	 * Returns: The translator credits string
	 *
	 * Since: 1.2
	 */
	public string getTranslatorCredits()
	{
		return Str.toString(adw_about_window_get_translator_credits(adwAboutWindow));
	}

	/**
	 * Gets the version for @self.
	 *
	 * Returns: the version
	 *
	 * Since: 1.2
	 */
	public string getVersion()
	{
		return Str.toString(adw_about_window_get_version(adwAboutWindow));
	}

	/**
	 * Gets the application website URL for @self.
	 *
	 * Returns: the website URL
	 *
	 * Since: 1.2
	 */
	public string getWebsite()
	{
		return Str.toString(adw_about_window_get_website(adwAboutWindow));
	}

	/**
	 * Sets the name of the application icon for @self.
	 *
	 * The icon is displayed at the top of the main page.
	 *
	 * Params:
	 *     applicationIcon = the application icon name
	 *
	 * Since: 1.2
	 */
	public void setApplicationIcon(string applicationIcon)
	{
		adw_about_window_set_application_icon(adwAboutWindow, Str.toStringz(applicationIcon));
	}

	/**
	 * Sets the application name for @self.
	 *
	 * The name is displayed at the top of the main page.
	 *
	 * Params:
	 *     applicationName = the application name
	 *
	 * Since: 1.2
	 */
	public void setApplicationName(string applicationName)
	{
		adw_about_window_set_application_name(adwAboutWindow, Str.toStringz(applicationName));
	}

	/**
	 * Sets the list of artists of the application.
	 *
	 * It will be displayed on the Credits page.
	 *
	 * Each name may contain email addresses and URLs, see the introduction for more
	 * details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:developers]
	 * * [property@AboutWindow:designers]
	 * * [property@AboutWindow:documenters]
	 * * [property@AboutWindow:translator-credits]
	 * * [method@AboutWindow.add_credit_section]
	 * * [method@AboutWindow.add_acknowledgement_section]
	 *
	 * Params:
	 *     artists = the list of artists
	 *
	 * Since: 1.2
	 */
	public void setArtists(string[] artists)
	{
		adw_about_window_set_artists(adwAboutWindow, Str.toStringzArray(artists));
	}

	/**
	 * Sets the comments about the application.
	 *
	 * Comments will be shown on the Details page, above links.
	 *
	 * Unlike [property@Gtk.AboutDialog:comments], this string can be long and
	 * detailed. It can also contain links and Pango markup.
	 *
	 * Params:
	 *     comments = the comments
	 *
	 * Since: 1.2
	 */
	public void setComments(string comments)
	{
		adw_about_window_set_comments(adwAboutWindow, Str.toStringz(comments));
	}

	/**
	 * Sets the copyright information for @self.
	 *
	 * This should be a short string of one or two lines, for example:
	 * `© 2022 Example`.
	 *
	 * The copyright information will be displayed on the Legal page, before the
	 * application license.
	 *
	 * [method@AboutWindow.add_legal_section] can be used to add copyright
	 * information for the application dependencies or other components.
	 *
	 * Params:
	 *     copyright = the copyright information
	 *
	 * Since: 1.2
	 */
	public void setCopyright(string copyright)
	{
		adw_about_window_set_copyright(adwAboutWindow, Str.toStringz(copyright));
	}

	/**
	 * Sets the debug information for @self.
	 *
	 * Debug information will be shown on the Troubleshooting page. It's intended
	 * to be attached to issue reports when reporting issues against the
	 * application.
	 *
	 * `AdwAboutWindow` provides a quick way to save debug information to a file.
	 * When saving, [property@AboutWindow:debug-info-filename] would be used as
	 * the suggested filename.
	 *
	 * Debug information cannot contain markup or links.
	 *
	 * Params:
	 *     debugInfo = the debug information
	 *
	 * Since: 1.2
	 */
	public void setDebugInfo(string debugInfo)
	{
		adw_about_window_set_debug_info(adwAboutWindow, Str.toStringz(debugInfo));
	}

	/**
	 * Sets the debug information filename for @self.
	 *
	 * It will be used as the suggested filename when saving debug information to a
	 * file.
	 *
	 * See [property@AboutWindow:debug-info].
	 *
	 * Params:
	 *     filename = the debug info filename
	 *
	 * Since: 1.2
	 */
	public void setDebugInfoFilename(string filename)
	{
		adw_about_window_set_debug_info_filename(adwAboutWindow, Str.toStringz(filename));
	}

	/**
	 * Sets the list of designers of the application.
	 *
	 * It will be displayed on the Credits page.
	 *
	 * Each name may contain email addresses and URLs, see the introduction for more
	 * details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:developers]
	 * * [property@AboutWindow:artists]
	 * * [property@AboutWindow:documenters]
	 * * [property@AboutWindow:translator-credits]
	 * * [method@AboutWindow.add_credit_section]
	 * * [method@AboutWindow.add_acknowledgement_section]
	 *
	 * Params:
	 *     designers = the list of designers
	 *
	 * Since: 1.2
	 */
	public void setDesigners(string[] designers)
	{
		adw_about_window_set_designers(adwAboutWindow, Str.toStringzArray(designers));
	}

	/**
	 * Sets the developer name for @self.
	 *
	 * The developer name is displayed on the main page, under the application name.
	 *
	 * If the application is developed by multiple people, the developer name can be
	 * set to values like "AppName team", "AppName developers" or
	 * "The AppName project", and the individual contributors can be listed on the
	 * Credits page, with [property@AboutWindow:developers] and related properties.
	 *
	 * Params:
	 *     developerName = the developer name
	 *
	 * Since: 1.2
	 */
	public void setDeveloperName(string developerName)
	{
		adw_about_window_set_developer_name(adwAboutWindow, Str.toStringz(developerName));
	}

	/**
	 * Sets the list of developers of the application.
	 *
	 * It will be displayed on the Credits page.
	 *
	 * Each name may contain email addresses and URLs, see the introduction for more
	 * details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:designers]
	 * * [property@AboutWindow:artists]
	 * * [property@AboutWindow:documenters]
	 * * [property@AboutWindow:translator-credits]
	 * * [method@AboutWindow.add_credit_section]
	 * * [method@AboutWindow.add_acknowledgement_section]
	 *
	 * Params:
	 *     developers = the list of developers
	 *
	 * Since: 1.2
	 */
	public void setDevelopers(string[] developers)
	{
		adw_about_window_set_developers(adwAboutWindow, Str.toStringzArray(developers));
	}

	/**
	 * Sets the list of documenters of the application.
	 *
	 * It will be displayed on the Credits page.
	 *
	 * Each name may contain email addresses and URLs, see the introduction for more
	 * details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:developers]
	 * * [property@AboutWindow:designers]
	 * * [property@AboutWindow:artists]
	 * * [property@AboutWindow:translator-credits]
	 * * [method@AboutWindow.add_credit_section]
	 * * [method@AboutWindow.add_acknowledgement_section]
	 *
	 * Params:
	 *     documenters = the list of documenters
	 *
	 * Since: 1.2
	 */
	public void setDocumenters(string[] documenters)
	{
		adw_about_window_set_documenters(adwAboutWindow, Str.toStringzArray(documenters));
	}

	/**
	 * Sets the issue tracker URL for @self.
	 *
	 * The issue tracker link is displayed on the main page.
	 *
	 * Params:
	 *     issueUrl = the issue tracker URL
	 *
	 * Since: 1.2
	 */
	public void setIssueUrl(string issueUrl)
	{
		adw_about_window_set_issue_url(adwAboutWindow, Str.toStringz(issueUrl));
	}

	/**
	 * Sets the license for @self.
	 *
	 * This can be used to set a custom text for the license if it can't be set via
	 * [property@AboutWindow:license-type].
	 *
	 * When set, [property@AboutWindow:license-type] will be set to
	 * `GTK_LICENSE_CUSTOM`.
	 *
	 * The license text will be displayed on the Legal page, below the copyright
	 * information.
	 *
	 * License text can contain Pango markup and links.
	 *
	 * [method@AboutWindow.add_legal_section] can be used to add license information
	 * for the application dependencies or other components.
	 *
	 * Params:
	 *     license = the license
	 *
	 * Since: 1.2
	 */
	public void setLicense(string license)
	{
		adw_about_window_set_license(adwAboutWindow, Str.toStringz(license));
	}

	/**
	 * Sets the license for @self from a list of known licenses.
	 *
	 * If the application's license is not in the list,
	 * [property@AboutWindow:license] can be used instead. The license type will be
	 * automatically set to `GTK_LICENSE_CUSTOM` in that case.
	 *
	 * If @license_type is `GTK_LICENSE_UNKNOWN`, no information will be displayed.
	 *
	 * If @license_type is different from `GTK_LICENSE_CUSTOM`.
	 * [property@AboutWindow:license] will be cleared out.
	 *
	 * The license description will be displayed on the Legal page, below the
	 * copyright information.
	 *
	 * [method@AboutWindow.add_legal_section] can be used to add license information
	 * for the application dependencies or other components.
	 *
	 * Params:
	 *     licenseType = the license type
	 *
	 * Since: 1.2
	 */
	public void setLicenseType(GtkLicense licenseType)
	{
		adw_about_window_set_license_type(adwAboutWindow, licenseType);
	}

	/**
	 * Sets the release notes for @self.
	 *
	 * Release notes are displayed on the the What's New page.
	 *
	 * Release notes are formatted the same way as
	 * [AppStream descriptions](https://freedesktop.org/software/appstream/docs/chap-Metadata.html#tag-description).
	 *
	 * The supported formatting options are:
	 *
	 * * Paragraph (`<p>`)
	 * * Ordered list (`<ol>`), with list items (`<li>`)
	 * * Unordered list (`<ul>`), with list items (`<li>`)
	 *
	 * Within paragraphs and list items, emphasis (`<em>`) and inline code
	 * (`<code>`) text styles are supported. The emphasis is rendered in italic,
	 * while inline code is shown in a monospaced font.
	 *
	 * Any text outside paragraphs or list items is ignored.
	 *
	 * Nested lists are not supported.
	 *
	 * `AdwAboutWindow` displays the version above the release notes. If set, the
	 * [property@AboutWindow:release-notes-version] of the property will be used
	 * as the version; otherwise, [property@AboutWindow:version] is used.
	 *
	 * Params:
	 *     releaseNotes = the release notes
	 *
	 * Since: 1.2
	 */
	public void setReleaseNotes(string releaseNotes)
	{
		adw_about_window_set_release_notes(adwAboutWindow, Str.toStringz(releaseNotes));
	}

	/**
	 * Sets the version described by the application's release notes.
	 *
	 * The release notes version is displayed on the What's New page, above the
	 * release notes.
	 *
	 * If not set, [property@AboutWindow:version] will be used instead.
	 *
	 * For example, an application with the current version 2.0.2 might want to
	 * keep the release notes from 2.0.0, and set the release notes version
	 * accordingly.
	 *
	 * See [property@AboutWindow:release-notes].
	 *
	 * Params:
	 *     version_ = the release notes version
	 *
	 * Since: 1.2
	 */
	public void setReleaseNotesVersion(string version_)
	{
		adw_about_window_set_release_notes_version(adwAboutWindow, Str.toStringz(version_));
	}

	/**
	 * Sets the URL of the support page for @self.
	 *
	 * The support page link is displayed on the main page.
	 *
	 * Params:
	 *     supportUrl = the support page URL
	 *
	 * Since: 1.2
	 */
	public void setSupportUrl(string supportUrl)
	{
		adw_about_window_set_support_url(adwAboutWindow, Str.toStringz(supportUrl));
	}

	/**
	 * Sets the translator credits string.
	 *
	 * It will be displayed on the Credits page.
	 *
	 * This string should be `"translator-credits"` or `"translator_credits"` and
	 * should be marked as translatable.
	 *
	 * The string may contain email addresses and URLs, see the introduction for
	 * more details.
	 *
	 * See also:
	 *
	 * * [property@AboutWindow:developers]
	 * * [property@AboutWindow:designers]
	 * * [property@AboutWindow:artists]
	 * * [property@AboutWindow:documenters]
	 * * [method@AboutWindow.add_credit_section]
	 * * [method@AboutWindow.add_acknowledgement_section]
	 *
	 * Params:
	 *     translatorCredits = the translator credits
	 *
	 * Since: 1.2
	 */
	public void setTranslatorCredits(string translatorCredits)
	{
		adw_about_window_set_translator_credits(adwAboutWindow, Str.toStringz(translatorCredits));
	}

	/**
	 * Sets the version for @self.
	 *
	 * The version is displayed on the main page.
	 *
	 * If [property@AboutWindow:release-notes-version] is not set, the version will
	 * also be displayed above the release notes on the What's New page.
	 *
	 * Params:
	 *     version_ = the version
	 *
	 * Since: 1.2
	 */
	public void setVersion(string version_)
	{
		adw_about_window_set_version(adwAboutWindow, Str.toStringz(version_));
	}

	/**
	 * Sets the application website URL for @self.
	 *
	 * Website is displayed on the Details page, below comments, or on the main page
	 * if the Details page doesn't have any other content.
	 *
	 * Applications can add other links below, see [method@AboutWindow.add_link].
	 *
	 * Params:
	 *     website = the website URL
	 *
	 * Since: 1.2
	 */
	public void setWebsite(string website)
	{
		adw_about_window_set_website(adwAboutWindow, Str.toStringz(website));
	}

	/**
	 * Emitted when a URL is activated.
	 *
	 * Applications may connect to it to override the default behavior, which is
	 * to call [func@Gtk.show_uri].
	 *
	 * Params:
	 *     uri = the URI to activate
	 *
	 * Returns: `TRUE` if the link has been activated
	 *
	 * Since: 1.2
	 */
	gulong addOnActivateLink(bool delegate(string, AboutWindow) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
