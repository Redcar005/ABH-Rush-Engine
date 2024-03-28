/*
if keyboard_check_pressed(vk_f3)
{
    zoom += 1;
    if(zoom > max_zoom)
        zoom = max_zoom;
    window_set_size(ideal_width*zoom,ideal_height*zoom);
    surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
    alarm[0] = 1;
}
zoom = max_zoom;
window_set_size(ideal_width*zoom,ideal_height*zoom);
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
alarm[0] = 1;
*/

if keyboard_check_pressed(vk_f4)
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(0)
        window_set_size(ideal_width*zoom,ideal_height*zoom);
    }
    else
        window_set_fullscreen(1)
}

if keyboard_check(vk_escape)
    game_end()

/* */
/*  */
