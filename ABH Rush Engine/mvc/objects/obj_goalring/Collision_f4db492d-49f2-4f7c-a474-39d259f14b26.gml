other.stageClear = true
obj_player_camera.canFollow = false
if instance_exists(obj_pause)
{
    with(obj_pause)
    {
        instance_destroy()
    }
}

if !activate
{
    obj_stagetime.count = false
    audio_play_sound(snd_goal,1,false)
    alarm[0] = 180
    global.rings_collected = obj_Sonic.rings*100
    
    if obj_stagetime.minutes == 0
    {
        if obj_stagetime.seconds <= 30
            global.time_bonus = 50000
        else
            global.time_bonus = 10000
    }
    else if obj_stagetime.minutes == 1
        global.time_bonus = 5000
    else if obj_stagetime.minutes == 2
    {
        if obj_stagetime.seconds <= 30
            global.time_bonus = 2500
        else
            global.time_bonus = 1250
    }
    else
        global.time_bonus = 1000
}
activate = 1

