var buffer_file = buffer_create(max_beat*8,buffer_fixed,1);

for(var i = 0; i < max_beat ; i++ ){
	buffer_write(buffer_file,buffer_u64,beat_map[i]);	
}

buffer_save(buffer_file, "songsavedata.bin");

buffer_delete(buffer_file);






