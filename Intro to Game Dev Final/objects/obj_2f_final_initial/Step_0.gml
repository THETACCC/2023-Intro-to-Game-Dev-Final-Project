/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) and !instance_exists(obj_mytextbox)	 {
	global.player_talking = true
	obj_player.m_vvel = 0
	audio_play_sound(snd_2f_walkway_final,0.8,true)
	create_textbox("loop_escaped")

	instance_destroy(self)
} 