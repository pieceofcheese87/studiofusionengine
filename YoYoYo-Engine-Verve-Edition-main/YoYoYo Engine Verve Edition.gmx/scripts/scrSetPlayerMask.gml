///scrSetPlayerMask
//sets the player's mask depending on gravity flip mode

var m = sprPlayerMask;

switch (global.grav) {
    case -2:
        break;
    case -1:
        m = sprPlayerMaskFlip;
        break;
    case 1:
        m = sprPlayerMask;
        break;
    case 2:
        break;
}

mask_index = m;
