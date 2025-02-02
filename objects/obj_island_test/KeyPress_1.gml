ds_grid_destroy(elevation_grid);
ds_grid_destroy(heat_grid);
ds_grid_destroy(moisture_grid);
ds_grid_destroy(land_grid);
//========Elevation=========
elevation_grid = ds_grid_create(world_size,world_size)
perlin_noise(elevation_grid,1,4,1.75);  //Fill grid with perlin noise. 1-4 octaves, 1.75 persistance

cos_window_mask(elevation_grid,0.7);  //Use a circular mask, to make an island


// Filter it for smoothness
elevation_filtered = average_filter(elevation_grid,2);  //Filter it to mnake it smoother

for (ix = 0; ix<world_size; ix++) //Update the ds_grid
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(elevation_grid,ix,iy, elevation_filtered[ix,iy])
}

normalise_grid(elevation_grid)  //Normalise the grid so values are from 0-1


//========Heat==========

// Generate the heat map
heat_grid = ds_grid_create(world_size,world_size);
generate_heat_map(heat_grid,elevation_grid,0.55);

// Filter it for smoothness
heat_filtered = average_filter(heat_grid,4);

for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(heat_grid,ix,iy, heat_filtered[ix,iy])
}

normalise_grid(heat_grid)

//==== Wind speed =========
wx = gradient_x(heat_grid);  //Use the gradient (i.e change) in the heat
wy = gradient_y(heat_grid);

wind_grid = ds_grid_create(world_size,world_size);
for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(wind_grid,ix,iy, sqrt(wx[ix,iy]*wx[ix,iy]+wy[ix,iy]*wy[ix,iy])) //Magnitude of change
}


//====Moisture====

// Generate the moisture map
moisture_grid = ds_grid_create(world_size,world_size);
generate_moisture_map(moisture_grid,elevation_grid,heat_grid,sealevel,0.85);

propagate(moisture_grid,heat_grid,5)  //Propagate it based upon the heat map

// Filter it for smoothness
moisture_filtered = average_filter(moisture_grid,2);

for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++){
        ds_grid_set(moisture_grid,ix,iy, moisture_filtered[ix,iy])
}

//=====Assign land types============
land[0,0] = 125; // Sea   HSV
land[0,1] = 210; // Sea
land[0,2] = 180; // Sea
land[0,3] = "Shallows"

land[1,0] = 30; // Sand
land[1,1] = 60; // Sand
land[1,2] = 150; // Sand
land[1,3] = "Sand"

land[2,0] = 90; // Forest
land[2,1] = 160; // Forest
land[2,2] = 120; // Forest
land[2,3] = "Forest"

land[3,0] = 50; // Jungle
land[3,1] = 110; // Jungle
land[3,2] = 120; // Jungle
land[3,3] = "Jungle"

land[4,0] = 160; // Mountain
land[4,1] = 0; // Mountain
land[4,2] = 160; // Mountain
land[4,3] = "High mountain"

land[5,0] = 240; // Mountain tops
land[5,1] = 0; // Mountain tops 
land[5,2] = 240; // Mountain tops
land[5,3] = "Mountain top"

land[6,0] = 125; //  Sea   RGB
land[6,1] = 170; //  Sea
land[6,2] = 145; //  Sea
land[6,3] = "Sea"

land[7,0] = 35; // Tundra   RGB
land[7,1] = 50; // Tundra
land[7,2] = 120; // Tundra
land[7,3] = "Tundra"

land[8,0] = 140; // Mid Mountain
land[8,1] = 0; // Mountain
land[8,2] = 140; // Mountain
land[8,3] = "Rocky"

land[9,0] = 140; // deep Sea   RGB
land[9,1] = 160; // deep Sea
land[9,2] = 120; // deep Sea
land[9,3] = "Deep sea"


land_grid = ds_grid_create(world_size,world_size)

for (ix = 0; ix<world_size; ix++)  //This is where creativity is needed. Decide on land type based on attriburtes
    for (iy = 0; iy<world_size; iy++){
        
        if ds_grid_get(elevation_grid,ix,iy) < sealevel/5
            ds_grid_set(land_grid,ix,iy,9) //deep sea
        else
        if ds_grid_get(elevation_grid,ix,iy) < sealevel/1.8
            ds_grid_set(land_grid,ix,iy,6) //deep sea
        else
        if ds_grid_get(elevation_grid,ix,iy) <= sealevel
            ds_grid_set(land_grid,ix,iy,0) //sea
        else
        if ds_grid_get(elevation_grid,ix,iy) <= sealevel+1*(1-sealevel)/5
            ds_grid_set(land_grid,ix,iy,1) //sand
        else
        if ds_grid_get(elevation_grid,ix,iy) <= sealevel+2*(1-sealevel)/3{
            if ds_grid_get(heat_grid,ix,iy)<0.35  //Warm enough for trees?
                ds_grid_set(land_grid,ix,iy,7)
            else
            {
                if ds_grid_get(moisture_grid,ix,iy)>0.185 && ds_grid_get(heat_grid,ix,iy)>0.45
                    ds_grid_set(land_grid,ix,iy,3) // Jungle
                else
                    ds_grid_set(land_grid,ix,iy,2) // Forest
            }
        }
        else
        if ds_grid_get(elevation_grid,ix,iy) <= sealevel+5*(1-sealevel)/7
            ds_grid_set(land_grid,ix,iy,8) //Mountain
        else
        if ds_grid_get(elevation_grid,ix,iy) <= sealevel+6*(1-sealevel)/7
            ds_grid_set(land_grid,ix,iy,4) //High Mountain
        else
            ds_grid_set(land_grid,ix,iy,5) //Mountain top
}


