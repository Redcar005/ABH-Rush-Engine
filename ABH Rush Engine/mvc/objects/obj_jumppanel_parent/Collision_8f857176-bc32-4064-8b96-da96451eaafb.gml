if other.action == consPlayerActionJumpPanelJump && activate
{
    activate = false
    other.i_angle = image_angle
    other.action = consPlayerActionJumpPanelLand
    instance_create(x,y,obj_qte_button_jumppanel)
    audio_play_sound(snd_jumppanel_attached,1,false)
}

