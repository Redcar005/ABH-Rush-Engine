if done
{
    if obj_Sonic.qte_amount < 3
    {
        obj_Sonic.qte_amount += 1
        instance_create(x,y,obj_qte_button)
    }   
    else
    {
        obj_Sonic.qte_amount = 1
        obj_Sonic.action = consPlayerActionQTESucces
        obj_Sonic.vsp = -8
        obj_Sonic.image_i = 0
        obj_Sonic.grv = 0.21875;
        audio_play_sound(snd_qte_success,1,false)
        instance_create(x,y,obj_qte_success)
        
        if obj_Sonic.character == consPlayerNameSonic
            audio_play_sound(snd_SonicQTE,1,false)
        else if obj_Sonic.character == consPlayerNameShadow
            audio_play_sound(snd_ShadowQTE,1,false)
    }
    audio_play_sound(snd_qte_button_ok,1,false)
}
else
{
    obj_Sonic.qte_amount = 1
    audio_play_sound(snd_qte_fail,1,false)
    obj_Sonic.action = consPlayerActionQTEFail
    obj_Sonic.vsp = -3
    obj_Sonic.hsp = obj_Sonic.xdir*3
    obj_Sonic.grv = 0.21875;
    instance_create(x,y,obj_qte_fail)
    obj_Sonic.image_i = 0
}

