///@param text_id
function scr_game_text(_text_id){

switch(_text_id){

	case "npc 1":
					global.talking = true
		scr_text("Hello", spr_npc2_speak)
		scr_text("This is a test NPC", spr_npc2_speak)
		scr_text("you can choose options from here", spr_npc2_speak)
			scr_option("Sure" , "npc 1 - yes")
			scr_option("2" , "npc 1 - no")			
			scr_option("Who are you?" , "npc 1 - who")			
		break
		case "npc 1 - yes":
			scr_text("12111",spr_npc2_speak)
					global.talking = false
			break
		case "npc 1 - no":
			scr_text("22222",spr_npc2_speak)
					global.talking = false
			break	
		case "npc 1 - who":
			scr_text("I am just a random NPC ",spr_npc2_speak)
					global.talking = false
			break	
	


		
}

}