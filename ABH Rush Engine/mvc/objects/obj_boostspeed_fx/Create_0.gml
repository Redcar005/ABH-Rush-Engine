image_speed = 0.5

if other.super
{
    sprite_index = spr_boostspeed_effect_super
}
else
{
    if other.character == consPlayerNameSonic
        sprite_index = spr_boostspeed_effect
    else if other.character == consPlayerNameShadow
        sprite_index = spr_boostspeed_effect_shadow
}

