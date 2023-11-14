var _buffer_file = buffer_create(max_beat*8,buffer_fixed,1);

for(var _i = 0; _i < max_beat ; _i++ ){
	buffer_write(_buffer_file,buffer_u64,beat_map[_i]);	
}

buffer_save(_buffer_file, "songsavedata.bin");

buffer_delete(_buffer_file);