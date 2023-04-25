/// @description Insert description here
// You can write your code in this editor
if found_player = true & fade_away = false
{
	image_alpha += 0.05


} else  {
	
	image_alpha -= 0.05
		
}


image_alpha = clamp(image_alpha,-1,1)