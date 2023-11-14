var _type = 1;
var _current_time = obj_song_player.song_position;
var _death_time = 5;
var _x = mouse_x;
var _y = mouse_y;
var _dir = 1;

if(keyboard_check_pressed(ord("T"))){
	obj_level_beat_map.add(_type, _current_time, _death_time, _x, _y, _dir);	
}










