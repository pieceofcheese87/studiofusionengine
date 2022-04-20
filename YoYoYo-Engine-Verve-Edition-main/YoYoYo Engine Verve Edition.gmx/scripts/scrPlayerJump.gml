///scrPlayerJump()

if (!place_free(x, y + global.grav) || onPlatform || place_meeting(x, y, objWater) || place_meeting(x, y, objPlatform))
{
    vspeed = -jumpSpeed;
    djump = 1;
    audio_play_sound(sndJump, 0, false);
    
    // Jump spike movement
    with objJumpSpike {
        event_user(0)
    }
}
else if ((djump > 0 || place_meeting(x, y + global.grav, objWater2) || global.infJump || global.debugInfJump) && numJumps != 1) 
{
    vspeed = -djumpSpeed;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump, 0, false);
    
    if (!place_meeting(x, y + global.grav, objWater3))
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
