if audio_is_playing(snd_ring)
    audio_stop_sound(snd_ring)
audio_play_sound(snd_ring,1,false)
obj_Sonic.rings += 1
obj_Sonic.boostamount += 2
instance_create(x,y,obj_ringsparkle)

draw_effect(spr_ringeffect,choose(0,30,-30),1,1, true)

