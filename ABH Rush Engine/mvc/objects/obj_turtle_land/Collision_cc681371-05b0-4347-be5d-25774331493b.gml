if canHit && obj_Sonic.ground = false && ((collision_line(x-12, y-3, x+7, y-3, obj_Sonic, true, true) && image_xscale == 1) || (collision_line(x+12, y-3, x-7, y-3, obj_Sonic, true, true) && image_xscale == -1))
{
    obj_Sonic.action = consPlayerActionNormal
    obj_Sonic.vsp = -force_power
    if obj_Sonic.action == consPlayerActionHomingTarget
    {
        obj_Sonic.hsp = 0        
    }
    if action == consPlayerActionNormal
        audio_play_sound(snd_spring,1,false)
    action = consPlayerActionJump
    image_index = 2
}
else
{
    event_inherited()
}
    

