/// p_x([val])
// Gets or sets relative x
// Used for adjustments when flipping gravity; other uses are likely unnecessary

if !instance_exists(objPlayer) exit;

var val = undefined,
    p = objPlayer.id,
    _x = p.x;

if argument_count > 0 {
    val = argument[0];
}

if p_is_sideways() {
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
