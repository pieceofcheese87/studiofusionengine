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

if (abs(global.grav) == 1) { // If global.grav is -1 or 1, use vspeed as usual
    if val != undefined {
        p.vspeed = val * sign(global.grav);
    }
    r = p.vspeed;
} else { // If global.grav is -2 or 2, use hspeed instead of vspeed
    if val != undefined {
        p.hspeed = val * sign(global.grav);
    }
    r = p.hspeed;
}

return r;
