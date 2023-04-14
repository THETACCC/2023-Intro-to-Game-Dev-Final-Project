function scr_set_defaults_for_text(){
	line_break_pos[0,page_number] = 999
	line_break_num[page_number] = 0
	line_break_offset[page_number] = 0
	
	txtb_spr[page_number] = spr_mytextbox
	
	
	speaker_sprite[page_number] = noone	
	speaker_side[page_number] = 1
	
	snd[page_number] = snd_speak
	
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
			speaker_sprite[page_number] = spr_player_speak
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