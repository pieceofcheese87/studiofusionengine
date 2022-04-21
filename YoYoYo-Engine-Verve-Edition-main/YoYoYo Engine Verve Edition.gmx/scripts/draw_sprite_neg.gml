///draw_sprite_neg(sprite,subimg,x,y,xscale,yscale,rot,colour,alpha)

var sprite = argument0;
var subimg = argument1;
var xx = argument2;
var yy = argument3;
var xscale = argument4;
var yscale = argument5;
var rot = argument6;
var color = argument7;
var alpha = argument8;

for (i = 0; i < 2; i+=1)
{
    if (i = 1)
        draw_sprite_ext(sprite,subimg,xx,yy,xscale,yscale,rot,color,alpha);
    
    draw_set_blend_mode_ext(bm_inv_dest_colour, bm_zero);
    draw_sprite_fog(sprite,subimg,xx,yy,xscale,yscale,rot,color,alpha,c_white);
    draw_set_blend_mode(bm_normal);
}
