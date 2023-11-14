song_position_in_beats = int64(obj_song_player.song_position / obj_song_player.secs_per_beat);
var _fixed_song_position_in_beats = song_position_in_beats; 
_fixed_song_position_in_beats += obj_beat_ticker.beat_modulo > obj_song_player.secs_per_beat/2 ? 1 : 0;
_fixed_song_position_in_beats = min(_fixed_song_position_in_beats, max_beat);
if(obj_beat_ticker.beat_tick and beat_map[_fixed_song_position_in_beats] == 1){
	screen_shake(5, 3, 0.4);
}