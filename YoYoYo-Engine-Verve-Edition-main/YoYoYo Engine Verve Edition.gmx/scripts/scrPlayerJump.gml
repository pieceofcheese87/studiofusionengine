///scrPlayerJump()

if (!p_place_free(0, sign(global.grav)) || onPlatform || p_place_meeting(0, 0, objWater) || p_place_meeting(0, 0, objPlatform))
{
    p_vspeed(-jumpSpeed);
    
    djump = 1;
    audio_play_sound(sndJump, 0, false);
    
    // Jump spike movement
    with objJumpSpike {
        event_user(0)
    }
}
else if ((djump > 0 || p_place_meeting(0, sign(global.grav), objWater2) || global.infJump || global.debugInfJump) && numJumps != 1){
    p_vspeed(-djumpSpeed);
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump, 0, false);
    

    if (!p_place_meeting(0, sign(global.grav), objWater3))
        if numJumps == 2 {
            djump = 0
        } else if numJumps == 3 {
            djump -= 0.5
        }
    else
        { djump = 1; }
        
    // Jump spike movement
    with objJumpSpike {
        event_user(0)
    }
}
