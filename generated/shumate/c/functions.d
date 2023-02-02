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


module shumate.c.functions;

import std.stdio;
import shumate.c.types;
version (Windows)
	static immutable LIBRARY_SHUMATE = ["libshumate-1.0-1.dll;shumate-1.0-1.dll;shumate-1.dll"];
else version (OSX)
	static immutable LIBRARY_SHUMATE = ["libshumate-1.0.1.dylib"];
else
	static immutable LIBRARY_SHUMATE = ["libshumate-1.0.so.1"];

__gshared extern(C)
{

	// shumate.Compass

	GType shumate_compass_get_type();
	ShumateCompass* shumate_compass_new(ShumateViewport* viewport);
	ShumateViewport* shumate_compass_get_viewport(ShumateCompass* compass);
	void shumate_compass_set_viewport(ShumateCompass* compass, ShumateViewport* viewport);

	// shumate.Coordinate

	GType shumate_coordinate_get_type();
	ShumateCoordinate* shumate_coordinate_new();
	ShumateCoordinate* shumate_coordinate_new_full(double latitude, double longitude);

	// shumate.DataSource

	GType shumate_data_source_get_type();
	uint shumate_data_source_get_max_zoom_level(ShumateDataSource* self);
	uint shumate_data_source_get_min_zoom_level(ShumateDataSource* self);
	void shumate_data_source_get_tile_data_async(ShumateDataSource* self, int x, int y, int zoomLevel, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GBytes* shumate_data_source_get_tile_data_finish(ShumateDataSource* self, GAsyncResult* result, GError** err);
	void shumate_data_source_set_max_zoom_level(ShumateDataSource* self, uint zoomLevel);
	void shumate_data_source_set_min_zoom_level(ShumateDataSource* self, uint zoomLevel);

	// shumate.FileCache

	GType shumate_file_cache_get_type();
	ShumateFileCache* shumate_file_cache_new_full(uint sizeLimit, const(char)* cacheKey, const(char)* cacheDir);
	const(char)* shumate_file_cache_get_cache_dir(ShumateFileCache* self);
	const(char)* shumate_file_cache_get_cache_key(ShumateFileCache* self);
	uint shumate_file_cache_get_size_limit(ShumateFileCache* self);
	void shumate_file_cache_get_tile_async(ShumateFileCache* self, int x, int y, int zoomLevel, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	GBytes* shumate_file_cache_get_tile_finish(ShumateFileCache* self, char** etag, GDateTime** modtime, GAsyncResult* result, GError** err);
	void shumate_file_cache_mark_up_to_date(ShumateFileCache* self, int x, int y, int zoomLevel);
	void shumate_file_cache_purge_cache_async(ShumateFileCache* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int shumate_file_cache_purge_cache_finish(ShumateFileCache* self, GAsyncResult* result, GError** err);
	void shumate_file_cache_set_size_limit(ShumateFileCache* self, uint sizeLimit);
	void shumate_file_cache_store_tile_async(ShumateFileCache* self, int x, int y, int zoomLevel, GBytes* bytes, const(char)* etag, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int shumate_file_cache_store_tile_finish(ShumateFileCache* self, GAsyncResult* result, GError** err);

	// shumate.Layer

	GType shumate_layer_get_type();
	ShumateViewport* shumate_layer_get_viewport(ShumateLayer* self);

	// shumate.LicenseSh

	GType shumate_license_get_type();
	ShumateLicense* shumate_license_new();
	void shumate_license_append_map_source(ShumateLicense* license, ShumateMapSource* mapSource);
	const(char)* shumate_license_get_extra_text(ShumateLicense* license);
	float shumate_license_get_xalign(ShumateLicense* license);
	void shumate_license_prepend_map_source(ShumateLicense* license, ShumateMapSource* mapSource);
	void shumate_license_remove_map_source(ShumateLicense* license, ShumateMapSource* mapSource);
	void shumate_license_set_extra_text(ShumateLicense* license, const(char)* text);
	void shumate_license_set_xalign(ShumateLicense* license, float xalign);

	// shumate.Location

	GType shumate_location_get_type();
	double shumate_location_get_latitude(ShumateLocation* location);
	double shumate_location_get_longitude(ShumateLocation* location);
	void shumate_location_set_location(ShumateLocation* location, double latitude, double longitude);

	// shumate.Map

	GType shumate_map_get_type();
	ShumateMap* shumate_map_new();
	ShumateMap* shumate_map_new_simple();
	void shumate_map_add_layer(ShumateMap* self, ShumateLayer* layer);
	void shumate_map_center_on(ShumateMap* self, double latitude, double longitude);
	int shumate_map_get_animate_zoom(ShumateMap* self);
	uint shumate_map_get_go_to_duration(ShumateMap* self);
	ShumateState shumate_map_get_state(ShumateMap* self);
	ShumateViewport* shumate_map_get_viewport(ShumateMap* self);
	int shumate_map_get_zoom_on_double_click(ShumateMap* self);
	void shumate_map_go_to(ShumateMap* self, double latitude, double longitude);
	void shumate_map_go_to_full(ShumateMap* self, double latitude, double longitude, double zoomLevel);
	void shumate_map_go_to_full_with_duration(ShumateMap* self, double latitude, double longitude, double zoomLevel, uint durationMs);
	void shumate_map_insert_layer_above(ShumateMap* self, ShumateLayer* layer, ShumateLayer* nextSibling);
	void shumate_map_insert_layer_behind(ShumateMap* self, ShumateLayer* layer, ShumateLayer* nextSibling);
	void shumate_map_remove_layer(ShumateMap* self, ShumateLayer* layer);
	void shumate_map_set_animate_zoom(ShumateMap* self, int value);
	void shumate_map_set_go_to_duration(ShumateMap* self, uint duration);
	void shumate_map_set_map_source(ShumateMap* self, ShumateMapSource* mapSource);
	void shumate_map_set_zoom_on_double_click(ShumateMap* self, int value);
	void shumate_map_stop_go_to(ShumateMap* self);
	void shumate_map_zoom_in(ShumateMap* self);
	void shumate_map_zoom_out(ShumateMap* self);

	// shumate.MapLayer

	GType shumate_map_layer_get_type();
	ShumateMapLayer* shumate_map_layer_new(ShumateMapSource* mapSource, ShumateViewport* viewport);

	// shumate.MapSource

	GType shumate_map_source_get_type();
	void shumate_map_source_fill_tile_async(ShumateMapSource* self, ShumateTile* tile, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData);
	int shumate_map_source_fill_tile_finish(ShumateMapSource* self, GAsyncResult* result, GError** err);
	uint shumate_map_source_get_column_count(ShumateMapSource* mapSource, uint zoomLevel);
	const(char)* shumate_map_source_get_id(ShumateMapSource* mapSource);
	double shumate_map_source_get_latitude(ShumateMapSource* mapSource, double zoomLevel, double y);
	const(char)* shumate_map_source_get_license(ShumateMapSource* mapSource);
	const(char)* shumate_map_source_get_license_uri(ShumateMapSource* mapSource);
	double shumate_map_source_get_longitude(ShumateMapSource* mapSource, double zoomLevel, double x);
	uint shumate_map_source_get_max_zoom_level(ShumateMapSource* mapSource);
	double shumate_map_source_get_meters_per_pixel(ShumateMapSource* mapSource, double zoomLevel, double latitude, double longitude);
	uint shumate_map_source_get_min_zoom_level(ShumateMapSource* mapSource);
	const(char)* shumate_map_source_get_name(ShumateMapSource* mapSource);
	ShumateMapProjection shumate_map_source_get_projection(ShumateMapSource* mapSource);
	uint shumate_map_source_get_row_count(ShumateMapSource* mapSource, uint zoomLevel);
	uint shumate_map_source_get_tile_size(ShumateMapSource* mapSource);
	double shumate_map_source_get_tile_size_at_zoom(ShumateMapSource* mapSource, double zoomLevel);
	double shumate_map_source_get_x(ShumateMapSource* mapSource, double zoomLevel, double longitude);
	double shumate_map_source_get_y(ShumateMapSource* mapSource, double zoomLevel, double latitude);
	void shumate_map_source_set_id(ShumateMapSource* mapSource, const(char)* id);
	void shumate_map_source_set_license(ShumateMapSource* mapSource, const(char)* license);
	void shumate_map_source_set_license_uri(ShumateMapSource* mapSource, const(char)* licenseUri);
	void shumate_map_source_set_max_zoom_level(ShumateMapSource* mapSource, uint zoomLevel);
	void shumate_map_source_set_min_zoom_level(ShumateMapSource* mapSource, uint zoomLevel);
	void shumate_map_source_set_name(ShumateMapSource* mapSource, const(char)* name);
	void shumate_map_source_set_projection(ShumateMapSource* mapSource, ShumateMapProjection projection);
	void shumate_map_source_set_tile_size(ShumateMapSource* mapSource, uint tileSize);

	// shumate.MapSourceRegistry

	GType shumate_map_source_registry_get_type();
	ShumateMapSourceRegistry* shumate_map_source_registry_new();
	ShumateMapSourceRegistry* shumate_map_source_registry_new_with_defaults();
	void shumate_map_source_registry_add(ShumateMapSourceRegistry* self, ShumateMapSource* mapSource);
	ShumateMapSource* shumate_map_source_registry_get_by_id(ShumateMapSourceRegistry* self, const(char)* id);
	void shumate_map_source_registry_populate_defaults(ShumateMapSourceRegistry* self);
	void shumate_map_source_registry_remove(ShumateMapSourceRegistry* self, const(char)* id);

	// shumate.Marker

	GType shumate_marker_get_type();
	ShumateMarker* shumate_marker_new();
	void shumate_marker_animate_in(ShumateMarker* marker);
	void shumate_marker_animate_in_with_delay(ShumateMarker* marker, uint delay);
	void shumate_marker_animate_out(ShumateMarker* marker);
	void shumate_marker_animate_out_with_delay(ShumateMarker* marker, uint delay);
	GtkWidget* shumate_marker_get_child(ShumateMarker* marker);
	int shumate_marker_get_draggable(ShumateMarker* marker);
	int shumate_marker_get_selectable(ShumateMarker* marker);
	int shumate_marker_is_selected(ShumateMarker* marker);
	void shumate_marker_set_child(ShumateMarker* marker, GtkWidget* child);
	void shumate_marker_set_draggable(ShumateMarker* marker, int value);
	void shumate_marker_set_selectable(ShumateMarker* marker, int value);

	// shumate.MarkerLayer

	GType shumate_marker_layer_get_type();
	ShumateMarkerLayer* shumate_marker_layer_new(ShumateViewport* viewport);
	ShumateMarkerLayer* shumate_marker_layer_new_full(ShumateViewport* viewport, GtkSelectionMode mode);
	void shumate_marker_layer_add_marker(ShumateMarkerLayer* self, ShumateMarker* marker);
	GList* shumate_marker_layer_get_markers(ShumateMarkerLayer* self);
	GList* shumate_marker_layer_get_selected(ShumateMarkerLayer* self);
	GtkSelectionMode shumate_marker_layer_get_selection_mode(ShumateMarkerLayer* self);
	void shumate_marker_layer_remove_all(ShumateMarkerLayer* self);
	void shumate_marker_layer_remove_marker(ShumateMarkerLayer* self, ShumateMarker* marker);
	void shumate_marker_layer_select_all_markers(ShumateMarkerLayer* self);
	int shumate_marker_layer_select_marker(ShumateMarkerLayer* self, ShumateMarker* marker);
	void shumate_marker_layer_set_selection_mode(ShumateMarkerLayer* self, GtkSelectionMode mode);
	void shumate_marker_layer_unselect_all_markers(ShumateMarkerLayer* self);
	void shumate_marker_layer_unselect_marker(ShumateMarkerLayer* self, ShumateMarker* marker);

	// shumate.PathLayer

	GType shumate_path_layer_get_type();
	ShumatePathLayer* shumate_path_layer_new(ShumateViewport* viewport);
	void shumate_path_layer_add_node(ShumatePathLayer* self, ShumateLocation* location);
	int shumate_path_layer_get_closed(ShumatePathLayer* self);
	GList* shumate_path_layer_get_dash(ShumatePathLayer* self);
	int shumate_path_layer_get_fill(ShumatePathLayer* self);
	GdkRGBA* shumate_path_layer_get_fill_color(ShumatePathLayer* self);
	GList* shumate_path_layer_get_nodes(ShumatePathLayer* self);
	GdkRGBA* shumate_path_layer_get_outline_color(ShumatePathLayer* self);
	double shumate_path_layer_get_outline_width(ShumatePathLayer* self);
	int shumate_path_layer_get_stroke(ShumatePathLayer* self);
	GdkRGBA* shumate_path_layer_get_stroke_color(ShumatePathLayer* self);
	double shumate_path_layer_get_stroke_width(ShumatePathLayer* self);
	void shumate_path_layer_insert_node(ShumatePathLayer* self, ShumateLocation* location, uint position);
	void shumate_path_layer_remove_all(ShumatePathLayer* self);
	void shumate_path_layer_remove_node(ShumatePathLayer* self, ShumateLocation* location);
	void shumate_path_layer_set_closed(ShumatePathLayer* self, int value);
	void shumate_path_layer_set_dash(ShumatePathLayer* self, GList* dashPattern);
	void shumate_path_layer_set_fill(ShumatePathLayer* self, int value);
	void shumate_path_layer_set_fill_color(ShumatePathLayer* self, GdkRGBA* color);
	void shumate_path_layer_set_outline_color(ShumatePathLayer* self, GdkRGBA* color);
	void shumate_path_layer_set_outline_width(ShumatePathLayer* self, double value);
	void shumate_path_layer_set_stroke(ShumatePathLayer* self, int value);
	void shumate_path_layer_set_stroke_color(ShumatePathLayer* self, GdkRGBA* color);
	void shumate_path_layer_set_stroke_width(ShumatePathLayer* self, double value);

	// shumate.Point

	GType shumate_point_get_type();
	ShumateMarker* shumate_point_new();

	// shumate.RasterRenderer

	GType shumate_raster_renderer_get_type();
	ShumateRasterRenderer* shumate_raster_renderer_new(ShumateDataSource* dataSource);
	ShumateRasterRenderer* shumate_raster_renderer_new_from_url(const(char)* urlTemplate);
	ShumateRasterRenderer* shumate_raster_renderer_new_full(const(char)* id, const(char)* name, const(char)* license, const(char)* licenseUri, uint minZoom, uint maxZoom, uint tileSize, ShumateMapProjection projection, ShumateDataSource* dataSource);
	ShumateRasterRenderer* shumate_raster_renderer_new_full_from_url(const(char)* id, const(char)* name, const(char)* license, const(char)* licenseUri, uint minZoom, uint maxZoom, uint tileSize, ShumateMapProjection projection, const(char)* urlTemplate);

	// shumate.Scale

	GType shumate_scale_get_type();
	ShumateScale* shumate_scale_new(ShumateViewport* viewport);
	uint shumate_scale_get_max_width(ShumateScale* scale);
	ShumateUnit shumate_scale_get_unit(ShumateScale* scale);
	ShumateViewport* shumate_scale_get_viewport(ShumateScale* scale);
	void shumate_scale_set_max_width(ShumateScale* scale, uint value);
	void shumate_scale_set_unit(ShumateScale* scale, ShumateUnit unit);
	void shumate_scale_set_viewport(ShumateScale* scale, ShumateViewport* viewport);

	// shumate.SimpleMap

	GType shumate_simple_map_get_type();
	ShumateSimpleMap* shumate_simple_map_new();
	void shumate_simple_map_add_overlay_layer(ShumateSimpleMap* self, ShumateLayer* layer);
	ShumateCompass* shumate_simple_map_get_compass(ShumateSimpleMap* self);
	ShumateLicense* shumate_simple_map_get_license(ShumateSimpleMap* self);
	ShumateMap* shumate_simple_map_get_map(ShumateSimpleMap* self);
	ShumateMapSource* shumate_simple_map_get_map_source(ShumateSimpleMap* self);
	ShumateScale* shumate_simple_map_get_scale(ShumateSimpleMap* self);
	int shumate_simple_map_get_show_zoom_buttons(ShumateSimpleMap* self);
	ShumateViewport* shumate_simple_map_get_viewport(ShumateSimpleMap* self);
	void shumate_simple_map_insert_overlay_layer(ShumateSimpleMap* self, ShumateLayer* layer, uint idx);
	void shumate_simple_map_remove_overlay_layer(ShumateSimpleMap* self, ShumateLayer* layer);
	void shumate_simple_map_set_map_source(ShumateSimpleMap* self, ShumateMapSource* mapSource);
	void shumate_simple_map_set_show_zoom_buttons(ShumateSimpleMap* self, int showZoomButtons);

	// shumate.SymbolEvent

	GType shumate_symbol_event_get_type();
	const(char)* shumate_symbol_event_get_feature_id(ShumateSymbolEvent* self);
	const(char)* shumate_symbol_event_get_layer(ShumateSymbolEvent* self);
	const(char)* shumate_symbol_event_get_tag(ShumateSymbolEvent* self, const(char)* tagName);

	// shumate.Tile

	GType shumate_tile_get_type();
	ShumateTile* shumate_tile_new();
	ShumateTile* shumate_tile_new_full(uint x, uint y, uint size, uint zoomLevel);
	const(char)* shumate_tile_get_etag(ShumateTile* self);
	int shumate_tile_get_fade_in(ShumateTile* self);
	GDateTime* shumate_tile_get_modified_time(ShumateTile* self);
	GdkPaintable* shumate_tile_get_paintable(ShumateTile* self);
	uint shumate_tile_get_size(ShumateTile* self);
	ShumateState shumate_tile_get_state(ShumateTile* self);
	uint shumate_tile_get_x(ShumateTile* self);
	uint shumate_tile_get_y(ShumateTile* self);
	uint shumate_tile_get_zoom_level(ShumateTile* self);
	void shumate_tile_set_etag(ShumateTile* self, const(char)* etag);
	void shumate_tile_set_fade_in(ShumateTile* self, int fadeIn);
	void shumate_tile_set_modified_time(ShumateTile* self, GDateTime* modifiedTime);
	void shumate_tile_set_paintable(ShumateTile* self, GdkPaintable* paintable);
	void shumate_tile_set_size(ShumateTile* self, uint size);
	void shumate_tile_set_state(ShumateTile* self, ShumateState state);
	void shumate_tile_set_x(ShumateTile* self, uint x);
	void shumate_tile_set_y(ShumateTile* self, uint y);
	void shumate_tile_set_zoom_level(ShumateTile* self, uint zoomLevel);

	// shumate.TileDownloader

	GType shumate_tile_downloader_get_type();
	ShumateTileDownloader* shumate_tile_downloader_new(const(char)* urlTemplate);

	// shumate.VectorRenderer

	GType shumate_vector_renderer_get_type();
	ShumateVectorRenderer* shumate_vector_renderer_new(const(char)* id, const(char)* styleJson, GError** err);
	int shumate_vector_renderer_is_supported();
	int shumate_vector_renderer_set_sprite_sheet_data(ShumateVectorRenderer* self, GdkPixbuf* spritesPixbuf, const(char)* spritesJson, GError** err);

	// shumate.Viewport

	GType shumate_viewport_get_type();
	ShumateViewport* shumate_viewport_new();
	uint shumate_viewport_get_max_zoom_level(ShumateViewport* self);
	uint shumate_viewport_get_min_zoom_level(ShumateViewport* self);
	ShumateMapSource* shumate_viewport_get_reference_map_source(ShumateViewport* self);
	double shumate_viewport_get_rotation(ShumateViewport* self);
	double shumate_viewport_get_zoom_level(ShumateViewport* self);
	void shumate_viewport_location_to_widget_coords(ShumateViewport* self, GtkWidget* widget, double latitude, double longitude, double* x, double* y);
	void shumate_viewport_set_max_zoom_level(ShumateViewport* self, uint maxZoomLevel);
	void shumate_viewport_set_min_zoom_level(ShumateViewport* self, uint minZoomLevel);
	void shumate_viewport_set_reference_map_source(ShumateViewport* self, ShumateMapSource* mapSource);
	void shumate_viewport_set_rotation(ShumateViewport* self, double rotation);
	void shumate_viewport_set_zoom_level(ShumateViewport* self, double zoomLevel);
	void shumate_viewport_widget_coords_to_location(ShumateViewport* self, GtkWidget* widget, double x, double y, double* latitude, double* longitude);
}