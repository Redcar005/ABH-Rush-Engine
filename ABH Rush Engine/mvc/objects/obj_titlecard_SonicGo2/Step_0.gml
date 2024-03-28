if phase == 2
move_towards_point(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2,5)

if (x >= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2) && (y >= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2)
    instance_destroy()

