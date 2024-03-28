if !obj_Sonic.super
{
    if obj_Sonic.character == consPlayerNameSonic
        sprite_index = spr_jumpfx
    
    else if obj_Sonic.character == consPlayerNameShadow
        sprite_index = spr_jumpfx_shadow
}
else
    sprite_index = spr_jumpfx_super    
x = obj_Sonic.x
y = obj_Sonic.y+2
image_xscale = obj_Sonic.xdir
image_speed = abs(obj_Sonic.hsp)/12 + 0.5
if obj_Sonic.action != consPlayerActionJump || obj_Sonic.sprp == spr_Sonic_land || obj_Sonic.sprp == spr_Shadow_land || obj_Sonic.sprp == spr_SuperSonic_land || obj_Sonic.sprp == spr_SuperShadow_land
    instance_destroy();

