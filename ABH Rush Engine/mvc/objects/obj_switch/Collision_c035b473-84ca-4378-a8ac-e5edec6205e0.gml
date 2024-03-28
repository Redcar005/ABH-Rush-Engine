if !activate
{
    activate = true
    image_speed = 0.25
    audio_play_sound(snd_switch,1,false)
    if play_sound 
    {
        if room == rm_curienmansion
            audio_play_sound(snd_computer_unlocked,1,false)   
    }
    if switchable == obj_switchdoor
            audio_play_sound(snd_dooropen,1,false)
    with(instance_nearest(x,y,switchable))
    {
        activate = true
    }
}

