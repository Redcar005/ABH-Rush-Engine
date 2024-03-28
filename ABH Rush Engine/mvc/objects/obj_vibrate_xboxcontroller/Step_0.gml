if vibrate && obj_Sonic.input_mode == 1
{
    vibrate_time -= 1
    gamepad_set_vibration(0,1,1)
    if vibrate_time <= 0
        instance_destroy()
}


