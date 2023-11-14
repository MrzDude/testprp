draw_bar_info = function(_marker_position, _song_position, _song_length, _song_position_beats, _translation){ 
	draw_line(100,100,900,100);
	draw_circle(100+_marker_position,100,5,false);
	draw_text(100,130,$"{_song_position} / {_song_length} beat: {_song_position_beats} translation: {_translation}");	
}

draw_circle_beats = function(_next_beat){
	static _offset_circle = 0;
	draw_circle(100,160,10,true);
	draw_circle(100+30,160,10,true);
	draw_circle(100+60,160,10,true);
	draw_circle(100+90,160,10,true);

	if(_next_beat == true){
		_offset_circle += 30;
		_offset_circle = _offset_circle % 120;
	}
	draw_circle(100+_offset_circle,160,10,false);
}

function Beat_Bar_Draw(){
	var marker_position = (song_position/song_length)*800;
	global.draw_bar_info(marker_position,song_position,song_length,song_position_beats,translation);
	global.draw_circle_beats(next_beat);

	var _x_draw = 100;
	var _y_draw = 200;
	var _distance_per_beat = 60;
	var _line_size = _distance_per_beat * 20;
	var _x_center = (_x_draw + _line_size)/2;
	var delta_inter_beat = (song_position%secs_per_beat)/secs_per_beat;
	var _next_beat_pos = -(_distance_per_beat * delta_inter_beat) + _x_center;

	draw_line(_x_draw, _y_draw, _x_draw + _line_size, _y_draw);
	draw_line(_x_center,_y_draw-40,_x_center,_y_draw+40);

	var _index_start = max(song_position_beats - 8, 0);
	var _index_end = min(_index_start + 20, max_beat);
	_next_beat_pos -= _distance_per_beat*min(song_position_beats,8);
	

	for (var _index = _index_start; _index < _index_end; _index++)
	{
		if(abs(mouse_x-_next_beat_pos) < 10 and abs(mouse_y-_y_draw) < 10){
			draw_circle(_next_beat_pos,_y_draw,5,false);
			if(mouse_check_button_pressed(mb_left)){
				if(beat_map[_index] == 0){
					beat_map[_index] = 1;	
				}else{
					beat_map[_index] = 0;	
				}
			}
		}
		draw_line(_next_beat_pos,_y_draw-20,_next_beat_pos,_y_draw+20);
		draw_text(_next_beat_pos-3,_y_draw+20,beat_map[_index]);
		_next_beat_pos+=_distance_per_beat;
	}
}
