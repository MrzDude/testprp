if(obj_beat_ticker.beat_tick == true){
	image_index = (image_index + 1) mod image_number;	
}  


draw_self();
/*
if(Beat.beat_hit == true){
	Beat.beat_hit = false;
	beat_effect_duration = 6;
}
if(beat_effect_duration > 0){
	beat_effect_duration--;
	draw_circle(x,y-30,5,false);
}












