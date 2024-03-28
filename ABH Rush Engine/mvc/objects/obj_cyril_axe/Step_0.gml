if !audio_is_playing(snd_axespin)
    audio_play_sound(snd_axespin,1,false)

hspeed = image_xscale*-6    

if distance_to_object(obj_Sonic) > 210
    instance_destroy()

