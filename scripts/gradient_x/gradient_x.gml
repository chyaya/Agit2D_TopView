//Returns array of gradient of grid, boundary conditions = 0

var input_grid  = argument0;

var width = ds_grid_width(input_grid);
var height = ds_grid_height(input_grid);

for (ix=0; ix<width; ix++){
    for (iy=0; iy<height; iy++){

        if ix+1<width
            dx[ix,iy] = ds_grid_get(input_grid,ix+1,iy) - ds_grid_get(input_grid,ix,iy);
        else
            dx[ix,iy] = 0;
    }
}

return dx;
