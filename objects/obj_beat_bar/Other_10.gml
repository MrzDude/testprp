var _delta_inter_beat = (obj_song_player.song_position%obj_song_player.secs_per_beat)/obj_song_player.secs_per_beat;

draw_line(x_bar, y_bar,x_bar + bar_size, y_bar);
draw_line(x_bar, y_bar-40, x_bar_center, y_bar+40);

var _beat_line_pos = (x_bar + distance_per_beat) - (distance_per_beat * _delta_inter_beat);
for(var _i = 0; _i < number_of_beats; _i++){
	beat_line_positions[_i] = _beat_line_pos;
	_beat_line_pos += distance_per_beat;
}

var _max_beat = obj_beat_map.max_beat;
var _song_position_in_beats = obj_beat_map.song_position_in_beats

var _index_start = max(_song_position_in_beats - (number_of_beats/2 - 1), 0);
//var _index_end = min(_song_position_in_beats + number_of_beats/2, _max_beat);

relative_index_start = max(0, number_of_beats/2-1 - _song_position_in_beats);
relative_index_end = min(number_of_beats, number_of_beats/2 + _max_beat - _song_position_in_beats);

debug_msg = $"_index_start {_index_start} relative_index_start {relative_index_start} relative_index_end {relative_index_end}";	

for(var _i = relative_index_start; _i < relative_index_end; _i++){
	beat_map_relative_indices[_i] = _index_start;
	_index_start++;
}



