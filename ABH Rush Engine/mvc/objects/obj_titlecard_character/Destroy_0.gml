obj_titlecard_new.phase = 4

instance_create(0,0,obj_HUD_ingame)
if instance_exists(obj_Sonic)
{
    with(obj_Sonic)
    {   ground = true
        canMove = true
        if !obj_checkpoint_controller.checkpoint
            hsp = 9
        xdir = 1
    }
}

