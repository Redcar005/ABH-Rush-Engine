if activate && other.action != consPlayerActionDead
{
    if other.action != consPlayerActionPole
        audio_play_sound(snd_grab,1,false)
    activate = false
    other.action = consPlayerActionPole
}

