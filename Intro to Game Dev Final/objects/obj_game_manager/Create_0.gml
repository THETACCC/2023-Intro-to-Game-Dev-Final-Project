/// @description Insert description here
// You can write your code in this editor
//flow structure

room_main_interaction = false



//Player positions

global.player_talking = false
global.player_inventory = false
global.store_interaction = false
global.start_interaction = false
global.cat_interaction_1 = false
global.garden_interaction_1 = false
global.kitchen_interaction = false
global.picture_interaction = false
global.after_kitchen = false
global.cheif_initial = false
enum Gamestate {

	Play,
	in_puzzle,
	talking,
	scene,
	mask_puzzle,
	title
	

	
}

// Here are all the states
global.state = Gamestate.Play
global.state = Gamestate.in_puzzle
global.state = Gamestate.talking
global.state = Gamestate.scene
global.state = Gamestate.title
global.state = Gamestate.mask_puzzle
// Here is the current state
global.state = Gamestate.Play