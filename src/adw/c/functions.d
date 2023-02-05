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


module adw.c.functions;

import std.stdio;
import adw.c.types;
version (Windows)
	static immutable LIBRARY_ADW = ["libadwaita-1-0.dll;adwaita-1-1.0.dll;adwaita-1.dll"];
else version (OSX)
	static immutable LIBRARY_ADW = ["libadwaita-1.0.dylib"];
else
	static immutable LIBRARY_ADW = ["libadwaita-1.so.0"];

__gshared extern(C)
{

	// adw.AboutWindow

	GType adw_about_window_get_type();
	GtkWidget* adw_about_window_new();
	void adw_about_window_add_acknowledgement_section(AdwAboutWindow* self, const(char)* name, char** people);
	void adw_about_window_add_credit_section(AdwAboutWindow* self, const(char)* name, char** people);
	void adw_about_window_add_legal_section(AdwAboutWindow* self, const(char)* title, const(char)* copyright, GtkLicense licenseType, const(char)* license);
	void adw_about_window_add_link(AdwAboutWindow* self, const(char)* title, const(char)* url);
	const(char)* adw_about_window_get_application_icon(AdwAboutWindow* self);
	const(char)* adw_about_window_get_application_name(AdwAboutWindow* self);
	char** adw_about_window_get_artists(AdwAboutWindow* self);
	const(char)* adw_about_window_get_comments(AdwAboutWindow* self);
	const(char)* adw_about_window_get_copyright(AdwAboutWindow* self);
	const(char)* adw_about_window_get_debug_info(AdwAboutWindow* self);
	const(char)* adw_about_window_get_debug_info_filename(AdwAboutWindow* self);
	char** adw_about_window_get_designers(AdwAboutWindow* self);
	const(char)* adw_about_window_get_developer_name(AdwAboutWindow* self);
	char** adw_about_window_get_developers(AdwAboutWindow* self);
	char** adw_about_window_get_documenters(AdwAboutWindow* self);
	const(char)* adw_about_window_get_issue_url(AdwAboutWindow* self);
	const(char)* adw_about_window_get_license(AdwAboutWindow* self);
	GtkLicense adw_about_window_get_license_type(AdwAboutWindow* self);
	const(char)* adw_about_window_get_release_notes(AdwAboutWindow* self);
	const(char)* adw_about_window_get_release_notes_version(AdwAboutWindow* self);
	const(char)* adw_about_window_get_support_url(AdwAboutWindow* self);
	const(char)* adw_about_window_get_translator_credits(AdwAboutWindow* self);
	const(char)* adw_about_window_get_version(AdwAboutWindow* self);
	const(char)* adw_about_window_get_website(AdwAboutWindow* self);
	void adw_about_window_set_application_icon(AdwAboutWindow* self, const(char)* applicationIcon);
	void adw_about_window_set_application_name(AdwAboutWindow* self, const(char)* applicationName);
	void adw_about_window_set_artists(AdwAboutWindow* self, char** artists);
	void adw_about_window_set_comments(AdwAboutWindow* self, const(char)* comments);
	void adw_about_window_set_copyright(AdwAboutWindow* self, const(char)* copyright);
	void adw_about_window_set_debug_info(AdwAboutWindow* self, const(char)* debugInfo);
	void adw_about_window_set_debug_info_filename(AdwAboutWindow* self, const(char)* filename);
	void adw_about_window_set_designers(AdwAboutWindow* self, char** designers);
	void adw_about_window_set_developer_name(AdwAboutWindow* self, const(char)* developerName);
	void adw_about_window_set_developers(AdwAboutWindow* self, char** developers);
	void adw_about_window_set_documenters(AdwAboutWindow* self, char** documenters);
	void adw_about_window_set_issue_url(AdwAboutWindow* self, const(char)* issueUrl);
	void adw_about_window_set_license(AdwAboutWindow* self, const(char)* license);
	void adw_about_window_set_license_type(AdwAboutWindow* self, GtkLicense licenseType);
	void adw_about_window_set_release_notes(AdwAboutWindow* self, const(char)* releaseNotes);
	void adw_about_window_set_release_notes_version(AdwAboutWindow* self, const(char)* version_);
	void adw_about_window_set_support_url(AdwAboutWindow* self, const(char)* supportUrl);
	void adw_about_window_set_translator_credits(AdwAboutWindow* self, const(char)* translatorCredits);
	void adw_about_window_set_version(AdwAboutWindow* self, const(char)* version_);
	void adw_about_window_set_website(AdwAboutWindow* self, const(char)* website);

	// adw.ActionRow

	GType adw_action_row_get_type();
	GtkWidget* adw_action_row_new();
	void adw_action_row_activate(AdwActionRow* self);
	void adw_action_row_add_prefix(AdwActionRow* self, GtkWidget* widget);
	void adw_action_row_add_suffix(AdwActionRow* self, GtkWidget* widget);
	GtkWidget* adw_action_row_get_activatable_widget(AdwActionRow* self);
	const(char)* adw_action_row_get_icon_name(AdwActionRow* self);
	const(char)* adw_action_row_get_subtitle(AdwActionRow* self);
	int adw_action_row_get_subtitle_lines(AdwActionRow* self);
	int adw_action_row_get_title_lines(AdwActionRow* self);
	void adw_action_row_remove(AdwActionRow* self, GtkWidget* widget);
	void adw_action_row_set_activatable_widget(AdwActionRow* self, GtkWidget* widget);
	void adw_action_row_set_icon_name(AdwActionRow* self, const(char)* iconName);
	void adw_action_row_set_subtitle(AdwActionRow* self, const(char)* subtitle);
	void adw_action_row_set_subtitle_lines(AdwActionRow* self, int subtitleLines);
	void adw_action_row_set_title_lines(AdwActionRow* self, int titleLines);

	// adw.Animation

	GType adw_animation_get_type();
	AdwAnimationState adw_animation_get_state(AdwAnimation* self);
	AdwAnimationTarget* adw_animation_get_target(AdwAnimation* self);
	double adw_animation_get_value(AdwAnimation* self);
	GtkWidget* adw_animation_get_widget(AdwAnimation* self);
	void adw_animation_pause(AdwAnimation* self);
	void adw_animation_play(AdwAnimation* self);
	void adw_animation_reset(AdwAnimation* self);
	void adw_animation_resume(AdwAnimation* self);
	void adw_animation_set_target(AdwAnimation* self, AdwAnimationTarget* target);
	void adw_animation_skip(AdwAnimation* self);

	// adw.AnimationTarget

	GType adw_animation_target_get_type();

	// adw.Application

	GType adw_application_get_type();
	AdwApplication* adw_application_new(const(char)* applicationId, GApplicationFlags flags);
	AdwStyleManager* adw_application_get_style_manager(AdwApplication* self);

	// adw.ApplicationWindow

	GType adw_application_window_get_type();
	GtkWidget* adw_application_window_new(GtkApplication* app);
	GtkWidget* adw_application_window_get_content(AdwApplicationWindow* self);
	void adw_application_window_set_content(AdwApplicationWindow* self, GtkWidget* content);

	// adw.Avatar

	GType adw_avatar_get_type();
	GtkWidget* adw_avatar_new(int size, const(char)* text, int showInitials);
	GdkTexture* adw_avatar_draw_to_texture(AdwAvatar* self, int scaleFactor);
	GdkPaintable* adw_avatar_get_custom_image(AdwAvatar* self);
	const(char)* adw_avatar_get_icon_name(AdwAvatar* self);
	int adw_avatar_get_show_initials(AdwAvatar* self);
	int adw_avatar_get_size(AdwAvatar* self);
	const(char)* adw_avatar_get_text(AdwAvatar* self);
	void adw_avatar_set_custom_image(AdwAvatar* self, GdkPaintable* customImage);
	void adw_avatar_set_icon_name(AdwAvatar* self, const(char)* iconName);
	void adw_avatar_set_show_initials(AdwAvatar* self, int showInitials);
	void adw_avatar_set_size(AdwAvatar* self, int size);
	void adw_avatar_set_text(AdwAvatar* self, const(char)* text);

	// adw.Bin

	GType adw_bin_get_type();
	GtkWidget* adw_bin_new();
	GtkWidget* adw_bin_get_child(AdwBin* self);
	void adw_bin_set_child(AdwBin* self, GtkWidget* child);

	// adw.ButtonContent

	GType adw_button_content_get_type();
	GtkWidget* adw_button_content_new();
	const(char)* adw_button_content_get_icon_name(AdwButtonContent* self);
	const(char)* adw_button_content_get_label(AdwButtonContent* self);
	int adw_button_content_get_use_underline(AdwButtonContent* self);
	void adw_button_content_set_icon_name(AdwButtonContent* self, const(char)* iconName);
	void adw_button_content_set_label(AdwButtonContent* self, const(char)* label);
	void adw_button_content_set_use_underline(AdwButtonContent* self, int useUnderline);

	// adw.CallbackAnimationTarget

	GType adw_callback_animation_target_get_type();
	AdwAnimationTarget* adw_callback_animation_target_new(AdwAnimationTargetFunc callback, void* userData, GDestroyNotify destroy);

	// adw.Carousel

	GType adw_carousel_get_type();
	GtkWidget* adw_carousel_new();
	void adw_carousel_append(AdwCarousel* self, GtkWidget* child);
	int adw_carousel_get_allow_long_swipes(AdwCarousel* self);
	int adw_carousel_get_allow_mouse_drag(AdwCarousel* self);
	int adw_carousel_get_allow_scroll_wheel(AdwCarousel* self);
	int adw_carousel_get_interactive(AdwCarousel* self);
	uint adw_carousel_get_n_pages(AdwCarousel* self);
	GtkWidget* adw_carousel_get_nth_page(AdwCarousel* self, uint n);
	double adw_carousel_get_position(AdwCarousel* self);
	uint adw_carousel_get_reveal_duration(AdwCarousel* self);
	AdwSpringParams* adw_carousel_get_scroll_params(AdwCarousel* self);
	uint adw_carousel_get_spacing(AdwCarousel* self);
	void adw_carousel_insert(AdwCarousel* self, GtkWidget* child, int position);
	void adw_carousel_prepend(AdwCarousel* self, GtkWidget* child);
	void adw_carousel_remove(AdwCarousel* self, GtkWidget* child);
	void adw_carousel_reorder(AdwCarousel* self, GtkWidget* child, int position);
	void adw_carousel_scroll_to(AdwCarousel* self, GtkWidget* widget, int animate);
	void adw_carousel_set_allow_long_swipes(AdwCarousel* self, int allowLongSwipes);
	void adw_carousel_set_allow_mouse_drag(AdwCarousel* self, int allowMouseDrag);
	void adw_carousel_set_allow_scroll_wheel(AdwCarousel* self, int allowScrollWheel);
	void adw_carousel_set_interactive(AdwCarousel* self, int interactive);
	void adw_carousel_set_reveal_duration(AdwCarousel* self, uint revealDuration);
	void adw_carousel_set_scroll_params(AdwCarousel* self, AdwSpringParams* params);
	void adw_carousel_set_spacing(AdwCarousel* self, uint spacing);

	// adw.CarouselIndicatorDots

	GType adw_carousel_indicator_dots_get_type();
	GtkWidget* adw_carousel_indicator_dots_new();
	AdwCarousel* adw_carousel_indicator_dots_get_carousel(AdwCarouselIndicatorDots* self);
	void adw_carousel_indicator_dots_set_carousel(AdwCarouselIndicatorDots* self, AdwCarousel* carousel);

	// adw.CarouselIndicatorLines

	GType adw_carousel_indicator_lines_get_type();
	GtkWidget* adw_carousel_indicator_lines_new();
	AdwCarousel* adw_carousel_indicator_lines_get_carousel(AdwCarouselIndicatorLines* self);
	void adw_carousel_indicator_lines_set_carousel(AdwCarouselIndicatorLines* self, AdwCarousel* carousel);

	// adw.Clamp

	GType adw_clamp_get_type();
	GtkWidget* adw_clamp_new();
	GtkWidget* adw_clamp_get_child(AdwClamp* self);
	int adw_clamp_get_maximum_size(AdwClamp* self);
	int adw_clamp_get_tightening_threshold(AdwClamp* self);
	void adw_clamp_set_child(AdwClamp* self, GtkWidget* child);
	void adw_clamp_set_maximum_size(AdwClamp* self, int maximumSize);
	void adw_clamp_set_tightening_threshold(AdwClamp* self, int tighteningThreshold);

	// adw.ClampLayout

	GType adw_clamp_layout_get_type();
	GtkLayoutManager* adw_clamp_layout_new();
	int adw_clamp_layout_get_maximum_size(AdwClampLayout* self);
	int adw_clamp_layout_get_tightening_threshold(AdwClampLayout* self);
	void adw_clamp_layout_set_maximum_size(AdwClampLayout* self, int maximumSize);
	void adw_clamp_layout_set_tightening_threshold(AdwClampLayout* self, int tighteningThreshold);

	// adw.ClampScrollable

	GType adw_clamp_scrollable_get_type();
	GtkWidget* adw_clamp_scrollable_new();
	GtkWidget* adw_clamp_scrollable_get_child(AdwClampScrollable* self);
	int adw_clamp_scrollable_get_maximum_size(AdwClampScrollable* self);
	int adw_clamp_scrollable_get_tightening_threshold(AdwClampScrollable* self);
	void adw_clamp_scrollable_set_child(AdwClampScrollable* self, GtkWidget* child);
	void adw_clamp_scrollable_set_maximum_size(AdwClampScrollable* self, int maximumSize);
	void adw_clamp_scrollable_set_tightening_threshold(AdwClampScrollable* self, int tighteningThreshold);

	// adw.ComboRow

	GType adw_combo_row_get_type();
	GtkWidget* adw_combo_row_new();
	GtkExpression* adw_combo_row_get_expression(AdwComboRow* self);
	GtkListItemFactory* adw_combo_row_get_factory(AdwComboRow* self);
	GtkListItemFactory* adw_combo_row_get_list_factory(AdwComboRow* self);
	GListModel* adw_combo_row_get_model(AdwComboRow* self);
	uint adw_combo_row_get_selected(AdwComboRow* self);
	void* adw_combo_row_get_selected_item(AdwComboRow* self);
	int adw_combo_row_get_use_subtitle(AdwComboRow* self);
	void adw_combo_row_set_expression(AdwComboRow* self, GtkExpression* expression);
	void adw_combo_row_set_factory(AdwComboRow* self, GtkListItemFactory* factory);
	void adw_combo_row_set_list_factory(AdwComboRow* self, GtkListItemFactory* factory);
	void adw_combo_row_set_model(AdwComboRow* self, GListModel* model);
	void adw_combo_row_set_selected(AdwComboRow* self, uint position);
	void adw_combo_row_set_use_subtitle(AdwComboRow* self, int useSubtitle);

	// adw.EntryRow

	GType adw_entry_row_get_type();
	GtkWidget* adw_entry_row_new();
	void adw_entry_row_add_prefix(AdwEntryRow* self, GtkWidget* widget);
	void adw_entry_row_add_suffix(AdwEntryRow* self, GtkWidget* widget);
	int adw_entry_row_get_activates_default(AdwEntryRow* self);
	PangoAttrList* adw_entry_row_get_attributes(AdwEntryRow* self);
	int adw_entry_row_get_enable_emoji_completion(AdwEntryRow* self);
	GtkInputHints adw_entry_row_get_input_hints(AdwEntryRow* self);
	GtkInputPurpose adw_entry_row_get_input_purpose(AdwEntryRow* self);
	int adw_entry_row_get_show_apply_button(AdwEntryRow* self);
	void adw_entry_row_remove(AdwEntryRow* self, GtkWidget* widget);
	void adw_entry_row_set_activates_default(AdwEntryRow* self, int activates);
	void adw_entry_row_set_attributes(AdwEntryRow* self, PangoAttrList* attributes);
	void adw_entry_row_set_enable_emoji_completion(AdwEntryRow* self, int enableEmojiCompletion);
	void adw_entry_row_set_input_hints(AdwEntryRow* self, GtkInputHints hints);
	void adw_entry_row_set_input_purpose(AdwEntryRow* self, GtkInputPurpose purpose);
	void adw_entry_row_set_show_apply_button(AdwEntryRow* self, int showApplyButton);

	// adw.EnumListItem

	GType adw_enum_list_item_get_type();
	const(char)* adw_enum_list_item_get_name(AdwEnumListItem* self);
	const(char)* adw_enum_list_item_get_nick(AdwEnumListItem* self);
	int adw_enum_list_item_get_value(AdwEnumListItem* self);

	// adw.EnumListModel

	GType adw_enum_list_model_get_type();
	AdwEnumListModel* adw_enum_list_model_new(GType enumType);
	uint adw_enum_list_model_find_position(AdwEnumListModel* self, int value);
	GType adw_enum_list_model_get_enum_type(AdwEnumListModel* self);

	// adw.ExpanderRow

	GType adw_expander_row_get_type();
	GtkWidget* adw_expander_row_new();
	void adw_expander_row_add_action(AdwExpanderRow* self, GtkWidget* widget);
	void adw_expander_row_add_prefix(AdwExpanderRow* self, GtkWidget* widget);
	void adw_expander_row_add_row(AdwExpanderRow* self, GtkWidget* child);
	int adw_expander_row_get_enable_expansion(AdwExpanderRow* self);
	int adw_expander_row_get_expanded(AdwExpanderRow* self);
	const(char)* adw_expander_row_get_icon_name(AdwExpanderRow* self);
	int adw_expander_row_get_show_enable_switch(AdwExpanderRow* self);
	const(char)* adw_expander_row_get_subtitle(AdwExpanderRow* self);
	void adw_expander_row_remove(AdwExpanderRow* self, GtkWidget* child);
	void adw_expander_row_set_enable_expansion(AdwExpanderRow* self, int enableExpansion);
	void adw_expander_row_set_expanded(AdwExpanderRow* self, int expanded);
	void adw_expander_row_set_icon_name(AdwExpanderRow* self, const(char)* iconName);
	void adw_expander_row_set_show_enable_switch(AdwExpanderRow* self, int showEnableSwitch);
	void adw_expander_row_set_subtitle(AdwExpanderRow* self, const(char)* subtitle);

	// adw.Flap

	GType adw_flap_get_type();
	GtkWidget* adw_flap_new();
	GtkWidget* adw_flap_get_content(AdwFlap* self);
	GtkWidget* adw_flap_get_flap(AdwFlap* self);
	GtkPackType adw_flap_get_flap_position(AdwFlap* self);
	uint adw_flap_get_fold_duration(AdwFlap* self);
	AdwFlapFoldPolicy adw_flap_get_fold_policy(AdwFlap* self);
	AdwFoldThresholdPolicy adw_flap_get_fold_threshold_policy(AdwFlap* self);
	int adw_flap_get_folded(AdwFlap* self);
	int adw_flap_get_locked(AdwFlap* self);
	int adw_flap_get_modal(AdwFlap* self);
	int adw_flap_get_reveal_flap(AdwFlap* self);
	AdwSpringParams* adw_flap_get_reveal_params(AdwFlap* self);
	double adw_flap_get_reveal_progress(AdwFlap* self);
	GtkWidget* adw_flap_get_separator(AdwFlap* self);
	int adw_flap_get_swipe_to_close(AdwFlap* self);
	int adw_flap_get_swipe_to_open(AdwFlap* self);
	AdwFlapTransitionType adw_flap_get_transition_type(AdwFlap* self);
	void adw_flap_set_content(AdwFlap* self, GtkWidget* content);
	void adw_flap_set_flap(AdwFlap* self, GtkWidget* flap);
	void adw_flap_set_flap_position(AdwFlap* self, GtkPackType position);
	void adw_flap_set_fold_duration(AdwFlap* self, uint duration);
	void adw_flap_set_fold_policy(AdwFlap* self, AdwFlapFoldPolicy policy);
	void adw_flap_set_fold_threshold_policy(AdwFlap* self, AdwFoldThresholdPolicy policy);
	void adw_flap_set_locked(AdwFlap* self, int locked);
	void adw_flap_set_modal(AdwFlap* self, int modal);
	void adw_flap_set_reveal_flap(AdwFlap* self, int revealFlap);
	void adw_flap_set_reveal_params(AdwFlap* self, AdwSpringParams* params);
	void adw_flap_set_separator(AdwFlap* self, GtkWidget* separator);
	void adw_flap_set_swipe_to_close(AdwFlap* self, int swipeToClose);
	void adw_flap_set_swipe_to_open(AdwFlap* self, int swipeToOpen);
	void adw_flap_set_transition_type(AdwFlap* self, AdwFlapTransitionType transitionType);

	// adw.HeaderBar

	GType adw_header_bar_get_type();
	GtkWidget* adw_header_bar_new();
	AdwCenteringPolicy adw_header_bar_get_centering_policy(AdwHeaderBar* self);
	const(char)* adw_header_bar_get_decoration_layout(AdwHeaderBar* self);
	int adw_header_bar_get_show_end_title_buttons(AdwHeaderBar* self);
	int adw_header_bar_get_show_start_title_buttons(AdwHeaderBar* self);
	GtkWidget* adw_header_bar_get_title_widget(AdwHeaderBar* self);
	void adw_header_bar_pack_end(AdwHeaderBar* self, GtkWidget* child);
	void adw_header_bar_pack_start(AdwHeaderBar* self, GtkWidget* child);
	void adw_header_bar_remove(AdwHeaderBar* self, GtkWidget* child);
	void adw_header_bar_set_centering_policy(AdwHeaderBar* self, AdwCenteringPolicy centeringPolicy);
	void adw_header_bar_set_decoration_layout(AdwHeaderBar* self, const(char)* layout);
	void adw_header_bar_set_show_end_title_buttons(AdwHeaderBar* self, int setting);
	void adw_header_bar_set_show_start_title_buttons(AdwHeaderBar* self, int setting);
	void adw_header_bar_set_title_widget(AdwHeaderBar* self, GtkWidget* titleWidget);

	// adw.Leaflet

	GType adw_leaflet_get_type();
	GtkWidget* adw_leaflet_new();
	AdwLeafletPage* adw_leaflet_append(AdwLeaflet* self, GtkWidget* child);
	GtkWidget* adw_leaflet_get_adjacent_child(AdwLeaflet* self, AdwNavigationDirection direction);
	int adw_leaflet_get_can_navigate_back(AdwLeaflet* self);
	int adw_leaflet_get_can_navigate_forward(AdwLeaflet* self);
	int adw_leaflet_get_can_unfold(AdwLeaflet* self);
	GtkWidget* adw_leaflet_get_child_by_name(AdwLeaflet* self, const(char)* name);
	AdwSpringParams* adw_leaflet_get_child_transition_params(AdwLeaflet* self);
	int adw_leaflet_get_child_transition_running(AdwLeaflet* self);
	AdwFoldThresholdPolicy adw_leaflet_get_fold_threshold_policy(AdwLeaflet* self);
	int adw_leaflet_get_folded(AdwLeaflet* self);
	int adw_leaflet_get_homogeneous(AdwLeaflet* self);
	uint adw_leaflet_get_mode_transition_duration(AdwLeaflet* self);
	AdwLeafletPage* adw_leaflet_get_page(AdwLeaflet* self, GtkWidget* child);
	GtkSelectionModel* adw_leaflet_get_pages(AdwLeaflet* self);
	AdwLeafletTransitionType adw_leaflet_get_transition_type(AdwLeaflet* self);
	GtkWidget* adw_leaflet_get_visible_child(AdwLeaflet* self);
	const(char)* adw_leaflet_get_visible_child_name(AdwLeaflet* self);
	AdwLeafletPage* adw_leaflet_insert_child_after(AdwLeaflet* self, GtkWidget* child, GtkWidget* sibling);
	int adw_leaflet_navigate(AdwLeaflet* self, AdwNavigationDirection direction);
	AdwLeafletPage* adw_leaflet_prepend(AdwLeaflet* self, GtkWidget* child);
	void adw_leaflet_remove(AdwLeaflet* self, GtkWidget* child);
	void adw_leaflet_reorder_child_after(AdwLeaflet* self, GtkWidget* child, GtkWidget* sibling);
	void adw_leaflet_set_can_navigate_back(AdwLeaflet* self, int canNavigateBack);
	void adw_leaflet_set_can_navigate_forward(AdwLeaflet* self, int canNavigateForward);
	void adw_leaflet_set_can_unfold(AdwLeaflet* self, int canUnfold);
	void adw_leaflet_set_child_transition_params(AdwLeaflet* self, AdwSpringParams* params);
	void adw_leaflet_set_fold_threshold_policy(AdwLeaflet* self, AdwFoldThresholdPolicy policy);
	void adw_leaflet_set_homogeneous(AdwLeaflet* self, int homogeneous);
	void adw_leaflet_set_mode_transition_duration(AdwLeaflet* self, uint duration);
	void adw_leaflet_set_transition_type(AdwLeaflet* self, AdwLeafletTransitionType transition);
	void adw_leaflet_set_visible_child(AdwLeaflet* self, GtkWidget* visibleChild);
	void adw_leaflet_set_visible_child_name(AdwLeaflet* self, const(char)* name);

	// adw.LeafletPage

	GType adw_leaflet_page_get_type();
	GtkWidget* adw_leaflet_page_get_child(AdwLeafletPage* self);
	const(char)* adw_leaflet_page_get_name(AdwLeafletPage* self);
	int adw_leaflet_page_get_navigatable(AdwLeafletPage* self);
	void adw_leaflet_page_set_name(AdwLeafletPage* self, const(char)* name);
	void adw_leaflet_page_set_navigatable(AdwLeafletPage* self, int navigatable);

	// adw.MessageDialog

	GType adw_message_dialog_get_type();
	GtkWidget* adw_message_dialog_new(GtkWindow* parent, const(char)* heading, const(char)* body_);
	void adw_message_dialog_add_response(AdwMessageDialog* self, const(char)* id, const(char)* label);
	void adw_message_dialog_add_responses(AdwMessageDialog* self, const(char)* firstId, ... );
	void adw_message_dialog_format_body(AdwMessageDialog* self, const(char)* format, ... );
	void adw_message_dialog_format_body_markup(AdwMessageDialog* self, const(char)* format, ... );
	void adw_message_dialog_format_heading(AdwMessageDialog* self, const(char)* format, ... );
	void adw_message_dialog_format_heading_markup(AdwMessageDialog* self, const(char)* format, ... );
	const(char)* adw_message_dialog_get_body(AdwMessageDialog* self);
	int adw_message_dialog_get_body_use_markup(AdwMessageDialog* self);
	const(char)* adw_message_dialog_get_close_response(AdwMessageDialog* self);
	const(char)* adw_message_dialog_get_default_response(AdwMessageDialog* self);
	GtkWidget* adw_message_dialog_get_extra_child(AdwMessageDialog* self);
	const(char)* adw_message_dialog_get_heading(AdwMessageDialog* self);
	int adw_message_dialog_get_heading_use_markup(AdwMessageDialog* self);
	AdwResponseAppearance adw_message_dialog_get_response_appearance(AdwMessageDialog* self, const(char)* response);
	int adw_message_dialog_get_response_enabled(AdwMessageDialog* self, const(char)* response);
	const(char)* adw_message_dialog_get_response_label(AdwMessageDialog* self, const(char)* response);
	int adw_message_dialog_has_response(AdwMessageDialog* self, const(char)* response);
	void adw_message_dialog_response(AdwMessageDialog* self, const(char)* response);
	void adw_message_dialog_set_body(AdwMessageDialog* self, const(char)* body_);
	void adw_message_dialog_set_body_use_markup(AdwMessageDialog* self, int useMarkup);
	void adw_message_dialog_set_close_response(AdwMessageDialog* self, const(char)* response);
	void adw_message_dialog_set_default_response(AdwMessageDialog* self, const(char)* response);
	void adw_message_dialog_set_extra_child(AdwMessageDialog* self, GtkWidget* child);
	void adw_message_dialog_set_heading(AdwMessageDialog* self, const(char)* heading);
	void adw_message_dialog_set_heading_use_markup(AdwMessageDialog* self, int useMarkup);
	void adw_message_dialog_set_response_appearance(AdwMessageDialog* self, const(char)* response, AdwResponseAppearance appearance);
	void adw_message_dialog_set_response_enabled(AdwMessageDialog* self, const(char)* response, int enabled);
	void adw_message_dialog_set_response_label(AdwMessageDialog* self, const(char)* response, const(char)* label);

	// adw.PasswordEntryRow

	GType adw_password_entry_row_get_type();
	GtkWidget* adw_password_entry_row_new();

	// adw.PreferencesGroup

	GType adw_preferences_group_get_type();
	GtkWidget* adw_preferences_group_new();
	void adw_preferences_group_add(AdwPreferencesGroup* self, GtkWidget* child);
	const(char)* adw_preferences_group_get_description(AdwPreferencesGroup* self);
	GtkWidget* adw_preferences_group_get_header_suffix(AdwPreferencesGroup* self);
	const(char)* adw_preferences_group_get_title(AdwPreferencesGroup* self);
	void adw_preferences_group_remove(AdwPreferencesGroup* self, GtkWidget* child);
	void adw_preferences_group_set_description(AdwPreferencesGroup* self, const(char)* description);
	void adw_preferences_group_set_header_suffix(AdwPreferencesGroup* self, GtkWidget* suffix);
	void adw_preferences_group_set_title(AdwPreferencesGroup* self, const(char)* title);

	// adw.PreferencesPage

	GType adw_preferences_page_get_type();
	GtkWidget* adw_preferences_page_new();
	void adw_preferences_page_add(AdwPreferencesPage* self, AdwPreferencesGroup* group);
	const(char)* adw_preferences_page_get_icon_name(AdwPreferencesPage* self);
	const(char)* adw_preferences_page_get_name(AdwPreferencesPage* self);
	const(char)* adw_preferences_page_get_title(AdwPreferencesPage* self);
	int adw_preferences_page_get_use_underline(AdwPreferencesPage* self);
	void adw_preferences_page_remove(AdwPreferencesPage* self, AdwPreferencesGroup* group);
	void adw_preferences_page_set_icon_name(AdwPreferencesPage* self, const(char)* iconName);
	void adw_preferences_page_set_name(AdwPreferencesPage* self, const(char)* name);
	void adw_preferences_page_set_title(AdwPreferencesPage* self, const(char)* title);
	void adw_preferences_page_set_use_underline(AdwPreferencesPage* self, int useUnderline);

	// adw.PreferencesRow

	GType adw_preferences_row_get_type();
	GtkWidget* adw_preferences_row_new();
	const(char)* adw_preferences_row_get_title(AdwPreferencesRow* self);
	int adw_preferences_row_get_title_selectable(AdwPreferencesRow* self);
	int adw_preferences_row_get_use_markup(AdwPreferencesRow* self);
	int adw_preferences_row_get_use_underline(AdwPreferencesRow* self);
	void adw_preferences_row_set_title(AdwPreferencesRow* self, const(char)* title);
	void adw_preferences_row_set_title_selectable(AdwPreferencesRow* self, int titleSelectable);
	void adw_preferences_row_set_use_markup(AdwPreferencesRow* self, int useMarkup);
	void adw_preferences_row_set_use_underline(AdwPreferencesRow* self, int useUnderline);

	// adw.PreferencesWindow

	GType adw_preferences_window_get_type();
	GtkWidget* adw_preferences_window_new();
	void adw_preferences_window_add(AdwPreferencesWindow* self, AdwPreferencesPage* page);
	void adw_preferences_window_add_toast(AdwPreferencesWindow* self, AdwToast* toast);
	void adw_preferences_window_close_subpage(AdwPreferencesWindow* self);
	int adw_preferences_window_get_can_navigate_back(AdwPreferencesWindow* self);
	int adw_preferences_window_get_search_enabled(AdwPreferencesWindow* self);
	AdwPreferencesPage* adw_preferences_window_get_visible_page(AdwPreferencesWindow* self);
	const(char)* adw_preferences_window_get_visible_page_name(AdwPreferencesWindow* self);
	void adw_preferences_window_present_subpage(AdwPreferencesWindow* self, GtkWidget* subpage);
	void adw_preferences_window_remove(AdwPreferencesWindow* self, AdwPreferencesPage* page);
	void adw_preferences_window_set_can_navigate_back(AdwPreferencesWindow* self, int canNavigateBack);
	void adw_preferences_window_set_search_enabled(AdwPreferencesWindow* self, int searchEnabled);
	void adw_preferences_window_set_visible_page(AdwPreferencesWindow* self, AdwPreferencesPage* page);
	void adw_preferences_window_set_visible_page_name(AdwPreferencesWindow* self, const(char)* name);

	// adw.PropertyAnimationTarget

	GType adw_property_animation_target_get_type();
	AdwAnimationTarget* adw_property_animation_target_new(GObject* object, const(char)* propertyName);
	AdwAnimationTarget* adw_property_animation_target_new_for_pspec(GObject* object, GParamSpec* pspec);
	GObject* adw_property_animation_target_get_object(AdwPropertyAnimationTarget* self);
	GParamSpec* adw_property_animation_target_get_pspec(AdwPropertyAnimationTarget* self);

	// adw.SplitButton

	GType adw_split_button_get_type();
	GtkWidget* adw_split_button_new();
	GtkWidget* adw_split_button_get_child(AdwSplitButton* self);
	GtkArrowType adw_split_button_get_direction(AdwSplitButton* self);
	const(char)* adw_split_button_get_dropdown_tooltip(AdwSplitButton* self);
	const(char)* adw_split_button_get_icon_name(AdwSplitButton* self);
	const(char)* adw_split_button_get_label(AdwSplitButton* self);
	GMenuModel* adw_split_button_get_menu_model(AdwSplitButton* self);
	GtkPopover* adw_split_button_get_popover(AdwSplitButton* self);
	int adw_split_button_get_use_underline(AdwSplitButton* self);
	void adw_split_button_popdown(AdwSplitButton* self);
	void adw_split_button_popup(AdwSplitButton* self);
	void adw_split_button_set_child(AdwSplitButton* self, GtkWidget* child);
	void adw_split_button_set_direction(AdwSplitButton* self, GtkArrowType direction);
	void adw_split_button_set_dropdown_tooltip(AdwSplitButton* self, const(char)* tooltip);
	void adw_split_button_set_icon_name(AdwSplitButton* self, const(char)* iconName);
	void adw_split_button_set_label(AdwSplitButton* self, const(char)* label);
	void adw_split_button_set_menu_model(AdwSplitButton* self, GMenuModel* menuModel);
	void adw_split_button_set_popover(AdwSplitButton* self, GtkPopover* popover);
	void adw_split_button_set_use_underline(AdwSplitButton* self, int useUnderline);

	// adw.SpringAnimation

	GType adw_spring_animation_get_type();
	AdwAnimation* adw_spring_animation_new(GtkWidget* widget, double from, double to, AdwSpringParams* springParams, AdwAnimationTarget* target);
	int adw_spring_animation_get_clamp(AdwSpringAnimation* self);
	double adw_spring_animation_get_epsilon(AdwSpringAnimation* self);
	uint adw_spring_animation_get_estimated_duration(AdwSpringAnimation* self);
	double adw_spring_animation_get_initial_velocity(AdwSpringAnimation* self);
	AdwSpringParams* adw_spring_animation_get_spring_params(AdwSpringAnimation* self);
	double adw_spring_animation_get_value_from(AdwSpringAnimation* self);
	double adw_spring_animation_get_value_to(AdwSpringAnimation* self);
	double adw_spring_animation_get_velocity(AdwSpringAnimation* self);
	void adw_spring_animation_set_clamp(AdwSpringAnimation* self, int clamp);
	void adw_spring_animation_set_epsilon(AdwSpringAnimation* self, double epsilon);
	void adw_spring_animation_set_initial_velocity(AdwSpringAnimation* self, double velocity);
	void adw_spring_animation_set_spring_params(AdwSpringAnimation* self, AdwSpringParams* springParams);
	void adw_spring_animation_set_value_from(AdwSpringAnimation* self, double value);
	void adw_spring_animation_set_value_to(AdwSpringAnimation* self, double value);

	// adw.SpringParams

	GType adw_spring_params_get_type();
	AdwSpringParams* adw_spring_params_new(double dampingRatio, double mass, double stiffness);
	AdwSpringParams* adw_spring_params_new_full(double damping, double mass, double stiffness);
	double adw_spring_params_get_damping(AdwSpringParams* self);
	double adw_spring_params_get_damping_ratio(AdwSpringParams* self);
	double adw_spring_params_get_mass(AdwSpringParams* self);
	double adw_spring_params_get_stiffness(AdwSpringParams* self);
	AdwSpringParams* adw_spring_params_ref(AdwSpringParams* self);
	void adw_spring_params_unref(AdwSpringParams* self);

	// adw.Squeezer

	GType adw_squeezer_get_type();
	GtkWidget* adw_squeezer_new();
	AdwSqueezerPage* adw_squeezer_add(AdwSqueezer* self, GtkWidget* child);
	int adw_squeezer_get_allow_none(AdwSqueezer* self);
	int adw_squeezer_get_homogeneous(AdwSqueezer* self);
	int adw_squeezer_get_interpolate_size(AdwSqueezer* self);
	AdwSqueezerPage* adw_squeezer_get_page(AdwSqueezer* self, GtkWidget* child);
	GtkSelectionModel* adw_squeezer_get_pages(AdwSqueezer* self);
	AdwFoldThresholdPolicy adw_squeezer_get_switch_threshold_policy(AdwSqueezer* self);
	uint adw_squeezer_get_transition_duration(AdwSqueezer* self);
	int adw_squeezer_get_transition_running(AdwSqueezer* self);
	AdwSqueezerTransitionType adw_squeezer_get_transition_type(AdwSqueezer* self);
	GtkWidget* adw_squeezer_get_visible_child(AdwSqueezer* self);
	float adw_squeezer_get_xalign(AdwSqueezer* self);
	float adw_squeezer_get_yalign(AdwSqueezer* self);
	void adw_squeezer_remove(AdwSqueezer* self, GtkWidget* child);
	void adw_squeezer_set_allow_none(AdwSqueezer* self, int allowNone);
	void adw_squeezer_set_homogeneous(AdwSqueezer* self, int homogeneous);
	void adw_squeezer_set_interpolate_size(AdwSqueezer* self, int interpolateSize);
	void adw_squeezer_set_switch_threshold_policy(AdwSqueezer* self, AdwFoldThresholdPolicy policy);
	void adw_squeezer_set_transition_duration(AdwSqueezer* self, uint duration);
	void adw_squeezer_set_transition_type(AdwSqueezer* self, AdwSqueezerTransitionType transition);
	void adw_squeezer_set_xalign(AdwSqueezer* self, float xalign);
	void adw_squeezer_set_yalign(AdwSqueezer* self, float yalign);

	// adw.SqueezerPage

	GType adw_squeezer_page_get_type();
	GtkWidget* adw_squeezer_page_get_child(AdwSqueezerPage* self);
	int adw_squeezer_page_get_enabled(AdwSqueezerPage* self);
	void adw_squeezer_page_set_enabled(AdwSqueezerPage* self, int enabled);

	// adw.StatusPage

	GType adw_status_page_get_type();
	GtkWidget* adw_status_page_new();
	GtkWidget* adw_status_page_get_child(AdwStatusPage* self);
	const(char)* adw_status_page_get_description(AdwStatusPage* self);
	const(char)* adw_status_page_get_icon_name(AdwStatusPage* self);
	GdkPaintable* adw_status_page_get_paintable(AdwStatusPage* self);
	const(char)* adw_status_page_get_title(AdwStatusPage* self);
	void adw_status_page_set_child(AdwStatusPage* self, GtkWidget* child);
	void adw_status_page_set_description(AdwStatusPage* self, const(char)* description);
	void adw_status_page_set_icon_name(AdwStatusPage* self, const(char)* iconName);
	void adw_status_page_set_paintable(AdwStatusPage* self, GdkPaintable* paintable);
	void adw_status_page_set_title(AdwStatusPage* self, const(char)* title);

	// adw.StyleManager

	GType adw_style_manager_get_type();
	AdwStyleManager* adw_style_manager_get_default();
	AdwStyleManager* adw_style_manager_get_for_display(GdkDisplay* display);
	AdwColorScheme adw_style_manager_get_color_scheme(AdwStyleManager* self);
	int adw_style_manager_get_dark(AdwStyleManager* self);
	GdkDisplay* adw_style_manager_get_display(AdwStyleManager* self);
	int adw_style_manager_get_high_contrast(AdwStyleManager* self);
	int adw_style_manager_get_system_supports_color_schemes(AdwStyleManager* self);
	void adw_style_manager_set_color_scheme(AdwStyleManager* self, AdwColorScheme colorScheme);

	// adw.SwipeTracker

	GType adw_swipe_tracker_get_type();
	AdwSwipeTracker* adw_swipe_tracker_new(AdwSwipeable* swipeable);
	int adw_swipe_tracker_get_allow_long_swipes(AdwSwipeTracker* self);
	int adw_swipe_tracker_get_allow_mouse_drag(AdwSwipeTracker* self);
	int adw_swipe_tracker_get_enabled(AdwSwipeTracker* self);
	int adw_swipe_tracker_get_reversed(AdwSwipeTracker* self);
	AdwSwipeable* adw_swipe_tracker_get_swipeable(AdwSwipeTracker* self);
	void adw_swipe_tracker_set_allow_long_swipes(AdwSwipeTracker* self, int allowLongSwipes);
	void adw_swipe_tracker_set_allow_mouse_drag(AdwSwipeTracker* self, int allowMouseDrag);
	void adw_swipe_tracker_set_enabled(AdwSwipeTracker* self, int enabled);
	void adw_swipe_tracker_set_reversed(AdwSwipeTracker* self, int reversed);
	void adw_swipe_tracker_shift_position(AdwSwipeTracker* self, double delta);

	// adw.Swipeable

	GType adw_swipeable_get_type();
	double adw_swipeable_get_cancel_progress(AdwSwipeable* self);
	double adw_swipeable_get_distance(AdwSwipeable* self);
	double adw_swipeable_get_progress(AdwSwipeable* self);
	double* adw_swipeable_get_snap_points(AdwSwipeable* self, int* nSnapPoints);
	void adw_swipeable_get_swipe_area(AdwSwipeable* self, AdwNavigationDirection navigationDirection, int isDrag, GdkRectangle* rect);

	// adw.TabBar

	GType adw_tab_bar_get_type();
	AdwTabBar* adw_tab_bar_new();
	int adw_tab_bar_get_autohide(AdwTabBar* self);
	GtkWidget* adw_tab_bar_get_end_action_widget(AdwTabBar* self);
	int adw_tab_bar_get_expand_tabs(AdwTabBar* self);
	int adw_tab_bar_get_inverted(AdwTabBar* self);
	int adw_tab_bar_get_is_overflowing(AdwTabBar* self);
	GtkWidget* adw_tab_bar_get_start_action_widget(AdwTabBar* self);
	int adw_tab_bar_get_tabs_revealed(AdwTabBar* self);
	AdwTabView* adw_tab_bar_get_view(AdwTabBar* self);
	void adw_tab_bar_set_autohide(AdwTabBar* self, int autohide);
	void adw_tab_bar_set_end_action_widget(AdwTabBar* self, GtkWidget* widget);
	void adw_tab_bar_set_expand_tabs(AdwTabBar* self, int expandTabs);
	void adw_tab_bar_set_inverted(AdwTabBar* self, int inverted);
	void adw_tab_bar_set_start_action_widget(AdwTabBar* self, GtkWidget* widget);
	void adw_tab_bar_set_view(AdwTabBar* self, AdwTabView* view);
	void adw_tab_bar_setup_extra_drop_target(AdwTabBar* self, GdkDragAction actions, GType* types, size_t nTypes);

	// adw.TabPage

	GType adw_tab_page_get_type();
	GtkWidget* adw_tab_page_get_child(AdwTabPage* self);
	GIcon* adw_tab_page_get_icon(AdwTabPage* self);
	int adw_tab_page_get_indicator_activatable(AdwTabPage* self);
	GIcon* adw_tab_page_get_indicator_icon(AdwTabPage* self);
	const(char)* adw_tab_page_get_indicator_tooltip(AdwTabPage* self);
	int adw_tab_page_get_loading(AdwTabPage* self);
	int adw_tab_page_get_needs_attention(AdwTabPage* self);
	AdwTabPage* adw_tab_page_get_parent(AdwTabPage* self);
	int adw_tab_page_get_pinned(AdwTabPage* self);
	int adw_tab_page_get_selected(AdwTabPage* self);
	const(char)* adw_tab_page_get_title(AdwTabPage* self);
	const(char)* adw_tab_page_get_tooltip(AdwTabPage* self);
	void adw_tab_page_set_icon(AdwTabPage* self, GIcon* icon);
	void adw_tab_page_set_indicator_activatable(AdwTabPage* self, int activatable);
	void adw_tab_page_set_indicator_icon(AdwTabPage* self, GIcon* indicatorIcon);
	void adw_tab_page_set_indicator_tooltip(AdwTabPage* self, const(char)* tooltip);
	void adw_tab_page_set_loading(AdwTabPage* self, int loading);
	void adw_tab_page_set_needs_attention(AdwTabPage* self, int needsAttention);
	void adw_tab_page_set_title(AdwTabPage* self, const(char)* title);
	void adw_tab_page_set_tooltip(AdwTabPage* self, const(char)* tooltip);

	// adw.TabView

	GType adw_tab_view_get_type();
	AdwTabView* adw_tab_view_new();
	AdwTabPage* adw_tab_view_add_page(AdwTabView* self, GtkWidget* child, AdwTabPage* parent);
	void adw_tab_view_add_shortcuts(AdwTabView* self, AdwTabViewShortcuts shortcuts);
	AdwTabPage* adw_tab_view_append(AdwTabView* self, GtkWidget* child);
	AdwTabPage* adw_tab_view_append_pinned(AdwTabView* self, GtkWidget* child);
	void adw_tab_view_close_other_pages(AdwTabView* self, AdwTabPage* page);
	void adw_tab_view_close_page(AdwTabView* self, AdwTabPage* page);
	void adw_tab_view_close_page_finish(AdwTabView* self, AdwTabPage* page, int confirm);
	void adw_tab_view_close_pages_after(AdwTabView* self, AdwTabPage* page);
	void adw_tab_view_close_pages_before(AdwTabView* self, AdwTabPage* page);
	GIcon* adw_tab_view_get_default_icon(AdwTabView* self);
	int adw_tab_view_get_is_transferring_page(AdwTabView* self);
	GMenuModel* adw_tab_view_get_menu_model(AdwTabView* self);
	int adw_tab_view_get_n_pages(AdwTabView* self);
	int adw_tab_view_get_n_pinned_pages(AdwTabView* self);
	AdwTabPage* adw_tab_view_get_nth_page(AdwTabView* self, int position);
	AdwTabPage* adw_tab_view_get_page(AdwTabView* self, GtkWidget* child);
	int adw_tab_view_get_page_position(AdwTabView* self, AdwTabPage* page);
	GtkSelectionModel* adw_tab_view_get_pages(AdwTabView* self);
	AdwTabPage* adw_tab_view_get_selected_page(AdwTabView* self);
	AdwTabViewShortcuts adw_tab_view_get_shortcuts(AdwTabView* self);
	AdwTabPage* adw_tab_view_insert(AdwTabView* self, GtkWidget* child, int position);
	AdwTabPage* adw_tab_view_insert_pinned(AdwTabView* self, GtkWidget* child, int position);
	AdwTabPage* adw_tab_view_prepend(AdwTabView* self, GtkWidget* child);
	AdwTabPage* adw_tab_view_prepend_pinned(AdwTabView* self, GtkWidget* child);
	void adw_tab_view_remove_shortcuts(AdwTabView* self, AdwTabViewShortcuts shortcuts);
	int adw_tab_view_reorder_backward(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_first(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_forward(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_last(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_page(AdwTabView* self, AdwTabPage* page, int position);
	int adw_tab_view_select_next_page(AdwTabView* self);
	int adw_tab_view_select_previous_page(AdwTabView* self);
	void adw_tab_view_set_default_icon(AdwTabView* self, GIcon* defaultIcon);
	void adw_tab_view_set_menu_model(AdwTabView* self, GMenuModel* menuModel);
	void adw_tab_view_set_page_pinned(AdwTabView* self, AdwTabPage* page, int pinned);
	void adw_tab_view_set_selected_page(AdwTabView* self, AdwTabPage* selectedPage);
	void adw_tab_view_set_shortcuts(AdwTabView* self, AdwTabViewShortcuts shortcuts);
	void adw_tab_view_transfer_page(AdwTabView* self, AdwTabPage* page, AdwTabView* otherView, int position);

	// adw.TimedAnimation

	GType adw_timed_animation_get_type();
	AdwAnimation* adw_timed_animation_new(GtkWidget* widget, double from, double to, uint duration, AdwAnimationTarget* target);
	int adw_timed_animation_get_alternate(AdwTimedAnimation* self);
	uint adw_timed_animation_get_duration(AdwTimedAnimation* self);
	AdwEasing adw_timed_animation_get_easing(AdwTimedAnimation* self);
	uint adw_timed_animation_get_repeat_count(AdwTimedAnimation* self);
	int adw_timed_animation_get_reverse(AdwTimedAnimation* self);
	double adw_timed_animation_get_value_from(AdwTimedAnimation* self);
	double adw_timed_animation_get_value_to(AdwTimedAnimation* self);
	void adw_timed_animation_set_alternate(AdwTimedAnimation* self, int alternate);
	void adw_timed_animation_set_duration(AdwTimedAnimation* self, uint duration);
	void adw_timed_animation_set_easing(AdwTimedAnimation* self, AdwEasing easing);
	void adw_timed_animation_set_repeat_count(AdwTimedAnimation* self, uint repeatCount);
	void adw_timed_animation_set_reverse(AdwTimedAnimation* self, int reverse);
	void adw_timed_animation_set_value_from(AdwTimedAnimation* self, double value);
	void adw_timed_animation_set_value_to(AdwTimedAnimation* self, double value);

	// adw.Toast

	GType adw_toast_get_type();
	AdwToast* adw_toast_new(const(char)* title);
	AdwToast* adw_toast_new_format(const(char)* format, ... );
	void adw_toast_dismiss(AdwToast* self);
	const(char)* adw_toast_get_action_name(AdwToast* self);
	GVariant* adw_toast_get_action_target_value(AdwToast* self);
	const(char)* adw_toast_get_button_label(AdwToast* self);
	GtkWidget* adw_toast_get_custom_title(AdwToast* self);
	AdwToastPriority adw_toast_get_priority(AdwToast* self);
	uint adw_toast_get_timeout(AdwToast* self);
	const(char)* adw_toast_get_title(AdwToast* self);
	void adw_toast_set_action_name(AdwToast* self, const(char)* actionName);
	void adw_toast_set_action_target(AdwToast* self, const(char)* formatString, ... );
	void adw_toast_set_action_target_value(AdwToast* self, GVariant* actionTarget);
	void adw_toast_set_button_label(AdwToast* self, const(char)* buttonLabel);
	void adw_toast_set_custom_title(AdwToast* self, GtkWidget* widget);
	void adw_toast_set_detailed_action_name(AdwToast* self, const(char)* detailedActionName);
	void adw_toast_set_priority(AdwToast* self, AdwToastPriority priority);
	void adw_toast_set_timeout(AdwToast* self, uint timeout);
	void adw_toast_set_title(AdwToast* self, const(char)* title);

	// adw.ToastOverlay

	GType adw_toast_overlay_get_type();
	GtkWidget* adw_toast_overlay_new();
	void adw_toast_overlay_add_toast(AdwToastOverlay* self, AdwToast* toast);
	GtkWidget* adw_toast_overlay_get_child(AdwToastOverlay* self);
	void adw_toast_overlay_set_child(AdwToastOverlay* self, GtkWidget* child);

	// adw.ViewStack

	GType adw_view_stack_get_type();
	GtkWidget* adw_view_stack_new();
	AdwViewStackPage* adw_view_stack_add(AdwViewStack* self, GtkWidget* child);
	AdwViewStackPage* adw_view_stack_add_named(AdwViewStack* self, GtkWidget* child, const(char)* name);
	AdwViewStackPage* adw_view_stack_add_titled(AdwViewStack* self, GtkWidget* child, const(char)* name, const(char)* title);
	AdwViewStackPage* adw_view_stack_add_titled_with_icon(AdwViewStack* self, GtkWidget* child, const(char)* name, const(char)* title, const(char)* iconName);
	GtkWidget* adw_view_stack_get_child_by_name(AdwViewStack* self, const(char)* name);
	int adw_view_stack_get_hhomogeneous(AdwViewStack* self);
	AdwViewStackPage* adw_view_stack_get_page(AdwViewStack* self, GtkWidget* child);
	GtkSelectionModel* adw_view_stack_get_pages(AdwViewStack* self);
	int adw_view_stack_get_vhomogeneous(AdwViewStack* self);
	GtkWidget* adw_view_stack_get_visible_child(AdwViewStack* self);
	const(char)* adw_view_stack_get_visible_child_name(AdwViewStack* self);
	void adw_view_stack_remove(AdwViewStack* self, GtkWidget* child);
	void adw_view_stack_set_hhomogeneous(AdwViewStack* self, int hhomogeneous);
	void adw_view_stack_set_vhomogeneous(AdwViewStack* self, int vhomogeneous);
	void adw_view_stack_set_visible_child(AdwViewStack* self, GtkWidget* child);
	void adw_view_stack_set_visible_child_name(AdwViewStack* self, const(char)* name);

	// adw.ViewStackPage

	GType adw_view_stack_page_get_type();
	uint adw_view_stack_page_get_badge_number(AdwViewStackPage* self);
	GtkWidget* adw_view_stack_page_get_child(AdwViewStackPage* self);
	const(char)* adw_view_stack_page_get_icon_name(AdwViewStackPage* self);
	const(char)* adw_view_stack_page_get_name(AdwViewStackPage* self);
	int adw_view_stack_page_get_needs_attention(AdwViewStackPage* self);
	const(char)* adw_view_stack_page_get_title(AdwViewStackPage* self);
	int adw_view_stack_page_get_use_underline(AdwViewStackPage* self);
	int adw_view_stack_page_get_visible(AdwViewStackPage* self);
	void adw_view_stack_page_set_badge_number(AdwViewStackPage* self, uint badgeNumber);
	void adw_view_stack_page_set_icon_name(AdwViewStackPage* self, const(char)* iconName);
	void adw_view_stack_page_set_name(AdwViewStackPage* self, const(char)* name);
	void adw_view_stack_page_set_needs_attention(AdwViewStackPage* self, int needsAttention);
	void adw_view_stack_page_set_title(AdwViewStackPage* self, const(char)* title);
	void adw_view_stack_page_set_use_underline(AdwViewStackPage* self, int useUnderline);
	void adw_view_stack_page_set_visible(AdwViewStackPage* self, int visible);

	// adw.ViewSwitcher

	GType adw_view_switcher_get_type();
	GtkWidget* adw_view_switcher_new();
	AdwViewSwitcherPolicy adw_view_switcher_get_policy(AdwViewSwitcher* self);
	AdwViewStack* adw_view_switcher_get_stack(AdwViewSwitcher* self);
	void adw_view_switcher_set_policy(AdwViewSwitcher* self, AdwViewSwitcherPolicy policy);
	void adw_view_switcher_set_stack(AdwViewSwitcher* self, AdwViewStack* stack);

	// adw.ViewSwitcherBar

	GType adw_view_switcher_bar_get_type();
	GtkWidget* adw_view_switcher_bar_new();
	int adw_view_switcher_bar_get_reveal(AdwViewSwitcherBar* self);
	AdwViewStack* adw_view_switcher_bar_get_stack(AdwViewSwitcherBar* self);
	void adw_view_switcher_bar_set_reveal(AdwViewSwitcherBar* self, int reveal);
	void adw_view_switcher_bar_set_stack(AdwViewSwitcherBar* self, AdwViewStack* stack);

	// adw.ViewSwitcherTitle

	GType adw_view_switcher_title_get_type();
	GtkWidget* adw_view_switcher_title_new();
	AdwViewStack* adw_view_switcher_title_get_stack(AdwViewSwitcherTitle* self);
	const(char)* adw_view_switcher_title_get_subtitle(AdwViewSwitcherTitle* self);
	const(char)* adw_view_switcher_title_get_title(AdwViewSwitcherTitle* self);
	int adw_view_switcher_title_get_title_visible(AdwViewSwitcherTitle* self);
	int adw_view_switcher_title_get_view_switcher_enabled(AdwViewSwitcherTitle* self);
	void adw_view_switcher_title_set_stack(AdwViewSwitcherTitle* self, AdwViewStack* stack);
	void adw_view_switcher_title_set_subtitle(AdwViewSwitcherTitle* self, const(char)* subtitle);
	void adw_view_switcher_title_set_title(AdwViewSwitcherTitle* self, const(char)* title);
	void adw_view_switcher_title_set_view_switcher_enabled(AdwViewSwitcherTitle* self, int enabled);

	// adw.Window

	GType adw_window_get_type();
	GtkWidget* adw_window_new();
	GtkWidget* adw_window_get_content(AdwWindow* self);
	void adw_window_set_content(AdwWindow* self, GtkWidget* content);

	// adw.WindowTitle

	GType adw_window_title_get_type();
	GtkWidget* adw_window_title_new(const(char)* title, const(char)* subtitle);
	const(char)* adw_window_title_get_subtitle(AdwWindowTitle* self);
	const(char)* adw_window_title_get_title(AdwWindowTitle* self);
	void adw_window_title_set_subtitle(AdwWindowTitle* self, const(char)* subtitle);
	void adw_window_title_set_title(AdwWindowTitle* self, const(char)* title);
}