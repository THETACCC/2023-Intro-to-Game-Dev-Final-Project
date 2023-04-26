/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {
    obj_player.candle_get = false
	instance_destroy(obj_player_light)
	global.player_talking = true
	global.after_kitchen = true
	obj_player.m_vvel = 0
		create_textbox("after_kitchen")
	instance_destroy(self)
} 


