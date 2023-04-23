/// @description Insert description here
// You can write your code in this editor
//flow structure

room_main_interaction = false



//Player positions

global.player_talking = false
global.player_inventory = false

enum Gamestate {

	Play,
	in_puzzle
	

	
}

// Here are all the states
state = Gamestate.Play
state = Gamestate.in_puzzle

// Here is the current state
state = Gamestate.Play