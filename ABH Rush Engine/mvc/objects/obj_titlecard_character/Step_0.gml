if phase == 1
{
    x = __view_get( e__VW.XView, 0 ) + 410
    y = __view_get( e__VW.YView, 0 ) + 35
}

if phase == 1 && obj_titlecard_new.phase == 3 && obj_titlecard_new.bar_alpha < 0.7
    phase = 2
if phase == 2
{
    move_towards_point(__view_get( e__VW.XView, 0 ) + 228, __view_get( e__VW.YView, 0 ) + 128, 5)
    if x <= __view_get( e__VW.XView, 0 ) + 228
    {
        phase = 3
        alarm[0] = 60
    }
}

if phase == 3
{
    x = __view_get( e__VW.XView, 0 ) + 228
    y = __view_get( e__VW.YView, 0 ) + 128
}

