set = 0;
///Display properties
ideal_width = 456;
ideal_height = 256;
zoom = 1;
max_zoom = 1;
room_speed = 60

aspect_ratio = display_get_width()/display_get_height();

inverse = false


//ideal_width = round(ideal_height*aspect_ratio);
//ideal_height = round(ideal_width/aspect_ratio);

//perfect pixel
/*
if(display_get_width() mod ideal_width != 0)
{
    var d;
    d = round(display_get_width()/ideal_width);
    ideal_width = display_get_width()/d;
}

if(display_get_height() mod ideal_height != 0)
{
    var d;
    d = round(display_get_height()/ideal_height);
    ideal_height = display_get_height()/d;
}

//checking odd width and height
if(ideal_width & 1)
    ideal_width += 1;
if(ideal_height & 1)
    ideal_height += 1;
 

  
//calculating zoom

//max_zoom = floor(display_get_width()/ideal_width);
*/


for(var i = 1; i <= room_last; i += 1)
{
    if room_exists(i)
    {
        room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,1,1,0,0,0,0,-1);
        room_set_view_enabled(i,true);
    }
}

display_set_gui_size(ideal_width,ideal_height);
surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);
room_goto(room_next(room));
//zoom += 1;

window_set_fullscreen(1);

/* */
/*  */
