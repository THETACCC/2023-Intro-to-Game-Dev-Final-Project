///@param text_id
function scr_game_text(_text_id){

switch(_text_id){


		case"title":	

		scr_text("From memory onwards, I have always had the same dream.","image1" )	
		scr_text("It's about a foggy vally with black mountains, decorated with crimson red lights", "image2")			
		scr_text("At first, I always stood at the foot of the mountain,", "image3")	
		scr_text("but as the dream proceeded, I would lose my perception of my form", "image4")
		scr_text("and be attracted by a certain consciousness to fly towards the mountains.","image5")			
		scr_text("As I approached, I was finally able to cross the thick mountain mist and see the true nature of the light spots in the mountains:", "image6") 
		scr_text("they were lanterns hanging from the old eaves, clearly without wind, but slowly swaying neatly.","image6_6")	
		scr_text("With the help of those dim lights, I saw an ancient and dilapidated village, stacked and scattered in the mountains, covered by huge and withered tree roots.","image7")			
		scr_text("In the shadows cast by those roots, something was vaguely wriggling and surging, ready to break through from the darkness at any time.","image7_7")
		scr_text("This was originally a scene full of profanity, but I uncontrollably grew eager to move forward, even to touch the wriggling shadows.","image8")			
		scr_text("And whenever this happens, my field of vision is suddenly occupied by a sudden burst of white light, and when I open my eyes, it's another morning.","image9")			
		scr_text("Why do I constantly dream of all this, does the mountain village in my dream really exist?","image9_9")				
		scr_text("For many years, doubts and nightmares have been constantly troubling me, accompanied by a strange premonition.","image10")						
		scr_text("This premonition grew stronger as I grew older, and I couldn't help but believe that one day, I would return to my dream village and find all the answers with my own hands.","image10_10")				
		
		break		
		
		case"start_screen_speech_letter":
		scr_text("I should check on the letter first.", "player")	
		
		break
		
		case"start_screen_speech":
		scr_text("The village is probably on the right.", "player")		
		break
		
		case"find_item":
		scr_text("There's no need to head back now. I surely saw that abacus around here.", "player")		
		break	
	
		case"GPS":
		scr_text("This is a GPS, no need to use it now.", "player")		
		break		
	
		
		case"abacus_pickup":
		scr_text("This must be the abacus he been asking for. ", "player")	
				scr_option("(Take a look at it)" , "abacus_finish")				
				
		break
		
		case"abacus_finish":	
		scr_text("I should hand this back to him.", "player")			
		obj_abacus.appear = false				
		obj_screen_effect_item_pickup.appear = false		
		break		
		
		case "letter":
		instance_destroy(obj_invisible_wall)
		scr_text("Lets see...", "player")
		scr_text("This letter were sent to chief editor Zhao last month by the village leader named Mo Zhou,")
		scr_text("inviting us to come over and research the old village to conserve their traditional culture.")	
		scr_text("However, he mentioned that only 1 researcher could go inside the village. ")	
		scr_text("So, I recommend myself there. ")		
		scr_text("Chief editor Zhao knows me well enough, I have a unique passion towards ancient villages like this. ")				
		scr_text("According to the letter, the contact will be waiting for me at the gate to the mountain.", "player")
		scr_text("I should go into that town to ask for directions, and maybe also collect some info about the Zhoujia Village.", "player")		
		break
		
		case "store":
	
		scr_text("Who's there?", "shop_owner")
		scr_text("!!", "player")		
		scr_text("Just a passerby. Sorry, didn't mean to interrupt you.", "player")
		scr_text("Oh. No, ya're fine, just haven't seen an outsider in year....", "shop_owner")		
		scr_text("What drive you to this damn poor town? You looked...civilized.", "shop_owner")		
		scr_text("I'm a, um, a writer. Someone invites me here to write about the town and the ZhouJia village.", "player")
		scr_text("By the way, is there anything you could tell me about them? Anything could do fine for me now.", "player")	
		scr_text("ZhouJia Village? God, so this is the reason ha? Hahahaha, yeah, I got plenty to say about them. ", "shop_owner")
		scr_text("But I don't let some random city girl question me like I'm some kind of fucking prisoner. Sorry, Big writer.", "shop_owner")			
		scr_text("He laughed scornfully, but his eyes still stare at me intensively. Maybe he just wants to ask me for a favor.")
		scr_text("All right, so is there something I could do to earn those questions?", "player")	
		scr_text("Humph. There's not much I need you to do. But if you really want to, find my old abacus and bring it here. Maybe I'll consider telling you sth.", "shop_owner")
			scr_text_color(81,87, c_orange,c_orange,c_orange,c_orange)
		scr_text("An old abacus...... I think I saw it somewhere in the town a while ago.", "player")	
			scr_text_color(7,12, c_orange,c_orange,c_orange,c_orange)		
		instance_destroy(obj_store_talk)	
		instance_activate_object(obj_invisible_wall)		
		break
		
		case "start":
		scr_text("So, this must be the small town mentioned by chief editor Zhao. Where's that introduce letter? I think I packed it into my bag.", "player")		
		scr_text("Press TAB to open backpack. Use LEFT CLICK to open the letter.")	
			scr_text_color(6,9, c_green,c_green,c_green,c_green)	
			scr_text_color(32,42, c_green,c_green,c_green,c_green)			
		instance_destroy(obj_startgame_talk)		
		break
		
		case "cat":		
		scr_text("That Cat feels familiar to me, why?", "player")	
		scr_text("Meow~","cat")		
						scr_text_float(0,5)			
				scr_option("(I MUST CATCH IT!)" , "Cat-1")		
		instance_deactivate_object(obj_invisible_wall)		
		instance_destroy(obj_cat_initial)		
		break
		
		case "Cat-1":		
		scr_text("!!", "player")			
		scr_text("Hold SHIFT to sprint.")	
				scr_text_color(5,10, c_green,c_green,c_green,c_green)	
		
		obj_cat.start_running = true
		break


		case "shop_owner_notfound":
		
		scr_text("Go find the item I need", "shop_owner")	
		
		break	
		
		case "shop_owner_found":
		
		scr_text("Oh my... I thought I'd never see it again. My son threw it away after...Never mind, thank you, young lady.", "shop_owner")		
		scr_text("Gladly. Before this, you said I could ask some questions about the town and ZhouJia village?", "player")
		scr_text("Of course! I always keep my promises. So, what do you want to know.", "shop_owner")		
				scr_option("Where are those villagers?" , "shop_owner_question1-1")
				scr_option("How is Zhoujia village's trading recently?" , "shop_owner_question2-1")			
			
		break
		
		case "shop_owner_question1-1":
		scr_text("As I said, this is a small town. Back ten years ago, we could still sell out some vegetables and livestock to the county town and make living out of it. ", "shop_owner")		
		scr_text("Now people could barely earn much money from that, big companies in the city outwon us. ", "shop_owner")			
		scr_text("Younger ones went to the city in search of ways to survive, leaving old folk like us to rot and die in this poor town. ", "shop_owner")		
				scr_option("How is Zhoujia village's trading recently?" , "shop_owner_question2-2")	
		break
		
		case "shop_owner_question2-1":
		scr_text("Haha, those people of Zhou. Selfish, gloomy bastard. How's their trade? Their trades were all screwed! ", "shop_owner")	
		scr_text("I can't remember how long ago, must have been over at least 15 years ago. Suddenly one day, I never see tea coming down their precious mountain. ", "shop_owner")		
		scr_text("So, they are all screwed! Bless of god? I say they were all cursed by god now! ", "shop_owner_mad")	
				scr_text_shake(0,79)			
		scr_text("When they are in their heyday, they never let anyone enter that mountain, anyone outside of the people of Zhou!", "shop_owner")
		scr_text("Well now you see, they don’t even need a guard anymore. Because no one value their ‘family secret’ now! Only a writer would be interested, ha! How funny! ", "shop_owner")	
				scr_option("Where are those villagers?" , "shop_owner_question1-2")			
		break		
		
		case "shop_owner_question1-2":
		scr_text("As I said, this is a small town. Back ten years ago, we could still sell out some vegetables and livestock to the county town and make living out of it. ", "shop_owner")		
		scr_text("Now people could barely earn much money from that, big companies in the city outwon us. ", "shop_owner")			
		scr_text("Younger ones went to the city in search of ways to survive, leaving old folk like us to rot and die in this poor town. ", "shop_owner")	
				scr_option("Thank you for telling me." , "shop_owner_question3")				
		break			
		
		
		case "shop_owner_question2-2":
		scr_text("Haha, those people of Zhou. Selfish, gloomy bastard. How's their trade? Their trades were all screwed! ", "shop_owner")	
		scr_text("I can't remember how long ago, must have been over at least 15 years ago. Suddenly one day, I never see tea coming down their precious mountain.", "shop_owner")		
		scr_text("So, they are all screwed! Bless of god? I say they were all cursed by god now! ", "shop_owner_mad")	
				scr_text_shake(0,79)	
		scr_text("When they are in their heyday, they never let anyone enter that mountain, anyone outside of the people of Zhou!", "shop_owner")
		scr_text("Well now you see, they don't even need a guard anymore. Because no one value their 'family secret' now! Only a writer would be interested, ha! How funny! ", "shop_owner")			
				scr_option("Thank you for telling me." , "shop_owner_question3")			
		
		break		
		
		
		case "shop_owner_question3":
		scr_text("Wait. ", "shop_owner")
		scr_text("What's wrong?", "player")			
		scr_text(".......", "shop_owner")				
		scr_text("You should just leave here, ZhouJia village was all fucked up now, and they deserve this.", "shop_owner")			
		scr_text("You seem to hate people of Zhou a lot, could I know the reason for that?", "player")		
		scr_text(".......", "shop_owner")			
		scr_text("Good luck to you then. Young lady.", "shop_owner")			
			scr_option("Please wait for a second! What else do you know about Zhou", "An_Zhou_initial")

		instance_destroy(obj_store_talk2)
		instance_create_layer(395,240,"Instances",obj_An_Zhou)
		break		
		
		case "An_Zhou_initial":
		
		scr_text("")	
		obj_store.fade_away = true
		obj_camera.change_follow = 1
		global.state = Gamestate.scene		

		
		
		break
		
		case "An_Zhou_initial_2":
		
		scr_text("Who are you talking to?","An_Zhou")
		scr_text("!!", "player")			
			scr_option("What? Oh, I was just speaking to......", "An_Zhou_initial_3")			
		break
		
		
		case "An_Zhou_initial_3":
		scr_text("")	
		var scare_played = false
		if scare_played = false{
				audio_play_sound(snd_store_disappear,1,false)
				scare_played = true
		}
		obj_camera.change_follow = 0		
		
		break
		
		case "An_Zhou_initial_4":
		scr_text("......","player")
		scr_text("Most places of this town were abandoned a long time ago, I remember the fellow here,","An_Zhou")
		scr_text("I do good trades with him back in that days, but I think his son left the shop for the city after he passed away.","An_Zhou")		
		scr_text("(murmured) Passed away.......","player")		
		scr_text("By the way, you say you are just talking to whom? Sorry, I didn't fully hear that sentence.","An_Zhou")
		scr_text("No. No one. I just have the habit of talking to myself. Um, sorry, who are you?","player")		
		scr_text("Oh! Forgive me for the rudeness, my name is Zhou An. You must be the writer we've contacted, right? We don't get to see lots of new faces here.","An_Zhou")	
		scr_text("Ah, that may be my chief editor, Zhao, he sends me here with this letter.","player")
		scr_text("Yeah sure, we know he will always send someone reliable like you here. Let's hurry to the village, shall we? You must have come a long way.","An_Zhou")	
			scr_option("Sure", "An_Zhou_initial_5")		
		
		obj_player.image_xscale = 1
		break		
		
		case "An_Zhou_initial_5":
		scr_text("")		
		obj_room_transition_out_room_main.start_transition = true
		
		
		break
		
		case "garden_An_Zhou_1":		
		instance_destroy(obj_garden_An_Zhou)		
		obj_An_Zhou.image_xscale = -1
		obj_player.image_xscale = -1		
		scr_text("Here we all. Welcome to ZhouJia Village! Sorry for the long climb though, I hope those stairs didn't exhaust you.","An_Zhou")
		scr_text("(Breathing heavily) I'm ok, just need a moment to rest.","player")
		scr_text("His smile hasn't changed a bit since we just met hours ago. It's hard to see through his real emotion.")		
		scr_text("Great. You are now in one of our main buildings in the village, our leader reserves this just for you to rest. ","An_Zhou")		
		scr_text("Speaking of this, he should have been in the garden already, waiting for you. But I don't see him here......hmm, how weird. ","An_Zhou")	
		scr_text("Maybe you could go look for him. I'll take care of myself here.","player")
		scr_text("(Sign) Alright, I'll get the leader back soon. I'm sure you could look after yourself, but let me remind you a bit.","An_Zhou")
		scr_text("Please try your best staying in the garden. Our traditional ceremony is coming, and people are decorating all houses in the village.","An_Zhou")
		scr_text("Unfortunately, the decorating process for this building is not done yet. We don't want to ruin those surprises for you.","An_Zhou")		
			scr_option("Ok. I'll just take a look around here.", "garden_An_Zhou_Leave")		

		break	
		
		case "garden_An_Zhou_Leave":	
		scr_text("An Zhou leaves the garden...")	
		obj_An_Zhou.state = 1	
		obj_An_Zhou.conversation_end = true
		obj_An_Zhou.start_moving = true			
		obj_An_Zhou.image_xscale = -1		
		break
		
		case "rice" :
		scr_text("The tank looks empty.")			
		break
		
		case "dead_tree":
		scr_text("An old dead tree, but something feels wrongt with it.")	
			scr_option("look closer","tree_closer")
		
		break		
		
		case "tree_closer" :	
		obj_dead_tree_ghost.appear = true
		scr_text("")				
		scr_text("What was that?","player")		
		scr_text("...","player")			
		scr_text("Maybe it's just because I didn't get enough sleep...","player")					
		scr_text("Meow~","cat")
						scr_text_float(0,5)				
					scr_text_float(0,5)
		scr_text("!!", "player")	
			scr_option("It's that cat again!", "cat_leave")			
		obj_dead_tree.appear = false
		break		

		case "cat_leave":
		scr_text("Where are you going?!", "player")		
		if !instance_exists(obj_cat)
		{
		instance_create_layer(467,224,"Instances",obj_cat)	
			
		}	
		obj_dead_tree_ghost.appear = false	

		obj_black_screen_tree.appear = false			
		instance_destroy(obj_dead_tree_talk)
		instance_destroy(obj_rice_initial)	
		instance_destroy(obj_invisible_wall)				
		
		obj_cat.start_running = true	
			
		break		
		
		case"do_not_enter_hallway"	:
		scr_text("An Zhou told me that I should not enter the house by my own...", "player")			
		
		
		break		
		case"need_light":
		scr_text("Why is this place so dark? I need to get a light source", "player")			
		
		break		
		
		case"picture":
		scr_text("An old photo of a woman holds a girl in her hand, they seems to be happy.")			
		scr_text("But the woman's eyes were scratched with black stains. " )
		scr_text("There are some words in the bottom right corner of the photo: My dearest love. By Cheng Zhou. 1998.X.X " )		
			scr_option("...", "picture_done")				
		break
		
		case"picture_done":
		scr_text("...", "player")		
		scr_text("Those vines... are gone?", "player")	
				if instance_exists(obj_picture)
				{
					
				obj_picture.appear = false
				
				}				
				obj_black_screen_tree.appear = false	
		break
		
		
		case"kitchen_without_light":
		scr_text("It's too dark over there", "player")	
		
		break	
		
		case"find_light":
		scr_text("")	
		scr_text("Are these vines supposed to be here?", "player")		
		scr_text("....", "player")
		scr_text("Maybe it's just too dark that I didn't see", "player")				
		scr_text("Press TAB to open backpack. Use LEFT CLICK to turn on the light.")	
			scr_text_color(6,9, c_green,c_green,c_green,c_green)	
			scr_text_color(32,42, c_green,c_green,c_green,c_green)			
		break		
		
		
		
		case"after_kitchen":
		scr_text("This place is weird, I shoiuld probably head out", "player")			
		break
		
		
		case"cheif_initial":
		scr_text("Miss, Why are you here? We've been looking for you, and I told you to stay in the garden," , "An_Zhou")
		scr_text("guess my suggestion really doesn't mean much to you.",  "An_Zhou_angry")	
				scr_text_shake(0,52)		
		scr_text("No, I don't mean to.. I see a cat entering the door so I follow it through. Sorry, I never meant to keep you guys worried.", "player")
		scr_text("Oh no no no, don't blame yourself for this.",  "Cheif")	
		scr_text("None of this is supposed to happen today if I wasn't delayed by the village business. You have my apology, Miss Zhang.",  "Cheif")	
		scr_text("So he must be the Chief An Zhou kept mentioning about. He seems to know my name, maybe he's the one who contacted chief editor Zhao and scheduled this visit.")
		scr_text(" (Sigh) Chief, we should get going, should we show our visitor her room now?",  "An_Zhou")			
		scr_text("An, let's not hurry Miss Zhang. She seemed quite active and curious. It would be impolite if we ignore our visitor's needs.",  "Cheif")		
		scr_text("So, is there anything about the village you'd like me to briefly talk you through now? Miss Zhang?",  "Cheif")		
			scr_option("Could you give me an overview of the village's history?", "village_history_1_1")
			scr_option("How's the village doing recently?", "village_recent_2_1")				
		break
		
		case"village_history_1_1":
		scr_text("Gladly! You see, ZhouJia village has a long history. Our ancestors found this beautiful mountain and constructed the home we live in now.",  "Cheif")	
		scr_text("The virtue of hardworking and faithfulness was passed on from our generation to generation. ",  "Cheif")			
		scr_text("We grow tea trees for a living and the god of the mountain always blesses us with its power.  ",  "Cheif")					
		scr_text("Our tea was welcomed by everyone, they have the best quality and smells that no one could resist.   ",  "Cheif")			
		scr_text("Those good old days, I could still dream of them some nights, but they are all gone now. That's why we sent you that letter, Miss Zhang.",  "Cheif")				
		scr_text("We truly hope that, with your help, this village may still have a future to look forward to.",  "Cheif-mad")			
			scr_text_shake(0,92)		
		scr_text(" Chief...",  "An_Zhou")			
		scr_text("Oh, I get too excited again am I? Sorry Miss Zhang, please pardon this noisy old man.",  "Cheif")		
			scr_option("How's the village doing recently?", "village_recent_1_2")	

		break	
		
		case"village_recent_1_2":
		scr_text("Well, you must have read the letter. Things are heading in a bad direction, our tea trees were never like the old time now.",  "Cheif")			
		scr_text("they grow slowly, and the quality dropped continuously. ",  "Cheif")			
		scr_text("Now, we can't even compete with those who produce massive tea leaves with machines. What a shame. ",  "Cheif")			
		scr_text("All villagers here suffered a lot these years, and towns around the village were also affected. ",  "Cheif")
		scr_text("Some even say we were forsaken by the mountain god....What an absurd accusation. ",  "Cheif-mad")				
			scr_text_shake(54,80)	
		scr_text("(deep sigh) Anyway, I know those rumors won't affect you, Miss Zhang.  ",  "Cheif")				
		scr_text("You seem wise to me, and I believe you are here to change this situation.  ",  "Cheif")				
		scr_text("Thank you for coming, it means a lot to us here.  ",  "Cheif")			
		scr_text("When he said he's glad that I'm here, I could tell he really means it." )	
		scr_text("But something in his words still feels a little off..." )			
			scr_option("Is there someone named Cheng Zhou in the village?", "Cheng_Zhou")		
		break	
		
		case"village_recent_2_1":
		scr_text("Well, you must have read the letter. Things are heading in a bad direction, our tea trees were never like the old time now.",  "Cheif")			
		scr_text("they grow slowly, and the quality dropped continuously. ",  "Cheif")			
		scr_text("Now, we can't even compete with those who produce massive tea leaves with machines. What a shame. ",  "Cheif")			
		scr_text("All villagers here suffered a lot these years, and towns around the village were also affected. ",  "Cheif")
		scr_text("Some even say we were forsaken by the mountain god....What an absurd accusation. ",  "Cheif-mad")				
			scr_text_shake(54,80)	
		scr_text("(deep sigh) Anyway, I know those rumors won't affect you, Miss Zhang.  ",  "Cheif")				
		scr_text("You seem wise to me, and I believe you are here to change this situation.  ",  "Cheif")				
		scr_text("Thank you for coming, it means a lot to us here.  ",  "Cheif")			
		scr_text("When he said he's glad that I'm here, I could tell he really means it." )	
		scr_text("But something in his words still feels a little off..." )			

			scr_option("Could you give me an overview of the village's history?", "village_history_2_2")				
		break			
		
		case"village_history_2_2":
		scr_text("Gladly! You see, ZhouJia village has a long history. Our ancestors found this beautiful mountain and constructed the home we live in now.",  "Cheif")	
		scr_text("The virtue of hardworking and faithfulness was passed on from our generation to generation. ",  "Cheif")			
		scr_text("We grow tea trees for a living and the god of the mountain always blesses us with its power.  ",  "Cheif")					
		scr_text("Our tea was welcomed by everyone, they have the best quality and smells that no one could resist.   ",  "Cheif")			
		scr_text("Those good old days, I could still dream of them some nights, but they are all gone now. That's why we sent you that letter, Miss Zhang.",  "Cheif")				
		scr_text("We truly hope that, with your help, this village may still have a future to look forward to.",  "Cheif-mad")			
			scr_text_shake(0,92)		
		scr_text(" Chief...",  "An_Zhou")			
		scr_text("Oh, I get too excited again am I? Sorry Miss Zhang, please pardon this noisy old man.",  "Cheif")		
			scr_option("Is there someone named Cheng Zhou in the village?", "Cheng_Zhou")	

		break			
		
		
		
		
		
		
		
		
		
		
		case "Cheng_Zhou":
		scr_text("......",  "Cheif")					
		scr_text("!",  "An_Zhou")				
		scr_text("Where did you hear that from? What do.....",  "An_Zhou")				
		scr_text("Miss Zhang. I could assure you.",  "Cheif")	
		scr_text("In this village, no one named Cheng Zhou lives here.",  "Cheif")			
		scr_text("The atmosphere doesn't feel right, maybe I shouldn't ask that." )			
			scr_option("That's enough for me now. Thank you for telling me these things.", "Cheif_finish")		
		
		
		
		break
		
		case "Cheif_finish":		
		scr_text("Wonderful, Let's take you to the room then. AnZhou? Please lead the way up.",  "Cheif")				
			scr_option("Okay", "goto_bedroom")			
		
		
		break	
		
		case "goto_bedroom":	
			scr_text("")		
		obj_room_transition_out_yuan_zi.start_transition = true		
		break		
		
		case "bedroom_initial":		
		scr_text("what a long day....", "player")		
		scr_text("I should settle my backpack on the table before taking time to rest and summarize.", "player")				

		break

		case"bedroom_think":
		scr_text("Huh, I didn't even realize it was already afternoon", "player")		
		scr_text("I encountered many strange things today, and I always feel that AnZhou and the chief I have met have an indescribable sense of discord.", "player")	
		scr_text("The photo I found in the kitchen, for some reason, always has a sense of familiarity.", "player")		
		scr_text("Is this village related to the place in my dream?", "player")				
		scr_text("The strange intuition in my mind is getting stronger, and those rotting vines in the kitchen are similar to those tree roots in my dream. ", "player")						
		scr_text("It's so weird. If it weren't for my illusion, then there must be something wrong with this village.", "player")				
		scr_text("There is also the cat that I have been encountering since arriving at the foot of the mountain.  ", "player")			
		scr_text("I remember there is a superstition that records the fact that black cats can protect their master's descendants.  ", "player")			
		scr_text("Was it raised by the villagers as a wish for blessing? But I always feel that cat has been avoiding villagers.  ", "player")	
		scr_text("Anyway, in future exploration, I need to find ways to collect more useful information to solve these mysteries.  ", "player")	
			scr_option("For today, I would just rest for now", "cat_appear")			
					
		break
		case"cat_appear":		
		obj_cat_bedroom.start_running = true
		scr_text("Meow~","cat")		
					scr_text_float(0,5)		
		scr_text("I was just thinking about you... Why are you here? ", "player")		
		scr_text("...")		
			scr_option("What's wrong?", "scroll_close")		
		break		
		case"scroll_close":	
		obj_scroll.scroll = true
		obj_room_transition_out_bedroom.start_transition = true
		scr_text("!!! ", "player")			
		scr_text("(Cough) What's... happening.... ", "player")					
		scr_text("... ", "player")				
		break			

		case"cat_night":	
		scr_text("(SCRATCH...SCRATCH...)")			
		scr_text("Uhh... ", "player")			
		scr_text("I passed out...?", "player")			
		scr_text("...", "player")			
		scr_text("Looks like someone stole my bag", "player")	
		scr_text("This is NOT GOOD", "player")			
		scr_text("I have to find my bag and get out of here", "player")				
		
		break	
		
		case"open_window":	
		scr_text("looks like I could open this window and flip through it..", "player")		
		scr_text("It is old, but I think I could force it to open", "player")				
			scr_option("(Use force to open)", "window_make_sound")			
		break	
		case"window_make_sound":	
		obj_window.audio_play = true
		scr_text("......", "player")			
		scr_text("What was that walking sound?", "player")			
		scr_text("...", "player")				
		scr_text("Nevermind, I should move on", "player")			
			scr_option("(flip through window)", "window_flip")			
		break	
		case"window_flip":			
		scr_text("")		
		obj_room_transition_out_bedroom_night.start_transition = true
		
		
		break
		
		case"2f_initial":			
		scr_text("...", "player")		
		scr_text("!!!", "player")		
			scr_option("(hide behind the pot)", "player_hidding")			
		break		

		case"player_hidding":
		scr_text("")			
		obj_player.image_alpha = 0.6
		
		break		
		
		case"player_hide":
		obj_cat_move.state = "chase"
		scr_text("That guy looks dangerous...", "player")		
		scr_text("I should not make a sound..", "player")			
		
		
		break	
		
		case"player_move":
		scr_text("MeoOW!!","cat_angry")		
		scr_text("The cat...?", "player")			
			scr_option("(Is that cat helping me?)", "player_help")			
		obj_monster_patrol.state = "flip"		


		
		
		break
		case"player_help":	
		scr_text("(That guy walks away....)", "player")			
		obj_cat_move.state = "chase-2"				
		obj_monster_patrol.state = "patrol-2"		
		obj_player.image_alpha = 1		
		break	
		
		case"2f_do_not_pass":		
		scr_text("That man may come back, I should probably go down stairs instead", "player")			
			
		break	
		
		case"mask_solve":
		scr_text("I believe this was the pattern", "player")			
			scr_option("...", "mask_scare")		
		
		break
		
		case"mask_scare":	
		with(obj_inventory_mask)
		{
		inventory[0] = 5
		inventory[1] = 6
		inventory[2] = 7
		inventory[3] = 8		
			
		}
		scr_text("!!!", "player")		
		scr_text("Something opened..", "player")			
		scr_text("I see, they hide my bag here...", "player")
		scr_text("Now I just need to head upstairs for better signal", "player")
		scr_text("but what was that walking sound...?", "player")		
		obj_backpack_pickup.appear = true
		break


		case "1f_chase":
		scr_text("!!!", "player")			
		scr_text("IT'S HIM!", "player")	
		scr_text("RUN")	
			scr_text_shake(0,3)		
		obj_monster_chase.start_chase = true
		break
		
		
		case"1f_puzzle_initial":
		scr_text("I need my GPS to acquire help", "player")				
		scr_text("They must hide my bag somewhere here", "player")			

		
		
		break

		case"mask_puzzle_initial":
		
		scr_text("what are these...", "player")				
		scr_text("There should be more evidences around the first floor..", "player")				

		
		break
		
		case"ghost_initial":
		
		scr_text("what the...", "player")				
		scr_text("Those eyes are looking into one of the doors...", "player")				
			scr_text_color(6,10, c_orange,c_orange,c_orange,c_orange)		
		
		break


		case"loop_escaped":
		scr_text("guess I escaped that loop..", "player")			
		scr_text("I have to find a better place for my GPS to work", "player")			
		
		break
		
		case"2f_comments":
		scr_text("......", "player")			
		
		
		break
		
		case"2f_cat":
		scr_text("Those footprints...I must hurry!", "player")			
		
		break
		
		case"loft_initial":
		obj_player.image_xscale = 1		
		scr_text("...", "player")		
		scr_text("That lunatic! How could he....no, I was warned before, I should have realized earlier.", "player")
		scr_text("Those people of Zhou have all gone mad.", "player")		
		scr_text("Must call for help with the GPS! Now!", "player")					
		scr_text("Press TAB to open backpack. Use LEFT CLICK to use GPS.")	
			scr_text_color(6,9, c_green,c_green,c_green,c_green)	
			scr_text_color(32,42, c_green,c_green,c_green,c_green)			
		break
		
		
		case"GPS-final":
		scr_text("......")		
		scr_text("no signal...")	
		scr_text("Please! I need to get rescued!", "player")			
				scr_option("(try again)", "gps-1")		
		break
		
		case"gps-1":
		obj_loft_dead.appear = true			
		scr_text("!!!")		
		scr_text("NO SIGNAL...")	
		scr_text("No....no....","player")				
				scr_option("(TRY AGAIN)", "gps-2")			
		break	
		
		case"gps-2":		
		obj_loft_sound_manager.play = true
		scr_text("")		
		scr_text("I don't want to die....")	
				scr_option("HANG ON", "gps-3")	
				scr_option("GIVE UP", "give_up")						
		break			
		
		case"gps-3":		
		scr_text("")	
		scr_text("....")			
				scr_option("GIVE UP", "give_up")
				scr_option("GIVE UP", "give_up")					
		break
		
		case"give_up":		
		scr_text("")	
		obj_room_transition_out_loft.start_transition = true				
		break		
		
		
		case"textile_pickup":
		scr_text("This looks familiar ", "player")	
				scr_option("(Take a look at it)" , "textile_finish")				
		break
			
		case"textile_finish":	
		scr_text("...", "player")			
		scr_text("something feels different with this white textile", "player")				
		obJ_white_textile_big.appear = false				
		obj_screen_effect_item_pickup.appear = false		
		break	
		
		
		case"final_initial":	
		scr_text("")			
		scr_text("Meow~","cat")		
					scr_text_float(0,5)			
		scr_text("...To be continued")							
		break		
		
		case"abacus-talk":
		
		scr_text("I should give this back to the shop owner.","player")			
		
		break		
		
		
		case"mask_backpack":
		scr_text("I haven't take my back pack.","player")			
		
		break
}

}