playing = true;
BMP = 180;
secs_per_beat = 60/BMP;
song_position = 0;
song_position_beats = 0;
beat_shake = false;
next_beat = false;
offset_circle = 0;
song_id = audio_play_sound(Song1,1000,true);
song_length = audio_sound_length(song_id);
max_beat = int64(song_length/secs_per_beat);
beat_map[max_beat] = 0;
translation = 1;
beat_hit = false;
beat_hit_available = false;	

data_buffer = buffer_create(max_beat*8,buffer_fixed,1);

buffer_load_partial(data_buffer, "songsavedata.bin", 0, max_beat*8, 0);

for(var i = 0; i < max_beat ; i++ ){
	beat_map[i] = buffer_read(data_buffer,buffer_u64);
}

buffer_delete(data_buffer);








