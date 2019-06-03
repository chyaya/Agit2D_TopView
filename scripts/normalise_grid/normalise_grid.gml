var input_grid = argument0;
var width = ds_grid_width(input_grid);
var height = ds_grid_height(input_grid);

minval = 1;
maxval = 0;

for (ix = 0; ix<width; ix++){
    for (iy = 0; iy<height; iy++){
        if ds_grid_get(input_grid,ix,iy)>maxval
            maxval = ds_grid_get(input_grid,ix,iy)
        else
        if ds_grid_get(input_grid,ix,iy)<minval
            minval = ds_grid_get(input_grid,ix,iy);
    }
}

for (ix = 0; ix<width; ix++)
    for (iy = 0; iy<height; iy++)
        ds_grid_set(input_grid,ix,iy,(ds_grid_get(input_grid,ix,iy)-minval)/(maxval-minval))
