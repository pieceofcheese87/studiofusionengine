/// p_hdir()
// Returns relative "horizontal" direction based on gravity
// Used solely for block collision; using it elsewhere is likely unnecessary

if !instance_exists(objPlayer) exit;
var p = objPlayer.id;

if !p_is_sideways() {
    return (180 * (p_hspeed() < 0));
} else {
    if p_grav() == 1 {
        return 90 + (180 * (p_hspeed() < 0));
    } else {
        return scrTernary(p_hspeed() < 0, 90, 270);
    }
}
