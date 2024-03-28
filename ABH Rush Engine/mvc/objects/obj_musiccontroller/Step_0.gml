if audio_is_playing(bgm)
{
    pos = audio_sound_get_track_position(bgm)
    
    if pos > total_length
        audio_sound_set_track_position(bgm,pos - loop_length)
}
else
{
    audio_play_sound(bgm,0,false)
    audio_sound_set_track_position(bgm,pos - loop_length)
}

if room == rm_planetwisp
{
    intro_length = 52.00
    loop_length = 201.02 
}
else if room == rm_curienmansion
{
    intro_length = 5
    loop_length = 158.07 - intro_length
}
// TODO : makes the game crash, activate when the resources are imported
/*else if room == rm_hotcrater
{
    intro_length = 12.12
    loop_length = 68.05 - intro_length
}*/

/* */
/*  */
