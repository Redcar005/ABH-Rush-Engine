/*
if hide == true
{
    alpha -= 25
    if alpha <= 0
        alpha = 0
}
else
{
    alpha += 25
    if alpha >= 255
        alpha = 255
}
*/
if image_angle == 0
{
    if place_meeting(x,y,obj_Sonic)
    {
        if image_xscale == 1
        {
            if obj_Sonic.hsp > 0 
                global.hide = true
            else if obj_Sonic.hsp < 0
                global.hide = false
        }
        else if image_xscale == -1
        {
            if obj_Sonic.hsp > 0 
                global.hide = false
            else if obj_Sonic.hsp < 0
                global.hide = true
        }
    }
}
else if image_angle == 90
{
    if place_meeting(x,y,obj_Sonic)
    {
        if image_xscale == 1
        {
            if obj_Sonic.vsp < 0 
                global.hide = true
            else if obj_Sonic.vsp > 0
                global.hide = false
        }
        else if image_xscale == -1
        {
            if obj_Sonic.vsp > 0 
                global.hide = false
            else if obj_Sonic.vsp < 0
                global.hide = true
        }
    }
}

if global.hide == true
    tile_layer_hide(index)
else
    tile_layer_show(index)

//tile_set_alpha(tile_layer_find(index),alpha)

/* */
/*  */
