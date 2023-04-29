/// @description Insert description here
// You can write your code in this editor
if collision = true and activated = true {
		if audio_is_playing(snd_walk)
	{
	
		audio_stop_sound(snd_walk)
		
	}
		if audio_is_playing(snd_running)
	{
	
		audio_stop_sound(snd_running)
		
	}	
	create_textbox(target_speech)	
	collision = false	

} 