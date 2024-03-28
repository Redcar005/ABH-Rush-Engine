x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2


if phase == 1 && image_alpha < 1
{
    image_alpha += 0.10
    if image_alpha >= 1
    {
        phase = 2            
        if instance_exists(obj_goalring)
        {
            with(obj_goalring)
            {
                instance_destroy()
            }
        }
        alarm[0] = 120
    }
}
else if phase == 3
{
    if image_alpha > 0
        image_alpha -= 0.025
    else
    {
        phase = 4
        instance_destroy()
    }
} 

