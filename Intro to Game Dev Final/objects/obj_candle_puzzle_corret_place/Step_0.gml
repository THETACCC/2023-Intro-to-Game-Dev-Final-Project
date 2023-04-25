/// @description Insert description here
// You can write your code in this editor
if global.state = Gamestate.in_puzzle {
if instance_place(x,y,obj_candle_light_puzzle)
	{

	obj_candle_light_puzzle.x = x
	obj_candle_light_puzzle.y = y
	obj_candle_light_puzzle.image_speed = 1
	 scr_inventory_add(obj_inventory,4)	
	global.player_talking = false	 
	global.state = Gamestate.Play	
	}
}else{

instance_destroy(self)
	
}