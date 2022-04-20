/// p_instance_place(x, y, object)
// Returns instance_place, adjusted for sideways grav
// Checks are relative to x, y

var _x = argument[0],
    _y = argument[1],
    _o = argument[2];

if abs(global.grav) == 1 {
    return instance_place(x+_x, y+_y, _o);
} else {
    return instance_place(x+_y, y+_x, _o);
}

