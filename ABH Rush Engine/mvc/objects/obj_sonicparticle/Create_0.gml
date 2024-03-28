x = obj_Sonic.x;
y = obj_Sonic.y;
step = 0
//Particle system

part_sys = part_system_create();
part_system_depth(part_sys,0);

//Particle

part = part_type_create();
part_type_shape(part,pt_shape_flare);
part_type_scale(part,1,1);
part_type_size(part,1,1,0,0);
part_type_colour3(part,c_blue,c_aqua,c_white);
part_type_alpha3(part,1,0.5,0);
part_type_speed(part,0.5,0.5,0,0);
part_type_life(part,10,10);
part_type_blend(part,1);
part_type_orientation(part,obj_Sonic.angle,obj_Sonic.angle,0,0,0);

//Particle Emitter

part_emit = part_emitter_create(part_sys);

