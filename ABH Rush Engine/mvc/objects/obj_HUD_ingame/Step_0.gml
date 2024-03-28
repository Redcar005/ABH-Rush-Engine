//positions of elements of HUD
x_lifeoffset = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.80
y_lifeoffset = __view_get( e__VW.YView, 0 )+20
x_boostoffset = __view_get( e__VW.XView, 0 )+25
y_boostoffset = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.85
x_timeoffset = __view_get( e__VW.XView, 0 )+25
y_timeoffset = __view_get( e__VW.YView, 0 )+20
x_ringoffset = __view_get( e__VW.XView, 0 )+25
y_ringoffset = __view_get( e__VW.YView, 0 )+45



if other.character == consPlayerNameSonic
{
    boost_gauge = spr_boostgauge
    ring = spr_ring_amount
    life = spr_lives_amount
    time = spr_time_amount
    number = spr_hud_numbers
}
else if other.character == consPlayerNameShadow
{
    boost_gauge = spr_boostgauge_shadow
    ring = spr_ring_amount_shadow
    life = spr_lives_amount_shadow
    time = spr_time_amount_shadow
    number = spr_hud_numbers_shadow
}
else if other.character == consPlayerNameTails
{
    boost_gauge = spr_boostgauge
    ring = spr_ring_amount
    life = spr_lives_amount
    time = spr_time_amount
    number = spr_hud_numbers
}

