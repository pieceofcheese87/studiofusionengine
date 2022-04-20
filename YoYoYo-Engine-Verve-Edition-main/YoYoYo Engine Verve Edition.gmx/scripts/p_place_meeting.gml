/// p_place_meeting(x, y, object)
// Returns place_meeting, adjusted for sideways grav
// Checks are relative to x, y

var _x = argument[0],
    _y = argument[1],
    _o = argument[2];

if abs(global.grav) == 1 {
    return place_meeting(x+_x, y+_y, _o);
} else {
    return place_meeting(x+_y, y+_x, _o);
}

