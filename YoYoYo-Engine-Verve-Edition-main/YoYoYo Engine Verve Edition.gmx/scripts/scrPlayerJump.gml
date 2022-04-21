///scrPlayerJump()

if (!p_place_free(0, sign(global.grav)) || onPlatform || p_place_meeting(0, 0, objWater) || p_place_meeting(0, 0, objPlatform))
{
    p_vspeed(-jumpSpeed);
    
    djump = 1;
    audio_play_sound(sndJump, 0, false);
}
else if (djump == 1 || p_place_meeting(0, sign(global.grav), objWater2) || global.infJump || global.debugInfJump)
{
    p_vspeed(-djumpSpeed);
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump, 0, false);
    
    if (!p_place_meeting(0, sign(global.grav), objWater3))
        { djump = 0; }
    else
        { djump = 1; }
}
