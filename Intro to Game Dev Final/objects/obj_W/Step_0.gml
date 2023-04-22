/// @description Insert description here
// You can write your code in this editor
if instance_place(obj_player.x,obj_player.y, obj_door)
{
	image_alpha += 0.05
} else  {
	
		image_alpha -= 0.05
		
}

if image_alpha <= -0.01
{

instance_destroy(self)
	
}

image_alpha = clamp(image_alpha,-1,1)