if !place_meeting(x,y,obj_Sonic)
    activate = false
    
if activate && obj_Sonic.action == consPlayerActionPulley
{
    if vspeed >= -8
        vspeed -= 0.25

}
else if !activate && y < y_default
{   
    y += 4
}


