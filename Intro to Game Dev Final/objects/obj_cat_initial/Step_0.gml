/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {
	global.player_talking = true
	global.cat_interaction_1 = true
	obj_player.m_vvel = 0
		create_textbox("cat")
	instance_destroy(self)
} 