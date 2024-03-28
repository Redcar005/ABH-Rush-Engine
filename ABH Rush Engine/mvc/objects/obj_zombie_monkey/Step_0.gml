event_inherited()

if canHit
{
    if x > obj_Sonic.x
        image_xscale = 1
    else
        image_xscale = -1
    if ground && action == consPlayerActionNormal && (distance_to_object(obj_Sonic) < 200 || (distance_to_object(obj_Sonic) < 350 && abs(obj_Sonic.hsp) >= 12)) && (obj_Sonic.y <= y + 10 && obj_Sonic.y > y - 100)
    {
        sprite_index = spr_monkey_jump
        image_index = 0
        action = consPlayerActionJump
    }
    if action == consPlayerActionJump
    {
        if image_index >= 4
        {
            action = consPlayerActionRoll   
            ground = false
            audio_play_sound(snd_monkeyjump,1,false)
            vspeed = -6
        }
    }
    if action == consPlayerActionRoll
    {
        if image_index >= 6
            image_index = 6
        vspeed += 0.2
        if place_meeting(x,y+1,obj_walls) && vspeed > 0
        {
            ground = true
            action = consPlayerActionNormal
            vspeed = 0
        }   
    }
    if ground && place_meeting(x,y+2,obj_walls)
        y -= 1
}

