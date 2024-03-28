if done
{
    obj_Sonic.qte_amount = 1
    obj_Sonic.action = consPlayerActionQTESucces
    obj_Sonic.vsp = -8
    obj_Sonic.image_i = 0
    audio_play_sound(snd_qte_success,1,false)
    message = instance_create(x,y,obj_qte_success)
    if timevalue > 0 && timevalue <= 33
        message.image_index = 2
    else if timevalue > 33 && timevalue <= 55
        message.image_index = 1
    else 
        message.image_index = 0
        
    if obj_Sonic.character == consPlayerNameSonic
            audio_play_sound(snd_SonicQTE,1,false)
    else if obj_Sonic.character == consPlayerNameShadow
            audio_play_sound(snd_ShadowQTE,1,false)
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
with(button1)
    instance_destroy()
with(button2)
    instance_destroy()
with(button3)
    instance_destroy()
with(button4)
    instance_destroy()
with(button5)
    instance_destroy()
obj_Sonic.grv = 0.21875;

