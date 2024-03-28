if move_direction == 0
{
    if vspeed < move_speed
        vspeed += 0.1
}
else if move_direction == 1
{
    if vspeed > -move_speed
        vspeed -= 0.1
}


if place_meeting(x,y-1,obj_Sonic) && obj_Sonic.ground
{
    obj_Sonic.y += floor(vspeed)
}

curr_alarm -= 1

if curr_alarm <= 0
{
    if move_direction == 0
        move_direction = 1
    else 
        move_direction = 0
    curr_alarm = move_alarm
}

