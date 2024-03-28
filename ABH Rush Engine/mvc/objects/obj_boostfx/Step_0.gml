if alive
{
    if !obj_Sonic.super
    {
        if obj_Sonic.character == consPlayerNameSonic
            sprite_index = spr_boost
        else if obj_Sonic.character == consPlayerNameShadow
            sprite_index = spr_boost_shadow
    }
    else
        sprite_index = spr_boost_super     
       
    obj_Sonic.boostamount -= 0.2
    x = obj_Sonic.x
    y = obj_Sonic.y
    
    if !obj_Sonic.ground
        airtime -= 1
    else
        airtime = 240
    
    if image_alpha < 1
        image_alpha += 0.125
    
    //if obj_Sonic.action != consPlayerActionCorkscrew && obj_Sonic.action != consPlayerActionCorkscrewRoll
        image_angle = obj_Sonic.boost_direction //point_direction(obj_Sonic.x_begin,obj_Sonic.y_begin,x,y);
    
    if image_angle > 90 && image_angle < 270
        image_yscale = -1
        
    if ((!keyboard_check(ord("A")) && obj_Sonic.input_mode == 0) || (!gamepad_button_check(0,gp_face3) && obj_Sonic.input_mode == 1)) || obj_Sonic.boostamount <= 0 || obj_Sonic.key_boostr 
    || obj_Sonic.action == consPlayerActionSwingBar || obj_Sonic.action == consPlayerActionQTE || obj_Sonic.action == consPlayerActionHomingNoTarget || obj_Sonic.action == consPlayerActionHomingTarget
    || obj_Sonic.action == consPlayerAction4WayCanon || obj_Sonic.action == consPlayerActionJumpPanelJump || obj_Sonic.action == consPlayerActionPulley 
    || obj_Sonic.action == consPlayerActionJumpPanelLand || obj_Sonic.action == consPlayerActionDead || obj_Sonic.stageClear 
    || (obj_Sonic.ground && obj_Sonic.hsp < 2 && obj_Sonic.hsp > -2) || airtime < 0 || obj_Sonic.action == consPlayerActionPole 
    || obj_Sonic.action == consPlayerActionBungee  
        alive = false
}        
else
{
    image_alpha -= 0.125
    if image_alpha <= 0
        instance_destroy()
}

