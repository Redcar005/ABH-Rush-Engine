x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2

if fadeout
    image_alpha -= 0.05
if image_alpha <= 0
    instance_destroy()

