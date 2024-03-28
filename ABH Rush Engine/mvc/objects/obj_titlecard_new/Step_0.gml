x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

if black_alpha > 0
    black_alpha -= 0.05

if black_alpha == 0.05
    instance_create(x,y,obj_titlecard_character)     
    

if phase == 1
{
    if title_speed < 9
    {
        if outer_angle > 0
            outer_angle -= 2
        else
        {
            outer_angle = 0
            phase = 2
            alarm[0] = 120
        }
    }
}
else if phase == 2
{
    
}
else if phase == 3
{

    if outer_angle > -70
        outer_angle -= 2   
}

if phase < 3
{
    bar_alpha += 0.05
    if title_speed > 1
        title_speed -= 0.18
    else
        title_speed = 1
}
else
{ 
    bar_alpha -= 0.15
    title_speed += 0.18
}

if phase == 4
{
    white_alpha -= 0.2
    if white_alpha <= 0
        instance_destroy()
}
    

x_title += title_speed


