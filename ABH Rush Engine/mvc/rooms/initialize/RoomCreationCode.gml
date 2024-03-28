global.pauseRoom = -1

global.particle1=part_type_create();
global.system1=part_system_create();
part_system_depth(global.particle1,0);

part_type_shape(global.particle1,pt_shape_flare);
part_type_size(global.particle1,0.18,0.18,0,0);
part_type_scale(global.particle1,5.8,2);
part_type_color2(global.particle1,16538399,16684912);//c_aqua,c_white) //16538399,16684912);
part_type_alpha2(global.particle1,0.6,0);
part_type_speed(global.particle1,-2.5,-2.5,0.15,0);
part_type_direction(global.particle1,0,0,0,0);
part_type_gravity(global.particle1,0,270);
part_type_orientation(global.particle1,0,0,0,0,1);
part_type_blend(global.particle1,1);
part_type_life(global.particle1,12,12);

global.particle2 = part_type_create();
global.system2 = part_system_create();
part_system_depth(global.particle2,0);

part_type_shape(global.particle2,pt_shape_flare);
part_type_size(global.particle2,0.18,0.18,0,0);
part_type_scale(global.particle2,3.5,1);
part_type_color2(global.particle2,c_white,c_white);//c_aqua,c_white) //16538399,16684912);
part_type_alpha2(global.particle2,0.6,0);
part_type_speed(global.particle2,-2.5,-2.5,0.15,0);
part_type_direction(global.particle2,0,0,0,0);
part_type_gravity(global.particle2,0,270);
part_type_orientation(global.particle2,0,0,0,0,1);
part_type_blend(global.particle2,1);
part_type_life(global.particle2,8,8);



global.particle3=part_type_create();
global.system3=part_system_create();
part_system_depth(global.particle3,0);

part_type_shape(global.particle3,pt_shape_flare);
part_type_size(global.particle3,0.18,0.18,0,0);
part_type_scale(global.particle3,5.8,2);
part_type_color2(global.particle3,c_orange,c_orange);//c_aqua,c_white) //16538399,16684912);
part_type_alpha2(global.particle3,0.6,0);
part_type_speed(global.particle3,-2.5,-2.5,0.15,0);
part_type_direction(global.particle3,0,0,0,0);
part_type_gravity(global.particle3,0,270);
part_type_orientation(global.particle3,0,0,0,0,1);
part_type_blend(global.particle3,1);
part_type_life(global.particle3,12,12);



global.particle4 = part_type_create();
global.system4 = part_system_create();
part_system_depth(global.particle4,0);

part_type_shape(global.particle4,pt_shape_flare);
part_type_size(global.particle4,0.18,0.18,0,0);
part_type_scale(global.particle4,5.8,2);
part_type_color2(global.particle4,c_yellow,c_yellow);//c_aqua,c_white) //16538399,16684912);
part_type_alpha2(global.particle4,0.6,0);
part_type_speed(global.particle4,-2.5,-2.5,0.15,0);
part_type_direction(global.particle4,0,0,0,0);
part_type_gravity(global.particle4,0,270);
part_type_orientation(global.particle4,0,0,0,0,1);
part_type_blend(global.particle4,1);
part_type_life(global.particle4,12,12);

global.P_System18=part_system_create();
global.Particle18=part_type_create();

part_system_depth(global.P_System18,-5);

part_type_shape(global.Particle18,pt_shape_ring);
part_type_size(global.Particle18,0.01,0.01,0.40,0);
part_type_scale(global.Particle18,0.10,0.80);
part_type_color1(global.Particle18,14869218);
part_type_alpha3(global.Particle18,1,0.75,0);
part_type_speed(global.Particle18,0,0,0,0);
part_type_direction(global.Particle18,0,0,0,0);
part_type_gravity(global.Particle18,0,270);
part_type_orientation(global.Particle18,90,0,0,0,1);
part_type_blend(global.Particle18,1);
part_type_life(global.Particle18,10,10);

room_goto(room_next(room))