/// @description Insert description here
// You can write your code in this editor
if global.player_inventory = true 
{
	x = lerp (x, obj_camera.x - 315, 0.1)
	y = lerp (y,obj_camera.y - 175, 0.1)	
} else {
	
	x = lerp (x, obj_camera.x - 315, 0.1)
	y = lerp (y,obj_camera.y - 400, 0.1)		
	
}

