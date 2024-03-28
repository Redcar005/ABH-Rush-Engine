event_inherited()

if canHit
{
    if !collision_line(x,y,x,y+(sprite_height/2)+1,obj_walls,true,true)
    {
        y += 1
    }

    if act == 2
    {
        hspeed = image_xscale*2
        sprite_index = spr_eggpawn_labour_walk
    }
    else 
    {
        hspeed = 0 
        sprite_index = spr_eggpawn_labour_idle
    }
    if !collision_point(x+image_xscale*sprite_width/2,y+17,obj_walls,true,true) || collision_point(x+image_xscale*sprite_width,y,obj_walls,true,true)
    {
        act = 1
        alarm[1] = 120
    }
}

