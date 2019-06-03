var input_grid = argument0;
var vx = argument1;
var vy = argument2;
var stepsize = argument3;

var width = ds_grid_width(input_grid);
var height = ds_grid_height(input_grid);

for (ix = 0; ix<width; ix++)
    for (iy = 0; iy<height; iy++){
    
        //Find previous point
        new_ix = (ix+stepsize*vx[ix,iy]);
        new_iy = (iy+stepsize*vy[ix,iy]);
        
        ix_lower = floor(new_ix);
        ix_higher = ceil(new_ix);
        iy_lower = floor(new_iy);
        iy_higher = ceil(new_iy);
        
        //Bilinear interpolation
        val_11 = ds_grid_get(input_grid,min(max(ix_lower,0),width-1),min(max(iy_lower,0),height-1));
        val_12 = ds_grid_get(input_grid,min(max(ix_lower,0),width-1),min(max(iy_higher,0),height-1));
        val_21 = ds_grid_get(input_grid,min(max(ix_higher,0),width-1),min(max(iy_lower,0),height-1));
        val_22 = ds_grid_get(input_grid,min(max(ix_higher,0),width-1),min(max(iy_higher,0),height-1));
        
        pos_x = new_ix-floor(new_ix);
        pos_y = new_iy-floor(new_iy);
        
        new_grid[ix,iy] = (1-pos_x)*(1-pos_y)*val_11 + pos_x*(1-pos_y)*val_21 + pos_y*(1-pos_x)*val_12 + pos_x*pos_y*val_22;
    }
    
return new_grid;
