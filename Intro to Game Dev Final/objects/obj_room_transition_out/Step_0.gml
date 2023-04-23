/// @description Insert description here
// You can write your code in this editor

if start_transition = true {
image_alpha += 0.01
global.player_talking = true
obj_player.m_vvel = 0
obj_player.m_hvel = 0
obj_player.image_index = spr_player_idle
}
if image_alpha >=  1
{
	
	obj_door.transition = true

	
}