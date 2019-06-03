var hg = argument0;  //ds_grid id for heat map 
var eg = argument1;  //id of elevation ds_grid (does not change it)
var el_param = argument2; //Elevation parameter, 1 = high correlation with elevation, 0 = none

// Generate perlin noise map
perlin_noise(hg,2,4,2)


//Add elevation penalties
for (ix=0; ix<ds_grid_width(hg); ix++){
    for (iy=0; iy<ds_grid_height(hg); iy++){
        var cv = ds_grid_get(hg,ix,iy);
        var height_penalty = max(0,ds_grid_get(eg,ix,iy)-0.5);
        
        ds_grid_set(hg,ix,iy, cv - min(cv,el_param*height_penalty))
    }
}
