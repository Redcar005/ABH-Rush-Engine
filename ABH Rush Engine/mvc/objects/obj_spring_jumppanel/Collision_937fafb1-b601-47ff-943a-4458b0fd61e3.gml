if activate && other.action != consPlayerActionDead
{
    draw_effect(spr_dash_fx,image_angle,1,1, false)
    
    other.angle = 0
    if other.action == consPlayerActionHomingTarget
    {
        vspeed = 0
        hspeed = 0
        with(obj_hominglock)
            instance_destroy()
    }   
    other.action = consPlayerActionJumpPanelJump
    other.ground = false
    other.image_i = 0;
    other.x = x + 10*cos(degtorad(image_angle))
    other.y = y - 10*sin(degtorad(image_angle))
    activate = false
    
    //other.hsp = cos(degtorad(image_angle))*12
    //other.vsp = -sin(degtorad(image_angle))*12
    if image_angle < 90 && image_angle > 270
        other.xdir = 1
    else if image_angle > 90 && image_angle < 270
        other.xdir = -1
    image_speed = 0.75;
    if audio_is_playing(snd_spring)
        audio_stop_sound(snd_spring)
    audio_play_sound(snd_spring,1,false)
    
}


