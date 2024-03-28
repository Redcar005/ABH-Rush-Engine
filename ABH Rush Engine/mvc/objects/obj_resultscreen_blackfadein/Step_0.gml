x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2

image_alpha += 0.025
if image_alpha >= 1
{
    room_persistent = false
    if instance_exists(obj_checkpoint_controller)
    {
        with(obj_checkpoint_controller)
        {
            checkpoint = false
        }
    }
    room_goto_next()
    //room_goto(rm_ending_screen)
}

