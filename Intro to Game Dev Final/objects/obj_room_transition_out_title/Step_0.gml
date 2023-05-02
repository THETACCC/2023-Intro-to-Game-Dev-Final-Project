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

	if text_created = false
	{
		instance_create_depth(0,0,-99999,obj_title_effects)
	obj_player.x = 356
	obj_player.y = 240		
	create_textbox("title")
	text_created = true
	}
}