//Averaging filter

var input_grid = argument0;
var kernel_size = argument1;
var width = ds_grid_width(input_grid);
var height = ds_grid_height(input_grid);

for (ix = 0; ix<width; ix++)
    for (iy = 0; iy<height; iy++){
    
    filtered_grid[ix,iy] = 0;
    
    for (kx = -floor(kernel_size/2); kx<floor(kernel_size/2); kx++){
    for (ky = -floor(kernel_size/2); ky<floor(kernel_size/2); ky++){
        filtered_grid[ix,iy] += ds_grid_get(input_grid,min(max(ix+kx,0),width-1),min(max(iy+ky,0),height-1))/(kernel_size*kernel_size);
    }
    }
}

return filtered_grid;

