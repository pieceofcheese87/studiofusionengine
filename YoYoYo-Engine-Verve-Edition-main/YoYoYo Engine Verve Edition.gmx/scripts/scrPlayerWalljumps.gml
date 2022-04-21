///scrPlayerWalljumps()
//TODO: refactor this

//vine checks
var notOnBlock = (place_free(x,y+(global.grav)));
var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);
var onVineL2 = (place_meeting(x-1,y,objRedVineL) && notOnBlock);
var onVineR2 = (place_meeting(x+1,y,objRedVineR) && notOnBlock);
var onVineL3 = (place_meeting(x-1,y,objIceVineL) && notOnBlock);
var onVineR3 = (place_meeting(x+1,y,objIceVineR) && notOnBlock);
var onVineL4 = (place_meeting(x-1,y,objBlueVineL) && notOnBlock);
var onVineR4 = (place_meeting(x+1,y,objBlueVineR) && notOnBlock);
var onVineL5 = (place_meeting(x-1,y,objYellowVineL) && notOnBlock);
var onVineR5 = (place_meeting(x+1,y,objYellowVineR) && notOnBlock);
var onVineL6 = (place_meeting(x-1,y,objPurpleVineL) && notOnBlock);
var onVineR6 = (place_meeting(x+1,y,objPurpleVineR) && notOnBlock);
var onVineR7a = (place_meeting(x+1,y,objWhiteVineR) && notOnBlock && global.vine7=0);
var onVineL7a = (place_meeting(x-1,y,objWhiteVineL) && notOnBlock && global.vine7=0);
var onVineR7b = (place_meeting(x+1,y,objBlackVineR) && notOnBlock && global.vine7=1);
var onVineL7b = (place_meeting(x-1,y,objBlackVineL) && notOnBlock && global.vine7=1);
var onVineL8 = (place_meeting(x-1,y,objFireVineL) && notOnBlock);
var onVineR8 = (place_meeting(x+1,y,objFireVineR) && notOnBlock);

//walljumps

count += 1

if (onVineL || onVineR)
{
    if (onVineR)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
    //pressed away from the vine
    if (onVineL && scrButtonCheckPressed(global.rightButton)) || (onVineR && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
    }
}

//Past here is the custom stuff from jungle adventure

if (onVineL3 || onVineR3)
{
    if (onVineR3)
        xScale = -1;
    else
        xScale = 1;
    
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
   //pressed away from the vine
    if (onVineL3 && scrButtonCheckPressed(global.rightButton)) || (onVineR3 && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR3)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR3)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
    }
}
if (onVineL2 || onVineR2)
{
    if (onVineR2)
        xScale = -1;
    else
        xScale = 1;
    
        
    vspeed=-2*global.grav
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
   //pressed away from the vine
    if (onVineL2 && scrButtonCheckPressed(global.rightButton)) || (onVineR2 && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR2)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR2)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
    }
}
if (onVineL4 || onVineR4)
{
    if (onVineR4)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
    //pressed away from the vine
    if (onVineL4 && scrButtonCheckPressed(global.rightButton)) || (onVineR4 && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR4)
                hspeed = -15;
            else
                hspeed = 15;
            if global.grav=1{
            scrFlipGrav(false);
            vspeed = 9;
            }else{
            scrFlipGrav(false);
            vspeed = -9;
            }
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR4)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
    }
}
if (onVineL5 || onVineR5)
{
gravity=0;
    if (onVineR5)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 0;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
   //pressed away from the vine
    if (onVineL5 && scrButtonCheckPressed(global.rightButton)) || (onVineR5 && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR5)
                hspeed = -15;
            else
                hspeed = 15;
            vspeed = -9*global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR5)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
        if vinegrav=0{
        lowGravVine = false
        }
        else{
        lowGravVine = true
        }
    }
}
if (onVineL6 || onVineR6)
{
    if (onVineR6)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
   //pressed away from the vine
    if (onVineL6 && scrButtonCheckPressed(global.rightButton)) || (onVineR6 && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR6)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR6)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
        lowGravVine = true
        vinegrav=1;
    }
}

//Messy code
if vinegrav=1 && count mod 10 = 1 {
    part_particles_create(global.psys,x,y,global.vinePart,2); 
}
if (place_meeting(x,y+(global.grav),objBlock) || onPlatform) {
    if vinegrav=1 {
        lowGravVine = false
        vinegrav=0;
    }
    if vinespeed=1 {
        maxSpeed=3; vinespeed=0;
    }
}

if (onVineL7a || onVineR7a)
{
    if (onVineR7a)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
   //pressed away from the vine
    if (onVineL7a && scrButtonCheckPressed(global.rightButton)) || (onVineR7a && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR7a)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
            global.vine7=1
        }
        else    //moving off vine
        {
            if (onVineR7a)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
    }
}
if (onVineL7b || onVineR7b)
{
    if (onVineR7b)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
    //pressed away from the vine
    if (onVineL7b && scrButtonCheckPressed(global.rightButton)) || (onVineR7b && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR7b)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
            global.vine7=0
        }
        else    //moving off vine
        {
            if (onVineR7b)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
    }
}

if (onVineL8 || onVineR8)
{
    if (onVineR8)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    sprite_index = sprPlayerSlide;
    image_speed = 1/2;
    
    //pressed away from the vine
    if (onVineL8 && scrButtonCheckPressed(global.rightButton)) || (onVineR8 && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR8)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR8)
                hspeed = -3;
            else
                hspeed = 3;
            
            sprite_index = sprPlayerFall;
        }
        maxSpeed=6
        vinespeed=1;
    }
}
if vinespeed=1 && count mod 3 = 1{
instance_create(x,y,objFirePart);
}
