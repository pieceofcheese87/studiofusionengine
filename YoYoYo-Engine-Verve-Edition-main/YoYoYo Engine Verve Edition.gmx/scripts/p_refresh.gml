/// p_refresh([num], [set])
// Refreshes player jumps
// [num] : Optional, amount of jumps to refresh. By default, it will fully refresh
// [set] : Optional, absolute jump count instead of additional. Defaults to true

if !instance_exists(objPlayer) exit;

var p = objPlayer.id,
    num = -1,
    set = true;

if argument_count > 0 {
    num = argument[0];
}
if argument_count > 1 {
    set = argument[1];
}

if num == -1 {
    p.djump = p.numJumps - 1;
} else {
    p.djump = num + (djump * !set);
}

p.djump = clamp(p.djump, 0, p.numJumps - 1);
