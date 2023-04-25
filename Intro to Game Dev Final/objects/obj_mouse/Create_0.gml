/// @description Insert description here
// You can write your code in this editor
inventory_hover =-1
slot_hover = -1
inventory_drag = -1
slot_drag = -1
item_drag = -1
depth = -999

//light_puzzle
light_puzzle = -1


mouse_over = function()
{

	//empty the hover result
	slot_hover = -1
	inventory_hover = -1
	
	
	//mouse coordinates
	var mx = mouse_x
	var my = mouse_y
	
	//check for inventory slot hover
	with(obj_inventory)
	{
		if(point_in_rectangle(mx,my,x-6 , y- 6, 12 + row_length * 63, 12 + (((INVENTORY_SLOTS - 1) div row_length) +1) * 36))	
		{
				//check for mouse over in each slot
				for (var i = 0; i < INVENTORY_SLOTS ; i += 1) 
				{
				var xx = x + (i mod row_length) * 66 + 2
				var yy = y + (i div row_length) * 66 + 2	
				if (point_in_rectangle(mx,my,xx,yy,xx+64,yy+64))
					{
					other.slot_hover = i
					other.inventory_hover = id
					}
				}
			
		}
		
		
	}

	if(instance_place(mouse_x,mouse_y,obj_candle_light_puzzle	))
	{
		
	light_puzzle = 1	
		
	} else
	{
		
	light_puzzle = -1		
	}
		
	



	
}



state_free = function()
{
	mouse_over()
	//Start to drag an itm if slot is not empty
	if (mouse_check_button(mb_left) && (slot_hover != -1) && (inventory_hover.inventory[slot_hover] != 1))
	{
		//enter drag state
		state = state_drag
		item_drag = inventory_hover.inventory[slot_hover]
		inventory_drag = inventory_hover
		slot_drag = slot_hover
		
	}
		
	//Open the object if it's interactable	
	if (mouse_check_button_pressed(mb_right) && (slot_hover != -1) && (inventory_hover.inventory[slot_hover] != 1))
	{
		if inventory_hover.inventory[slot_hover] = 0
		{
		create_textbox("letter")
		state = state_interact
		}
		if inventory_hover.inventory[slot_hover] = 4
		{
				if !instance_exists(obj_player_light)
				{
				instance_create_layer(obj_player.x,obj_player.y, "light",obj_player_light)	
				obj_player.candle_get = true
				instance_create_layer(obj_player.x,obj_player.y, "objects",obj_candle_hold)		

				}
				obj_player.image_index = spr_player_hold_idle		
		}	
		
	}
	
	//Drag the object if met the criteria
	if (mouse_check_button(mb_left) && (light_puzzle = 1))
	{
		//enter drag state
		state = state_drag_puzzle
		
	}
	
	
}


state_drag = function()
{
	mouse_over()
	if (!mouse_check_button(mb_left))
	{
		//swap with slot if hvoering
		if (slot_hover != -1) scr_inventory_swap(inventory_drag,slot_drag,inventory_hover,slot_hover)
		
		//Return to free state
		state = state_free
		item_drag = -1
		inventory_drag = -1
		slot_drag = -1
		
		
		
	}
	show_debug_message(item_drag)
	/*if 	item_drag = 3
	{
		with(item_drag)
		{
			if instance_place(x,y,obj_candle_light_puzzle)
			{
			instance_create_layer(x,y,"puzzle_2",obj_candle_light)	
				state = state_free	
			item_drag = -1
			inventory_drag = -1
			slot_drag = -1				
			}
			
			
		}
		
	}
	*/
}


state_interact = function()
{
	
	if (!instance_exists(obj_mytextbox))
	{
	
	state = state_free
		
	}

	
}

state_drag_puzzle = function()
{
		mouse_over()
		with(obj_candle_light_puzzle)
		{
			x = mouse_x
			y = mouse_y
			
		}
		
		if (!mouse_check_button(mb_left))
		{

		state = state_free
		
		}
	
}


state = state_free