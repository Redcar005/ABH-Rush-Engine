if activate && other.ground && other.hsp >= 4
{
    activate = false
    other.angle = 0
    other.ground = false
    other.x = x + image_xscale*2
    other.y = y + 15
    other.image_i = 0
    audio_play_sound(snd_grab,1,false)
    other.xdir = image_xscale
    alarm[0] = 15
    other.action = consPlayerActionBungee
    other.hsp = 0
    other.vsp = 7
}
else if !activate && other.action == consPlayerActionBungee && other.vsp < 0 && makejump
{
    makejump = false
    other.action = consPlayerActionNormal
    other.hsp = 0
    other.vsp = -13
    activate = true
    audio_play_sound(snd_spring,1,false)
}

