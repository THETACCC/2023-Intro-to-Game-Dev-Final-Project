
//This draws the grid for items
draw_sprite_stretched(spr_inventory,0, x-6 , y- 6, 12 + row_length * 63, 12 + (((INVENTORY_SLOTS - 1) div row_length) +1) * 36)

//This is the items themselves
for (var i = 0; i < INVENTORY_SLOTS ; i += 1) 
{
	var xx = x + (i mod row_length) * 66 + 2
	var yy = y + (i div row_length) * 66 + 2	
	draw_sprite(spr_box,0,xx,yy)
	if (inventory[i] != -1 )
	{
		draw_sprite(spr_items,inventory[i],xx,yy)	
	}

	
}

