if other.action != consPlayerActionDead
{
    other.image_i = 0
    other.action = consPlayerActionDead
    other.canHit = false
    other.alarm3 = 120
    obj_player_camera.canFollow = false
    obj_stagetime.count = false
    
    if instance_exists(obj_HUD_ingame)
        obj_HUD_ingame.show = false
    
    if !touched
    {
        other.super = false
        touched = true
        if other.character == consPlayerNameSonic
            audio_play_sound(snd_SonicDie,1,false)
        else if other.character == consPlayerNameShadow
            audio_play_sound(snd_Shadow_Die,1,false)
    
    }
}

