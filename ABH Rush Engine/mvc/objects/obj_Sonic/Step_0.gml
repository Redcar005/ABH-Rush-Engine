/*
if keyboard_check_pressed(ord('Y'))
{
    if character == consPlayerNameSonic
        character = consPlayerNameShadow
    else 
        character = consPlayerNameSonic
}
if keyboard_check_pressed(ord('U'))
{
    super = !super;
}
*/
if keyboard_check_pressed(ord("R"))
{
    room_restart()
}



if !canMove
{
    switch(character)
    {
        case consPlayerNameSonic:
        {
            sprp = spr_Sonic_stand
        }
        break;
        
        case consPlayerNameShadow:
        {
            sprp = spr_Shadow_stand
        }
        break;
    }
    exit
}
//check input
if keyboard_check(vk_anykey)
    input_mode = 0
if check_xbox_controller()
    input_mode = 1
//custom alarms

if alarm0 > 0
{
    alarm0 -= 1
    if alarm0 == 1
        grv = 0.21875
}

if alarm1 > 0
{
    alarm1 -= 1
    if alarm1 == 1 && action = consPlayerActionDashPad
        action = consPlayerActionNormal
}

if alarm2 > 0
{
    alarm2 -= 1
    if alarm2 == 1 && action == consPlayerActionHomingNoTarget
    {
        action = consPlayerActionNormal
        if character == consPlayerNameSonic
            hsp = 0
        vsp = 0
        grv = 0.21875;
    }
}

if alarm3 > 0
{
    alarm3 -= 1
    if alarm3 == 1
    {
        var blankscreen = instance_create(x,y,obj_blackblank_fadein);
        blankscreen.fadein = true
    }
}

if alarm4 > 0
{
    if !instance_exists(obj_InverseColour)
        instance_create(0,0,obj_InverseColour)
    alarm4 -= 1
    if alarm4 == 1
    {
        with(obj_InverseColour)
        {
            instance_destroy()
        }
        room_speed = 60
        alarm4 -= 1
    }
}

//boost amount control

if super
{
    boostamount = 100
    ring_step -= 1
    if ring_step <= 0
    {
        rings -= 1
        ring_step = 60
    }
}
else
{
    if boostamount > 100
        boostamount = 100
    if boostamount < 0
        boostamount = 0
}

    
//making trail
if instance_exists(obj_boostfx) || (character == consPlayerNameShadow && (action == consPlayerActionHomingNoTarget)) || super
{
    step += 1
    if step >= 7
    {
        instance_create(x,y-1,obj_trail)
        step = 0
    }
    
    if ground && step == 6 && hsp != 0
    {
        var fx = instance_create(x,y,obj_boostspeed_fx);
        fx.image_xscale = xdir;
        fx.image_angle = angle;   
    }
}


if action == consPlayerActionQTESucces
{
    step += 1
    if step >= 5
    {
        instance_create(x,y,obj_sparkle_trail)
        step = 0
    }
}

if !underwater && abs(hsp) >= 6 && ground && (action == consPlayerActionNormal || action == consPlayerActionJump || action == consPlayerActionRoll)
    canFloat = true
else
    canFloat = false

if collision_line(x,y,x,y+20,obj_water_surface,true,true)
    angle = 0
if collision_point(x,y,obj_water,true,true)
{
    if !underwater
    {
        vsp = vsp*0.25
        hsp = hsp*0.5
        audio_play_sound(snd_watersplash,1,false)
        acc = 0.0234375;//acceleration
        dcc = 0.25;//deceleration
        frc = 0.0234375;//friction
        grv = 0.0625;//gravity
        jmp = -3.5;//jumping speed
        sjmp = -2;//lowest jump
    }
    underwater = true
}
else 
{
    if underwater
    {
        audio_play_sound(snd_watersplashout,1,false)
        if grv = 0.21875
            vsp = vsp*2
        acc = 0.25;//acceleration
        dcc = 0.5;//deceleration
        frc = 0.046875;//friction
        grv = 0.21875;//gravity
        jmp = -6.5;//jumping speed
        sjmp = -4;//lowest jump
    }
    underwater = false
}

  
//underwater bubble
if underwater && choose(1,1,1,1,1,1,1,1,1,1,1,1,3)%3 == 0
    instance_create(x+choose(5,7,9)*xdir,y-5,obj_bubble)

//calling scripts
p_physics()

if !stageClear
{
    if character != consPlayerNameTails
        p_move_Sonic()
    else
        p_move_Tails()
}
else
{
    action = consPlayerActionNormal
    xdir = 1
    if abs(hsp) < 9
    hsp += acc
}
//layer switching
if collision_circle(x,y,17,obj_t_background,true,false)
{
    xlayer = 0;
}

if collision_circle(x,y,17,obj_t_foreground,true,false)
{
    xlayer = 1;
}

if collision_circle(x,y,17,obj_t_switch,true,false)
{
    if hsp > 0 && ground 
        xlayer = 0;
    if hsp < 0 && ground
        xlayer = 1;
}

if collision_circle(x,y,17,obj_t_switch2,true,false)
{
    if hsp > 0 && ground 
        xlayer = 1;
    if hsp < 0 && ground
        xlayer = 0;
}


//footstep sounds
scr_footsteps()

/*
if ground
{
    if collision_line(x,y,x+20*asin,y+20*acos,obj_water_surface,true,true)
    {
        snd_footstep1 = snd_footstep_water1
        snd_footstep2 = snd_footstep_water2
    }
    else if collision_line(x,y,x+20*asin,y+20*acos,obj_glass_wall,true,true) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_glass,true,true) && xlayer == 0) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_glass,true,true) && xlayer == 1)
    {
        snd_footstep1 = snd_footstep_glass1
        snd_footstep2 = snd_footstep_glass2
    }
    else if collision_line(x,y,x+20*asin,y+20*acos,obj_grass_wall,true,true) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_grass,true,true) && xlayer == 0) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_grass,true,true) && xlayer == 1)
    {
        snd_footstep1 = snd_footstep_grass1
        snd_footstep2 = snd_footstep_grass2
    }
    else if collision_line(x,y,x+20*asin,y+20*acos,obj_stone_wall,true,true) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_stone,true,true) && xlayer == 0) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_stone,true,true) && xlayer == 1)
    {
        snd_footstep1 = snd_footstep_1
        snd_footstep2 = snd_footstep_2
    }
    else if collision_line(x,y,x+20*asin,y+20*acos,obj_metal_wall,true,true) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_metal,true,true) && xlayer == 0) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_metal,true,true) && xlayer == 1)
    {
        snd_footstep1 = snd_footstep_metal1
        snd_footstep2 = snd_footstep_metal2
    }
    else if collision_line(x,y,x+20*asin,y+20*acos,obj_wood_wall,true,true) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_wood,true,true) && xlayer == 0) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_wood,true,true) && xlayer == 1)
    {
        snd_footstep1 = snd_footstep_wood1
        snd_footstep2 = snd_footstep_wood2
    }
    else if collision_line(x,y,x+20*asin,y+20*acos,obj_dirt_wall,true,true) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_bwalls_dirt,true,true) && xlayer == 0) 
    || (collision_line(x,y,x+20*asin,y+20*acos,obj_fwalls_dirt,true,true) && xlayer == 1)
    {
        snd_footstep1 = snd_footstep_dirt1
        snd_footstep2 = snd_footstep_dirt2
    }
    else
    {
        snd_footstep1 = snd_footstep_1
        snd_footstep2 = snd_footstep_2
    }
}

if character == consPlayerNameShadow && (sprp == spr_Shadow_skate || sprp == spr_SuperShadow_skate || sprp == spr_Shadow_skate_fast) 
{
    snd_footstep1 = snd_jetboots_R
    snd_footstep2 = snd_jetboots_L
}


if action == consPlayerActionNormal && sprp != spr_Sonic_stand && sprp != spr_Shadow_stand && sprp != spr_SuperSonic_stand && sprp != spr_SuperSonic_fly && sprp != spr_SuperShadow_stand && sprp != spr_SuperShadow_fly && ground && !stageClear && sprp != spr_Tails_sprint && !(character == consPlayerNameShadow && (sprp == spr_Shadow_skate_fast || sprp == spr_Shadow_skate || sprp == spr_Shadow_fly))
{
    if (image_i == 3 || image_i == 7 ) && !footstep
    {
        footstep = true 
        audio_play_sound(choose(snd_footstep1,snd_footstep2),1,false)
    }
    else if image_i != 3 && image_i != 7
        footstep = false
}
else if (character == consPlayerNameShadow && (sprp == spr_Shadow_skate)) 
{
    if (image_i == 0 || image_i == 14) && !footstep
    {
        footstep = true
        audio_play_sound(choose(snd_footstep1,snd_footstep2),1,false)
    }
    else if image_i != 7 && image_i != 21
        footstep = false
}
else if (character == consPlayerNameShadow && sprp == spr_Shadow_skate_fast)
{
    if (image_i == 4 || image_i == 21) && !footstep
    {
        footstep = true
        audio_play_sound(choose(snd_footstep1,snd_footstep2),1,false)
    }
    else if image_i != 0 && image_i != 17
        footstep = false
}
*/

//post-damage invincibility 
if hitInvincible > 0 
{
    hitInvincible -= 1
    if hitInvincible == 1
        canHit = true
}

/* */
/*  */
