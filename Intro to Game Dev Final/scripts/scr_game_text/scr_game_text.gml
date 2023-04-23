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
		instance_destroy(obj_store_talk)		
		break
		
		case "shop_owner_notfound":
		
		scr_text("Go find the item I need", "shop_owner")	
		
		break	
		
		case "shop_owner_found":
		
		scr_text("Oh my…… I thought I'd never see it again. My son threw it away after……Never mind, thank you, young lady.", "shop_owner")		
		scr_text("Gladly. Before this, you said I could ask some questions about the town and ZhouJia village?", "player")
		scr_text("Of course! I always keep my promises. So, what do you want to know.", "shop_owner")		
				scr_option("I see no one in the village all the time, why's that?" , "shop_owner_question1-1")
				scr_option("How is Zhoujia village's trading going on recently?" , "shop_owner_question2-1")			
			
		break
		
		case "shop_owner_question1-1":
		scr_text("As I said, this is a small town. Back ten years ago, we could still sell out some vegetables and livestock to the county town and make living out of it. ", "shop_owner")		
		scr_text("Now people could barely earn much money from that, big companies in the city outwon us. Younger ones went to the city in search of ways to survive, leaving old folk like us to rot and die in this poor town. ", "shop_owner")			
				scr_option("How is Zhoujia village's trading going on recently?" , "shop_owner_question2-2")	
		break
		
		case "shop_owner_question2-1":
		scr_text("Haha, those people of Zhou. Selfish, gloomy bastard. How's their trade? Their trades were all screwed! ", "shop_owner")	
		scr_text("I can't remember how long ago, must have been over at least 15 years ago. Suddenly one day, I never see tea coming down their precious mountain. So, they are all screwed! Bless of god? I say they were all cursed by god now! ", "shop_owner")			
		scr_text("When they are in their heyday, they never let anyone enter that mountain, anyone outside of the people of Zhou!", "shop_owner")
		scr_text("Well now you see, they don’t even need a guard anymore. Because no one value their ‘family secret’ now! Only a writer would be interested, ha! How funny! ", "shop_owner")	
				scr_option("I see no one in the village all the time, why's that?" , "shop_owner_question1-2")			
		break		
		
		case "shop_owner_question1-2":
		scr_text("As I said, this is a small town. Back ten years ago, we could still sell out some vegetables and livestock to the county town and make living out of it. ", "shop_owner")		
		scr_text("Now people could barely earn much money from that, big companies in the city outwon us. Younger ones went to the city in search of ways to survive, leaving old folk like us to rot and die in this poor town. ", "shop_owner")	
				scr_option("Thank you for telling me these things." , "shop_owner_question3")				
		break			
		
		
		case "shop_owner_question2-2":
		scr_text("Haha, those people of Zhou. Selfish, gloomy bastard. How's their trade? Their trades were all screwed! ", "shop_owner")	
		scr_text("I can't remember how long ago, must have been over at least 15 years ago. Suddenly one day, I never see tea coming down their precious mountain. So, they are all screwed! Bless of god? I say they were all cursed by god now! ", "shop_owner")			
		scr_text("When they are in their heyday, they never let anyone enter that mountain, anyone outside of the people of Zhou!", "shop_owner")
		scr_text("Well now you see, they don’t even need a guard anymore. Because no one value their ‘family secret’ now! Only a writer would be interested, ha! How funny! ", "shop_owner")			
				scr_option("Thank you for telling me these things." , "shop_owner_question3")			
		
		break		
		
		
		case "shop_owner_question3":
		scr_text("Wait. ", "shop_owner")
		scr_text("What's wrong?", "player")			
		scr_text(".......", "shop_owner")				
		scr_text("You should just leave here, ZhouJia village was all fucked up now, and they deserve this.", "shop_owner")			
		scr_text("You seem to hate people of Zhou a lot, could I know the reason for that?", "player")		
		scr_text(".......", "shop_owner")			
		scr_text("Good luck to you then. Young lady.", "shop_owner")			
		scr_text("Please wait for a second! What else do you know about Zhou.....", "player")	
		instance_destroy(obj_store_talk2)
		break		

}

}