/// @description Insert description here
// You can write your code in this editor
if room = rm_title or room = rm_start
{
	if !audio_is_playing(snd_intro_bgm)
	{
	audio_play_sound(snd_intro_bgm,1,true)	
		
		
	}	
	
	
	
} else if room = rm_main
{
	if !audio_is_playing(snd_store_bgm)
	{
	audio_play_sound(snd_store_bgm,1,true)	
	audio_sound_gain(snd_store_bgm,0,0)		
	audio_sound_gain(snd_store_bgm,0.5,4000)				
	}
	if audio_is_playing(snd_intro_bgm)
	{
	audio_sound_gain(snd_intro_bgm,0,2000)
		if audio_sound_get_gain(snd_intro_bgm) <= 0
		{	
		audio_stop_sound(snd_intro_bgm)	
		}
	}
}