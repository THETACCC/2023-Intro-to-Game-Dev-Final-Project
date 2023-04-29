
//This draws the grid for items
draw_sprite_stretched(spr_inventory_mask,0, x-6 , y- 6, 12 + row_length * 128, 12 + (((INVENTORY_SLOTS_MASKS - 1) div row_length) +1) * 128)

//This is the items themselves
for (var i = 0; i < INVENTORY_SLOTS_MASKS ; i += 1) 
{
	var xx = x + (i mod row_length) * 128 + 2
	var yy = y + (i div row_length) * 128 + 2	
	//draw_sprite(spr_box_test,0,xx,yy)	
	if (inventory[i] != -1 )
	{
		draw_sprite(spr_masks,inventory[i],xx,yy)	
	}

	
}

