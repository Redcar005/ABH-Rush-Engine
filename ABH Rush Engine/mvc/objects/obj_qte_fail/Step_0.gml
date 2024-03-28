x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2


if paused 
{
    if image_alpha < 1
        image_alpha += 0.25;
    else if image_alpha >= 1 && !animate  
    {
        alarm[0] = 30;
        animate = true;
    }
}    
else
{
    if image_alpha > 0
    {
        image_alpha -= 0.0625;
        image_xscale += 0.0125;
        image_yscale += 0.0125;
    }
    else
        instance_destroy();
}

