x_bar = 100;
y_bar = 200;
distance_per_beat = 60;
number_of_beats = 20;
bar_size = distance_per_beat * number_of_beats;
x_bar_center = x_bar + bar_size/2;

beat_line_positions[number_of_beats] = 0;
beat_map_relative_indices[number_of_beats] = 0;
relative_index_start = 0;
relative_index_end = number_of_beats-1;

debug_msg = "";

update = function(){
	event_user(0);	
}