/// @description Insert description here
// You can write your code in this editor
//flow structure

room_main_interaction = false



//Player positions

global.player_talking = false
global.player_inventory = false
global.store_interaction = false
enum Gamestate {

	Play,
	in_puzzle
	

	
}

// Here are all the states
global.state = Gamestate.Play
global.state = Gamestate.in_puzzle

// Here is the current state
global.state = Gamestate.Play