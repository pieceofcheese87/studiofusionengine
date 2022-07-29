///scrGetPlayerSkin(skin)
enum SKIN
{
    DEFAULT,
    DOTKID,
    VVV,
    YOSHI
}

switch(argument0)
{
    case SKIN.DEFAULT:
        sprIdle  = sprPlayerIdle;
        sprRun   = sprPlayerRun;
        sprFall  = sprPlayerFall;
        sprJump  = sprPlayerJump;
        sprSlide = sprPlayerSlide;
        sprClimb = sprPlayerClimb;
        break;
    
    case SKIN.DOTKID:
        if global.playerV {
            sprIdle  = sprDotkidOutlinedV;
            sprRun   = sprDotkidOutlinedV;
            sprFall  = sprDotkidOutlinedV;
            sprJump  = sprDotkidOutlinedV;
            sprSlide = sprDotkidOutlinedV;
            sprClimb = sprDotkidOutlinedV;
        }
        else {
            sprIdle  = sprDotkidOutlined;
            sprRun   = sprDotkidOutlined;
            sprFall  = sprDotkidOutlined;
            sprJump  = sprDotkidOutlined;
            sprSlide = sprDotkidOutlined;
            sprClimb = sprDotkidOutlined;
        }
        break;
        
    case SKIN.VVV:
        sprIdle  = sprPlayerVIdle;
        sprRun   = sprPlayerVRun;
        sprFall  = sprPlayerVFall;
        sprJump  = sprPlayerVJump; 
        sprSlide = sprPlayerVSlide;
        sprClimb = sprPlayerVClimb;
        break;
    
    case SKIN.YOSHI:
        sprIdle  = sprYoshiIdle;
        sprRun   = sprYoshiRun;
        sprFall  = sprYoshiFall;
        sprJump  = sprYoshiJump;
        sprSlide = sprYoshiFall; //yoshi doesn't slide on vines
        sprClimb = sprYoshiFall; //yoshi doesn't climb (aint got no arms)
        break;
}
