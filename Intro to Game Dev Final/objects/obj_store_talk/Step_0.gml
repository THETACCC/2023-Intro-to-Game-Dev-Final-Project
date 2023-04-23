/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {

	global.store_interaction = true
	create_textbox("store")
	instance_destroy(self)
} 
