if !place_meeting(x,y,obj_Sonic)
    activate = true
else if place_meeting(x,y,obj_Sonic) && obj_Sonic.action == consPlayerActionWallHang
    obj_Sonic.x = x+16*image_xscale

