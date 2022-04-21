///scrPlayerShoot()

if !instance_exists(objPlayer) exit;

var p = objPlayer.id,
    scale = p.xScale,
    angle = (180 * (scale == -1)) + (90 * (abs(global.grav) > 1)),
    _x = p.x,
    _y = p.y;

if abs(global.grav) > 1 {
    _x -= ((3 - (1 * global.dotkid) * global.fixBulletHeight));
} else {
    _y -= ((3 - (1 * global.dotkid) * global.fixBulletHeight));
}

if instance_exists(objYoshiControl)
{
    audio_play_sound(sndShoot,0,false);
    audio_play_sound(sndDeath,0,0);
    with(objYoshiControl){instance_destroy()}
    objPlayer.mask_index=sprPlayerMask
    objPlayer.y-=(20*global.grav)
    a=instance_create(objPlayer.x,objPlayer.y,objYoshiDead)
    a.image_xscale=objPlayer.xScale
    objPlayer.runSpeed=3
    objPlayer.maxVspeed=9
    objPlayer.jumpSpeed = 8.5*global.grav
    objPlayer.djump = 1
} else if (instance_number(objBullet) < 4) {
    var f = instance_create(_x, _y, objBullet);
    
    f.direction = angle;
    f.speed = 16;
}
    audio_play_sound(sndShoot, 0, false);
}
