///scrPlayerJump()

var wet = p_instance_place(0, 0, objWater2);
var wet_low = p_instance_place(0, p_grav(), objWater2);

if (!p_place_free(0, sign(global.grav)) || onPlatform || (wet and wet.fulljump) || p_place_meeting(0, 0, objPlatform))
{
    p_vspeed(-jumpSpeed);
    
    if !wet {
        p_refresh()
    } else {
        if wet.refresh > 0 p_refresh()
    }
    audio_play_sound(sndJump, 0, false);
    
    // Jump spike movement
    with objJumpSpike {
        event_user(0)
    }
}
else if ((djump > 0 || (wet_low and wet_low.swim and !wet_low.fulljump) || global.infJump || global.debugInfJump) && numJumps != 1){
    p_vspeed(-djumpSpeed);
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump, 0, false);
    
    if wet_low {
        if wet_low.refresh > 0 {
            p_refresh()
        }
    } else {
        if djump > 0 djump --;
    }
        
    // Jump spike movement
    with objJumpSpike {
        event_user(0)
    }
}
