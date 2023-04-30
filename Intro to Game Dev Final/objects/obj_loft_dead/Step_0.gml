/// @description Insert description here
// You can write your code in this editor
clamp(image_alpha,0,1)
if appear = true and image_alpha <= 1 {
	global.shake_magnitude = 8
	global.shake_remain = global.shake_magnitude
	global.shake_length = 60	
image_alpha +=  1	
	
} else if appear = false and image_alpha >= 0   {
image_alpha -= 0.05	

	
}
if sound_played = false and appear = true
{
	audio_play_sound(snd_scroll_jumpscare,1,false)			
	audio_play_sound(snd_ghost_jumpscare,1,false)
	audio_play_sound(snd_heart_beat,1,true)	
	audio_play_sound(snd_glitch,1,true)	
	audio_play_sound(snd_monster_walking,1,true)
	audio_play_sound(snd_running,1,true)	
	sound_played = true	
}
