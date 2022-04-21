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
    
    p.mask_index=sprPlayerMask
    p.y-=(20*sign(global.grav))
    a=instance_create(p.x,p.y,objYoshiDead)
    a.image_xscale=p.xScale
    
    p.runSpeed=3
    p.maxVspeed=9
    p.jumpSpeed = 8.5*sign(global.grav)
    p.djump = 1
} else if (instance_number(objBullet) < 4) {
    var f = instance_create(_x, _y, objBullet);
    
    f.direction = angle;
    f.speed = 16;
    audio_play_sound(sndShoot, 0, false);
}
