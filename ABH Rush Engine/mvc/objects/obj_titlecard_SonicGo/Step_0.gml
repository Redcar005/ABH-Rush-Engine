if image_alpha < 0.95
{
    image_alpha += 0.05
    if image_xscale > 1
    {
        image_xscale -= 0.5
        image_yscale -= 0.5
    }
}
else if image_alpha == 0.95
{
    alarm[0] = 180
    image_alpha += 0.05
}
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2

