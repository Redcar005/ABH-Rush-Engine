activate = 2
if instance_exists(obj_musiccontroller)
{
    with(obj_musiccontroller)
    {
        instance_destroy()
    }
}
audio_stop_all()
audio_play_sound(snd_goalring,1,false)
instance_create(x,y,obj_resultscreen_whitefadein)

