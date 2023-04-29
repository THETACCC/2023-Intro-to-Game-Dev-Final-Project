/// @description Insert description here
// You can write your code in this editor
var haccel = 0;
var vaccel = 0;
//get keyboard input and save it into a local variable
var xinput = 0;
var yinput = 0;

if global.player_talking = false and global.player_inventory = false and global.state = Gamestate.Play{



if (keyboard_check(ord("A")) and !keyboard_check(ord("D"))) and global.player_talking = false  {

	input_lag_left -= 1
	if (input_lag_left < 0 ){ 
			xinput -= 1;		
	}

} else {

	input_lag_left = 1
	m_hvel = lerp(m_hvel, 0, 0.1)
}
if (keyboard_check(ord("D")) and !keyboard_check(ord("A"))) and global.player_talking = false {

	input_lag_right -= 1
	if (input_lag_right < 0 ){ 
			xinput += 1;		
	}	
} else {
	
	input_lag_right = 1
	m_hvel = lerp(m_hvel, 0, 0.1)
}

if keyboard_check(vk_shift) {
m_running = true

}	else {
m_running = false	
}


//apply accelerations
if m_running = false {
	haccel += xinput * m_xspeedup;
}	else {
	
	haccel += xinput * m_xspeedup_run ;	
}


//change our velocity based on acceleration
if m_running = false{
m_hvel += haccel;
m_hvel = clamp(m_hvel,-m_maxhspeed, m_maxhspeed);
} else {
m_hvel += haccel;
m_hvel = clamp(m_hvel,-m_maxhspeed_running, m_maxhspeed_running);	
	
}

//change our position based on our velocity
MoveX(m_hvel);

vaccel += m_grav
m_vvel += vaccel;


if ( yinput == -1 && m_grounded) {
	m_grounded = false;
	m_vvel += yinput * m_jumppower
	m_isjump = true
}





m_vvel = clamp(m_vvel,-m_maxvspeed, m_maxvspeed);
MoveY(m_vvel);

//change the sprite direction based on our input






}



m_previousgrounded = m_grounded



//open inventory
if keyboard_check_pressed(vk_tab) and global.player_inventory = false 	and global.state = Gamestate.Play 	and !instance_exists(obj_mytextbox)
{
	audio_play_sound(snd_open_inventory,1,false)
	m_hvel = 0
	MoveX(0)
	sprite_index = spr_player_idle	
	global.player_inventory = true	
	if !instance_exists(obj_inventory_open)
	{
		instance_create_depth(0,0,-99,obj_inventory_open)
			obj_inventory_open.appear = true
	}

} else if keyboard_check_pressed(vk_tab) and global.player_inventory = true 	{
	audio_play_sound(snd_close_inventory,1,false)	
	global.player_inventory = false	
	if instance_exists(obj_inventory_open)
	{

			obj_inventory_open.appear = false
	}	
} else if instance_exists(obj_mytextbox){
	
	global.player_inventory = false		
	if instance_exists(obj_inventory_open)
	{

			obj_inventory_open.appear = false
	}		
}

if keyboard_check_pressed(vk_down)
{
show_debug_message(scr_inventory_search(obj_inventory,2) != -1)
}


if global.state = Gamestate.Play{
	

	
	
if (xinput > 0)  {
	image_xscale = -1;

} else if (xinput < 0)    {
	image_xscale = 1;
}

if abs(xinput) > 0 and m_grounded and !m_running and global.player_inventory = false and global.player_talking = false {
	if candle_get = false
	{
	sprite_index = spr_player_walk
	image_speed = m_xspeedup
	} else
	{
	sprite_index = spr_player_hold_walk
	image_speed = m_xspeedup		
		
	}
	if !audio_is_playing(snd_walk)
	{
	
		audio_play_sound(snd_walk,1,false)
		
	}
		if audio_is_playing(snd_running)
	{
	
		audio_stop_sound(snd_running)
		
	}		
	
	
} else if (xinput = 0)  and m_grounded and abs(m_hvel) <= 1  {
	if candle_get = false
	{	
	sprite_index = spr_player_idle
	image_speed = 1
	}else
	{
	sprite_index = spr_player_hold_idle
	image_speed = 1		
		
	}
		if audio_is_playing(snd_walk)
	{
	
		audio_stop_sound(snd_walk)
		
	}
		if audio_is_playing(snd_running)
	{
	
		audio_stop_sound(snd_running)
		
	}	
	
	
} else if  abs(xinput) > 0 and m_running and global.player_inventory = false and global.player_talking = false {
	if candle_get = false
	{	
	image_speed = m_xspeedup_run
	sprite_index = spr_player_run
	} else
	{
	image_speed = m_xspeedup_run
	sprite_index = spr_player_hold_run		
		
		
	}
	if !audio_is_playing(snd_running)
	{
	
		audio_play_sound(snd_running,1,false)
		
	}	
		if audio_is_playing(snd_walk)
	{
	
		audio_stop_sound(snd_walk)
		
	}	
	
	
}  else if global.player_inventory = true or global.player_talking = true {
	if candle_get = false
	{		
	sprite_index = spr_player_idle
	image_speed = 1	
	}else
	{
	sprite_index = spr_player_hold_idle
	image_speed = 1			
		
		
	}
		if audio_is_playing(snd_walk)
	{
	
		audio_stop_sound(snd_walk)
		
	}	
		if audio_is_playing(snd_running)
	{
	
		audio_stop_sound(snd_running)
		
	}		
	
	
	
}

}


if instance_exists(obj_player_light) and global.state = Gamestate.talking
{
		sprite_index = spr_player_hold_idle
		image_speed = 1		
}