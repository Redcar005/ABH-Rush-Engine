x = obj_Sonic.x
y = obj_Sonic.y - 10

if !obj_Sonic.super
{
    if obj_Sonic.character == consPlayerNameSonic
        sprite_index = spr_stomp
    else if obj_Sonic.character == consPlayerNameShadow
        sprite_index = spr_stomp_shadow
}
else
    sprite_index = spr_stomp_super
    
if obj_Sonic.action != consPlayerActionStomp
    instance_destroy()

