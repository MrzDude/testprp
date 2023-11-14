check_draw = false;
var _index_start = obj_beat_bar.relative_index_start; 
var _index_end = obj_beat_bar.relative_index_end;
var _over_distance = 15;
var _y_bar = obj_beat_bar.y_bar

var _beat_map_index = 0;
var _value = 0
var _is_mouse_over = false;
for(var _i = _index_start; _i < _index_end; _i++){
	var _beat_line_position = obj_beat_bar.beat_line_positions[_i];
	_is_mouse_over = abs(mouse_x - _beat_line_position) < _over_distance and abs(mouse_y - _y_bar) < _over_distance;
	if(_is_mouse_over){
		check_draw = true;
		check_x_position = _beat_line_position;
		check_y_position = _y_bar;
		_beat_map_index = obj_beat_bar.beat_map_relative_indices[_i];
		_value = obj_beat_map.beat_map[_beat_map_index];
		break;
	}
}

var _is_beat_clicked = _is_mouse_over and mouse_check_button_pressed(mb_left)
if(_is_beat_clicked){
	if(_value == 0){
		obj_beat_map.beat_map[_beat_map_index] = 1;
	}else{
		obj_beat_map.beat_map[_beat_map_index] = 0;
	}
}


