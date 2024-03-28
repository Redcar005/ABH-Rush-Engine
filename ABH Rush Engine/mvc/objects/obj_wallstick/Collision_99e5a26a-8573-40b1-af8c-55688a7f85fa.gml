if activate && other.character != consPlayerNameTails && other.action != consPlayerActionDead && ((other.hsp > 1 && image_xscale <= -1) || (other.hsp < -1 && image_xscale <= 1))
{
    /*
    with(other)
    {
        if place_meeting(x,y,obj_walls)
        {
            action = consPlayerActionTrick
            xdir = -self.image_xscale
            alarm[2] = 80
            self.activate = false
            if instance_exists(obj_boostfx)
            {
                with(obj_boostfx)
                {
                    alive = false
                }
            }
        }
    }
    */
    
    other.action = consPlayerActionWallHang
    other.xdir = -image_xscale
    //other.x = x+16*image_xscale
    
    other.alarm[2] = 80
    
    activate = false
    
    if instance_exists(obj_boostfx)
    {
        with(obj_boostfx)
        {
            alive = false
        }
    }
}

/* */
/*  */
