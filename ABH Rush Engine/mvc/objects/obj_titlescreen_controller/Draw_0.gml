if state <= 2
    draw_self()
else
{
    draw_set_font(font_sonicfont)
    draw_text_outline_ext(x - 70, y - 20, "Select Character",1,c_black,c_white,1,1)
    draw_sprite_ext(spr_select_character_2,character,x,y + 10,2,2,0,c_white,image_alpha)
}   
draw_sprite_ext(spr_blackblank,0,228,128,2,2,0,c_white,black_alpha)

