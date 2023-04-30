/// @description Insert description here
// You can write your code in this editor
clamp(image_alpha,-0.1,1)
if appear = true and image_alpha <= 1 {
	
image_alpha += 0.05	
	
} else if appear = false  {
image_alpha -= 0.05	

	
}
if image_alpha < 0 {
	if audio_is_playing(snd_scary_violin)
	{
	audio_sound_gain(snd_scary_violin,0,2000)
		if audio_sound_get_gain(snd_scary_violin) <= 0
		{	
		audio_stop_sound(snd_scary_violin)	
		instance_destroy(self)		
		}
	}	

}
if appear =  true and sound_played = false
{
	audio_play_sound(snd_letter_flip,1,false)
	sound_played = true	
}
