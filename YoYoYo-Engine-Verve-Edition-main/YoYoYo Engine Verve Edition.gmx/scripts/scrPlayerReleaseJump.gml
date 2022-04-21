///ScrPlayerReleaseJump()

if (p_vspeed() * sign(global.grav) < 0) {
    p_vspeed(p_vspeed() * 0.45);
}
