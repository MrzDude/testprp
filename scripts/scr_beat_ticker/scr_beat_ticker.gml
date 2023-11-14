function check_in_beat_window(_beat_modulo, _beat_window, _secs_per_beat){
	return _beat_modulo < _beat_window or _beat_modulo > _secs_per_beat - _beat_window;
}
function partial_check_in_semi_beat_window(_beat_modulo, _beat_window, _secs_per_beat){
	var _offset = _secs_per_beat/2;
	_beat_window += _offset;
	return _beat_modulo < _beat_window and _beat_modulo > _secs_per_beat - _beat_window;
}
function partial_check_in_semi_semi_beat_window(_beat_modulo, _beat_window, _secs_per_beat){
	var _offset = _secs_per_beat/4;
	var _aux = _beat_window;
	_beat_window += _offset;
	var _first = _beat_modulo < _beat_window and _beat_modulo > _offset - _aux;
	var _second_offset = _offset*2;
	var _second = _beat_modulo < _beat_window + _second_offset and _beat_modulo > _secs_per_beat - _beat_window;
	return _first or _second;
}