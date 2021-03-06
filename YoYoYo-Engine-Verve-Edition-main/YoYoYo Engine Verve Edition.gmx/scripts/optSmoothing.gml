///optSmoothing(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "step":
        //Called every frame the option is selected
        if (scrButtonCheckPressed(KEY.MENU_ACCEPT) || scrButtonCheckPressed(KEY.MENU_LEFT) || scrButtonCheckPressed(KEY.MENU_RIGHT))
        {
            //Switch option
            global.smoothingMode = !global.smoothingMode;
            audio_play_sound(global.menuSound, 0, false);
        }
        break;
        
    case "name":
        return "Smoothing Mode";
        
    case "value":
        return scrTernary(global.smoothingMode, "On", "Off");
}
