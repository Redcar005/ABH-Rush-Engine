if obj_Sonic.input_mode == 0
    sprite_index = spr_qte_keys
if obj_Sonic.input_mode == 1
    sprite_index = spr_qte_xboxbuttons

key_A = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_face3)
key_S = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_face1)
key_D = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_face2)
key_W = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_face4)
    
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2

if time > 0
    time -= 1

if !done && image_alpha < 1
    image_alpha += 0.125

if time <= limit_start && time >= limit_end && time != 0
{
    if image_index == 0
    {
        if key_A
        {    
            done = true
        }
    }
    else if image_index == 1
    {
        if key_S
        {    
            done = true
        }   
    }
    else if image_index == 2
    {
        if key_D
        {    
            done = true
        }
    }
    else if image_index == 3
    {
        if key_W
        {    
            done = true
        }
    }
    
    if done
    {
        timevalue = time
        time = 0
    }
}
else if (time > 40 || time < 30) && time != 0
{
    
        if image_index == 0
        {
            if key_A
            {    
                time = 0
            }
        }
        else if image_index == 1
        {
            if key_S
            {    
                time = 0
            }   
        }
        else if image_index == 2
        {
            if key_D
            {    
                time = 0
            }
        }
        else if image_index == 3
        {
            if key_W
            {    
                time = 0
            }
        }
    
}
else
{
    instance_destroy();
}

