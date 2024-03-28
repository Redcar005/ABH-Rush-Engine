if !selected && image_alpha < 1
    image_alpha += 0.15
else if selected && fade
{
    image_alpha -= 0.15
    if image_alpha <= 0
        room_goto_next()
}
    
if !selected && image_alpha >= 1
{
    if keyboard_check_pressed(vk_left) || gamepad_button_check(0,gp_padl) && image_index == 1
    {
        image_index = 0
        audio_play_sound(snd_menunavigate,1,false)
    }
    else if keyboard_check_pressed(vk_right) || gamepad_button_check(0,gp_padr) && image_index == 0
    {    
        image_index = 1
        audio_play_sound(snd_menunavigate,1,false)
    }   
    if keyboard_check_pressed(vk_enter) || gamepad_button_check(0,gp_start) || gamepad_button_check(0,gp_face1) || keyboard_check_pressed(ord("S"))
    {
        if image_index == 0
            global.curr_character = consPlayerNameSonic
        else
            global.curr_character = consPlayerNameShadow
            
        audio_play_sound(snd_menuconfirm,1,false)          
        alarm[0] = 120
        selected = true
    }
}

