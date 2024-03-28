if !place_meeting(x,y,obj_pulleyend) && other.action != consPlayerActionDead
{
    if activate == false
    {
        audio_play_sound(snd_grab,1,false)
        audio_play_sound(snd_zipline,1,false)
    }
    activate = true
    other.action = consPlayerActionPulley
    other.xdir = image_xscale
    if instance_exists(obj_hominglock)
    {
        with(obj_hominglock)
            instance_destroy()
    }
}

