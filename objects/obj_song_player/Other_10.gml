song_position = audio_sound_get_track_position(song_id) - song_offset;

if(keyboard_check(vk_up)){
	translation = min(translation + 0.005, 5);
}
if(keyboard_check(vk_down)){
	translation = max(translation - 0.005, 0.005);
}

if(keyboard_check(vk_left)){
	audio_sound_set_track_position(song_id,song_position + song_offset - translation);
}
if(keyboard_check(vk_right)){
	audio_sound_set_track_position(song_id,song_position + song_offset + translation);
}










