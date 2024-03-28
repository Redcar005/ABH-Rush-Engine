if !activate
{
    sides.image_i = 0
    image_speed = 0
    image_index = 0
    if place_meeting(x,y,obj_Sonic) && canUse && obj_Sonic.action != consPlayerActionDead
    {
        timer = setTimer
        activate = true
        animate = true
        obj_Sonic.action = consPlayerAction4WayCanon
        canUse = false
        audio_play_sound(snd_4waycanon_start,1,false)
        audio_play_sound(snd_4waycanon_running,1,false)
    }   
}
else if activate && obj_Sonic.action == consPlayerAction4WayCanon
{
    if animate
    {
        if keyboard_check(vk_up) || gamepad_button_check(0,gp_padu)
        {
            if sides.image_i == 0
            {
                sides.image_i = 5
                audio_play_sound(snd_4waycanon_set,1,false)
            }
            if sides.image_i < 8 && sides.image_i >= 5
                sides.frame += 0.5
            sides_direction = 0
                
        }
        else if keyboard_check(vk_right) || gamepad_button_check(0,gp_padr)
        {
            if sides.image_i == 0
            {
                sides.image_i = 1
                audio_play_sound(snd_4waycanon_set,1,false)
            }
            if sides.image_i < 4 && sides.image_i >= 1
                sides.frame += 0.5
            sides_direction = 270
        }
        else if keyboard_check(vk_left) || gamepad_button_check(0,gp_padl)
        {
            if sides.image_i == 0
            {
                sides.image_i = 9
                audio_play_sound(snd_4waycanon_set,1,false)
            }
            if sides.image_i < 12 && sides.image_i >= 9
                sides.frame += 0.5
            sides_direction = 90
        }
        else if keyboard_check(vk_down) || gamepad_button_check(0,gp_padd)
        {
            if sides.image_i == 0
            {    
                sides.image_i = 13
                audio_play_sound(snd_4waycanon_set,1,false)
            }
            if sides.image_i < 16 && sides.image_i >= 13
                sides.frame += 0.5
            sides_direction = 180
        }
        if keyboard_check_released(vk_up) || keyboard_check_released(vk_down) || keyboard_check_released(vk_left) || keyboard_check_released(vk_right) || gamepad_button_check_released(0,gp_padd) || gamepad_button_check_released(0,gp_padu) || gamepad_button_check_released(0,gp_padr) || gamepad_button_check_released(0,gp_padl)
            animate = false
    }
    else
    {
        sides.frame -= 0.5
        if (sides.image_i == 1 || sides.image_i == 5 || sides.image_i == 9 || sides.image_i == 13)
        {   
            animate = true 
            sides.image_i = 0
        }
    }
    
    obj_Sonic.x = x
    obj_Sonic.y = y
    image_speed += 0.5
    timer -= 1
    if timer <= 0
    {
        activate = false
        obj_Sonic.action = consPlayerActionNormal
        audio_play_sound(snd_4waycanon_timeout,1,false)
    }
}
if !place_meeting(x,y,obj_Sonic) && obj_Sonic.action != consPlayerAction4WayCanon
{
    canUse = true
    if audio_is_playing(snd_4waycanon_running)
        audio_stop_sound(snd_4waycanon_running)   
    activate = false
    sides_direction = 0
    sides_img = 0
    animate = true
}

