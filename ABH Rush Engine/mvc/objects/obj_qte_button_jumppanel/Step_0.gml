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

time -= 1.5

if !done && image_alpha < 1
    image_alpha += 0.125

if time > 0
{
    if image_index == 0
    {
        if key_A
        {    
            done = true
        }
        else if key_S || key_D || key_W
        {
            time = 0
        }
    }
    else if image_index == 1
    {
        if key_S
        {    
            done = true
        }
        else if key_A || key_D || key_W
        {
            time = 0
        }
    }
    else if image_index == 2
    {
        if key_D
        {    
            done = true
        }
        else if key_A || key_S || key_W
        {
            time = 0
        }
    }
    else if image_index == 3
    {
        if key_W
        {    
            done = true
        }
        else if key_A || key_S || key_D
        {
            time = 0
        }
    }
    if done
    {
        timevalue = time
        time = 0
    }
}
else
{
    if done
    {
        image_alpha -= 0.25
        image_xscale += 0.125
        image_yscale += 0.125
    }
    else
    {
        instance_destroy()
    }
}

if done && image_alpha == 0
    instance_destroy()

