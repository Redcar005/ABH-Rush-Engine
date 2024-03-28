if activate && other.action != consPlayerActionDead
{
    activate = false;
    if image_angle == 0 || image_angle == 180
    {    
        other.grv = 0
        other.alarm0 = alarm_amount
        other.action = consPlayerActionDashRing    
    }
    else
    {
        other.action = consPlayerActionSpringJump
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
                if other.super
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
                if image_angle <= -45 && image_angle >= -135
                    other.image_i = 10
            }
        }
        else if other.character == consPlayerNameTails
        {
            other.image_i = 0
            if image_angle == 45 || image_angle == 135
            {   
                other.sprp = spr_Tails_corkscrew
            }
            else if (image_angle > 0 && image_angle < 45) || (image_angle < 180 && image_angle > 135)
            {
                other.sprp = spr_Tails_walljump
            }
            else
            {
                if image_angle < 0 && image_angle > -180
                {
                    other.image_i = 9
                    other.action = consPlayerActionNormal
                }
                other.sprp = spr_Tails_jump
            }
        }
    }
    other.ground = false
    other.image_i = 0;
    other.x = x
    other.y = y
    other.ground = false
    other.hsp = cos(degtorad(image_angle))*force_power
    other.vsp = -sin(degtorad(image_angle))*force_power
    if image_angle < 90 && (image_angle > 270 || image_angle > -90)
        other.xdir = 1
    else if image_angle > 90 && (image_angle < 270 || image_angle < -90)
        other.xdir = -1
    if audio_is_playing(snd_dashring)
        audio_stop_sound(snd_dashring)
    audio_play_sound(snd_dashring,1,false);
    
    effect = instance_create(x,y,obj_dashring_activate)
    effect.image_angle = image_angle
    
    draw_effect(spr_dashring_fx, 0, 1, 1, true)
    
    
    //part_type_direction(global.Particle18,point_direction(self.x,self.y,self.x+cos(degtorad(self.image_angle))*5,self.y+sin(degtorad(self.image_angle))*5),360,0,0)
    //part_particles_create(global.Particle18,x,y,global.Particle18,1);
}   


