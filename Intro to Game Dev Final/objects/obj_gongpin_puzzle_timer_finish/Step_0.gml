/// @description Insert description here
// You can write your code in this editor
if counted = false {
mytime --
}
if mytime <= 0 
{
global.player_talking = false	
instance_create_layer( 607,58,"light",obj_light_1f)
instance_create_layer( 499,65,"light",obj_light_1f)
instance_create_layer( 127,63,"light",obj_light_1f)
instance_create_layer( 32,60,"light",obj_light_1f)
instance_create_layer( 295,71,"light",obj_light_mask_room_spot)
instance_create_layer( 328,71,"light",obj_light_mask_room_spot)
instance_create_layer( 264,40,"light",obj_light_mask_room_spot)
instance_create_layer( 359,40,"light",obj_light_mask_room_spot)
instance_create_layer(310,246,"Interactions",obj_gongpin_start)
instance_destroy(self)
counted = true
mytime = timer

}