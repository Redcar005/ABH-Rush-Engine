if activate && other.action != consPlayerActionDead
{
    activate = false;
    other.ground = false
    other.action = consPlayerActionDashRamp
    other.image_i = 0;
    other.x = x
    other.y = y - 20
    other.hsp = 12*image_xscale;
    other.vsp = -force_power
    other.xdir = image_xscale
    if audio_is_playing(snd_jumpramp)
        audio_stop_sound(snd_jumpramp)
    audio_play_sound(snd_jumpramp,1,false);
    
    if image_xscale == 1
        draw_effect(spr_dash_fx, 30, 1, 1, true)
    else
        draw_effect(spr_dash_fx, -30, -1, 1, true)
}

