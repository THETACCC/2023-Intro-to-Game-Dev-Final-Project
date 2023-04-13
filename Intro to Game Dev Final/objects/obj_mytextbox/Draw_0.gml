accept_key = keyboard_check_pressed(ord("F"))

textbox_x = camera_get_view_x(view_camera[0])
textbox_y = camera_get_view_y(view_camera[0]) + 540


//setup

if setup == false {
	setup = true
	draw_set_font(myfont)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
	//loop through the pages

	for(var p = 0; p < page_number; p++) 
	{
		text_length[p] = string_length(text[p])	
		
		//get x position for my text box
			//character on the lesft
			text_x_offset[p] = 224
			portrait_x_offset[p] = 32
			
			if speaker_side[p] == -1 {
			text_x_offset[p] = 16
			portrait_x_offset[p] = 216
				
			}
			
			
			if speaker_sprite[p] = noone {
					text_x_offset[p] = 44
			}

		
		
	}
}


// typing the text
if draw_char < text_length[page]
	{
	draw_char += text_spd
	if( texttimer > 5) {

	texttimer = 0
	} else {
	texttimer += 1
	}
	draw_char = clamp(draw_char, 0, text_length[page])
	
	
}else {

}
	
//flip through pages
if accept_key 
{
 // if the typing is done
 if draw_char == text_length[page]
 {
	//next page
	if page < page_number-1
		{
		page ++
		draw_char = 0
		}
	else 
		{
		//link text for options
		if option_number > 0 {
			create_textbox(option_link_id[option_pos])	
		}

		instance_destroy()	
		}
		
	 }
 else {
	draw_char = text_length[page]	
		
 }
}







//draw textbox
var _txtb_x = textbox_x + text_x_offset[page]
var _txtb_y = textbox_y
txtb_img += txtb_img_spd
txtb_spr_w = sprite_get_width(txtb_spr)
txtb_spr_h = sprite_get_height(txtb_spr)
//draw the speaker
if speaker_sprite[page] != noone {
	sprite_index = speaker_sprite[page]
	var _speaker_x = textbox_x + portrait_x_offset[page]
	
	draw_sprite_ext(txtb_spr, txtb_img, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/txtb_spr_w, sprite_height/txtb_spr_h, 0, c_white,1)
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1)
}

//back of the box
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1)


// options
if draw_char == text_length[page] && page == page_number - 1
{
	
	
	//option selection
	
	option_pos += keyboard_check_pressed(ord("S")) -  keyboard_check_pressed(ord("W"))
	option_pos = clamp(option_pos, 0 , option_number-1)
	
	
	//draw the options
	var _op_space = 50
	var _op_bord = 4
	for (var op = 0; op < option_number; op ++)
	{
	// the option box
	var _o_width = string_width(option[op]) + _op_bord*2
	draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_width/txtb_spr_w, (_op_space-16)/txtb_spr_h, 0 , c_white, 1)
	
	
	//the arrow
	if option_pos == op
	{
		draw_sprite(spr_arrow, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op)
	}
	
	//the option text
	draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 2, option[op])
		
	}
	
	
}


//draw the text
var _drawtext = string_copy(text[page], 1, draw_char)
draw_text_ext(_txtb_x + boarder,_txtb_y + boarder, _drawtext, line_sep, line_width )
