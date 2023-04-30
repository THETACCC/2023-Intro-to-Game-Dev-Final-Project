/// @description Insert description here
// You can write your code in this editor
clamp(image_alpha,0,1)
if appear = true and image_alpha <= 1 {
image_speed = 1	
image_alpha += 1
audio_play = true
} else if appear = false and image_alpha >= 0   {
image_alpha -= 0.05	

	
}
if image_index =  6
{
image_speed = 0
image_index = 7
	
}

if audio_play = true and played = false {
	audio_play_sound(snd_dead_tree_scare,1,false)	
	played = true
	
}

