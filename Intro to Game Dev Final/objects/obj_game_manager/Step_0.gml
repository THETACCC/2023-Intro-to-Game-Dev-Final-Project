/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_mytextbox) {
			obj_player.m_vvel = 0
		obj_player.m_hvel = 0	
		global.player_talking = true
		obj_player.sprite_index = spr_player_idle	
	
} else {
	
		global.player_talking = false
}