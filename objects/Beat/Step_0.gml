if(next_beat == true){
	next_beat = false;	
}
song_position = audio_sound_get_track_position(song_id) - 0.05;
song_position_beats = int64(song_position / secs_per_beat);


if((song_position%secs_per_beat) < 0.03 and beat_shake==true and beat_map[song_position_beats] == 1){
	beat_shake = false;
	next_beat = true;
	screen_shake(5, 3, 0.4);
}
if((song_position%secs_per_beat) >= 0.03){
	beat_shake = true;	
}

var hit_window = 0.1;
var in_hit_window =  (song_position%secs_per_beat) < hit_window or (song_position%secs_per_beat) > secs_per_beat-hit_window;
if(beat_hit_available == true and in_hit_window and beat_map[song_position_beats] == 1){
	if(keyboard_check_pressed(ord("J")) and beat_hit == false){
		beat_hit = true;
		beat_hit_available = false;
	}
}
if((song_position%secs_per_beat) >= hit_window and (song_position%secs_per_beat) <= secs_per_beat-hit_window){
	beat_hit_available = true;	
}



if(keyboard_check(vk_up)){
	translation = min(translation + 0.005, 5);
}
if(keyboard_check(vk_down)){
	translation = max(translation - 0.005, 0.005);
}
if(keyboard_check(vk_left)){
	audio_sound_set_track_position(song_id,song_position + 0.05 - translation);
}
if(keyboard_check(vk_right)){
	audio_sound_set_track_position(song_id,song_position + 0.05 + translation);
}




