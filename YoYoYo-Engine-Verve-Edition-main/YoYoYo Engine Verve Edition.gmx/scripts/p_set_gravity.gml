/// p_set_gravity(grav, [refresh_jump])
// grav : gravity to set (-2 for left, -1 for up, 1 for down, 2 for right)
// [refresh_jump] : optional, amount of jumps to refresh. -1 is default, which does normal behaviour

if !instance_exists(objPlayer) exit;

var g = argument[0],
    j = -1,
    p = objPlayer.id;

if global.grav != g {
    audio_play_sound(sndGravity, 0, false);
    
    scrSetPlayerMask();
    global.grav = g;
    p_vspeed(0)
    
    with p {
        jumpSpeed = abs(jumpSpeed) * sign(global.grav);
        djumpSpeed = abs(djumpSpeed) * sign(global.grav);
        gravity = abs(gravity) * sign(global.grav);
        if abs(global.grav) == 2 {
            gravity_direction = 0;
        } else {
            gravity_direction = 270;
        }
    }
    
    p.djump = j;
    
    p_y_add(4)
    
    p_not_splat()
}
