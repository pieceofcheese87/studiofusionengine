///scrFlipGrav(djump)
//Flips the current gravity

if instance_exists(objYoshiControl) { exit } //abort script if player is yoshi

global.grav = -global.grav;

//restore double jump by default
var dj = true;
if argument_count > 0 { dj = argument0 }

//Flip the player
with (objPlayer)
{
    vspeed = 0;
    
    jumpSpeed = abs(jumpSpeed) * global.grav;
    djumpSpeed = abs(djumpSpeed) * global.grav;
    gravity = abs(gravity) * global.grav;
    
    scrSetPlayerMask();
    
    if !global.dotkid {
        y += 4 * global.grav;
    }
}
if (dj) {
    with (objPlayer) { djump = 1 }
}
