///@param text_id
function scr_game_text(_text_id){

switch(_text_id){

	case "npc 1":

		scr_text("Hello",  "player")
		scr_text("This is a test NPC", "npc")
		scr_text("This is a test NPC with anrgy emotion", "npc-anrgy")		
		scr_text("This is a test NPC with anrgy emotion and......", "npc-anrgy")		
		scr_text("This is a test NPC with anrgy emotion and...... anrgy color", "npc-anrgy")
			scr_text_color(48,58, c_red,c_red,c_red,c_red)
		scr_text("This is a test NPC with wavy text", "npc")
			scr_text_float(0,33)
		scr_text("This is a test NPC with shake text", "npc")
			scr_text_shake(0,33)			
		scr_text("you can choose options from here,you can choose options from here,you can choose options from here", "player")
			scr_option("Sure" , "npc 1 - yes")
			scr_option("2" , "npc 1 - no")			
			scr_option("Any job for me?" , "npc 1 - job")			
		break
		case "npc 1 - yes":
			scr_text("12111",spr_npc2_speak)

			break
		case "npc 1 - no":
			scr_text("22222",spr_npc2_speak)

			break	
		case "npc 1 - job":
			scr_text("could you bring me a red cube at the other room","npc")

			break	
		case "npc 1-find":
		
		scr_text("thanks!", "npc")

		break
}

}