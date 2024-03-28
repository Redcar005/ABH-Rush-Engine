if other.character != consPlayerNameTails
{
    if (other.action == consPlayerActionJump || other.action == consPlayerActionSpindashCharge || other.action == consPlayerActionHomingTarget || other.action == consPlayerActionHomingNoTarget || other.action == consPlayerActionSwingBarJump ) && !other.ground && !instance_exists(obj_boostfx) //((other.character == consPlayerNameSonic && (other.sprp == spr_Sonic_spinjump || other.sprp == spr_SuperSonic_spinjump || other.sprp == spr_Sonic_land || other.sprp == spr_SuperSonic_land)) || (other.character == consPlayerNameShadow && (other.sprp == spr_Shadow_spinjump || other.sprp == spr_SuperShadow_spinjump || other.sprp == spr_Shadow_land || other.sprp == spr_SuperShadow_land))) 
    {
        if other.action == consPlayerActionHomingTarget
        {
            other.image_i = 0
            other.action = consPlayerActionTrick
            
            switch(other.character)
            {
                case consPlayerNameSonic:
                {
                    if !other.super
                        other.sprp = choose(spr_Sonic_trick1,spr_Sonic_trick2,spr_Sonic_trick3)
                    else
                        other.sprp = choose(spr_SuperSonic_trick1,spr_SuperSonic_trick2,spr_SuperSonic_trick3)
                }
                break;
                
                case consPlayerNameShadow:
                {
                    if !other.super
                        other.sprp = spr_Shadow_jump
                    else
                        other.sprp = spr_SuperShadow_jump
                    other.image_i = 2
                }
                break;
            }
            
            canHit = false
            hspeed = other.hspeed//xdir*other.hspeed*cos(degtorad(point_direction(obj_Sonic.x,obj_Sonic.y,x,y)))*0.5
            vspeed = other.vspeed//*sin(-degtorad(point_direction(obj_Sonic.x,obj_Sonic.y,x,y)))*0.5
            other.hsp = 0
            other.vsp = -6.5
            alarm[0] = 30
            
            
            if other.character == consPlayerNameSonic
                audio_play_sound(choose(snd_SonicAttack1,snd_SonicAttack2,snd_SonicAttack3),1,false)
            else if other.character == consPlayerNameShadow
                audio_play_sound(choose(snd_Shadow_Homing1,snd_Shadow_Homing2,snd_Shadow_Homing3),1,false)
        
        }
        else
        {
            other.vsp = -other.vsp;
            instance_destroy()
        }
        if instance_exists(obj_hominglock)
        {
            with(obj_hominglock)
            {
                instance_destroy()
            }
        }
        audio_play_sound(choose(snd_enemy_hit1,snd_enemy_hit2,snd_enemy_hit3),1,false)
    }
    else if instance_exists(obj_boostfx) ||  other.action == consPlayerActionSlide 
    {
    
        if canHit
        {
            
            canHit = false
            y -= 10        
            if abs(other.hsp) >= 4
                shake_camera(15)
            audio_play_sound(choose(snd_enemy_hit1,snd_enemy_hit2,snd_enemy_hit3),1,false)
            if other.ground
            {
                hspeed = other.hsp
                vspeed = -2.5
            }
            else
            {
                hspeed = other.hsp //other.hsp*cos(degtorad(point_direction(obj_Sonic.x,obj_Sonic.y,x,y-3)))*1.5
                vspeed = other.vsp //-other.vsp*sin(degtorad(point_direction(obj_Sonic.x,obj_Sonic.y,x,y-3)))*1.5
            }
            alarm[0] = 30
        }
        
    }
    else if other.action == consPlayerActionRoll || other.action == consPlayerActionStomp
    {
        instance_destroy()
    }
    else if canHit && other.canHit && !other.super
    {
        hurt_player()
        /*
        if other.rings > 0
        {
            other.image_i = 0
            other.ground = false
            other.action = consPlayerActionDamaged
            other.vsp = -4
            other.hsp = -5*other.xdir
            other.canHit = false
            other.hitInvincible = 240
            scatter_rings()
        }
        else
        {
            other.image_i = 0
            other.ground = false
            other.action = consPlayerActionDead
            other.vsp = -4
            other.hsp = -5*other.xdir
            other.canHit = false
            other.alarm3 = 120
            obj_HUD_ingame.show = false
        }
        */
    }
    else if other.super
    {
        instance_destroy()
    }
}
else if other.character == consPlayerNameTails
{
    if (other.action == consPlayerActionJump || other.action == consPlayerActionRoll || other.action == consPlayerActionSpindashCharge || other.action == consPlayerActionSwingBarJump || other.action == consPlayerActionSlide)
    {
        canHit = false
        
        if other.action == consPlayerActionJump
        {
            other.vsp = -other.vsp;
        }
        instance_destroy()
    }
    else if canHit && other.canHit && !other.super
    {
        hurt_player()
    }
}
vibrate_xbox_controller(10)

/* */
/*  */
