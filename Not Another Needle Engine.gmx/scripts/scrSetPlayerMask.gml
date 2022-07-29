///scrSetPlayerMask
///sets the player's mask depending on gravity flip mode and dotkid

if global.dotkid {
    mask_index = sprPlayerMaskDot;
} else {
    if (global.grav == 1) {
        mask_index = sprPlayerMask;
    } else {
        mask_index = sprPlayerMaskFlip;
    }
}
