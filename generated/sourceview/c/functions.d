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


module sourceview.c.functions;

import std.stdio;
import sourceview.c.types;
version (Windows)
	static immutable LIBRARY_SOURCEVIEW = ["libgtksourceview-5-0.dll;gtksourceview-5-5.0.dll;gtksourceview-5.dll"];
else version (OSX)
	static immutable LIBRARY_SOURCEVIEW = ["libgtksourceview-5.0.dylib"];
else
	static immutable LIBRARY_SOURCEVIEW = ["libgtksourceview-5.so.0"];

__gshared extern(C)
{

	// sourceview.Buffer

	GType gtk_source_buffer_get_type();
	GtkSourceBuffer* gtk_source_buffer_new(GtkTextTagTable* table);
	GtkSourceBuffer* gtk_source_buffer_new_with_language(GtkSourceLanguage* language);
	int gtk_source_buffer_backward_iter_to_source_mark(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* category);
	void gtk_source_buffer_change_case(GtkSourceBuffer* buffer, GtkSourceChangeCaseType caseType, GtkTextIter* start, GtkTextIter* end);
	GtkSourceMark* gtk_source_buffer_create_source_mark(GtkSourceBuffer* buffer, const(char)* name, const(char)* category, GtkTextIter* where);
	GtkTextTag* gtk_source_buffer_create_source_tag(GtkSourceBuffer* buffer, const(char)* tagName, const(char)* firstPropertyName, ... );
	void gtk_source_buffer_ensure_highlight(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	int gtk_source_buffer_forward_iter_to_source_mark(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* category);
	char** gtk_source_buffer_get_context_classes_at_iter(GtkSourceBuffer* buffer, GtkTextIter* iter);
	int gtk_source_buffer_get_highlight_matching_brackets(GtkSourceBuffer* buffer);
	int gtk_source_buffer_get_highlight_syntax(GtkSourceBuffer* buffer);
	int gtk_source_buffer_get_implicit_trailing_newline(GtkSourceBuffer* buffer);
	GtkSourceLanguage* gtk_source_buffer_get_language(GtkSourceBuffer* buffer);
	GSList* gtk_source_buffer_get_source_marks_at_iter(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* category);
	GSList* gtk_source_buffer_get_source_marks_at_line(GtkSourceBuffer* buffer, int line, const(char)* category);
	GtkSourceStyleScheme* gtk_source_buffer_get_style_scheme(GtkSourceBuffer* buffer);
	int gtk_source_buffer_iter_backward_to_context_class_toggle(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* contextClass);
	int gtk_source_buffer_iter_forward_to_context_class_toggle(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* contextClass);
	int gtk_source_buffer_iter_has_context_class(GtkSourceBuffer* buffer, GtkTextIter* iter, const(char)* contextClass);
	void gtk_source_buffer_join_lines(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	void gtk_source_buffer_remove_source_marks(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, const(char)* category);
	void gtk_source_buffer_set_highlight_matching_brackets(GtkSourceBuffer* buffer, int highlight);
	void gtk_source_buffer_set_highlight_syntax(GtkSourceBuffer* buffer, int highlight);
	void gtk_source_buffer_set_implicit_trailing_newline(GtkSourceBuffer* buffer, int implicitTrailingNewline);
	void gtk_source_buffer_set_language(GtkSourceBuffer* buffer, GtkSourceLanguage* language);
	void gtk_source_buffer_set_style_scheme(GtkSourceBuffer* buffer, GtkSourceStyleScheme* scheme);
	void gtk_source_buffer_sort_lines(GtkSourceBuffer* buffer, GtkTextIter* start, GtkTextIter* end, GtkSourceSortFlags flags, int column);

	// sourceview.Completion

	GType gtk_source_completion_get_type();
	PangoAttrList* gtk_source_completion_fuzzy_highlight(const(char)* haystack, const(char)* casefoldQuery);
	int gtk_source_completion_fuzzy_match(const(char)* haystack, const(char)* casefoldNeedle, uint* priority);
	void gtk_source_completion_add_provider(GtkSourceCompletion* self, GtkSourceCompletionProvider* provider);
	void gtk_source_completion_block_interactive(GtkSourceCompletion* self);
	GtkSourceBuffer* gtk_source_completion_get_buffer(GtkSourceCompletion* self);
	uint gtk_source_completion_get_page_size(GtkSourceCompletion* self);
	GtkSourceView* gtk_source_completion_get_view(GtkSourceCompletion* self);
	void gtk_source_completion_hide(GtkSourceCompletion* self);
	void gtk_source_completion_remove_provider(GtkSourceCompletion* self, GtkSourceCompletionProvider* provider);
	void gtk_source_completion_set_page_size(GtkSourceCompletion* self, uint pageSize);
	void gtk_source_completion_show(GtkSourceCompletion* self);
	void gtk_source_completion_unblock_interactive(GtkSourceCompletion* self);

	// sourceview.CompletionCell

	GType gtk_source_completion_cell_get_type();
	GtkSourceCompletionColumn gtk_source_completion_cell_get_column(GtkSourceCompletionCell* self);
	GtkWidget* gtk_source_completion_cell_get_widget(GtkSourceCompletionCell* self);
	void gtk_source_completion_cell_set_gicon(GtkSourceCompletionCell* self, GIcon* gicon);
	void gtk_source_completion_cell_set_icon_name(GtkSourceCompletionCell* self, const(char)* iconName);
	void gtk_source_completion_cell_set_markup(GtkSourceCompletionCell* self, const(char)* markup);
	void gtk_source_completion_cell_set_paintable(GtkSourceCompletionCell* self, GdkPaintable* paintable);
	void gtk_source_completion_cell_set_text(GtkSourceCompletionCell* self, const(char)* text);
	void gtk_source_completion_cell_set_text_with_attributes(GtkSourceCompletionCell* self, const(char)* text, PangoAttrList* attrs);
	void gtk_source_completion_cell_set_widget(GtkSourceCompletionCell* self, GtkWidget* child);

	// sourceview.CompletionContext

	GType gtk_source_completion_context_get_type();
	GtkSourceCompletionActivation gtk_source_completion_context_get_activation(GtkSourceCompletionContext* self);
	int gtk_source_completion_context_get_bounds(GtkSourceCompletionContext* self, GtkTextIter* begin, GtkTextIter* end);
	GtkSourceBuffer* gtk_source_completion_context_get_buffer(GtkSourceCompletionContext* self);
	int gtk_source_completion_context_get_busy(GtkSourceCompletionContext* self);
	GtkSourceCompletion* gtk_source_completion_context_get_completion(GtkSourceCompletionContext* self);
	int gtk_source_completion_context_get_empty(GtkSourceCompletionContext* self);
	GtkSourceLanguage* gtk_source_completion_context_get_language(GtkSourceCompletionContext* self);
	GListModel* gtk_source_completion_context_get_proposals_for_provider(GtkSourceCompletionContext* self, GtkSourceCompletionProvider* provider);
	GtkSourceView* gtk_source_completion_context_get_view(GtkSourceCompletionContext* self);
	char* gtk_source_completion_context_get_word(GtkSourceCompletionContext* self);
	GListModel* gtk_source_completion_context_list_providers(GtkSourceCompletionContext* self);
	void gtk_source_completion_context_set_proposals_for_provider(GtkSourceCompletionContext* self, GtkSourceCompletionProvider* provider, GListModel* results);

	// sourceview.CompletionProposal

	GType gtk_source_completion_proposal_get_type();
	char* gtk_source_completion_proposal_get_typed_text(GtkSourceCompletionProposal* proposal);

	// sourceview.CompletionProvider

	GType gtk_source_completion_provider_get_type();
	void gtk_source_completion_provider_activate(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal);
	void gtk_source_completion_provider_display(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, GtkSourceCompletionCell* cell);
	int gtk_source_completion_provider_get_priority(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context);
	char* gtk_source_completion_provider_get_title(GtkSourceCompletionProvider* self);
	int gtk_source_completion_provider_is_trigger(GtkSourceCompletionProvider* self, GtkTextIter* iter, dchar ch);
	int gtk_source_completion_provider_key_activates(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal, uint keyval, GdkModifierType state);
	GPtrArray* gtk_source_completion_provider_list_alternates(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GtkSourceCompletionProposal* proposal);
	void gtk_source_completion_provider_populate_async(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GListModel* gtk_source_completion_provider_populate_finish(GtkSourceCompletionProvider* self, GAsyncResult* result, GError** err);
	void gtk_source_completion_provider_refilter(GtkSourceCompletionProvider* self, GtkSourceCompletionContext* context, GListModel* model);

	// sourceview.CompletionSnippets

	GType gtk_source_completion_snippets_get_type();
	GtkSourceCompletionSnippets* gtk_source_completion_snippets_new();

	// sourceview.CompletionWords

	GType gtk_source_completion_words_get_type();
	GtkSourceCompletionWords* gtk_source_completion_words_new(const(char)* title);
	void gtk_source_completion_words_register(GtkSourceCompletionWords* words, GtkTextBuffer* buffer);
	void gtk_source_completion_words_unregister(GtkSourceCompletionWords* words, GtkTextBuffer* buffer);

	// sourceview.Encoding

	GType gtk_source_encoding_get_type();
	GtkSourceEncoding* gtk_source_encoding_copy(GtkSourceEncoding* enc);
	void gtk_source_encoding_free(GtkSourceEncoding* enc);
	const(char)* gtk_source_encoding_get_charset(GtkSourceEncoding* enc);
	const(char)* gtk_source_encoding_get_name(GtkSourceEncoding* enc);
	char* gtk_source_encoding_to_string(GtkSourceEncoding* enc);
	GSList* gtk_source_encoding_get_all();
	GtkSourceEncoding* gtk_source_encoding_get_current();
	GSList* gtk_source_encoding_get_default_candidates();
	GtkSourceEncoding* gtk_source_encoding_get_from_charset(const(char)* charset);
	GtkSourceEncoding* gtk_source_encoding_get_utf8();

	// sourceview.File

	GType gtk_source_file_get_type();
	GtkSourceFile* gtk_source_file_new();
	void gtk_source_file_check_file_on_disk(GtkSourceFile* file);
	GtkSourceCompressionType gtk_source_file_get_compression_type(GtkSourceFile* file);
	GtkSourceEncoding* gtk_source_file_get_encoding(GtkSourceFile* file);
	GFile* gtk_source_file_get_location(GtkSourceFile* file);
	GtkSourceNewlineType gtk_source_file_get_newline_type(GtkSourceFile* file);
	int gtk_source_file_is_deleted(GtkSourceFile* file);
	int gtk_source_file_is_externally_modified(GtkSourceFile* file);
	int gtk_source_file_is_local(GtkSourceFile* file);
	int gtk_source_file_is_readonly(GtkSourceFile* file);
	void gtk_source_file_set_location(GtkSourceFile* file, GFile* location);
	void gtk_source_file_set_mount_operation_factory(GtkSourceFile* file, GtkSourceMountOperationFactory callback, void* userData, GDestroyNotify notify);

	// sourceview.FileLoader

	GType gtk_source_file_loader_get_type();
	GtkSourceFileLoader* gtk_source_file_loader_new(GtkSourceBuffer* buffer, GtkSourceFile* file);
	GtkSourceFileLoader* gtk_source_file_loader_new_from_stream(GtkSourceBuffer* buffer, GtkSourceFile* file, GInputStream* stream);
	GtkSourceBuffer* gtk_source_file_loader_get_buffer(GtkSourceFileLoader* loader);
	GtkSourceCompressionType gtk_source_file_loader_get_compression_type(GtkSourceFileLoader* loader);
	GtkSourceEncoding* gtk_source_file_loader_get_encoding(GtkSourceFileLoader* loader);
	GtkSourceFile* gtk_source_file_loader_get_file(GtkSourceFileLoader* loader);
	GInputStream* gtk_source_file_loader_get_input_stream(GtkSourceFileLoader* loader);
	GFile* gtk_source_file_loader_get_location(GtkSourceFileLoader* loader);
	GtkSourceNewlineType gtk_source_file_loader_get_newline_type(GtkSourceFileLoader* loader);
	void gtk_source_file_loader_load_async(GtkSourceFileLoader* loader, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData);
	int gtk_source_file_loader_load_finish(GtkSourceFileLoader* loader, GAsyncResult* result, GError** err);
	void gtk_source_file_loader_set_candidate_encodings(GtkSourceFileLoader* loader, GSList* candidateEncodings);

	// sourceview.FileSaver

	GType gtk_source_file_saver_get_type();
	GtkSourceFileSaver* gtk_source_file_saver_new(GtkSourceBuffer* buffer, GtkSourceFile* file);
	GtkSourceFileSaver* gtk_source_file_saver_new_with_target(GtkSourceBuffer* buffer, GtkSourceFile* file, GFile* targetLocation);
	GtkSourceBuffer* gtk_source_file_saver_get_buffer(GtkSourceFileSaver* saver);
	GtkSourceCompressionType gtk_source_file_saver_get_compression_type(GtkSourceFileSaver* saver);
	GtkSourceEncoding* gtk_source_file_saver_get_encoding(GtkSourceFileSaver* saver);
	GtkSourceFile* gtk_source_file_saver_get_file(GtkSourceFileSaver* saver);
	GtkSourceFileSaverFlags gtk_source_file_saver_get_flags(GtkSourceFileSaver* saver);
	GFile* gtk_source_file_saver_get_location(GtkSourceFileSaver* saver);
	GtkSourceNewlineType gtk_source_file_saver_get_newline_type(GtkSourceFileSaver* saver);
	void gtk_source_file_saver_save_async(GtkSourceFileSaver* saver, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GDestroyNotify progressCallbackNotify, GAsyncReadyCallback callback, void* userData);
	int gtk_source_file_saver_save_finish(GtkSourceFileSaver* saver, GAsyncResult* result, GError** err);
	void gtk_source_file_saver_set_compression_type(GtkSourceFileSaver* saver, GtkSourceCompressionType compressionType);
	void gtk_source_file_saver_set_encoding(GtkSourceFileSaver* saver, GtkSourceEncoding* encoding);
	void gtk_source_file_saver_set_flags(GtkSourceFileSaver* saver, GtkSourceFileSaverFlags flags);
	void gtk_source_file_saver_set_newline_type(GtkSourceFileSaver* saver, GtkSourceNewlineType newlineType);

	// sourceview.Gutter

	GType gtk_source_gutter_get_type();
	GtkSourceView* gtk_source_gutter_get_view(GtkSourceGutter* gutter);
	int gtk_source_gutter_insert(GtkSourceGutter* gutter, GtkSourceGutterRenderer* renderer, int position);
	void gtk_source_gutter_remove(GtkSourceGutter* gutter, GtkSourceGutterRenderer* renderer);
	void gtk_source_gutter_reorder(GtkSourceGutter* gutter, GtkSourceGutterRenderer* renderer, int position);

	// sourceview.GutterLines

	GType gtk_source_gutter_lines_get_type();
	void gtk_source_gutter_lines_add_class(GtkSourceGutterLines* lines, uint line, const(char)* name);
	void gtk_source_gutter_lines_add_qclass(GtkSourceGutterLines* lines, uint line, GQuark qname);
	GtkTextBuffer* gtk_source_gutter_lines_get_buffer(GtkSourceGutterLines* lines);
	uint gtk_source_gutter_lines_get_first(GtkSourceGutterLines* lines);
	void gtk_source_gutter_lines_get_iter_at_line(GtkSourceGutterLines* lines, GtkTextIter* iter, uint line);
	uint gtk_source_gutter_lines_get_last(GtkSourceGutterLines* lines);
	void gtk_source_gutter_lines_get_line_yrange(GtkSourceGutterLines* lines, uint line, GtkSourceGutterRendererAlignmentMode mode, int* y, int* height);
	GtkTextView* gtk_source_gutter_lines_get_view(GtkSourceGutterLines* lines);
	int gtk_source_gutter_lines_has_any_class(GtkSourceGutterLines* lines, uint line);
	int gtk_source_gutter_lines_has_class(GtkSourceGutterLines* lines, uint line, const(char)* name);
	int gtk_source_gutter_lines_has_qclass(GtkSourceGutterLines* lines, uint line, GQuark qname);
	int gtk_source_gutter_lines_is_cursor(GtkSourceGutterLines* lines, uint line);
	int gtk_source_gutter_lines_is_prelit(GtkSourceGutterLines* lines, uint line);
	int gtk_source_gutter_lines_is_selected(GtkSourceGutterLines* lines, uint line);
	void gtk_source_gutter_lines_remove_class(GtkSourceGutterLines* lines, uint line, const(char)* name);
	void gtk_source_gutter_lines_remove_qclass(GtkSourceGutterLines* lines, uint line, GQuark qname);

	// sourceview.GutterRenderer

	GType gtk_source_gutter_renderer_get_type();
	void gtk_source_gutter_renderer_activate(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area, uint button, GdkModifierType state, int nPresses);
	void gtk_source_gutter_renderer_align_cell(GtkSourceGutterRenderer* renderer, uint line, float width, float height, float* x, float* y);
	GtkSourceGutterRendererAlignmentMode gtk_source_gutter_renderer_get_alignment_mode(GtkSourceGutterRenderer* renderer);
	GtkSourceBuffer* gtk_source_gutter_renderer_get_buffer(GtkSourceGutterRenderer* renderer);
	GtkSourceView* gtk_source_gutter_renderer_get_view(GtkSourceGutterRenderer* renderer);
	float gtk_source_gutter_renderer_get_xalign(GtkSourceGutterRenderer* renderer);
	int gtk_source_gutter_renderer_get_xpad(GtkSourceGutterRenderer* renderer);
	float gtk_source_gutter_renderer_get_yalign(GtkSourceGutterRenderer* renderer);
	int gtk_source_gutter_renderer_get_ypad(GtkSourceGutterRenderer* renderer);
	int gtk_source_gutter_renderer_query_activatable(GtkSourceGutterRenderer* renderer, GtkTextIter* iter, GdkRectangle* area);
	void gtk_source_gutter_renderer_set_alignment_mode(GtkSourceGutterRenderer* renderer, GtkSourceGutterRendererAlignmentMode mode);
	void gtk_source_gutter_renderer_set_xalign(GtkSourceGutterRenderer* renderer, float xalign);
	void gtk_source_gutter_renderer_set_xpad(GtkSourceGutterRenderer* renderer, int xpad);
	void gtk_source_gutter_renderer_set_yalign(GtkSourceGutterRenderer* renderer, float yalign);
	void gtk_source_gutter_renderer_set_ypad(GtkSourceGutterRenderer* renderer, int ypad);

	// sourceview.GutterRendererPixbuf

	GType gtk_source_gutter_renderer_pixbuf_get_type();
	GtkSourceGutterRenderer* gtk_source_gutter_renderer_pixbuf_new();
	GIcon* gtk_source_gutter_renderer_pixbuf_get_gicon(GtkSourceGutterRendererPixbuf* renderer);
	const(char)* gtk_source_gutter_renderer_pixbuf_get_icon_name(GtkSourceGutterRendererPixbuf* renderer);
	GdkPaintable* gtk_source_gutter_renderer_pixbuf_get_paintable(GtkSourceGutterRendererPixbuf* renderer);
	GdkPixbuf* gtk_source_gutter_renderer_pixbuf_get_pixbuf(GtkSourceGutterRendererPixbuf* renderer);
	void gtk_source_gutter_renderer_pixbuf_overlay_paintable(GtkSourceGutterRendererPixbuf* renderer, GdkPaintable* paintable);
	void gtk_source_gutter_renderer_pixbuf_set_gicon(GtkSourceGutterRendererPixbuf* renderer, GIcon* icon);
	void gtk_source_gutter_renderer_pixbuf_set_icon_name(GtkSourceGutterRendererPixbuf* renderer, const(char)* iconName);
	void gtk_source_gutter_renderer_pixbuf_set_paintable(GtkSourceGutterRendererPixbuf* renderer, GdkPaintable* paintable);
	void gtk_source_gutter_renderer_pixbuf_set_pixbuf(GtkSourceGutterRendererPixbuf* renderer, GdkPixbuf* pixbuf);

	// sourceview.GutterRendererText

	GType gtk_source_gutter_renderer_text_get_type();
	GtkSourceGutterRenderer* gtk_source_gutter_renderer_text_new();
	void gtk_source_gutter_renderer_text_measure(GtkSourceGutterRendererText* renderer, const(char)* text, int* width, int* height);
	void gtk_source_gutter_renderer_text_measure_markup(GtkSourceGutterRendererText* renderer, const(char)* markup, int* width, int* height);
	void gtk_source_gutter_renderer_text_set_markup(GtkSourceGutterRendererText* renderer, const(char)* markup, int length);
	void gtk_source_gutter_renderer_text_set_text(GtkSourceGutterRendererText* renderer, const(char)* text, int length);

	// sourceview.Hover

	GType gtk_source_hover_get_type();
	void gtk_source_hover_add_provider(GtkSourceHover* self, GtkSourceHoverProvider* provider);
	void gtk_source_hover_remove_provider(GtkSourceHover* self, GtkSourceHoverProvider* provider);

	// sourceview.HoverContext

	GType gtk_source_hover_context_get_type();
	int gtk_source_hover_context_get_bounds(GtkSourceHoverContext* self, GtkTextIter* begin, GtkTextIter* end);
	GtkSourceBuffer* gtk_source_hover_context_get_buffer(GtkSourceHoverContext* self);
	int gtk_source_hover_context_get_iter(GtkSourceHoverContext* self, GtkTextIter* iter);
	GtkSourceView* gtk_source_hover_context_get_view(GtkSourceHoverContext* self);

	// sourceview.HoverDisplay

	GType gtk_source_hover_display_get_type();
	void gtk_source_hover_display_append(GtkSourceHoverDisplay* self, GtkWidget* child);
	void gtk_source_hover_display_insert_after(GtkSourceHoverDisplay* self, GtkWidget* child, GtkWidget* sibling);
	void gtk_source_hover_display_prepend(GtkSourceHoverDisplay* self, GtkWidget* child);
	void gtk_source_hover_display_remove(GtkSourceHoverDisplay* self, GtkWidget* child);

	// sourceview.HoverProvider

	GType gtk_source_hover_provider_get_type();
	void gtk_source_hover_provider_populate_async(GtkSourceHoverProvider* self, GtkSourceHoverContext* context, GtkSourceHoverDisplay* display, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gtk_source_hover_provider_populate_finish(GtkSourceHoverProvider* self, GAsyncResult* result, GError** err);

	// sourceview.Indenter

	GType gtk_source_indenter_get_type();
	void gtk_source_indenter_indent(GtkSourceIndenter* self, GtkSourceView* view, GtkTextIter* iter);
	int gtk_source_indenter_is_trigger(GtkSourceIndenter* self, GtkSourceView* view, GtkTextIter* location, GdkModifierType state, uint keyval);

	// sourceview.Language

	GType gtk_source_language_get_type();
	char** gtk_source_language_get_globs(GtkSourceLanguage* language);
	int gtk_source_language_get_hidden(GtkSourceLanguage* language);
	const(char)* gtk_source_language_get_id(GtkSourceLanguage* language);
	const(char)* gtk_source_language_get_metadata(GtkSourceLanguage* language, const(char)* name);
	char** gtk_source_language_get_mime_types(GtkSourceLanguage* language);
	const(char)* gtk_source_language_get_name(GtkSourceLanguage* language);
	const(char)* gtk_source_language_get_section(GtkSourceLanguage* language);
	const(char)* gtk_source_language_get_style_fallback(GtkSourceLanguage* language, const(char)* styleId);
	char** gtk_source_language_get_style_ids(GtkSourceLanguage* language);
	const(char)* gtk_source_language_get_style_name(GtkSourceLanguage* language, const(char)* styleId);

	// sourceview.LanguageManager

	GType gtk_source_language_manager_get_type();
	GtkSourceLanguageManager* gtk_source_language_manager_new();
	GtkSourceLanguageManager* gtk_source_language_manager_get_default();
	void gtk_source_language_manager_append_search_path(GtkSourceLanguageManager* lm, const(char)* path);
	GtkSourceLanguage* gtk_source_language_manager_get_language(GtkSourceLanguageManager* lm, const(char)* id);
	char** gtk_source_language_manager_get_language_ids(GtkSourceLanguageManager* lm);
	char** gtk_source_language_manager_get_search_path(GtkSourceLanguageManager* lm);
	GtkSourceLanguage* gtk_source_language_manager_guess_language(GtkSourceLanguageManager* lm, char* filename, const(char)* contentType);
	void gtk_source_language_manager_prepend_search_path(GtkSourceLanguageManager* lm, const(char)* path);
	void gtk_source_language_manager_set_search_path(GtkSourceLanguageManager* lm, char** dirs);

	// sourceview.Map

	GType gtk_source_map_get_type();
	GtkWidget* gtk_source_map_new();
	GtkSourceView* gtk_source_map_get_view(GtkSourceMap* map);
	void gtk_source_map_set_view(GtkSourceMap* map, GtkSourceView* view);

	// sourceview.Mark

	GType gtk_source_mark_get_type();
	GtkSourceMark* gtk_source_mark_new(const(char)* name, const(char)* category);
	const(char)* gtk_source_mark_get_category(GtkSourceMark* mark);
	GtkSourceMark* gtk_source_mark_next(GtkSourceMark* mark, const(char)* category);
	GtkSourceMark* gtk_source_mark_prev(GtkSourceMark* mark, const(char)* category);

	// sourceview.MarkAttributes

	GType gtk_source_mark_attributes_get_type();
	GtkSourceMarkAttributes* gtk_source_mark_attributes_new();
	int gtk_source_mark_attributes_get_background(GtkSourceMarkAttributes* attributes, GdkRGBA* background);
	GIcon* gtk_source_mark_attributes_get_gicon(GtkSourceMarkAttributes* attributes);
	const(char)* gtk_source_mark_attributes_get_icon_name(GtkSourceMarkAttributes* attributes);
	GdkPixbuf* gtk_source_mark_attributes_get_pixbuf(GtkSourceMarkAttributes* attributes);
	char* gtk_source_mark_attributes_get_tooltip_markup(GtkSourceMarkAttributes* attributes, GtkSourceMark* mark);
	char* gtk_source_mark_attributes_get_tooltip_text(GtkSourceMarkAttributes* attributes, GtkSourceMark* mark);
	GdkPaintable* gtk_source_mark_attributes_render_icon(GtkSourceMarkAttributes* attributes, GtkWidget* widget, int size);
	void gtk_source_mark_attributes_set_background(GtkSourceMarkAttributes* attributes, GdkRGBA* background);
	void gtk_source_mark_attributes_set_gicon(GtkSourceMarkAttributes* attributes, GIcon* gicon);
	void gtk_source_mark_attributes_set_icon_name(GtkSourceMarkAttributes* attributes, const(char)* iconName);
	void gtk_source_mark_attributes_set_pixbuf(GtkSourceMarkAttributes* attributes, GdkPixbuf* pixbuf);

	// sourceview.PrintCompositor

	GType gtk_source_print_compositor_get_type();
	GtkSourcePrintCompositor* gtk_source_print_compositor_new(GtkSourceBuffer* buffer);
	GtkSourcePrintCompositor* gtk_source_print_compositor_new_from_view(GtkSourceView* view);
	void gtk_source_print_compositor_draw_page(GtkSourcePrintCompositor* compositor, GtkPrintContext* context, int pageNr);
	char* gtk_source_print_compositor_get_body_font_name(GtkSourcePrintCompositor* compositor);
	double gtk_source_print_compositor_get_bottom_margin(GtkSourcePrintCompositor* compositor, GtkUnit unit);
	GtkSourceBuffer* gtk_source_print_compositor_get_buffer(GtkSourcePrintCompositor* compositor);
	char* gtk_source_print_compositor_get_footer_font_name(GtkSourcePrintCompositor* compositor);
	char* gtk_source_print_compositor_get_header_font_name(GtkSourcePrintCompositor* compositor);
	int gtk_source_print_compositor_get_highlight_syntax(GtkSourcePrintCompositor* compositor);
	double gtk_source_print_compositor_get_left_margin(GtkSourcePrintCompositor* compositor, GtkUnit unit);
	char* gtk_source_print_compositor_get_line_numbers_font_name(GtkSourcePrintCompositor* compositor);
	int gtk_source_print_compositor_get_n_pages(GtkSourcePrintCompositor* compositor);
	double gtk_source_print_compositor_get_pagination_progress(GtkSourcePrintCompositor* compositor);
	int gtk_source_print_compositor_get_print_footer(GtkSourcePrintCompositor* compositor);
	int gtk_source_print_compositor_get_print_header(GtkSourcePrintCompositor* compositor);
	uint gtk_source_print_compositor_get_print_line_numbers(GtkSourcePrintCompositor* compositor);
	double gtk_source_print_compositor_get_right_margin(GtkSourcePrintCompositor* compositor, GtkUnit unit);
	uint gtk_source_print_compositor_get_tab_width(GtkSourcePrintCompositor* compositor);
	double gtk_source_print_compositor_get_top_margin(GtkSourcePrintCompositor* compositor, GtkUnit unit);
	GtkWrapMode gtk_source_print_compositor_get_wrap_mode(GtkSourcePrintCompositor* compositor);
	void gtk_source_print_compositor_ignore_tag(GtkSourcePrintCompositor* compositor, GtkTextTag* tag);
	int gtk_source_print_compositor_paginate(GtkSourcePrintCompositor* compositor, GtkPrintContext* context);
	void gtk_source_print_compositor_set_body_font_name(GtkSourcePrintCompositor* compositor, const(char)* fontName);
	void gtk_source_print_compositor_set_bottom_margin(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit);
	void gtk_source_print_compositor_set_footer_font_name(GtkSourcePrintCompositor* compositor, const(char)* fontName);
	void gtk_source_print_compositor_set_footer_format(GtkSourcePrintCompositor* compositor, int separator, const(char)* left, const(char)* center, const(char)* right);
	void gtk_source_print_compositor_set_header_font_name(GtkSourcePrintCompositor* compositor, const(char)* fontName);
	void gtk_source_print_compositor_set_header_format(GtkSourcePrintCompositor* compositor, int separator, const(char)* left, const(char)* center, const(char)* right);
	void gtk_source_print_compositor_set_highlight_syntax(GtkSourcePrintCompositor* compositor, int highlight);
	void gtk_source_print_compositor_set_left_margin(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit);
	void gtk_source_print_compositor_set_line_numbers_font_name(GtkSourcePrintCompositor* compositor, const(char)* fontName);
	void gtk_source_print_compositor_set_print_footer(GtkSourcePrintCompositor* compositor, int print);
	void gtk_source_print_compositor_set_print_header(GtkSourcePrintCompositor* compositor, int print);
	void gtk_source_print_compositor_set_print_line_numbers(GtkSourcePrintCompositor* compositor, uint interval);
	void gtk_source_print_compositor_set_right_margin(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit);
	void gtk_source_print_compositor_set_tab_width(GtkSourcePrintCompositor* compositor, uint width);
	void gtk_source_print_compositor_set_top_margin(GtkSourcePrintCompositor* compositor, double margin, GtkUnit unit);
	void gtk_source_print_compositor_set_wrap_mode(GtkSourcePrintCompositor* compositor, GtkWrapMode wrapMode);

	// sourceview.Region

	GType gtk_source_region_get_type();
	GtkSourceRegion* gtk_source_region_new(GtkTextBuffer* buffer);
	void gtk_source_region_add_region(GtkSourceRegion* region, GtkSourceRegion* regionToAdd);
	void gtk_source_region_add_subregion(GtkSourceRegion* region, GtkTextIter* Start, GtkTextIter* End);
	int gtk_source_region_get_bounds(GtkSourceRegion* region, GtkTextIter* start, GtkTextIter* end);
	GtkTextBuffer* gtk_source_region_get_buffer(GtkSourceRegion* region);
	void gtk_source_region_get_start_region_iter(GtkSourceRegion* region, GtkSourceRegionIter* iter);
	GtkSourceRegion* gtk_source_region_intersect_region(GtkSourceRegion* region1, GtkSourceRegion* region2);
	GtkSourceRegion* gtk_source_region_intersect_subregion(GtkSourceRegion* region, GtkTextIter* Start, GtkTextIter* End);
	int gtk_source_region_is_empty(GtkSourceRegion* region);
	void gtk_source_region_subtract_region(GtkSourceRegion* region, GtkSourceRegion* regionToSubtract);
	void gtk_source_region_subtract_subregion(GtkSourceRegion* region, GtkTextIter* Start, GtkTextIter* End);
	char* gtk_source_region_to_string(GtkSourceRegion* region);

	// sourceview.RegionIter

	int gtk_source_region_iter_get_subregion(GtkSourceRegionIter* iter, GtkTextIter* start, GtkTextIter* end);
	int gtk_source_region_iter_is_end(GtkSourceRegionIter* iter);
	int gtk_source_region_iter_next(GtkSourceRegionIter* iter);

	// sourceview.SearchContext

	GType gtk_source_search_context_get_type();
	GtkSourceSearchContext* gtk_source_search_context_new(GtkSourceBuffer* buffer, GtkSourceSearchSettings* settings);
	int gtk_source_search_context_backward(GtkSourceSearchContext* search, GtkTextIter* iter, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround);
	void gtk_source_search_context_backward_async(GtkSourceSearchContext* search, GtkTextIter* iter, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gtk_source_search_context_backward_finish(GtkSourceSearchContext* search, GAsyncResult* result, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround, GError** err);
	int gtk_source_search_context_forward(GtkSourceSearchContext* search, GtkTextIter* iter, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround);
	void gtk_source_search_context_forward_async(GtkSourceSearchContext* search, GtkTextIter* iter, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int gtk_source_search_context_forward_finish(GtkSourceSearchContext* search, GAsyncResult* result, GtkTextIter* matchStart, GtkTextIter* matchEnd, int* hasWrappedAround, GError** err);
	GtkSourceBuffer* gtk_source_search_context_get_buffer(GtkSourceSearchContext* search);
	int gtk_source_search_context_get_highlight(GtkSourceSearchContext* search);
	GtkSourceStyle* gtk_source_search_context_get_match_style(GtkSourceSearchContext* search);
	int gtk_source_search_context_get_occurrence_position(GtkSourceSearchContext* search, GtkTextIter* matchStart, GtkTextIter* matchEnd);
	int gtk_source_search_context_get_occurrences_count(GtkSourceSearchContext* search);
	GError* gtk_source_search_context_get_regex_error(GtkSourceSearchContext* search);
	GtkSourceSearchSettings* gtk_source_search_context_get_settings(GtkSourceSearchContext* search);
	int gtk_source_search_context_replace(GtkSourceSearchContext* search, GtkTextIter* matchStart, GtkTextIter* matchEnd, const(char)* replace, int replaceLength, GError** err);
	uint gtk_source_search_context_replace_all(GtkSourceSearchContext* search, const(char)* replace, int replaceLength, GError** err);
	void gtk_source_search_context_set_highlight(GtkSourceSearchContext* search, int highlight);
	void gtk_source_search_context_set_match_style(GtkSourceSearchContext* search, GtkSourceStyle* matchStyle);

	// sourceview.SearchSettings

	GType gtk_source_search_settings_get_type();
	GtkSourceSearchSettings* gtk_source_search_settings_new();
	int gtk_source_search_settings_get_at_word_boundaries(GtkSourceSearchSettings* settings);
	int gtk_source_search_settings_get_case_sensitive(GtkSourceSearchSettings* settings);
	int gtk_source_search_settings_get_regex_enabled(GtkSourceSearchSettings* settings);
	const(char)* gtk_source_search_settings_get_search_text(GtkSourceSearchSettings* settings);
	int gtk_source_search_settings_get_wrap_around(GtkSourceSearchSettings* settings);
	void gtk_source_search_settings_set_at_word_boundaries(GtkSourceSearchSettings* settings, int atWordBoundaries);
	void gtk_source_search_settings_set_case_sensitive(GtkSourceSearchSettings* settings, int caseSensitive);
	void gtk_source_search_settings_set_regex_enabled(GtkSourceSearchSettings* settings, int regexEnabled);
	void gtk_source_search_settings_set_search_text(GtkSourceSearchSettings* settings, const(char)* searchText);
	void gtk_source_search_settings_set_wrap_around(GtkSourceSearchSettings* settings, int wrapAround);

	// sourceview.Snippet

	GType gtk_source_snippet_get_type();
	GtkSourceSnippet* gtk_source_snippet_new(const(char)* trigger, const(char)* languageId);
	GtkSourceSnippet* gtk_source_snippet_new_parsed(const(char)* text, GError** err);
	void gtk_source_snippet_add_chunk(GtkSourceSnippet* snippet, GtkSourceSnippetChunk* chunk);
	GtkSourceSnippet* gtk_source_snippet_copy(GtkSourceSnippet* snippet);
	GtkSourceSnippetContext* gtk_source_snippet_get_context(GtkSourceSnippet* snippet);
	const(char)* gtk_source_snippet_get_description(GtkSourceSnippet* snippet);
	int gtk_source_snippet_get_focus_position(GtkSourceSnippet* snippet);
	const(char)* gtk_source_snippet_get_language_id(GtkSourceSnippet* snippet);
	uint gtk_source_snippet_get_n_chunks(GtkSourceSnippet* snippet);
	const(char)* gtk_source_snippet_get_name(GtkSourceSnippet* snippet);
	GtkSourceSnippetChunk* gtk_source_snippet_get_nth_chunk(GtkSourceSnippet* snippet, uint nth);
	const(char)* gtk_source_snippet_get_trigger(GtkSourceSnippet* snippet);
	void gtk_source_snippet_set_description(GtkSourceSnippet* snippet, const(char)* description);
	void gtk_source_snippet_set_language_id(GtkSourceSnippet* snippet, const(char)* languageId);
	void gtk_source_snippet_set_name(GtkSourceSnippet* snippet, const(char)* name);
	void gtk_source_snippet_set_trigger(GtkSourceSnippet* snippet, const(char)* trigger);

	// sourceview.SnippetChunk

	GType gtk_source_snippet_chunk_get_type();
	GtkSourceSnippetChunk* gtk_source_snippet_chunk_new();
	GtkSourceSnippetChunk* gtk_source_snippet_chunk_copy(GtkSourceSnippetChunk* chunk);
	GtkSourceSnippetContext* gtk_source_snippet_chunk_get_context(GtkSourceSnippetChunk* chunk);
	int gtk_source_snippet_chunk_get_focus_position(GtkSourceSnippetChunk* chunk);
	const(char)* gtk_source_snippet_chunk_get_spec(GtkSourceSnippetChunk* chunk);
	const(char)* gtk_source_snippet_chunk_get_text(GtkSourceSnippetChunk* chunk);
	int gtk_source_snippet_chunk_get_text_set(GtkSourceSnippetChunk* chunk);
	const(char)* gtk_source_snippet_chunk_get_tooltip_text(GtkSourceSnippetChunk* chunk);
	void gtk_source_snippet_chunk_set_context(GtkSourceSnippetChunk* chunk, GtkSourceSnippetContext* context);
	void gtk_source_snippet_chunk_set_focus_position(GtkSourceSnippetChunk* chunk, int focusPosition);
	void gtk_source_snippet_chunk_set_spec(GtkSourceSnippetChunk* chunk, const(char)* spec);
	void gtk_source_snippet_chunk_set_text(GtkSourceSnippetChunk* chunk, const(char)* text);
	void gtk_source_snippet_chunk_set_text_set(GtkSourceSnippetChunk* chunk, int textSet);
	void gtk_source_snippet_chunk_set_tooltip_text(GtkSourceSnippetChunk* chunk, const(char)* tooltipText);

	// sourceview.SnippetContext

	GType gtk_source_snippet_context_get_type();
	GtkSourceSnippetContext* gtk_source_snippet_context_new();
	void gtk_source_snippet_context_clear_variables(GtkSourceSnippetContext* self);
	char* gtk_source_snippet_context_expand(GtkSourceSnippetContext* self, const(char)* input);
	const(char)* gtk_source_snippet_context_get_variable(GtkSourceSnippetContext* self, const(char)* key);
	void gtk_source_snippet_context_set_constant(GtkSourceSnippetContext* self, const(char)* key, const(char)* value);
	void gtk_source_snippet_context_set_line_prefix(GtkSourceSnippetContext* self, const(char)* linePrefix);
	void gtk_source_snippet_context_set_tab_width(GtkSourceSnippetContext* self, int tabWidth);
	void gtk_source_snippet_context_set_use_spaces(GtkSourceSnippetContext* self, int useSpaces);
	void gtk_source_snippet_context_set_variable(GtkSourceSnippetContext* self, const(char)* key, const(char)* value);

	// sourceview.SnippetManager

	GType gtk_source_snippet_manager_get_type();
	GtkSourceSnippetManager* gtk_source_snippet_manager_get_default();
	char** gtk_source_snippet_manager_get_search_path(GtkSourceSnippetManager* self);
	GtkSourceSnippet* gtk_source_snippet_manager_get_snippet(GtkSourceSnippetManager* self, const(char)* group, const(char)* languageId, const(char)* trigger);
	GListModel* gtk_source_snippet_manager_list_all(GtkSourceSnippetManager* self);
	char** gtk_source_snippet_manager_list_groups(GtkSourceSnippetManager* self);
	GListModel* gtk_source_snippet_manager_list_matching(GtkSourceSnippetManager* self, const(char)* group, const(char)* languageId, const(char)* triggerPrefix);
	void gtk_source_snippet_manager_set_search_path(GtkSourceSnippetManager* self, char** dirs);

	// sourceview.SpaceDrawer

	GType gtk_source_space_drawer_get_type();
	GtkSourceSpaceDrawer* gtk_source_space_drawer_new();
	void gtk_source_space_drawer_bind_matrix_setting(GtkSourceSpaceDrawer* drawer, GSettings* settings, const(char)* key, GSettingsBindFlags flags);
	int gtk_source_space_drawer_get_enable_matrix(GtkSourceSpaceDrawer* drawer);
	GVariant* gtk_source_space_drawer_get_matrix(GtkSourceSpaceDrawer* drawer);
	GtkSourceSpaceTypeFlags gtk_source_space_drawer_get_types_for_locations(GtkSourceSpaceDrawer* drawer, GtkSourceSpaceLocationFlags locations);
	void gtk_source_space_drawer_set_enable_matrix(GtkSourceSpaceDrawer* drawer, int enableMatrix);
	void gtk_source_space_drawer_set_matrix(GtkSourceSpaceDrawer* drawer, GVariant* matrix);
	void gtk_source_space_drawer_set_types_for_locations(GtkSourceSpaceDrawer* drawer, GtkSourceSpaceLocationFlags locations, GtkSourceSpaceTypeFlags types);

	// sourceview.Style

	GType gtk_source_style_get_type();
	void gtk_source_style_apply(GtkSourceStyle* style, GtkTextTag* tag);
	GtkSourceStyle* gtk_source_style_copy(GtkSourceStyle* style);

	// sourceview.StyleScheme

	GType gtk_source_style_scheme_get_type();
	char** gtk_source_style_scheme_get_authors(GtkSourceStyleScheme* scheme);
	const(char)* gtk_source_style_scheme_get_description(GtkSourceStyleScheme* scheme);
	const(char)* gtk_source_style_scheme_get_filename(GtkSourceStyleScheme* scheme);
	const(char)* gtk_source_style_scheme_get_id(GtkSourceStyleScheme* scheme);
	const(char)* gtk_source_style_scheme_get_metadata(GtkSourceStyleScheme* scheme, const(char)* name);
	const(char)* gtk_source_style_scheme_get_name(GtkSourceStyleScheme* scheme);
	GtkSourceStyle* gtk_source_style_scheme_get_style(GtkSourceStyleScheme* scheme, const(char)* styleId);

	// sourceview.StyleSchemeChooser

	GType gtk_source_style_scheme_chooser_get_type();
	GtkSourceStyleScheme* gtk_source_style_scheme_chooser_get_style_scheme(GtkSourceStyleSchemeChooser* chooser);
	void gtk_source_style_scheme_chooser_set_style_scheme(GtkSourceStyleSchemeChooser* chooser, GtkSourceStyleScheme* scheme);

	// sourceview.StyleSchemeChooserButton

	GType gtk_source_style_scheme_chooser_button_get_type();
	GtkWidget* gtk_source_style_scheme_chooser_button_new();

	// sourceview.StyleSchemeChooserWidget

	GType gtk_source_style_scheme_chooser_widget_get_type();
	GtkWidget* gtk_source_style_scheme_chooser_widget_new();

	// sourceview.StyleSchemeManager

	GType gtk_source_style_scheme_manager_get_type();
	GtkSourceStyleSchemeManager* gtk_source_style_scheme_manager_new();
	GtkSourceStyleSchemeManager* gtk_source_style_scheme_manager_get_default();
	void gtk_source_style_scheme_manager_append_search_path(GtkSourceStyleSchemeManager* manager, const(char)* path);
	void gtk_source_style_scheme_manager_force_rescan(GtkSourceStyleSchemeManager* manager);
	GtkSourceStyleScheme* gtk_source_style_scheme_manager_get_scheme(GtkSourceStyleSchemeManager* manager, const(char)* schemeId);
	char** gtk_source_style_scheme_manager_get_scheme_ids(GtkSourceStyleSchemeManager* manager);
	char** gtk_source_style_scheme_manager_get_search_path(GtkSourceStyleSchemeManager* manager);
	void gtk_source_style_scheme_manager_prepend_search_path(GtkSourceStyleSchemeManager* manager, const(char)* path);
	void gtk_source_style_scheme_manager_set_search_path(GtkSourceStyleSchemeManager* manager, char** path);

	// sourceview.StyleSchemePreview

	GType gtk_source_style_scheme_preview_get_type();
	GtkWidget* gtk_source_style_scheme_preview_new(GtkSourceStyleScheme* scheme);
	GtkSourceStyleScheme* gtk_source_style_scheme_preview_get_scheme(GtkSourceStyleSchemePreview* self);
	int gtk_source_style_scheme_preview_get_selected(GtkSourceStyleSchemePreview* self);
	void gtk_source_style_scheme_preview_set_selected(GtkSourceStyleSchemePreview* self, int selected);

	// sourceview.Tag

	GType gtk_source_tag_get_type();
	GtkTextTag* gtk_source_tag_new(const(char)* name);

	// sourceview.View

	GType gtk_source_view_get_type();
	GtkWidget* gtk_source_view_new();
	GtkWidget* gtk_source_view_new_with_buffer(GtkSourceBuffer* buffer);
	int gtk_source_view_get_auto_indent(GtkSourceView* view);
	GtkSourceBackgroundPatternType gtk_source_view_get_background_pattern(GtkSourceView* view);
	GtkSourceCompletion* gtk_source_view_get_completion(GtkSourceView* view);
	int gtk_source_view_get_enable_snippets(GtkSourceView* view);
	GtkSourceGutter* gtk_source_view_get_gutter(GtkSourceView* view, GtkTextWindowType windowType);
	int gtk_source_view_get_highlight_current_line(GtkSourceView* view);
	GtkSourceHover* gtk_source_view_get_hover(GtkSourceView* view);
	int gtk_source_view_get_indent_on_tab(GtkSourceView* view);
	int gtk_source_view_get_indent_width(GtkSourceView* view);
	GtkSourceIndenter* gtk_source_view_get_indenter(GtkSourceView* view);
	int gtk_source_view_get_insert_spaces_instead_of_tabs(GtkSourceView* view);
	GtkSourceMarkAttributes* gtk_source_view_get_mark_attributes(GtkSourceView* view, const(char)* category, int* priority);
	uint gtk_source_view_get_right_margin_position(GtkSourceView* view);
	int gtk_source_view_get_show_line_marks(GtkSourceView* view);
	int gtk_source_view_get_show_line_numbers(GtkSourceView* view);
	int gtk_source_view_get_show_right_margin(GtkSourceView* view);
	int gtk_source_view_get_smart_backspace(GtkSourceView* view);
	GtkSourceSmartHomeEndType gtk_source_view_get_smart_home_end(GtkSourceView* view);
	GtkSourceSpaceDrawer* gtk_source_view_get_space_drawer(GtkSourceView* view);
	uint gtk_source_view_get_tab_width(GtkSourceView* view);
	uint gtk_source_view_get_visual_column(GtkSourceView* view, GtkTextIter* iter);
	void gtk_source_view_indent_lines(GtkSourceView* view, GtkTextIter* start, GtkTextIter* end);
	void gtk_source_view_push_snippet(GtkSourceView* view, GtkSourceSnippet* snippet, GtkTextIter* location);
	void gtk_source_view_set_auto_indent(GtkSourceView* view, int enable);
	void gtk_source_view_set_background_pattern(GtkSourceView* view, GtkSourceBackgroundPatternType backgroundPattern);
	void gtk_source_view_set_enable_snippets(GtkSourceView* view, int enableSnippets);
	void gtk_source_view_set_highlight_current_line(GtkSourceView* view, int highlight);
	void gtk_source_view_set_indent_on_tab(GtkSourceView* view, int enable);
	void gtk_source_view_set_indent_width(GtkSourceView* view, int width);
	void gtk_source_view_set_indenter(GtkSourceView* view, GtkSourceIndenter* indenter);
	void gtk_source_view_set_insert_spaces_instead_of_tabs(GtkSourceView* view, int enable);
	void gtk_source_view_set_mark_attributes(GtkSourceView* view, const(char)* category, GtkSourceMarkAttributes* attributes, int priority);
	void gtk_source_view_set_right_margin_position(GtkSourceView* view, uint pos);
	void gtk_source_view_set_show_line_marks(GtkSourceView* view, int show);
	void gtk_source_view_set_show_line_numbers(GtkSourceView* view, int show);
	void gtk_source_view_set_show_right_margin(GtkSourceView* view, int show);
	void gtk_source_view_set_smart_backspace(GtkSourceView* view, int smartBackspace);
	void gtk_source_view_set_smart_home_end(GtkSourceView* view, GtkSourceSmartHomeEndType smartHomeEnd);
	void gtk_source_view_set_tab_width(GtkSourceView* view, uint width);
	void gtk_source_view_unindent_lines(GtkSourceView* view, GtkTextIter* start, GtkTextIter* end);

	// sourceview.VimIMContext

	GType gtk_source_vim_im_context_get_type();
	GtkIMContext* gtk_source_vim_im_context_new();
	void gtk_source_vim_im_context_execute_command(GtkSourceVimIMContext* self, const(char)* command);
	const(char)* gtk_source_vim_im_context_get_command_bar_text(GtkSourceVimIMContext* self);
	const(char)* gtk_source_vim_im_context_get_command_text(GtkSourceVimIMContext* self);
}