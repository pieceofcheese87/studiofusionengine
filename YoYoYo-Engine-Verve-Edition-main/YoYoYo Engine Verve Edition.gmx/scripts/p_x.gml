/// p_x([val])
// Gets or sets relative x
// Mostly used for adjustments when flipping gravity and shooting the gun
// Other uses are likely unnecessary

if !instance_exists(objPlayer) exit;

var val = undefined,
    _x = p.x,
    p = objPlayer.id;

if argument_count > 0 {
    val = argument[0];
}

if abs(global.grav) == 2 {
    _x = p.y;
    if val != undefined {
        _x = val;
        p.y = _x;
    }
} else {
    _x = p.x;
    if val != undefined {
        _x = val;
        p.x = _x;
    }
}

return _x;
