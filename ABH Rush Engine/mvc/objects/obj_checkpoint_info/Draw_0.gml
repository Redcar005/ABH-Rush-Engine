if obj_Sonic.character == consPlayerNameSonic
{
    draw_sprite_ext(spr_checkpoint_background,0,__view_get( e__VW.XView, 0 ) + 162, __view_get( e__VW.YView, 0 ) + 60,1,1,0,c_white,image_alpha)
    draw_sprite_number(__view_get( e__VW.XView, 0 ) + 192, __view_get( e__VW.YView, 0 ) + 100, time_string, spr_hud_numbers,image_alpha)
}
else if obj_Sonic.character == consPlayerNameShadow
{
    
    draw_sprite_ext(spr_checkpoint_background,1,__view_get( e__VW.XView, 0 ) + 162, __view_get( e__VW.YView, 0 ) + 60,1,1,0,c_white,image_alpha)
    draw_sprite_number(__view_get( e__VW.XView, 0 ) + 192, __view_get( e__VW.YView, 0 ) + 100, time_string, spr_hud_numbers_shadow,image_alpha)
}

