function MoveY(amount)
{
	m_yRemainder += amount;
	var move = floor(m_yRemainder);
	if (move != 0)
	{
		m_yRemainder -= move;
		var mySign = sign(move);
		
		while(move != 0)
		{
			if (!place_meeting(x, y + mySign, obj_solid))
			{
				y += mySign;
				move -= mySign;
				m_grounded = false
			}
			else
			{
				//hit something!
				m_key_pressed = false
				onCollideY()
				m_isjump = false
				if (keyboard_check(ord("A")) and !keyboard_check(ord("D")) and (m_grounded && !m_previousgrounded) and (m_bounce_left = false) and (m_bounce_right = false))  {
				m_vvel += -1 * 2
				m_bounce_left = true
				} else {
				m_bounce_left = false
				}
				if (keyboard_check(ord("D")) and !keyboard_check(ord("A")) and (m_grounded && !m_previousgrounded) and (m_bounce_right = false) and (m_bounce_left = false)) {
				m_vvel += -1 * 2
				m_bounce_right = true
				} else {
				m_bounce_right = false
				}
				
				
				
				break;
			}
		}
	}
}