var _buffer_file = buffer_create(size*8,buffer_fixed,1);

for(var _i = 0; _i < size; _i++ ){
	buffer_write(_buffer_file,buffer_u64,level_beat_map[_i]);	
}

buffer_save(_buffer_file, save_file_name);

buffer_delete(_buffer_file);












