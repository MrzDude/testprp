beat_index = int64(obj_song_player.song_position / (obj_song_player.secs_per_beat / index_per_beat));
var _beat_index = max(0, beat_index - 1);

var _index_start =_beat_index * max_objects_per_beat * max_params; 
var _beat_row = _index_start + max_objects_per_beat * max_params * 2;

var _current_song_time = obj_song_player.song_position;
var _type = 0;
var _creation_time = 0;
var _state = 0;
var _param_1 = 0;
var _param_2 = 0;
var _param_3 = 0;
var _param_4 = 0;

for(var _i = _index_start; _i < _beat_row; _i += max_params){
	_type = level_beat_map[_i];
	_creation_time = level_beat_map[_i+1];
	_state = level_beat_map[_i+2];
	_param_1 = level_beat_map[_i+3]; //death_time
	_param_2 = level_beat_map[_i+4]; //x
	_param_3 = level_beat_map[_i+5]; //y
	_param_4 = level_beat_map[_i+6]; //

	if(_state != 0 and _creation_time < _current_song_time){
		switch(_type){
			case 1:
				var _id = instance_create_depth(_param_2, _param_3, 50, obj_arrow);
				with(_id){
					death_time = _param_1;
					dir = _param_4;
					creation_time = _creation_time;
				}
				show_debug_message("obj1");
			break;		
			case 2:
			break;		
			case 3:
			break;
			case 4:
			break;		
		}
		_state = 0;
		level_beat_map[_i+2] = _state;
	}
}



