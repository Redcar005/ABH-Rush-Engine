if activate && other.action == consPlayerActionGrinding && other.action != consPlayerActionDead
{
    other.hsp = image_xscale*16
    other.xdir = image_xscale;
    other.ground = true
    activate = false
    if audio_is_playing(snd_dashpad)
        audio_stop_sound(snd_dashpad)
    audio_play_sound(snd_dashpad,1,false)
    
    draw_effect(spr_dash_fx, image_angle, image_xscale, 1, false)
}

