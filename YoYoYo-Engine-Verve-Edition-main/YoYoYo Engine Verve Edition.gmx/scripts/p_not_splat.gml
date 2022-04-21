/// p_not_splat()
// Prevent the player from dying inside a wall
// Script written by chalenged

var unstuckness = 15;

with (objPlayer) {
    if (place_meeting(x,y,objBlock)) { // only unstuck if in a block
        var unstuck = false;
        var i;
        for (i = 0; i < unstuckness; i++) {
            if (!place_meeting(x+i,y,objBlock)) {
                unstuck = true;
                break;
            }
        }
        if (unstuck) {
            x+=i;
            return 0;
        }
        
        for (i = 0; i < unstuckness; i++) {
            if (!place_meeting(x,y+i,objBlock)) {
                unstuck = true;
                break;
            }
        }
        if (unstuck) {
            y+=i;
            return 0;
        }
        
        for (i = 0; i < unstuckness; i++) {
            if (!place_meeting(x-i,y,objBlock)) {
                unstuck = true;
                break;
            }
        }
        if (unstuck) {
            x-=i;
            return 0;
        }
        
        for (i = 0; i < unstuckness; i++) {
            if (!place_meeting(x,y-i,objBlock)) {
                unstuck = true;
                break;
            }
        }
        if (unstuck) {
            y-=i;
            return 0;
        }
    }
}
