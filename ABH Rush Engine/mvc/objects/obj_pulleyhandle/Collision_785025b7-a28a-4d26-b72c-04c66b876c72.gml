if activate
{
    obj_Sonic.action = consPlayerActionNormal
    obj_Sonic.vsp = -force_power
    vspeed = 0
    if audio_is_playing(snd_zipline)
        audio_stop_sound(snd_zipline)
}

