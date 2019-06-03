var mg = argument0;  //The ds_grid to be manipulated, i.e the moisture grid
var eg = argument1;  //The elevation grid
var hg = argument2;  //The heat map grid, set as -1 if not using
var sea_level = argument3;  //Sea level. 0-1
var heat_param = argument4;  //Heat parameter - how much heat map affects outcome, 0-1

// Generate perlin noise map
perlin_noise(mg,2,4,2)

//Reduce intensity
for (ix=0; ix<ds_grid_width(hg); ix++){
    for (iy=0; iy<ds_grid_height(hg); iy++){
    
        //Lower the variation amount a little. Hardcoded, feel free to change 0.3
        ds_grid_set(mg,ix,iy,ds_grid_get(mg,ix,iy)*0.3)
        
        if ds_grid_get(eg,ix,iy)<=sea_level{
            if hg!=-1
                ds_grid_set(mg,ix,iy,(1-heat_param)+heat_param*ds_grid_get(hg,ix,iy))
            else
                ds_grid_set(mg,ix,iy,1)
        }
        
    }
}
