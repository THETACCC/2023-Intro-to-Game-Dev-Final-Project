/// @description Insert description here
// You can write your code in this editor

if global.player_talking = false {

var haccel = 0;
var vaccel = 0;
//get keyboard input and save it into a local variable
var xinput = 0;
var yinput = 0;

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
if (keyboard_check_pressed(vk_space) && m_grounded ) {
	
	yinput -= 1
}
if (keyboard_check_pressed(vk_space) && !m_grounded ) {
	
	m_key_pressed = true
}

if keyboard_check(vk_shift) {
m_running = true
show_debug_message("Running")
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
if (xinput > 0)  {
	image_xscale = 1;

} else if (xinput < 0)    {
	image_xscale = -1;
}

if (xinput > 0) and m_grounded {


} else if (xinput < 0)  and m_grounded  {

} else if !m_grounded {
	

}   else {

}



}



m_previousgrounded = m_grounded


