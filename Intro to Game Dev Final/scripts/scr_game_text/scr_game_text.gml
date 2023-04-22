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
		
		case "letter":
		
		scr_text("What's inside the letter?", "player")

		break
		
		case "store":
	
		scr_text("Who's there?", "shop_owner")
		scr_text("Just a passerby. Sorry, didn't mean to interrupt you.", "player")
		scr_text("Oh. No, ya're fine, just haven't seen an outsider in year....What drive you to this damn poor town? You looked...civilized.", "shop_owner")		
		scr_text("I'm a, um, a writer. Someone invites me here to write about the town and the ZhouJia village. By the way, is there anything you could tell me about them? Anything could do fine for me now.", "player")	
		scr_text("ZhouJia Village? God, so this is the reason ha? Hahahaha, yeah, I got plenty to say about them. But I don't let some random city girl question me like I'm some kind of fucking prisoner. Sorry, Big writer.", "shop_owner")
		scr_text("He laughed scornfully, but his eyes still stare at me intensively. Maybe he just wants to ask me for a favor.")
		scr_text("All right, so is there something I could do to earn those questions?", "player")	
		scr_text("Humph. There's not much I need you to do. But if you really want to, find my old abacus and bring it here. Maybe I'll consider telling you sth.", "shop_owner")
		scr_text("An old abacus...... I think I saw it somewhere in the town a while ago.", "player")		
		
		
		
		
		break
		
}

}