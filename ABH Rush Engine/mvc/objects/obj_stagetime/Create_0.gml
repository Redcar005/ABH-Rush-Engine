count = false   //this variable controls time tick

steps = 0
seconds = 0
minutes = 0

step_string = ""
sec_string = ""
min_string = ""
time_string = ""

if instance_exists(obj_checkpoint_controller) && obj_checkpoint_controller.checkpoint
{
    steps = obj_checkpoint_controller.checkpoint_step 
    seconds = obj_checkpoint_controller.checkpoint_sec 
    minutes = obj_checkpoint_controller.checkpoint_min
}

