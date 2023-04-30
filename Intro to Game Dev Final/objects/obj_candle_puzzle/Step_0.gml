/// @description Insert description here
// You can write your code in this editor

if global.state = Gamestate.in_puzzle  and image_alpha <= 1 {
	image_alpha += 0.02
	
}else if image_alpha >=  -0.1 {
	image_alpha -= 0.02
}

if image_alpha <= 0 
{
	
	instance_destroy(self)

	
}
if image_index >=6
{
		
image_index = 6	
		
}

clamp(image_alpha,-0.1,1)