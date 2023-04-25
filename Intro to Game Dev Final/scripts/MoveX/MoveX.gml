function MoveX(amount)
{
	m_xRemainder += amount;
	var move = floor(m_xRemainder);
	if (move != 0)
	{
		m_xRemainder -= move;
		var mySign = sign(move);
		
		while(move != 0)
		{
			if (!place_meeting(x + mySign, y, obj_solid) and (!place_meeting(x + mySign, y, obj_invisible_wall) ))
			{
				x += mySign;
				move -= mySign;
			}
			else
			{
				if(keyboard_check(ord("A")) and !keyboard_check(ord("D")))
				{
						if 	place_meeting(x -16, y, obj_invisible_wall)	
						{
									obj_invisible_wall.collision = true	
						}
				}else if (keyboard_check(ord("D")) and !keyboard_check(ord("A")))
				{
						if 	place_meeting(x +16, y, obj_invisible_wall)	
						{
									obj_invisible_wall.collision = true	
						}					
					
					
				}

				//hit something!
				onCollideX()

				break;
			}
		}
	}
}