draw_line(x_bar, y_bar, x_bar + bar_size, y_bar);
draw_line(x_bar_center, y_bar - 40, x_bar_center, y_bar + 40);

for(var _i = relative_index_start; _i < relative_index_end; _i++){
	var _beat_line_pos = beat_line_positions[_i];
	draw_line(_beat_line_pos, y_bar - 20, _beat_line_pos, y_bar + 20);
	var _beat_map_index = beat_map_relative_indices[_i];
	var _value = obj_beat_map.beat_map[_beat_map_index];
	draw_text(_beat_line_pos, y_bar + 40, $"{_value}-{_beat_map_index}");
}

if(obj_beat_bar_controller.check_draw){
	draw_circle(obj_beat_bar_controller.check_x_position, obj_beat_bar_controller.check_y_position, 5, false);	
}


draw_text(100,600,debug_msg);