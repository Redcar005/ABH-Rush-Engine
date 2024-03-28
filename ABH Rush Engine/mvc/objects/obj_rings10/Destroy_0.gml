if audio_is_playing(snd_rings10)
    audio_stop_sound(snd_rings10)
audio_play_sound(snd_rings10,1,false)
obj_Sonic.rings += 10
obj_Sonic.boostamount += 20
instance_create(x,y,obj_ringsparkle)
draw_effect(spr_ringeffect,choose(0,30,-30),1,1, true)

