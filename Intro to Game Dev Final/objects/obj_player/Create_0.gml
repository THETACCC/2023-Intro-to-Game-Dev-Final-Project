/// @description Insert description here
// You can write your code in this editor

// Player move code
input_lag_left = 1
input_lag_right = 1
m_xRemainder = 0.0;
m_yRemainder = 0.0;
m_xspeedup = 1.25;
m_xspeedup_run = 1.5
m_running = false



m_grav = 0.98;
m_maxhspeed = 5;
m_maxhspeed_running = 12;
m_maxvspeed = 30;
m_jumppower = 25;
m_isjump = false
m_key_pressed = false

m_bounce_left = false
m_bounce_right = false

m_grounded = false;
m_previousgrounded = false;

m_hvel = 0;
m_vvel = 0;


//Collisions

onCollideX = function() {
	m_hvel = 0
}

onCollideY = function() {
	if(m_vvel > 0) {
	m_grounded = true;
	
	}
	
	m_vvel = 0
}
