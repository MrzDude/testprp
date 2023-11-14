var _x = 100;
var _y = 100;
var _line_size = 800;
var _marker_position = (song_position/song_length) * _line_size + _x;
draw_line(_x, _y, _x +_line_size, _y);
draw_circle(_marker_position, _y, 5, false);
draw_text(_x, _y + 30, $"{song_position} / {song_length} BPM: {bpm} beat_index: {obj_beat_map.song_position_in_beats} translation: {translation}");	










