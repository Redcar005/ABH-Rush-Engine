if place_meeting(x,y,obj_Sonic) && obj_Sonic.hsp > 0
{
    var i = 0
    for(i = 0; i <= 7; i += 1)
        __background_set( e__BG.Index, i, background2[i] )
}

else if place_meeting(x,y,obj_Sonic) && obj_Sonic.hsp < 0
{
    var i = 0
    for(i = 0; i <= 7; i += 1)
        __background_set( e__BG.Index, i, background1[i] )
}


