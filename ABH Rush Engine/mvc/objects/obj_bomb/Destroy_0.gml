audio_play_sound(snd_enemy_explosion,1,false)
instance_create(x+5,y,obj_explosion_small)
instance_create(x-5,y,obj_explosion_small)
instance_create(x,y,obj_boostorb)

if instance_exists(obj_boostfx)
{
    with(obj_boostfx)
    {
        instance_destroy()
    }
}

