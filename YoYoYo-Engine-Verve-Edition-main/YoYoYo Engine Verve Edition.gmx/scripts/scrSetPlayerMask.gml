///scrSetPlayerMask
//sets the player's mask depending on gravity flip mode

if !instance_exists(objPlayer) exit;

var m = sprPlayerMask,
    p = objPlayer.id;

switch (global.grav) {
    case -2:
        m = sprPlayerMaskSideFlip;
        break;
    case -1:
        m = sprPlayerMaskFlip;
        break;
    case 1:
        m = sprPlayerMask;
        break;
    case 2:
        m = sprPlayerMaskSide;
        break;
}

p.mask_index = m;
