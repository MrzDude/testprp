if(playing){
	audio_pause_sound(song_id);
	playing = false;
}else{
	audio_resume_sound(song_id);
	playing = true;	
}



