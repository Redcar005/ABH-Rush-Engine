x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

audio_play_sound(snd_whoosh,1,false)

phase = 1

x_info = 40
y_info = 80

bar_alpha = 0

button_state = 0
button_alpha = 0

y_upperoverlay = -38
y_loweroverlay = 324

x_stageclear = -150
y_stageclear = 100


x_timeoffset = -150
y_timeoffset = 90


x_ringoffset = -150
y_ringoffset = 120


x_enemyoffset = -150
y_enemyoffset = 150

x_scoreoffset = -150
y_scoreoffset = 210

x_time = 520
x_ring = 520
x_enemy = 520


if obj_Sonic.character == consPlayerNameSonic
{
    audio_play_sound(bgm_stageclear_Sonic,0,false)
    alarm[1] = 360
}
else if obj_Sonic.character == consPlayerNameShadow
{
    audio_play_sound(bgm_stageclear_Shadow,0,false)
    alarm[1] = 420
}

