/// p_set_gravity(grav, [refresh_jump])
// grav : gravity to set (-2 for left, -1 for up, 1 for down, 2 for right)
// [refresh_jump] : optional, amount of jumps to refresh. -1 is default, which does not affect djump variable

if !instance_exists(objPlayer) exit;

var g = argument[0],
    j = -1,
    p = objPlayer.id;

if argument_count > 1 {
    j = argument[1];
}

if global.grav != g {
    audio_play_sound(sndGravity, 0, false);
    
    global.grav = g;
    scrSetPlayerMask();
    p_vspeed(0)
    
    with p {
        jumpSpeed = abs(jumpSpeed) * p_grav();
        djumpSpeed = abs(djumpSpeed) * p_grav();
        gravity = abs(gravity) * p_grav();
        if p_is_sideways() {
            gravity_direction = 0;
        } else {
            gravity_direction = 270;
        }
    }
    
    if j > -1 {
        p_refresh(j, false);
    }
    
    p_y_add(4);
    
    p_not_splat();
}
