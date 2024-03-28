var index = 0
var colour = make_colour_rgb(0,90,225)
if instance_exists(obj_Sonic)
{
    if obj_Sonic.character == consPlayerNameShadow
    {
        index = 1
        colour = make_colour_rgb(128,0,0)
    }
}

draw_sprite_ext(spr_resultscreen_upper,index,x,y + y_upperoverlay,1,1,0,c_white,1)
draw_sprite_ext(spr_resultscreen_lower,index,x,y + y_loweroverlay,1,1,0,c_white,1)

draw_sprite_ext(spr_titlecard_stagenameoverlay,0,x,y + y_stageclear + 5,1,0.6,0,c_white,bar_alpha)

draw_set_font(font_stagetitle)
draw_text_outline_ext(x + x_stageclear,y + y_stageclear,"Stage Clear",2,colour,c_white,1,1)

draw_set_font(font_ingame)

draw_text_outline_ext(x + x_timeoffset, y + y_timeoffset,"Time Bonus",1,colour,c_white,1,1)
draw_text_outline_ext(x + x_time, y + y_timeoffset,global.time_bonus,1,colour,c_white,1,1)

draw_text_outline_ext(x + x_ringoffset, y + y_ringoffset,"Ring Bonus",1,colour,c_white,1,1)
draw_text_outline_ext(x + x_ring, y + y_ringoffset,global.rings_collected,1,colour,c_white,1,1)


draw_text_outline_ext(x + x_enemyoffset, y + y_enemyoffset,"Enemy",1,colour,c_white,1,1)
draw_text_outline_ext(x + x_enemy, y + y_enemyoffset,global.enemies,1,colour,c_white,1,1)

var button_sprite = spr_qte_keys
if obj_Sonic.input_mode == 1
    button_sprite = spr_qte_xboxbuttons
draw_sprite_ext(button_sprite,1,x+428,y+222,1,1,0,c_white,button_alpha)

draw_text_outline_ext(x + x_scoreoffset,y + y_scoreoffset,"Score   " + string(global.score_made),1,colour,c_white,1,1)

