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
    other.action = consPlayerActionSpringJump
    other.ground = false
    other.image_i = 0;
    other.x = x + 10*cos(degtorad(image_angle))
    other.y = y - 10*sin(degtorad(image_angle))
    activate = false
    other.hsp = cos(degtorad(image_angle))*force_power
    other.vsp = -sin(degtorad(image_angle))*force_power
    if image_angle < 90 && image_angle > 270
        other.xdir = 1
    else if image_angle > 90 && image_angle < 270
        other.xdir = -1
    image_speed = 0.75;
    if audio_is_playing(snd_spring)
        audio_stop_sound(snd_spring)
    audio_play_sound(snd_spring,1,false)
    audio_play_sound(snd_spring_egg,1,false)
    
     if other.character == consPlayerNameSonic
    {
        if image_angle == 45 || image_angle == 135
        {   
            other.image_i = 0
            if other.super 
                other.sprp = spr_SuperSonic_corkscrew
            else
                other.sprp = spr_Sonic_corkscrew
            
        }
        else if (image_angle > 0 && image_angle < 45) || (image_angle < 180 && image_angle > 135)
        {
            if other.super 
                other.sprp = spr_SuperSonic_walljump
            else
                other.sprp = spr_Sonic_walljump
            
        }
        else
        {
            if other.super 
                other.sprp = spr_SuperSonic_jump
            else
                other.sprp = spr_Sonic_jump
        }
    }
    else if other.character == consPlayerNameShadow
    {
        if image_angle == 45 || image_angle == 135
        {   
            other.image_i = 0
            if other.super
                other.sprp = spr_SuperShadow_corkscrew
            else
                other.sprp = spr_Shadow_corkscrew
        }
        else if (image_angle > 0 && image_angle < 45) || (image_angle < 180 && image_angle > 135)
        {
            if obj_Sonic.super
                other.sprp = spr_SuperShadow_walljump
            else
                other.sprp = spr_Shadow_walljump
        }
        else
        {
            if other.super
                other.sprp = spr_SuperShadow_jump
            else
                other.sprp = spr_Shadow_jump
        }
    }
    
    
    
}


