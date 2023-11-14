max_beat = int64(obj_song_player.song_length / obj_song_player.secs_per_beat);
beat_map[max_beat] = 0;
song_position_in_beats = 0;

data_buffer = buffer_create(max_beat*8,buffer_fixed,1);
buffer_load_partial(data_buffer, "songsavedata.bin", 0, max_beat*8, 0);
for(var _i = 0; _i < max_beat ; _i++ ){
	beat_map[_i] = buffer_read(data_buffer,buffer_u64);
}
buffer_delete(data_buffer);

update = function(){
	event_user(0);	
}









