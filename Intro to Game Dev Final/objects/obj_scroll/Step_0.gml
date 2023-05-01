/// @description Insert description here
// You can write your code in this edito
if scroll = true {

	image_speed = 1
}
if image_index >= 5 {

	image_speed = 0
	image_index = 6

}

if scroll = true and played = false
{
	if !audio_is_playing(snd_scroll_jumpscare)
	{
	audio_play_sound(snd_scroll_jumpscare,1,false)	
	audio_play_sound(snd_scroll_close,1,false)		
	audio_play_sound(snd_trap,1,false)	
	audio_play_sound(snd_cat_angry,1,false)		
	}	
	played = true
	
}