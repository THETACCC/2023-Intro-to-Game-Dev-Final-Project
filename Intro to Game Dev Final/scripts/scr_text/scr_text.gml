function scr_set_defaults_for_text(){

	speaker_sprite[page_number] = noone	
	speaker_side[page_number] = 1
}




/// @param text
/// @param [portrait]
function scr_text(_text){

scr_set_defaults_for_text()
	
text[page_number] = _text


if argument_count > 1 {
	speaker_sprite[page_number] = argument[1] 	
	
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