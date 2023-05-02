/// @description Insert description here
// You can write your code in this editor
switch(state)
{	
	case "idle":
	image_xscale = sign(obj_player.x - x) * -1
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}	
	
	 if start_chase = true and !instance_exists(obj_mytextbox)
	 {
		state = "chase" 
	 }
	
	break
	
	case "chase":
	sprite_index = spr_guard_walk
	if not instance_exists(obj_player) 
	break;
	
	image_xscale = sign(obj_player.x - x) * -1
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}
	
	location = sign(obj_player.x - x)
	
	var distance_to_player = point_distance(x,y,obj_player.x,obj_player.y)
	if distance_to_player < 64 
	{

		state = "attack"		
	image_index = 0
		
	}
	else 
	{
		

		move_and_collide(location * 1.4 , 0,obj_player)	
		
	}
		 if chase_audio_played = false
	{
		audio_play_sound(snd_monster_scream,1,false)
		chase_audio_played = true
	}
	
	if obj_room_transition_out.image_alpha >= 0
	{
		
		state = "idle"		
		
	}	
	break
	
	case "attack":
	global.player_talking = true
	sprite_index = spr_guard_attack
	if audio_played = false
	{
		audio_play_sound(snd_women_scream,1,false)	
		audio_play_sound(snd_knife,1,false)			
		audio_played = true
	}
	break
	
	
}


