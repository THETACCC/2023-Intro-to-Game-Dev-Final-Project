/// @description Insert description here
// You can write your code in this editor
if my_create = true
{
	image_alpha += 0.05
	if keyboard_check(ord("F"))
	{
	image_speed = 1
		
	} else {
		
	image_speed = 0
	image_index = 0
		
	}

} else  {
	
		image_alpha -= 0.05
		
}

if image_alpha <= -0.01
{

instance_destroy(self)
	
}

image_alpha = clamp(image_alpha,-1,1)

x = obj_player.x