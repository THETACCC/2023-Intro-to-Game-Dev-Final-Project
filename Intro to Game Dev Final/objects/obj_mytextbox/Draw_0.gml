/// @description Insert description here
// You can write your code in this editor
accept_key = keyboard_check_pressed(ord("F"))


if obj_camera.change_follow = 1 {
textbox_x = camera_get_view_x(view_camera[0])
textbox_y = camera_get_view_y(view_camera[0]) + 280
} else if  obj_camera.change_follow = 0 and room != rm_yuanzi and room != rm_start and room != rm_kitchen and room != rm_yuanzi_after_kitchen and room != rm_title and room != rm_bedroom and room != rm_bedroom_night and room!= rm_maskroom and room!= rm_gongpin and room!= rm_ghost_chase and room!= rm_loft and room!= rm_storage and room!= rm_end{
textbox_x = obj_player.x - 320
textbox_y = camera_get_view_y(view_camera[0]) + 280	
	
} else {
	
textbox_x = camera_get_view_x(view_camera[0])
textbox_y = camera_get_view_y(view_camera[0]) + 280	
	
}

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
			text_x_offset[p] = 128
			portrait_x_offset[p] = 32
			//character on the right			
			if speaker_side[p] == -1 {
			text_x_offset[p] = 32
			portrait_x_offset[p] = 528
				
			}
			
			//no character		
			if speaker_sprite[p] = noone or speaker_sprite[p] = spr_image1 or speaker_sprite[p] = spr_image2 or speaker_sprite[p] = spr_image3 or speaker_sprite[p] = spr_image4 or speaker_sprite[p] = spr_image5 or speaker_sprite[p] = spr_image6 or speaker_sprite[p] = spr_image7 or speaker_sprite[p] = spr_image8 or speaker_sprite[p] = spr_image9 or speaker_sprite[p] = spr_image10 or speaker_sprite[p] = spr_image6_6 or speaker_sprite[p] = spr_image7_7 or speaker_sprite[p] = spr_image8_8 or speaker_sprite[p] = spr_image9_9 or speaker_sprite[p] = spr_image10_10 {
					text_x_offset[p] = 80
			}

		// setting individual characters and finding where the lines of text should break
		for ( var c = 0 ; c < text_length[p] ; c++ ) 
		{
			
		var _char_pos = c+ 1
	
		//store individual characters in the Char array
		
		char [c,p] = string_char_at(text[p], _char_pos)
		
		
		//Get current width of the line
		var _text_up_to_char = string_copy(text[p], 1, _char_pos)
		var _current_txt_w = string_width( _text_up_to_char ) - string_width( char[c,p] )
		
		//get the last free space
		if char[c,p] == " " { last_free_space = _char_pos + 1 }
		
		//get the line breaks
		if _current_txt_w - line_break_offset[p] > line_width
			{
			line_break_pos[ line_break_num[p], p] = last_free_space
			line_break_num[p]++;
			var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space)
			var _last_free_space_string = string_char_at(text[p], last_free_space)
			line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width( _last_free_space_string)	
			}
		
		}
		
		//getting each characters positions
		for (var c = 0; c < text_length[p]; c ++ )
		{
			
		var _char_pos = c +1
		var _txt_x = textbox_x + text_x_offset[p] + boarder
		var _txt_y = textbox_y
		//Get current width of the line
		var _text_up_to_char = string_copy(text[p], 1, _char_pos)
		var _current_txt_w = string_width( _text_up_to_char ) - string_width( char[c,p] )
		var _txt_line = 0
		
		// compensate for string breaks
		for ( var lb = 0; lb < line_break_num[p] ; lb ++) 
			{
			// if the current loopingh character is after a line break
			if _char_pos >= line_break_pos [ lb,p]
				{
				var _str_copy = string_copy ( text[p], line_break_pos[lb,p], _char_pos - line_break_pos [lb, p] )
				_current_txt_w = string_width( _str_copy)
				
				//record the line this charactershould be on
				_txt_line = lb + 1
				
				
				
				}
			
			
			}
		
		
		//add to the x and y coordiantioes base on the new info
		char_x[c,p] = _txt_x + _current_txt_w
		char_y[c,p] = _txt_y + _txt_line * line_sep		
		
		
		}
		
		
		
		
		
		
	}
}


// typing the text
if text_pause_timer <= 0 {

	if draw_char < text_length[page]
	{
	draw_char += text_spd
	draw_char = clamp(draw_char, 0, text_length[page])
	var _check_char = string_char_at(text[page],draw_char)	
	if _check_char == "." || _check_char == "," || _check_char == "?"
		{
		text_pause_timer = text_pause_time
		if !audio_is_playing(snd[page]){
				audio_play_sound(snd[page],8,false)
			}
		
		
		}
	else
		{
			//typing sound
			if snd_count < snd_delay
				{
				snd_count ++	
				}else
				{
					snd_count = 0
					audio_play_sound(snd[page],8,false)
				}
			
			
		}
		if( texttimer > 5) {

		texttimer = 0
		} else {
		texttimer += 1
		}

	
	}
}else {
	text_pause_timer --
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
		image_index = 0	
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


//draw the UI for guide

if sound_effect[page] != noone
{
	if !audio_is_playing(sound_effect[page]) and sound_played = false
	{
	audio_play_sound(sound_effect[page],1,false)
	sound_played = true	
	}
} else if  sound_effect[page]= noone and page >= 1
{
	sound_played = false			
	if audio_is_playing(sound_effect[page-1])
	{
	audio_stop_sound(sound_effect[page-1])		

	}
	
	
}



//draw textbox
var _txtb_x = textbox_x + text_x_offset[page]
var _txtb_y = textbox_y
txtb_img += txtb_img_spd
txtb_spr_w = sprite_get_width(txtb_spr[page])
txtb_spr_h = sprite_get_height(txtb_spr[page])

draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1)
//draw the speaker
if speaker_sprite[page] != noone {
	sprite_index = speaker_sprite[page]



	var _speaker_x = textbox_x + portrait_x_offset[page]
	if speaker_side[page] == -1 {_speaker_x += sprite_width}
	if draw_char == text_length[page]
	{
		image_index = 10 
	}		
		
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1)				

	
	

	//draw the speaker
	//draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y, 80/txtb_spr_w, 80/txtb_spr_h, 0, c_white,1)


}  

if !instance_exists(obj_F_talking)
	{
	

	instance_create_depth(textbox_x + 315,textbox_y + 63, -9999,obj_F_talking)	
	
	}	
else if instance_exists(obj_F_talking)
	{
		obj_F_talking.x = textbox_x + 315
		
	}
	




//back of the box




// options
if draw_char == text_length[page] && page == page_number - 1
{
	
	
	//option selection
	
	option_pos += keyboard_check_pressed(ord("S")) -  keyboard_check_pressed(ord("W"))
	option_pos = clamp(option_pos, 0 , option_number-1)
	
	
	//draw the options
	var _op_space = 40
	var _op_bord = 5
	for (var op = 0; op < option_number; op ++)
	{
	// the option box
	var _o_width = string_width(option[op]) + _op_bord*2
	draw_sprite_ext(spr_options, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_width/txtb_spr_w, (_op_space-16)/txtb_spr_h, 0 , c_white, 1)
	
	
	//the arrow
	if option_pos == op
	{
		draw_sprite_ext(spr_arrow, 1, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op,1,1,0,c_white,1)

	}
	
	//the option text
	draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 3, option[op])
		
	}
	
	
}


//draw the text


//update the text position


for (var c = 0 ; c < draw_char ; c ++)
{
	//special stuff

		
	//wavy text
	var _float_y = 0;
	if float_text[c,page] == true
		{
		
		float_dir[c,page] += -6
		_float_y = dsin(float_dir[c,page]) * 1
			
		}
	//shake text
	var _shake_x = 0
	var _shake_y = 0
	if shake_text[c,page] == true
		{
		
		shake_timer[c,page] --
			if shake_timer[c,page] <= 0 {
			
			shake_timer[c,page] = irandom_range(4,8)
			shake_dir[c,page] = irandom(360)
			}
		
			if shake_timer[c,page] <=2 {
				_shake_x = lengthdir_x(1, shake_dir[c,page])
				_shake_y = lengthdir_y(1, shake_dir[c,page])			
				
			}

		}
	
	
	// the text
	draw_text_color(char_x[c,page] + _shake_x, char_y[c,page] + _float_y + _shake_y + 5, char[c,page],col_1[c,page],col_2[c,page],col_3[c,page],col_4[c,page],1)	
	
}
