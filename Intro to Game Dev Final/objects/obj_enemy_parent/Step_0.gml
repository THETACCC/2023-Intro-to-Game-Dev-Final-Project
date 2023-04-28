/// @description Insert description here
// You can write your code in this editor


check_for_player()

if alert = true and enemy_alarm = 0 {
	enemy_alarm = 1		
}

if enemy_alarm = 1 {
		  repeat(1) {


			enemy_alarm = 2
	 }
}


if my_health <= 0 {
//	repeat(4){
//		 with (instance_create_depth(x,y,depth-1,obj_coins)){
			 

			
//			my_friction = 0.8
//			motion_add(other.image_angle + random_range(-360,360), random_range(-9, -18))
			 
//		 }
		 
		 
//}

		instance_destroy(self)
}

if distance_to_object(obj_player) <= attack_distance {
		if attack_timer >= 0  {
			attack_timer -= 1

		}
		if attack_timer <= 0 {

} else {
	attack_timer = 60


}
}



