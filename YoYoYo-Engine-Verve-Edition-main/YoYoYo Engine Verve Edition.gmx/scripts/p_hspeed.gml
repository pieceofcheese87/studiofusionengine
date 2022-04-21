/// p_hspeed([val])
// Sets or gets the relative "horizontal" speed for the player
// [val] : Optional variable to set relative hspeed

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

if !p_is_sideways() {
    if val != undefined {
        p.hspeed = val;
    }
    r = p.hspeed;
} else {
    if val != undefined {
        p.vspeed = val;
    }
    r = p.vspeed;
}

return r;
