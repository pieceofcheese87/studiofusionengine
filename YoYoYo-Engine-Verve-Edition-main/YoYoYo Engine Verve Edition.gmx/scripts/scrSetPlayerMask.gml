///scrSetPlayerMask
///sets the player's mask depending on gravity flip mode and dotkid

if !instance_exists(objPlayer) exit;

var m = sprPlayerMask,
    p = objPlayer.id;

if global.dotkid {
    m = sprPlayerMaskDot;
} else {
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
}

p.mask_index = m;
