show = false //controls the visibility of HUD
alarm[0] = 60   //just used for showing hud right after stage start
alpha = 0

x_lifeoffset = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.80
y_lifeoffset = __view_get( e__VW.YView, 0 )+20
x_boostoffset = __view_get( e__VW.XView, 0 )+25
y_boostoffset = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.85
x_timeoffset = __view_get( e__VW.XView, 0 )+25
y_timeoffset = __view_get( e__VW.YView, 0 )+20
x_ringoffset = __view_get( e__VW.XView, 0 )+25
y_ringoffset = __view_get( e__VW.YView, 0 )+60

boost_gauge = -1
ring = -1
life = -1
time = -1
number = -1


