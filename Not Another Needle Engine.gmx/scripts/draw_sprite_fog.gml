///draw_sprite_fog(sprite,subimg,x,y,xscale,yscale,rot,colour,alpha,fogcol)

var sprite = argument0;
var subimg = argument1;
var xx = argument2;
var yy = argument3;
var xscale = argument4;
var yscale = argument5;
var rot = argument6;
var color = argument7;
var alpha = argument8;
var fogcol = argument9;

d3d_set_fog(1,fogcol,0,0);
draw_sprite_ext(sprite,subimg,xx,yy,xscale,yscale,rot,color,alpha);
d3d_set_fog(0,0,0,0);
