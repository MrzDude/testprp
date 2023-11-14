beat_tick = false;
semi_beat_tick = false;
semi_semi_beat_tick = false;

var _song_position = obj_song_player.song_position;
var _secs_per_beat = obj_song_player.secs_per_beat;

beat_modulo = _song_position%_secs_per_beat;

in_beat_window = check_in_beat_window(beat_modulo, beat_window, _secs_per_beat);
in_semi_beat_window = in_beat_window or partial_check_in_semi_beat_window(beat_modulo, beat_window, _secs_per_beat);
in_semi_semi_beat_window = in_semi_beat_window or partial_check_in_semi_semi_beat_window(beat_modulo, beat_window, _secs_per_beat);
beat_tick = in_beat_window and available_tick;
semi_beat_tick = in_semi_beat_window and available_semi_tick;
semi_semi_beat_tick = in_semi_semi_beat_window and available_semi_semi_tick;

available_semi_semi_tick = !in_semi_semi_beat_window;
available_semi_tick = !in_semi_beat_window;
available_tick = !in_beat_window 

//show_debug_message($"beat: {beat_tick} {semi_beat_tick} {semi_semi_beat_tick} - pos: {_song_position}")