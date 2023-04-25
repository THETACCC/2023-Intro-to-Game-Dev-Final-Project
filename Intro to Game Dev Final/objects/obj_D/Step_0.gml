/// @description Insert description here
// You can write your code in this editor
x = obj_player.x + 30

if (keyboard_check(ord("A")) or keyboard_check(ord("D")))
{
	image_alpha -= 0.02
	
}
if image_alpha <= 0 {
instance_destroy(self)	
}