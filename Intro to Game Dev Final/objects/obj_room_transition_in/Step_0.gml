/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.01
global.player_talking = true
if image_alpha <=  0
{
global.player_talking = false
	instance_destroy(self)
	
}