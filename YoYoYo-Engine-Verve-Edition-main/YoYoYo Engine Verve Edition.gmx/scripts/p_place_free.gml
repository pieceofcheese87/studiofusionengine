/// p_place_free(x, y)
// Returns place_free, adjusted for sideways grav
// Checks are relative to x, y

var _x = argument[0],
    _y = argument[1];

if abs(global.grav) == 1 {
    return place_free(x + _x, y + _y);
} else {
    return place_free(x + _y, y + _x);
}
