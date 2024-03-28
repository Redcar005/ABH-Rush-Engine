image_speed = 0.5


if abs(other.hsp) > 3
    image_angle = obj_boostfx.image_angle //obj_Sonic.angle
else
{
    image_xscale = other.xdir
}

if !other.super
{
    if other.character == consPlayerNameSonic
        sprite_index = spr_boostsw
    else if other.character == consPlayerNameShadow
        sprite_index = spr_boostsw_shadow
}
else
    sprite_index = spr_boostsw_super

