function scr_set_defaults_for_text(){
	line_break_pos[0,page_number] = 999
	line_break_num[page_number] = 0
	line_break_offset[page_number] = 0
	
	txtb_spr[page_number] = spr_mytextbox
	
	
	//variables for every letter and character
	for (var c = 0; c < 700 ; c++)
	{
	col_1[c,page_number] = c_white	
	col_2[c,page_number] = c_white	
	col_3[c,page_number] = c_white	
	col_4[c,page_number] = c_white		
	
	
	float_text[c,page_number] = 0
	float_dir[c,page_number] = c * 20
	
	
	shake_text[c,page_number] = 0
	shake_dir[c,page_number] = irandom(360)
	shake_timer[c,page_number] = irandom(4)
	
	}
	
	
	speaker_sprite[page_number] = noone	
	speaker_side[page_number] = 1
	
	snd[page_number] = snd_speak
	sound_effect[page_number] =	noone
}


// text visual effects
/// @param lst_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start,_end,_col1,_col2,_col3,_col4) {
	
	for ( var c = _start ; c <= _end ; c ++ ) 
	{
	col_1[c,page_number-1] = _col1
	col_2[c,page_number-1] = _col2	
	col_3[c,page_number-1] = _col3
	col_4[c,page_number-1] = _col4
	}
	
	
	
}

/// @param lst_char
/// @param last_char
function scr_text_float(_start,_end){
	
	for ( var c = _start ; c <= _end ; c ++ ) 
	{
	float_text[c,page_number-1] = true
	}
		
	
}

/// @param lst_char
/// @param last_char
function scr_text_shake(_start,_end){
	
	for ( var c = _start ; c <= _end ; c ++ ) 
	{
	shake_text[c,page_number-1] = true
	}
		
	
}


/// @param text
/// @param [portrait]
function scr_text(_text){

scr_set_defaults_for_text()
	
text[page_number] = _text


if argument_count > 1 {
	switch( argument[1]) 
	{
		//players
		case "player":
			speaker_sprite[page_number] = spr_player_talking
			txtb_spr[page_number] = spr_mytextbox
			speaker_side[page_number] = -1
			snd[page_number] = snd_speak
		break;
		
		
		//npcs
		case "npc":
			speaker_sprite[page_number] = spr_npc2_speak
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak	
		break;

		case "npc-anrgy":
			speaker_sprite[page_number] = spr_npc2_speak_angry
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak				
		break;
		
		case "shop_owner":
			speaker_sprite[page_number] = spr_shop_owner
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak				
		break;
		
		case "shop_owner_mad":
			speaker_sprite[page_number] = spr_shop_owner
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak	
			sound_effect[page_number] =	snd_scary_waterphone
		break;		
		
		case "shop_owner_notfound":
			speaker_sprite[page_number] = spr_shop_owner
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak				
		break;
		
		case "shop_owner_found":
			speaker_sprite[page_number] = spr_shop_owner
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak				
		break;
		
		case "An_Zhou":
			speaker_sprite[page_number] = spr_An_Zhou_talking
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak				
		break;
		case "An_Zhou_angry":
			speaker_sprite[page_number] = spr_An_Zhou_talking
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak	
			sound_effect[page_number] =	snd_glitch		
		break;		
		
		case "cat":
			speaker_sprite[page_number] = noone	
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak	
			sound_effect[page_number] =	snd_cat_meow			
		break;
		
		case "cat_angry":
			speaker_sprite[page_number] = noone	
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak	
			sound_effect[page_number] =	snd_cat_angry			
		break;		

		case "Cheif":
			speaker_sprite[page_number] = spr_chief_talking
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak				
		break;

		case "Cheif-mad":
			speaker_sprite[page_number] = spr_chief_talking
			txtb_spr[page_number] = spr_mytextbox_npc
			snd[page_number] = snd_npc_speak	
			sound_effect[page_number] =	snd_glitch	
		break;

	}

	
}

page_number ++



}

///@param option
///@param link_id

function scr_option(_option, _link_id) {
		option[option_number] =_option
		option_link_id[option_number] = _link_id
		
		option_number ++
}



/// @param text_id
function create_textbox(_text_id) {
			with ( instance_create_depth (0,0, -99999, obj_mytextbox) )
		{
		scr_game_text(_text_id)
		}
	
}


//function for switch
///@param _sound
//function scr_run_code(sound_id){
//	audio_play_sound([sound_id],1,false) 
	
//}
