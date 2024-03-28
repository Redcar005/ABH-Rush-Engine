if done
{
    if obj_Sonic.jumppanel < 5
    {
        obj_Sonic.jumppanel += 1   
        obj_Sonic.action = consPlayerActionJumpPanelJump
        obj_Sonic.grv = 0.21875;
        if instance_exists(obj_qte_success)
        {
            with(obj_qte_success)
            {
                instance_destroy()
            }   
        }
        message = instance_create(x,y,obj_qte_success)
        if timevalue > 0
            message.image_index = 2
        if timevalue > 33
            message.image_index = 1
        if timevalue > 66
            message.image_index = 0
    }
    audio_play_sound(snd_jumppanel_ok,1,false)
    if obj_Sonic.jumppanel == 5
    {
        if obj_Sonic.character == consPlayerNameSonic
            audio_play_sound(snd_SonicQTE,1,false)
        else if obj_Sonic.character == consPlayerNameShadow
            audio_play_sound(snd_ShadowQTE,1,false)
    }
}
else
{
    obj_Sonic.jumppanel = 1
    audio_play_sound(snd_qte_fail,1,false)
    obj_Sonic.action = consPlayerActionNormal
    
    obj_Sonic.grv = 0.21875;
    instance_create(x,y,obj_qte_fail)
}

