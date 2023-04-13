/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) && keyboard_check_pressed(ord("F")) && !instance_exists(obj_mytextbox)  {

	global.talking = true
	create_textbox(text_id)
} 