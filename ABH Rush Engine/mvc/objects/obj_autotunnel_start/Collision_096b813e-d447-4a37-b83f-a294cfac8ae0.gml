if other.action != consPlayerActionAutoTunnel
{
    other.xdir = 1
    other.angle = image_angle
    other.ground = true
    other.action = consPlayerActionAutoTunnel
    
    if instance_exists(obj_boostfx)
    {
        with(obj_boostfx)
        {
            alive = false
        }
    }
    
    audio_play_sound(snd_roll,1,false)
}

