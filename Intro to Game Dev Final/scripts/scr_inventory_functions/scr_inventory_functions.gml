// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inventory_search(root_object, itemType)
{
	for (var i =0; i < INVENTORY_SLOTS ; i += 1 )
	{
		if (root_object.inventory[i] == itemType)
		{
			return(i)	
		}
		
	}
	return(-1)
	
}

function scr_inventory_remove(root_object, itemType)
{
	var _slot = scr_inventory_search(root_object, itemType)	
	if ( _slot != -1)
	{
		with (root_object) inventory[_slot] = -1
		return true
	
		
	}
	else return false
}

function scr_inventory_add(root_object, itemType)
{
	var _slot = scr_inventory_search(root_object, -1)	
	if ( _slot != -1)
	{
		with (root_object) inventory[_slot] = itemType
		return true
	
		
	}
	else return false
}


function scr_inventory_swap(object_from, slot_from,object_to, slot_to)
{

	var _itemFrom = object_from.inventory[slot_from]
	object_from.inventory[slot_from] = object_to.inventory[slot_to]
	object_to.inventory[slot_to] = _itemFrom

}