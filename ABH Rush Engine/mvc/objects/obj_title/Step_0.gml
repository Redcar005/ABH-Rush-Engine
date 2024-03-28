if start
{
    if image_index < 2
    {
        if action == consPlayerActionNormal
        {
            if image_alpha < 1
            {
                image_alpha += fade_speed
                if image_alpha > 0.5
                    alarm[0] = 180
                if image_alpha == 0.5 && image_index == 0
                    audio_play_sound(bgm_sega,0,false)
            }
        }
        else
        {
            image_alpha -= fade_speed
            if image_alpha <= 0
            {
                image_index += 1
                action = consPlayerActionNormal
            }
        }
    }
    else
    {
        if action == consPlayerActionNormal
        {
            if image_alpha < 1
            {
                image_alpha += fade_speed
            }
            else
            {
                if keyboard_check_pressed(vk_enter) || gamepad_button_check(0,gp_start) || gamepad_button_check(0,gp_face1) || keyboard_check_pressed(ord("S"))
                {
                    action = consPlayerActionJump
                    alarm[2] = 150
                }
            }
        }
        else
        {
            image_alpha -= fade_speed
            if image_alpha <= 0
            {
                image_index = 3
                
            }
        }
    }       
    if image_index == 3
    {
        //instance_create(0,0,obj_select_character)
        //instance_destroy()
    }
    
}

