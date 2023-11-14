beat_window = 0.01;
beat_modulo = 0;

in_beat_window = false;
in_semi_beat_window = false;
in_semi_semi_beat_window = false;
beat_tick = false;
semi_beat_tick = false;
semi_semi_beat_tick = false;

available_tick = false;
available_semi_tick = false;
available_semi_semi_tick = false;

update = function(){
	event_user(0);	
}