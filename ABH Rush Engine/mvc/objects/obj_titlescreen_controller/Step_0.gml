 
if state <= 4 && black_alpha > 0
{
    black_alpha -= 0.05   
}
if state == 1
{
    step_amount -= 1
    if step_amount <= 0
    {
        step_amount = step;
        var fx = instance_create(x,y,obj_pressstart_effect);   
        fx.image_xscale = image_xscale;
        fx.image_yscale = image_yscale;
    }
    
    if keyboard_check_pressed(vk_enter) || gamepad_button_check(0,gp_start) || gamepad_button_check(0,gp_face1) || keyboard_check_pressed(ord("S"))
    {
        state = 2
        step_amount = 80;
        scrPlaySound(snd_menuconfirm_2,0.5,1,false)
    }
    
}
if state == 2
{
    step_amount -= 1
    if step_amount == 0
        state = 3
          
}
if state == 3
{
    image_alpha = 1
    /*
    if (keyboard_check_pressed(vk_left) || gamepad_button_check(0,gp_padl)) && character == 1
    {
        character = 0
        audio_play_sound(snd_menunavigate,1,false)
    }
    else if (keyboard_check_pressed(vk_right) || gamepad_button_check(0,gp_padr)) && character == 0
    {    
        character = 1
        audio_play_sound(snd_menunavigate,1,false)
    } 
    */
    
    if (keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0,gp_padl)) || (keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0,gp_padr)) 
    {
        character = !character
        audio_play_sound(snd_menunavigate,1,false)
    }
    
    if keyboard_check_pressed(vk_enter) || gamepad_button_check(0,gp_start) || gamepad_button_check(0,gp_face1) || keyboard_check_pressed(ord("S"))
    {
        state = 4
        step_amount = step;
        audio_stop_all()
        scrPlaySound(snd_menuconfirm_2,0.5,1,false)
    }
    
}
else if state == 4
{
    step_amount -= 1
    if step_amount == 0
    {
        if character == 0
            global.curr_character = consPlayerNameSonic
        else
            global.curr_character = consPlayerNameShadow
        state = 5
    }       
}
else if state == 5
{
    black_alpha += 0.05
    if black_alpha >= 1
        room_goto_next()
}

if state == 2 || state == 4 || step == 5
{
    if step_amount % 3 == 0
        image_alpha = !image_alpha 
}

/* */
/*  */
