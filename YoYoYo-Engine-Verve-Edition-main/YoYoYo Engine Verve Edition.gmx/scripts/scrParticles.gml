///scrParticles()
//Init particle systems

global.partSys = part_system_create();
part_system_depth(global.partSys,-100);

global.vinePart = part_type_create();
part_type_shape(global.vinePart,pt_shape_spark);
part_type_color2(global.vinePart,16711808,8388672);
part_type_alpha2(global.vinePart,0.9492,0.9222);
part_type_life(global.vinePart,20.0000,30.0000);
part_type_size(global.vinePart,0.1907,0.2147,0.0010,0.0124);
part_type_speed(global.vinePart,2.8002,3.1302,-0.0693,-0.1858);
part_type_direction(global.vinePart,0.0000,360.0000,0.0000,0.3559);
part_type_orientation(global.vinePart,0.0000,360.0000,-0.7222,2.4790,0);
part_type_gravity(global.vinePart,0.0000,270.0000);
part_type_blend(global.vinePart,true);
