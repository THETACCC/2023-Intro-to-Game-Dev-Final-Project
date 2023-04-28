/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("P")){
		draw_path(path, x ,y, 0)
}

if my_health >= 0 {
	draw_self()
} 



if (taking_damage > 0 ) {
	taking_damage -= 1
	image_xscale = lerp(image_xscale, 1.5,0.1)
	image_yscale = lerp(image_yscale, 1.3,0.1)
	shader_set(blink_white)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)		
	shader_reset()
} else {
	image_xscale = lerp(image_xscale, 1,0.07)
	image_yscale = lerp(image_yscale, 1,0.07)
    taking_damage = 0
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)	
}

direction = point_direction(x,y,obj_player.x,obj_player.y)
if direction > 90 and direction < 270 {
		image_xscale = -1
} else {
		image_xscale = 1
}



