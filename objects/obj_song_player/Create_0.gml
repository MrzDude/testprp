bpm = 180;
secs_per_beat = 60/bpm;
song_position = 0;
song_offset = 0.05;
song_id = audio_play_sound(Song1,1000,true);
song_length = audio_sound_length(song_id);
translation = 1;

audio_pause_sound(song_id);
is_paused = true;

update = function(){
	event_user(0);	
}