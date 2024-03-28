if done
{
    obj_Sonic.qte_amount = 1
    obj_Sonic.action = consPlayerActionQTESucces
    obj_Sonic.vsp = -8
    obj_Sonic.image_i = 0
    audio_play_sound(snd_qte_success,1,false)
    
    if other.character == consPlayerNameSonic
            audio_play_sound(snd_SonicQTE,1,false)
        else if other.character == consPlayerNameShadow
            audio_play_sound(snd_ShadowQTE,1,false)
    
    message = instance_create(x,y,obj_qte_success)
    timevalue += 0.5
    if timevalue >= limit_end - 0.5 && timevalue <= limit_start + 0.5
        message.image_index = 2
    if timevalue >= limit_end1 - 0.5 && timevalue <= limit_start1 + 0.5
        message.image_index = 1
    if timevalue >= limit_end2 - 0.5 && timevalue <= limit_start2 + 0.5
        message.image_index = 0
}
else
{
    obj_Sonic.qte_amount = 1
    audio_play_sound(snd_qte_fail,1,false)
    obj_Sonic.action = consPlayerActionQTEFail
    obj_Sonic.vsp = -3
    obj_Sonic.hsp = obj_Sonic.xdir*3
    instance_create(x,y,obj_qte_fail)
    obj_Sonic.image_i = 0
}
obj_Sonic.grv = 0.21875;

