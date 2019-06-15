//globalvar elevation_grid;
//globalvar heat_grid;
//globalvar wind_grid;
//globalvar land_grid;
//globalvar world_size;
//globalvar land;
//globalvar zoom;

zoom = 4;

world_size = 100;

instance_create(0,100+0,obj_draw_elevation)
instance_create((1+world_size)*zoom,100+0,obj_draw_heatmap)
instance_create(0,100+(1+world_size)*zoom,obj_draw_moisture)
instance_create((1+world_size)*zoom,100+(1+world_size)*zoom,obj_draw_texture)
instance_create((1+world_size)*2*zoom,100,obj_draw_windspeed)

//====Elevation====
elevation_grid = ds_grid_create(world_size,world_size)
perlin_noise(elevation_grid,1,4,2);

// Filter it for smoothness
elevation_filtered = average_filter(elevation_grid,2);

for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(elevation_grid,ix,iy, elevation_filtered[ix,iy])
}

normalise_grid(elevation_grid)


//====Heat====

// Generate the heat map
heat_grid = ds_grid_create(world_size,world_size);
generate_heat_map(heat_grid,elevation_grid,0.4);

// Filter it for smoothness
heat_filtered = average_filter(heat_grid,4);

for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(heat_grid,ix,iy, heat_filtered[ix,iy])
}

normalise_grid(heat_grid)

//==== Wind speed =========
wx = gradient_x(heat_grid);
wy = gradient_y(heat_grid);

wind_grid = ds_grid_create(world_size,world_size);
for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(wind_grid,ix,iy, sqrt(wx[ix,iy]*wx[ix,iy]+wy[ix,iy]*wy[ix,iy]))
}


//===========OIL========

// Generate the heat map
moisture_grid = ds_grid_create(world_size,world_size);
perlin_noise(moisture_grid,1,4,2);

// Filter it for smoothness
moisture_filtered = average_filter(moisture_grid,5);

for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(moisture_grid,ix,iy, moisture_filtered[ix,iy])
}


normalise_grid(moisture_grid)

//=====Assign land types============

land[0,0] = 30; // Sand
land[0,1] = 90; // Sand
land[0,2] = 150; // Sand
land[0,3] = "Sand Dunes"

land[1,0] = 30; // Rocky
land[1,1] = 90; // Mountain
land[1,2] = 100; // Mountain
land[1,3] = "Rocky"

land[2,0] = 130; 
land[2,1] = 160; 
land[2,2] = 0; 
land[2,3] = "Oil"

land[3,0] = 140; // Rocky
land[3,1] = 0; // Mountain
land[3,2] = 80; // Mountain
land[3,3] = "Mountainous"

land[4,0] = 30; // Sand
land[4,1] = 90; // Sand
land[4,2] = 130; // Sand
land[4,3] = "Dune bottom"

land[5,0] = 30; // Sand
land[5,1] = 90; // Sand
land[5,2] = 190; // Sand
land[5,3] = "Sand Storm"


land_grid = ds_grid_create(world_size,world_size)

for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        
        if ds_grid_get(wind_grid,ix,iy)>0.08
            ds_grid_set(land_grid,ix,iy,5) //Windy, so sand storm
        else
        if ds_grid_get(moisture_grid,ix,iy)>0.8
            ds_grid_set(land_grid,ix,iy,2) //Oil
        else
        if ds_grid_get(elevation_grid,ix,iy)>0.8
            ds_grid_set(land_grid,ix,iy,3) //Mountain
        else
        if ds_grid_get(elevation_grid,ix,iy)>0.65
            ds_grid_set(land_grid,ix,iy,1) //Rocky
        else
        if ds_grid_get(elevation_grid,ix,iy)>0.3
            ds_grid_set(land_grid,ix,iy,0)
        else
            ds_grid_set(land_grid,ix,iy,4)
}



