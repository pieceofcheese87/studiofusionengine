///scrPlayerShoot

if !instance_exists(objPlayer) exit;

var p = objPlayer.id,
    scale = p.xScale,
    angle = (180 * (scale == -1)) + (90 * (abs(global.grav) > 1)),
    _x = p.x,
    _y = p.y;

if abs(global.grav) > 1 {
    _x -= (3 * global.fixBulletHeight);
} else {
    _y -= (3 * global.fixBulletHeight);
}

if (instance_number(objBullet) < 4)
{
    var f = instance_create(_x, _y, objBullet);
    
    f.direction = angle;
    f.speed = 16;
    
    audio_play_sound(sndShoot, 0, false);
}
