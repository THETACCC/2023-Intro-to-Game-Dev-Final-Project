/// @description Insert description here
// You can write your code in this editor
if instance_place(obj_player.x,obj_player.y, obj_door)
{
	image_alpha += 0.05
	if keyboard_check_pressed(ord("W"))
	{
	room_transition = true 
		
	}
	if room_transition = true and is_larged = false {
		image_xscale = lerp (image_xscale, 1.5, 0.1)
		image_yscale = lerp (image_yscale, 1.5, 0.1)
		if image_xscale >= 1.2
		{
		is_larged = true	
		}
		
	}
	if is_larged = true
	{
		image_xscale = lerp (image_xscale, 1, 0.1)
		image_yscale = lerp (image_yscale, 1, 0.1)		
		
	}
	
	
} else  {
	room_transition = false
		image_alpha -= 0.05
		
}

if image_alpha <= -0.01
{

instance_destroy(self)
	
}

image_alpha = clamp(image_alpha,-1,1)

x = obj_player.x