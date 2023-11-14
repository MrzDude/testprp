max_beat = obj_beat_map.max_beat;
max_objects_per_beat = 20;
max_params = 10;
index_per_beat = 4
size = (max_beat + 1) * index_per_beat * max_objects_per_beat * max_params;
level_beat_map[size] = 0;
save_file_name = "song_level_data.bin";
beat_index = 0;

data_buffer = buffer_create(size*8,buffer_fixed,1);
buffer_load_partial(data_buffer, save_file_name, 0, size*8, 0);
for(var _i = 0; _i < size; _i++ ){
	level_beat_map[_i] = buffer_read(data_buffer,buffer_u64);
}
buffer_delete(data_buffer);

update = function(){
	event_user(0);	
}

get_free_index = function(){
	var _index_start = beat_index * max_objects_per_beat * max_params; 
	beat_length = _index_start + max_params * max_objects_per_beat;
	for(var _i = _index_start; _i < beat_length; _i += max_params){
		if(level_beat_map[_i] == 0){
			show_debug_message($"index : {_i}");
			return _i;	
		}
	}
	return -1;
}

add = function(_type, _creation_time, _param_1, _param_2, _param_3, _param_4){
	var _index = get_free_index();
	level_beat_map[_index] = _type;
	level_beat_map[_index + 1] = _creation_time;
	level_beat_map[_index + 2] = 1;
	level_beat_map[_index + 3] = _param_1;
	level_beat_map[_index + 4] = _param_2;
	level_beat_map[_index + 5] = _param_3;
	level_beat_map[_index + 6] = _param_4;

}

delete_ = function(_index){
	level_beat_map[_index] = 0;
	level_beat_map[_index + 1] = 0;
	level_beat_map[_index + 2] = 0;
	level_beat_map[_index + 3] = 0;
	level_beat_map[_index + 4] = 0;
	level_beat_map[_index + 5] = 0;
	level_beat_map[_index + 6] = 0;

}