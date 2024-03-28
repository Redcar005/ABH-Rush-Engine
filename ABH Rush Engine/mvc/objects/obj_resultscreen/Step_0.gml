x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )


if bar_alpha < 1
    bar_alpha += 0.05
if phase >= 4
{
    if y_upperoverlay < 0
        y_upperoverlay += 2
    else
        y_upperoverlay = 0
    
    if y_loweroverlay > 256
        y_loweroverlay -= 2
    else
        y_loweroverlay = 256
}

if phase == 1
{
    x_stageclear += 12
    if x_stageclear >= 125
    {
        x_stageclear = 125
        phase = 2
        alarm[0] = 120
    }
}
if phase == 2
{
    /*
    y_upperoverlay = y - 38
    y_loweroverlay = y + 324

    x_timeoffset = x - 150
    y_timeoffset = y + 90

    x_ringoffset = x - 150
    y_ringoffset = y + 120

    x_enemyoffset = x - 150
    y_enemyoffset = y + 150

    x_scoreoffset = x - 150
    y_scoreoffset = y + 210
    */
}
if phase == 3
{
    y_stageclear -= 3
    if y_stageclear <= 32
    {
        phase = 4
    }
}

if phase == 4
{
    x_timeoffset += 12
    x_time -= 12
    if x_timeoffset >= x_info
        phase = 5
}

if phase == 5
{
    x_ringoffset += 12
    x_ring -= 12
    if x_ringoffset >= x_info
        phase = 6
}

if phase == 6
{
    x_enemyoffset += 12
    x_enemy -= 12
    if x_enemyoffset >= x_info
        phase = 7
}

if phase == 7
{
    x_scoreoffset += 12
    if x_scoreoffset >= x_info
    {    
        phase = 8
        alarm[2] = 60
    }
}

if phase == 9
{
    if global.rings_collected > 0
    {
        global.rings_collected -= 50
        global.score_made += 50
    }
    if global.time_bonus > 0
    {
        global.time_bonus -= 50
        global.score_made += 50
    }
    if global.enemies > 0
    {
        global.enemies -= 50
        global.score_made += 50
    }
    
    if !audio_is_playing(snd_pointsadd)
        audio_play_sound(snd_pointsadd,1,false)
    
    if global.rings_collected == 0 && global.time_bonus == 0 && global.enemies == 0 
    {
        audio_play_sound(snd_cashregister2,1,false)
        phase = 10
        alarm[3] = 180
    }
}

if phase == 11
{
    if button_state == 0
    {
        button_alpha += 0.05
        if button_alpha >= 1
            button_state = 1
    }
    else 
    {
       button_alpha -= 0.05
        if button_alpha <= 0
            button_state = 0 
    }
    if keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_face1)
    {
        audio_stop_all()
        instance_create(x + 228, y + 128,obj_resultscreen_blackfadein)
        audio_play_sound(snd_menuconfirm,1,false)
    }
}



/* */
/*  */
