/// @description Insert description here
// You can write your code in this editor
depth = -999999
texttimer = 6
//parameters
textbox_width = 480
textbox_height = 80
boarder = 12
line_sep = 16
line_width = textbox_width - boarder*2
txtb_spr = spr_mytextbox
txtb_img = 0
txtb_img_spd = 0




//the text
page = 0
page_number = 0
text[0] = ""
text_length[0] = string_length(text[0])

char[0,0] = "";
char_x[0,0] = 0
char_y[0,0] = 0


draw_char = 0
text_spd = 1

//options
option[0] = ""
option_link_id[0] = - 1
option_pos = 0
option_number = 0


setup =false

//sound
snd_delay = 4
snd_count = snd_delay
snd_effect = -1
sound_played = false


//effects
scr_set_defaults_for_text()
last_free_space = 0
text_pause_timer = 0
text_pause_time = 16

x = 0
y = 0