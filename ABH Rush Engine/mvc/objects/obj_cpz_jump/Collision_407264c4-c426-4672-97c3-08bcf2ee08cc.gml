if other.ground && ((other.x >= x && image_xscale == 1) || (other.x <= x && image_xscale == -1))
{
    other.ground = false
    other.vsp = -force_power
    other.action = consPlayerActionNormal
    other.angle = 0
    audio_play_sound(snd_classicspring,1,false)
}
image_index = 1

