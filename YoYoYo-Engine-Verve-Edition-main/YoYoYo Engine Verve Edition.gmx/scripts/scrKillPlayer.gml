///scrKillPlayer()
//kills the player

if (instance_exists(objPlayer))
{
    if (global.noDeath || objPlayer.iframes > 0) { exit }; //player is invincible 
    
    if (global.debugNoDeath) //debug death
    {
        global.deathSound = audio_play_sound(sndDeath, 1, false);
        
        with (objPlayer) {
            hit = global.debugDeathSpeed;
            hitX = x; hitY = y;
        }
        
        if (global.gameStarted)
            global.death += 1;
    }
    else if (instance_exists(objYoshiControl) //yoshi death
    {
        audio_play_sound(sndYoshi2,0,0);
        with(objYoshiControl){instance_destroy()}
        objPlayer.mask_index=sprPlayerMask
        instance_create(objPlayer.x,objPlayer.y,objYoshiLost)
        objPlayer.iframes=25
        objPlayer.runSpeed=3
        objPlayer.maxVspeed=9
        objPlayer.jumpSpeed = 8.5*global.grav
        objPlayer.djump = 1
        objPlayer.y-=16*global.grav
    }
    else //regular death
    {
        global.deathSound = audio_play_sound(sndDeath, 0, false);
        
        if (!global.muteMusic)  //play death music
        {
            if (global.deathMusicMode == 1) //instantly pause the current music
            {
                audio_pause_sound(global.currentMusic);
                
                global.gameOverMusic = audio_play_sound(global.deathMusic01, 1, false);
            }
            else if (global.deathMusicMode == 2)    //fade out the current music
            {                
                with (objWorld)
                    event_user(0);  //fades out and stops the current music
                
                global.gameOverMusic = audio_play_sound(global.deathMusic01, 1, false);
            }
        }
        
        with (objPlayer)
        {
            instance_create(x, y, objBloodEmitter);
            instance_destroy();
        }
        
        instance_create(0, 0, objGameOver);
        
        if (global.gameStarted)
        {
            global.death += 1;
            scrSaveGame(false); //save death/time
        }
    }
}
