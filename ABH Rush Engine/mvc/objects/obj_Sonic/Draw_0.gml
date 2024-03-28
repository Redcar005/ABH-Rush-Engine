//draw_self()
/*
if super == false
{
    if character == consPlayerNameSonic
        draw_Sonic()
    else if character == consPlayerNameShadow
        draw_Shadow()
}
else
{
    if character == consPlayerNameSonic
        draw_SuperSonic()
    else if character == consPlayerNameShadow
        draw_SuperShadow()
}
*/

if character == consPlayerNameTails && sprp == spr_Tails_spinjump
    draw_sprite_ext(spr_Tails_tails,image_i,x,y,1,xdir,tail_direction,c_white,1)

//this section fixes Sonic being colliding a little inside of the wall surface, while drawing the sprites
var _wall = 0 
var _bbox_top = 0
if place_meeting(x,y,obj_walls)
{
    _wall = instance_place(x+asin*mask,y+acos*mask,obj_walls)
    _bbox_top = sprite_get_bbox_top(_wall) - sprite_get_yoffset(_wall)
}
else if place_meeting(x,y,obj_bwalls) || xlayer == 0
{
    _wall = instance_place(x+asin*mask,y+acos*mask,obj_bwalls)
    _bbox_top = sprite_get_bbox_top(_wall) - sprite_get_yoffset(_wall)
}
else if place_meeting(x,y,obj_fwalls) || xlayer == 1
{
    _wall = instance_place(x+asin*mask,y+acos*mask,obj_fwalls)
    _bbox_top = sprite_get_bbox_top(_wall) - sprite_get_yoffset(_wall)
}


if collision_point(x+(mask - 1.5)*asin,y+(mask - 1.5)*acos,obj_walls,true,true)
    _bbox_top += 1

draw_yPos = _bbox_top

// drawing sprite    
if acos == 1 && ground
{
    draw_sprite_ext(sprp,image_i,x,y - _bbox_top,xdir,1,i_angle,c_white,image_alpha);
}
else if acos == -1 && ground
    draw_sprite_ext(sprp,image_i,x,y+2,xdir,1,i_angle,c_white,image_alpha);
else
    draw_sprite_ext(sprp,image_i,x,y,xdir,1,i_angle,c_white,image_alpha);
    
if character == consPlayerNameTails && action == consPlayerActionHomingTarget
{
    draw_circular_bar(x + xdir*18, y - 15, 100, 100, c_black, 5, 1, 3)
    draw_circular_bar(x + xdir*18, y - 15, alarm_get(3)/480 * 100, 100, c_lime, 5, 1, 3)
}

/* */
/*  */
