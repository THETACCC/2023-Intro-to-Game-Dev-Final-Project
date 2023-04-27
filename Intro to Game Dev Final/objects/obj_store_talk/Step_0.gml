/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {
	audio_play_sound(snd_scared,1,false)
	obj_store.found_player = true
	global.player_talking = true
	global.store_interaction = true
	obj_player.m_vvel = 0
		create_textbox("store")
	instance_destroy(self)
} 


