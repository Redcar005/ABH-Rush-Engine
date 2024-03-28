if done
{
    obj_Sonic.qte_amount = 1
    obj_Sonic.image_i = 0
    audio_play_sound(snd_qte_success,1,false)
    message = instance_create(x,y,obj_qte3_buttons)
    
}
else
{
    obj_Sonic.qte_amount = 1
    audio_play_sound(snd_qte_fail,1,false)
    obj_Sonic.action = consPlayerActionQTEFail
    obj_Sonic.vsp = -3
    obj_Sonic.hsp = obj_Sonic.xdir*3
    instance_create(x,y,obj_qte_fail)
    obj_Sonic.grv = 0.21875;
    obj_Sonic.image_i = 0
    if obj_Sonic.character == consPlayerNameSonic
        audio_play_sound(snd_SonicQTE,1,false)
    else if obj_Sonic.character == consPlayerNameShadow
        audio_play_sound(snd_ShadowQTE,1,false)
}
with(button1)
    instance_destroy()
with(button2)
    instance_destroy()
with(button3)
    instance_destroy()

