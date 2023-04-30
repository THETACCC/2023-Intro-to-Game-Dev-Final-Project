/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {
	audio_play_sound(snd_2f_initial,1,false)
	obj_player.m_vvel = 0
		create_textbox("2f_initial")
	instance_destroy(self)
} 


