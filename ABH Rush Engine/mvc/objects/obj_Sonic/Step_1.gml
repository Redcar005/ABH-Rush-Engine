//assigning input buttons
key_d = keyboard_check(vk_down) || gamepad_button_check(0,gp_padd);
key_u = keyboard_check(vk_up) || gamepad_button_check(0,gp_padu);
key_r = keyboard_check(vk_right) || gamepad_button_check(0,gp_padr);
key_l = keyboard_check(vk_left)  || gamepad_button_check(0,gp_padl);
key_jump = keyboard_check_pressed(ord("S"))  || gamepad_button_check_pressed(0,gp_face1);
key_jumpr = keyboard_check_released(ord("S")) || gamepad_button_check_released(0,gp_face1);
key_attack = keyboard_check(ord("D")) || gamepad_button_check(0,gp_face2);
key_attack_p = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_face2);
key_boost = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_face3);
key_boostr = keyboard_check_released(ord("A")) || gamepad_button_check_released(0,gp_face3);
key_stomp = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0,gp_padd)
key_special = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_face4)

//begin position values for boost sprite direction
x_begin = x
y_begin = y



