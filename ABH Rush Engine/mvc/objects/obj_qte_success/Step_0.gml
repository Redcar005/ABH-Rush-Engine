x = __view_get( e__VW.XView, 0 ) + 228
y = __view_get( e__VW.YView, 0 ) + 150

if animate == 0 && image_alpha < 1
    image_alpha += 0.125
else if animate == 0 && image_alpha >= 1
{    
    animate = 1
    alarm[0] = 60
}

if animate == 2 && image_alpha > 0
{
    image_alpha -= 0.120
    image_xscale += 0.120
    image_yscale += 0.120
}
else if animate == 2 && image_alpha == 0
{
    instance_destroy();
}

