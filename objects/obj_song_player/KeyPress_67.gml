if(is_paused){
	audio_resume_sound(song_id);
	is_paused = false;
}else{
	audio_pause_sound(song_id);
	is_paused = true;	
}


