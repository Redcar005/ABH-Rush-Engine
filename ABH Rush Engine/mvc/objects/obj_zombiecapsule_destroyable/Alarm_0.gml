var instance = instance_create(x,y - 10, zombie)
with(instance)
{
    instance.action = consPlayerActionJump
    instance.image_index = 3
    instance.depth = self.depth - 1
}
if instance_exists(obj_monkey_dummy)
{
    with(instance_nearest(x,y,obj_monkey_dummy))
    {
        instance_destroy()
    }
}
if instance_exists(obj_bubble_capsule)
{
    if place_meeting(x,y,obj_bubble_capsule)
    {
        with(instance_nearest(x,y,obj_bubble_capsule))
        {
            instance_destroy()
        }
    }
}

destroyed = true
audio_play_sound(snd_glass_smash,1,false)

