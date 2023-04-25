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
enum Gamestate {

	Play,
	in_puzzle,
	talking,
	scene
	

	
}

// Here are all the states
global.state = Gamestate.Play
global.state = Gamestate.in_puzzle
global.state = Gamestate.talking
global.state = Gamestate.scene
// Here is the current state
global.state = Gamestate.Play