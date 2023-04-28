// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_moveY(amount){
				m_yRemainder += amount
		var move = floor(m_yRemainder);
		if (move != 0)
		{
			m_yRemainder -= move
			var mySign = sign(move)
			
			while ( move != 0)
			{
				if (!place_meeting(x, y + mySign,obj_solid)) and (!place_meeting(x, y + mySign,obj_monster1)) and (!place_meeting(x, y + mySign,obj_resource))
				{
					y += mySign
					move -= mySign
				}
				else
				{
					//hit something
					break;
				}
					
			
			}
		}
}