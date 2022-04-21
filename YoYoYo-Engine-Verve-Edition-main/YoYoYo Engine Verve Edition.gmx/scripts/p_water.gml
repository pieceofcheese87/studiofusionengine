/// player_wet([spd])
// Slow fall for player in water

var spd = 2;

if argument_count > 0 {
    spd = abs(argument[0])
}

if ((p_vspeed() * sign(global.grav)) > spd) {
    p_vspeed(spd * sign(global.grav))
}
