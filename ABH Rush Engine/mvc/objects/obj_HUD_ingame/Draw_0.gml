if show
{
    draw_sprite_ext(life,0,x_lifeoffset,y_lifeoffset,1,1,0,c_white,1)
    draw_sprite_number(x_lifeoffset+30,y_lifeoffset+2,obj_stagestat_controller.lives_string,number,1)
    
    draw_sprite_ext(time,0,x_timeoffset,y_timeoffset,1,1,0,c_white,1)
    draw_sprite_number(x_timeoffset+30,y_lifeoffset+2,obj_stagetime.time_string,number,1)
    
    draw_sprite_ext(ring,0,x_ringoffset,y_ringoffset,1,1,0,c_white,1)
    draw_sprite_number(x_ringoffset+30,y_ringoffset+2,obj_stagestat_controller.rings,number,1)
    
    if other.character != consPlayerNameTails
    {
        draw_sprite_ext(boost_gauge,0,x_boostoffset,y_boostoffset,1,1,0,c_white,1)
        if other.boostamount > 0
        {
            draw_line_colour(x_boostoffset+7,y_boostoffset+11,x_boostoffset+7+(1.4*obj_Sonic.boostamount),y_boostoffset+11,c_green,c_green)
            draw_line_colour(x_boostoffset+8,y_boostoffset+12,x_boostoffset+8+(1.4*obj_Sonic.boostamount),y_boostoffset+12,c_lime,c_lime)
    
        }
    }
}

