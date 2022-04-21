/// p_water([spd])
// Slow fall for player in water

var spd = 2;

if argument_count > 0 {
    spd = abs(argument[0])
}

if ((p_vspeed() * p_grav()) > spd) {
    p_vspeed(spd * p_grav())
}
