x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

var index = 0
var colour = make_colour_rgb(0,90,225)
if instance_exists(obj_Sonic)
{
    if obj_Sonic.character == consPlayerNameShadow
    {
        index = 1
        colour = make_colour_rgb(128,0,0)
    }
    if obj_Sonic.character == consPlayerNameTails
    {
        index = 2
        colour = make_colour_rgb(248,184,32)
    }
}
draw_sprite_ext(spr_whiteblank,0,x+228,y+128,1,1,0,c_white,white_alpha)
draw_sprite_ext(spr_titlecard_outerpart,index,x,y,1,1,outer_angle,c_white,1)
draw_sprite_ext(spr_titlecard_stagenameoverlay,0,x,y+y_title - 5,1,1,0,c_white,bar_alpha)
draw_set_font(font_stagetitle)

if variable_global_exists("stagetitle")
{
    //draw_text_colour(x+x_title,y+y_title,global.stagetitle,c_white,c_white,c_white,c_white,1)
    draw_text_outline_ext(x+x_title,y+y_title,global.stagetitle,2,colour,c_white,1,1)
}
else
{
    //draw_text_colour(x+x_title,y+y_title,"Stage Title",c_white,c_white,c_white,c_white,1)
    draw_text_outline_ext(x+x_title,y+y_title,"Stage Title",2,colour,c_white,1,1)
}    
draw_sprite_ext(spr_blackblank,0,x+228,y+128,1,1,0,c_white,black_alpha)
draw_sprite_ext(spr_whiteblank,0,x+228,y+128,1,1,0,c_white,white_alpha1)


