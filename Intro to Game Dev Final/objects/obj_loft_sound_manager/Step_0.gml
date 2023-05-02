/// @description Insert description here
// You can write your code in this editor
if play = true and played = false
{
	
	audio_play_sound(snd_ghost_knock,1,true)	
	audio_sound_gain(snd_store_bgm,3,4000)			
	played = true
}
if play = true
{
	global.shake_magnitude = 5
	global.shake_remain = global.shake_magnitude
	global.shake_length = 60	
	
	
	
}