///scrKillPlayer()
//kills the player

if (instance_exists(objPlayer))
{
    if (!global.noDeath && !global.debugNoDeath)
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
    else if (global.debugNoDeath && !objPlayer.hit)
    {
        global.deathSound = audio_play_sound(sndDeath, 1, false);
        
        with (objPlayer) {
            hit = global.debugDeathSpeed;
            hitX = x; hitY = y;
        }
        
        if (global.gameStarted)
            global.death += 1;
    }
    
}
