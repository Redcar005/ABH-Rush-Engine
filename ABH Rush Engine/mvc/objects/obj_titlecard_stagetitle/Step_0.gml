if phase == 1
{
    hspeed = 13
}
else 
{
    if hspeed > 1
        hspeed -= 1.5 
    else 
        hspeed = 0.25
} 
if x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/6
    phase = 1
else
    phase = 2
    


