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
	audio_sound_gain(snd_store_bgm,0.2,4000)		
	audio_play_sound(snd_horror_texture,1,true)		
	audio_sound_gain(snd_horror_texture,0,0)		
	audio_sound_gain(snd_horror_texture,0.2,4000)		
	}
	if audio_is_playing(snd_intro_bgm)
	{
	audio_sound_gain(snd_intro_bgm,0,2000)
		if audio_sound_get_gain(snd_intro_bgm) <= 0
		{	
		audio_stop_sound(snd_intro_bgm)	
		}
	}
} else if room = rm_1f_passway_after_kitchen
{
	
	if !audio_is_playing(snd_after_kitchen)
	{	
	audio_play_sound(snd_after_kitchen,1,true)	
	audio_sound_gain(snd_after_kitchen,0,0)		
	audio_sound_gain(snd_after_kitchen,0.2,4000)	
	}
	
}else if room = rm_yuanzi_after_kitchen
{
	
	if audio_is_playing(snd_after_kitchen)
	{
	audio_sound_gain(snd_after_kitchen,0,2000)
		if audio_sound_get_gain(snd_after_kitchen) <= 0
		{	
		audio_stop_sound(snd_after_kitchen)	
		}
	}
}else if room = rm_yuanzi_after_kitchen
{
	
	if audio_is_playing(snd_after_kitchen)
	{
	audio_sound_gain(snd_after_kitchen,0,2000)
		if audio_sound_get_gain(snd_after_kitchen) <= 0
		{	
		audio_stop_sound(snd_after_kitchen)	
		}
	}
}else if room = rm_1f_passway_night
{
	

	if audio_is_playing(snd_store_bgm)
	{
	audio_sound_gain(snd_store_bgm,0,2000)
		if audio_sound_get_gain(snd_store_bgm) <= 0
		{	
		audio_stop_sound(snd_horror_texture)	
		}
	audio_sound_gain(snd_horror_texture,0,2000)
		if audio_sound_get_gain(snd_horror_texture) <= 0
		{	
		audio_stop_sound(snd_horror_texture)	
		}		
	}
	
	
	if audio_is_playing(snd_bgm_night)
	{
	audio_sound_gain(snd_bgm_night,0,2000)
		if audio_sound_get_gain(snd_bgm_night) <= 0
		{	
		audio_stop_sound(snd_bgm_night)	
		}
	audio_sound_gain(snd_bgm_night_layer,0,2000)
		if audio_sound_get_gain(snd_bgm_night_layer) <= 0
		{	
		audio_stop_sound(snd_bgm_night_layer)	
		}		
	}	
	
	
	
	if !audio_is_playing(snd_heart_beat)
	{	
	audio_play_sound(snd_heart_beat,1,true)	
	audio_sound_gain(snd_heart_beat,0,0)		
	audio_sound_gain(snd_heart_beat,0.2,4000)	
	audio_play_sound(snd_chase_bgm,1,true)	
	audio_sound_gain(snd_chase_bgm,0,0)		
	audio_sound_gain(snd_chase_bgm,0.2,4000)	
	audio_play_sound(snd_chasing,1,true)	
	audio_sound_gain(snd_chasing,0,0)		
	audio_sound_gain(snd_chasing,0.2,4000)		
	}	
}else if room = rm_bedroom_night
{
	
	if audio_is_playing(snd_store_bgm)
	{
	audio_sound_gain(snd_store_bgm,0,2000)
		if audio_sound_get_gain(snd_store_bgm) <= 0
		{	
		audio_stop_sound(snd_horror_texture)	
		}
	audio_sound_gain(snd_horror_texture,0,2000)
		if audio_sound_get_gain(snd_horror_texture) <= 0
		{	
		audio_stop_sound(snd_horror_texture)	
		}	
	audio_sound_gain(snd_trap,0,2000)
		if audio_sound_get_gain(snd_trap) <= 0
		{	
		audio_stop_sound(snd_trap)	
		}			
		
	}	
	if !audio_is_playing(snd_bgm_night)
	{	
	audio_play_sound(snd_bgm_night,1,true)	
	audio_sound_gain(snd_bgm_night,0,0)		
	audio_sound_gain(snd_bgm_night,0.2,4000)	
	audio_play_sound(snd_bgm_night_layer,1,true)	
	audio_sound_gain(snd_bgm_night_layer,0,0)		
	audio_sound_gain(snd_bgm_night_layer,0.2,4000)	
	}
	
	
	
	
}else if room = rm_2f_passway_night_after_puzzle
{
	if audio_is_playing(snd_heart_beat)
	{
	audio_sound_gain(snd_heart_beat,0,2000)
		if audio_sound_get_gain(snd_heart_beat) <= 0
		{	
		audio_stop_sound(snd_heart_beat)	
		}
	audio_sound_gain(snd_chasing,0,2000)
		if audio_sound_get_gain(snd_chasing) <= 0
		{	
		audio_stop_sound(snd_chasing)	
		}		
		
	}	
	
	
	
}else if room = rm_end and stopped = false
{

	audio_stop_all()	
	stopped = true	
	
}