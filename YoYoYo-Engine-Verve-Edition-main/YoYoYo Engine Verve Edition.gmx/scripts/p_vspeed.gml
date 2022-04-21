/// p_vspeed([val])
// Sets or gets the "vertical" speed for the player, relative to their orientation
// [val] : Optional variable to set relative vspeed

if !instance_exists(objPlayer) {
    return 0;
    exit;
}

var val = undefined,
    r = undefined,
    p = objPlayer.id;

if argument_count > 0 {
    val = argument[0];
}

if (!p_is_sideways()) {
    if val != undefined {
        p.vspeed = val;
    }
    r = p.vspeed;
} else {
    if val != undefined {
        p.hspeed = val;
    }
    r = p.hspeed;
}

return r;
