draw_self()

draw_sprite_ext(spr_4waycanon_sideright,sides_img,x,y,1,1,sides_direction,c_white,1)
draw_sprite_ext(spr_4waycanon_sideleft,sides_img,x,y,1,1,sides_direction,c_white,1)
draw_sprite_ext(spr_4waycanon_sidedown,sides_img,x,y,1,1,sides_direction,c_white,1)
draw_sprite_ext(spr_4waycanon_sideup,sides_img,x,y,1,1,sides_direction,c_white,1)
    
if place_meeting(x,y,obj_Sonic) && obj_Sonic.action == consPlayerAction4WayCanon && (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right) || gamepad_button_check(0,gp_padd) || gamepad_button_check(0,gp_padu) || gamepad_button_check(0,gp_padr) || gamepad_button_check(0,gp_padl))
{
    if (sides_img < 6 && (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right) || gamepad_button_check(0,gp_padd) || gamepad_button_check(0,gp_padu) || gamepad_button_check(0,gp_padr) || gamepad_button_check(0,gp_padl)))
        sides_img += 1
} 
else //if !activate || ((keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right)))
{
    if sides_img > 0
        sides_img -= 1
    else
    {
        sides_img = 0
        sides_direction = 0
    }
}

