phase = 1

x = __view_get( e__VW.XView, 0 ) + 410
y = __view_get( e__VW.YView, 0 ) + 35
if instance_exists(obj_Sonic)
{
    if obj_checkpoint_controller.checkpoint
    {
        if obj_Sonic.character == consPlayerNameSonic
        {
            sprite_index = spr_title_Sonic_stand
            image_speed = 0.20
        }
        else if obj_Sonic.character == consPlayerNameShadow
        {
            sprite_index = spr_title_Shadow_stand
            image_speed = 0.20
        }
        else if obj_Sonic.character == consPlayerNameTails
        {
            sprite_index = spr_title_Tails_stand
            image_speed = 0.20
        }
    }
    else
    {   
        if obj_Sonic.character == consPlayerNameSonic
        {
            sprite_index = spr_title_SonicGo1
            image_speed = 0.45
        }
        else if obj_Sonic.character == consPlayerNameShadow
        {
            sprite_index = spr_titlecard_shadow
            image_speed = 0.75
        }
        else if obj_Sonic.character == consPlayerNameTails
        {
            sprite_index = spr_title_TailsGo
            image_speed = 0.45
        }
    }
}
else
{
    sprite_index = spr_title_SonicGo1
    image_speed = 0.45
}

