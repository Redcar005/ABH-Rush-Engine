if ((keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_start))) && !instance_exists(obj_titlecard_new)
{
    if !pause 
    {
        surface_save(application_surface,"pause.png");
        global.pauseRoom = room;
        room_persistent = true;
        //room_set_persistent(global.pauseRoom,true)
        audio_pause_all()
        pauseScreen = sprite_add("pause.png",1,false,false,0,0)
        pause = true
        window_width = surface_get_width(application_surface)
        window_height = surface_get_height(application_surface)
        room_goto(rm_pause)
    }
    else
    {
        room_goto(global.pauseRoom)
        audio_resume_all()
        global.pauseRoom = -1
        pause = false
        sprite_delete(pauseScreen)
        //room_set_persistent(room,false)
    }
}


