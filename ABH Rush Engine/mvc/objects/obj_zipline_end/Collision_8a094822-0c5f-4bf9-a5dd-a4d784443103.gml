if other.action == consPlayerActionZipLineTravel && x <= other.x
{
    
    other.action = consPlayerActionNormal
    other.hsp = other.zipline_speed
    other.vsp = 0
    other.zipline_speed = 0
    other.hspeed = 0
    other.vspeed = 0
    if audio_is_playing(snd_grinding)
        audio_stop_sound(snd_grinding)
}

