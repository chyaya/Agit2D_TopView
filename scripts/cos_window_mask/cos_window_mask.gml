var input_grid = argument0;
var pow = argument1;

var width = ds_grid_width(input_grid);
var height = ds_grid_height(input_grid);


for (ix = 0; ix<width; ix++)
    for (iy = 0; iy<height; iy++){
        //var w = power(sin(ix*pi/(width-1)) * sin(iy*pi/(height-1)),pow);
        var w = max(0,power(cos(point_distance(ix,iy,width/2,height/2)*pi/width),pow));
        ds_grid_set(input_grid,ix,iy,ds_grid_get(input_grid,ix,iy)*w)
    }
    
