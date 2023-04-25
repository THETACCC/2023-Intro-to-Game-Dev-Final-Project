/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {
	
	global.player_talking = true
	global.start_interaction = true

	obj_player.m_vvel = 0
		create_textbox("start")
	instance_destroy(self)
} 
