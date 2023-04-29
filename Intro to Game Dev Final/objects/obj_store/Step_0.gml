/// @description Insert description here
// You can write your code in this editor
if found_player = true & fade_away = false
{
	image_alpha += 0.9


} else  {
	
	image_alpha -= 0.1
		
}
if found_player = true and shaked = false{
	global.shake_magnitude = 8
	global.shake_remain = global.shake_magnitude
	global.shake_length = 60
	shaked = true
}
image_alpha = clamp(image_alpha,-1,1)