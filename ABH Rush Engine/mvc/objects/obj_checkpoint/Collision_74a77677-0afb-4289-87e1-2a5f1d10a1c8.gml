if state == 1 && other.action != consPlayerActionDead
{
    state = 2
    image_index = 0
    if (other.sprp != spr_Sonic_stand && other.sprp != spr_Shadow_stand)
    {
        audio_play_sound(snd_checkpoint,1,false)
        instance_create(x,y,obj_checkpoint_info)
    }
    obj_checkpoint_controller.checkpoint = true
    obj_checkpoint_controller.x_checkpoint_pos = x
    obj_checkpoint_controller.y_checkpoint_pos = y
    
    obj_checkpoint_controller.checkpoint_step = obj_stagetime.steps
    obj_checkpoint_controller.checkpoint_sec = obj_stagetime.seconds
    obj_checkpoint_controller.checkpoint_min = obj_stagetime.minutes
    
    other.boostamount = 100
}

