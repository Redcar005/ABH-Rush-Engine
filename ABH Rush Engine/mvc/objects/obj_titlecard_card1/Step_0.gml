if image_alpha < 1
    image_alpha += 0.1

x = offset
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2

if phase == 1 || phase == 3
{
    offset += 12
}
if phase == 5
{
    offset += 20
}
if phase == 1 && (offset >= __view_get( e__VW.XView, 0 ))
{    
    phase = 2
    alarm[0] = 120
    instance_create(x+20,y,obj_titlecard_SonicReady)
    instance_create(x-50,y,obj_titlecard_stagetitle)
}

if phase == 3 && (offset >= __view_get( e__VW.XView, 0 ) + 456)
{
    phase = 4
    alarm[1] = 120
    instance_create(x,y,obj_titlecard_bestrank)
}

