/// p_y([val])
// Gets or sets relative y
// Mostly used for adjustments when flipping gravity and shooting the gun
// Other uses are likely unnecessary

if !instance_exists(objPlayer) exit;

var val = undefined,
    _y = p.y,
    p = objPlayer.id;

if argument_count > 0 {
    val = argument[0];
}

if abs(global.grav) == 2 {
    _y = p.x;
    if val != undefined {
        _y = val;
        p.x = _y;
    }
} else {
    _y = p.y;
    if val != undefined {
        _y = val;
        p.y = _y;
    }
}

return _y;
