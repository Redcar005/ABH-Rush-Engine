if activate && other.action != consPlayerActionDead && other.ground = false && (other.action == consPlayerActionDashRamp || other.action == consPlayerActionNormal || other.action == consPlayerActionJump)
{
    activate = false
    audio_play_sound(snd_grab,1,false)
    other.action = consPlayerActionZipLineStart
    other.zipline_speed = other.hsp
    
    other.y = y + 6
    
    audio_play_sound(snd_grinding,1,true)
    if instance_exists(obj_boostfx)
    { 
        with(obj_boostfx)
        {
            alive = false
        }
    }
}

