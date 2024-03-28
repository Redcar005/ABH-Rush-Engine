var _xpos = __view_get( e__VW.XView, 0 )/(room_width-__view_get( e__VW.WView, 0 ));
var _ypos = __view_get( e__VW.YView, 0 )/(room_height-__view_get( e__VW.HView, 0 ));


/*
use seperate if sections in order to 
make different scrolling and positioning 
of backgrounds used in specific stage
*/
if room == rm_planetwisp
{
    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) * 1 )                         //lerp(0,room_width-background_width[0],_xpos)
    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) * 0.95 )                      //lerp(0,room_height-background_height[0],_ypos) 

    __background_set( e__BG.Y, 1, __background_get( e__BG.Y, 0 ) + __background_get( e__BG.Height, 0 ) )    //lerp(background_height[0],room_height-background_height[1],_ypos)
    __background_set( e__BG.X, 1, __view_get( e__VW.XView, 0 ) * 0.9 )


    __background_set( e__BG.Y, 2, lerp(0,room_height-__background_get( e__BG.Height, 2 ),_ypos) )
    __background_set( e__BG.X, 2, __view_get( e__VW.XView, 0 ) * 0.8 )
}
else if room == rm_testzone
{
    bg_max_images = 7
    __background_set( e__BG.Index, 0, bg_SunsetHill[bg_image] )
        
    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) ) 
    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) ) 
    
    frame += 0.2
    if frame >= 1
    {
        bg_image += 1
        frame = 0
    }
    
    if bg_image >= bg_max_images
        bg_image = 0
    
    /*
    background_x[1] = view_xview[0] * 0.9
    background_y[1] = background_y[0] + 40
    
    if background_y[0] > view_yview[0]
        background_y[0] = view_yview[0]
        
    */
}
else if room == rm_curienmansion
{
    back_val1 += -0.2
    
    __background_set( e__BG.X, 0, (__view_get( e__VW.XView, 0 ) + back_val1) * 0.95 )
    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) - 50 )
    
    __background_set( e__BG.X, 1, __view_get( e__VW.XView, 0 ) * 0.95 )
    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 ) - 50 )
    
    __background_set( e__BG.X, 2, __view_get( e__VW.XView, 0 ) )
    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 ) )
    
    __background_set( e__BG.X, 3, __view_get( e__VW.XView, 0 ) * 0.9 )
    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 ) - 50 )
    
    if back_val1 >= __background_get( e__BG.Width, 0 )
        back_val1 = 0
}

/* */
/*  */
