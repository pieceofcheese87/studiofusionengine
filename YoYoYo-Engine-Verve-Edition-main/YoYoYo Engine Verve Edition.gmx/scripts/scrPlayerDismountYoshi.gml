/// scrPlayerDismountYoshi(kill)
// kill : if the player gunned the yoshi down in the street like the degenerate filth he is

if !instance_exists(objPlayer) exit;
var p = objPlayer.id,
    kill = argument[0];

if kill {
    audio_play_sound(sndShoot,0,false);
    audio_play_sound(sndDeath,0,0);
    
    with(objYoshiControl){instance_destroy()}
    
    a=instance_create(p.x,p.y,objYoshiDead)
    a.image_xscale=p.xScale
} else {
    audio_play_sound(sndYoshi2,0,0);
    with(objYoshiControl){instance_destroy()}
    instance_create(objPlayer.x,objPlayer.y,objYoshiLost)
    p.iframes=25
}

p_y_add((16 + (4 * kill)) * -p_grav());
p.runSpeed=3
p.maxVspeed=9
p.jumpSpeed = 8.5*p_grav()
p_refresh()
scrSetPlayerMask();
