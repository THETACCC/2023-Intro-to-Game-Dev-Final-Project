#macro INVENTORY_SLOTS_MASKS 4
row_length = 4
inventory = array_create(INVENTORY_SLOTS_MASKS, -1)
randomize()
inventory[0] = 0
inventory[1] = 2
inventory[2] = 3
inventory[3] = 4

timer = 90
mytime = timer
counted = false
solved = false
speaked = false
shaked = false

