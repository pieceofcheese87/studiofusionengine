///scrVPlayerJump()
//handles the vvvvvv player's jumping.

if (place_meeting(x,y+(global.grav),objBlock) || onPlatform)
{
    scrFlipGrav();
    vspeed = jumpSpeed;
    if global.grav == -1 { audio_play_sound(sndVFlip1,0,false) } else { audio_play_sound(sndVFlip2,0,false) }
    
    // Jump spike movement
    with objJumpSpike {
        event_user(0)
    }
}

