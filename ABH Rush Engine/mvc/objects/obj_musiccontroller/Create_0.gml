//I have used Pixelated Pope's music controlling technique here

bgm = -1
intro_length = 0
loop_length = 0
total_length = 0
pos = 0

if room == rm_planetwisp
{
    if !audio_is_playing(bgm_planetwisp)
        bgm = audio_play_sound(bgm_planetwisp,0,false)
    else
        bgm = bgm_planetwisp
        
    intro_length = 52.00
    loop_length = 201.02 
}

if room == rm_curienmansion
{
    if !audio_is_playing(bgm_curienmansion)
        bgm = audio_play_sound(bgm_curienmansion,0,false)
    else
        bgm = bgm_curienmansion
    intro_length = 5
    loop_length = 158.07 - intro_length
}
// TODO : makes the game crash, activate when the resources are imported
/*if room == rm_hotcrater
{
    if !audio_is_playing(bgm_hotcrater)
        bgm = audio_play_sound(bgm_hotcrater,0,false)
    else
        bgm = bgm_hotcrater
    intro_length = 12.12
    loop_length = 68.05 - intro_length
}*/

total_length = intro_length + loop_length

/* */
/*  */
