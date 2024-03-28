key_A = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_face3)
key_S = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_face1)
key_D = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_face2)
key_W = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_face4)

time -= timerate

x_button1 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - button_distance
y_button1 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 

x_button2 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y_button2 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 

x_button3 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + button_distance
y_button3 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 

if time > 0
{
    button1.x = x_button1
    button2.x = x_button2
    button3.x = x_button3
    
    button1.y = y_button1
    button2.y = y_button2
    button3.y = y_button3
    
    
    if !done_button1 && button1.image_alpha < 1
        button1.image_alpha += 0.125
    if !done_button2 && button2.image_alpha < 1
        button2.image_alpha += 0.125
    if !done_button3 && button3.image_alpha < 1
        button3.image_alpha += 0.125 
    
    if !done_button1 && !done_button2 && !done_button3
    {
        if button1.image_index == 0
        {
            if key_A
            {    
                done_button1 = true
            }
            else if key_S || key_D || key_W
            {
                time = 0
            }
        }
        else if button1.image_index == 1
        {
            if key_S
            {    
                done_button1 = true
            }
            else if key_A || key_D || key_W
            {
                time = 0
            }
        }
        else if button1.image_index == 2
        {
            if key_D
            {    
                done_button1 = true
            }
            else if key_A || key_S || key_W
            {
                time = 0
            }
        }
        else if button1.image_index == 3
        {
            if key_W
            {    
                done_button1 = true
            }
            else if key_A || key_S || key_D
            {
                time = 0
            }
        }
        if done_button1
            audio_play_sound(snd_qte_button_ok,1,false)
    }
    else if done_button1 && !done_button2 && !done_button3
    {
        if button2.image_index == 0
        {
            if key_A
            {    
                done_button2 = true
            }
            else if key_S || key_D
            {
                time = 0
            }
        }
        else if button2.image_index == 1
        {
            if key_S
            {    
                done_button2 = true
            }
            else if key_A || key_D
            {
                time = 0
            }
        }
        else if button2.image_index == 2
        {
            if key_D
            {    
                done_button2 = true
            }
            else if key_A || key_S
            {
                time = 0
            }
        }
        else if button2.image_index == 3
        {
            if key_W
            {    
                done_button2 = true
            }
            else if key_A || key_S || key_D
            {
                time = 0
            }
        }
        if done_button2
            audio_play_sound(snd_qte_button_ok,1,false)
    } 
    else if done_button1 && done_button2 && !done_button3
    {
        if button3.image_index == 0
        {
            if key_A
            {    
                done_button3 = true
            }
            else if key_S || key_D
            {
                time = 0
            }
        }
        else if button3.image_index == 1
        {
            if key_S
            {    
                done_button3 = true
            }
            else if key_A || key_D
            {
                time = 0
            }
        }
        else if button3.image_index == 2
        {
            if key_D
            {    
                done_button3 = true
            }
            else if key_A || key_S
            {
                time = 0
            }
        }
        else if button3.image_index == 3
        {
            if key_W
            {    
                done_button3 = true
            }
            else if key_A || key_S || key_D
            {
                time = 0
            }
        }
        if done_button3
            audio_play_sound(snd_qte_button_ok,1,false)
    }   
    else 
    {
        done = true
        timevalue = time
        time = 0
    }
     
}
else
{
    instance_destroy()
}

if !done && time > 0
{
    if done_button1 && button1.image_alpha > 0
    {
        button1.image_alpha -= 0.125
        button1.image_xscale += 0.125
        button1.image_yscale += 0.125
    }
    
    if done_button2 && button2.image_alpha > 0
    {
        button2.image_alpha -= 0.125
        button2.image_xscale += 0.125
        button2.image_yscale += 0.125
    }
    
    if done_button3 && button3.image_alpha > 0
    {
        button3.image_alpha -= 0.125
        button3.image_xscale += 0.125
        button3.image_yscale += 0.125
    }
}
x = x_button2
y = y_button2

