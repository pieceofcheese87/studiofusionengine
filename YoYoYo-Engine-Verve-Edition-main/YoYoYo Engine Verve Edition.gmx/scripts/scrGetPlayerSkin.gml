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
        break;
    
    case SKIN.DOTKID:
        if global.playerV {
            sprIdle  = sprDotkidOutlinedV;
            sprRun   = sprDotkidOutlinedV;
            sprFall  = sprDotkidOutlinedV;
            sprJump  = sprDotkidOutlinedV;
            sprSlide = sprDotkidOutlinedV;
        }
        else {
            sprIdle  = sprDotkidOutlined;
            sprRun   = sprDotkidOutlined;
            sprFall  = sprDotkidOutlined;
            sprJump  = sprDotkidOutlined;
            sprSlide = sprDotkidOutlined;
        }
        break;
        
    case SKIN.VVV:
        sprIdle  = sprPlayerVIdle;
        sprRun   = sprPlayerVRun;
        sprFall  = sprPlayerVFall;
        sprJump  = sprPlayerVFall; //V kid doesn't jump or slide on vines
        sprSlide = sprPlayerVFall;
        break;
    
    case SKIN.YOSHI:
        sprIdle  = sprYoshiIdle;
        sprRun   = sprYoshiRun;
        sprFall  = sprYoshiFall;
        sprJump  = sprYoshiJump;
        sprSlide = sprYoshiFall; //yoshi doesn't slide on vines
        break;
}
