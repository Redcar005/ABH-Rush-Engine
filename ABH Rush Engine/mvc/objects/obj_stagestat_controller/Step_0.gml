if global.pauseRoom == -1
{
    rings = string(obj_Sonic.rings)
    
    if obj_Sonic.rings < 100
        rings = "0" + rings
    if obj_Sonic.rings < 10
        rings = "0" + rings
        
    lives_string = string(global.lives_left)
    
    if global.lives_left < 10
        lives_string = "0"+lives_string
}

