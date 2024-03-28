if obj_Sonic.action != consPlayerActionHomingTarget
{
    part_type_size(part,0.5,0.5,0,0);
    step += 1
    if step >= 1
    {
        step = 0
        part_particles_create(part_sys,x,y,part,1);
        part_particles_create(part_sys,x-obj_Sonic.acos,y+obj_Sonic.asin,part,1)
    }
    //part_particles_create(part_sys,x-(obj_Sonic.xdir*4*obj_Sonic.acos),y+(obj_Sonic.xdir*4*obj_Sonic.asin),part,1);
    //part_particles_create(part_sys,x-(obj_Sonic.xdir*8*obj_Sonic.acos),y+(obj_Sonic.xdir*8*obj_Sonic.asin),part,1);
    //part_particles_create(part_sys,x-(obj_Sonic.xdir*12*obj_Sonic.acos),y+(obj_Sonic.xdir*12*obj_Sonic.asin),part,1);
}
else
{
    part_type_size(part,1,1,0,0);
    part_particles_create(part_sys,x,y,part,1);
    //instance_create(obj_Sonic.x,obj_Sonic.y,obj_sonictrail);
}
x = obj_Sonic.x;
y = obj_Sonic.y;

if (!obj_Sonic.key_boost && obj_Sonic.action != consPlayerActionHomingTarget) || obj_Sonic.action == consPlayerActionSwingBar || obj_Sonic.action == consPlayerActionQTE
    instance_destroy()

