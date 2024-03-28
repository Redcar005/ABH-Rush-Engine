if place_meeting(x,y,obj_Sonic) && ((obj_Sonic.action == consPlayerActionNormal && obj_Sonic.ground) || obj_Sonic.action == consPlayerActionCorkscrew) && abs(obj_Sonic.hsp) >= 4
{
    if obj_Sonic.action != consPlayerActionCorkscrew 
        obj_Sonic.image_i = 0
    obj_Sonic.action = consPlayerActionCorkscrew
    obj_Sonic.ground = false
    
    var relative_position, angle_in_corkscrew
    relative_position = obj_Sonic.x - x
    angle_in_corkscrew = degtorad((relative_position/288)*360)
    
    obj_Sonic.y = y + 8 + (1 + cos(angle_in_corkscrew))*( 65*0.5 );
    obj_Sonic.image_i = abs((radtodeg(angle_in_corkscrew)/360*11) mod 12)
}  
else if place_meeting(x,y,obj_Sonic) && ((obj_Sonic.action == consPlayerActionRoll && obj_Sonic.ground) || obj_Sonic.action == consPlayerActionCorkscrewRoll) && abs(obj_Sonic.hsp) >= 4
{
    obj_Sonic.action = consPlayerActionCorkscrewRoll
    obj_Sonic.ground = false
        
    var relative_position, angle_in_corkscrew
    relative_position = obj_Sonic.x - x
    angle_in_corkscrew = degtorad((relative_position/288)*360)
    
    obj_Sonic.y = y + 8 + (1 + cos(angle_in_corkscrew))*( 65*0.5 );
    
}

