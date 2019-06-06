//=====Assign land types============
enum Tiles {
	WATER,
	LAND,
	MOUNTAIN,
}

var i = 0;
create_tile_info(i++, 125, 210, 180, "Shallows", 73, 74, 73, Tiles.WATER, true);
create_tile_info(i++, 30, 60, 150, "Sand", 54, 54, 54, Tiles.LAND, false);
create_tile_info(i++, 90, 160, 120, "Forest", 52, 52, 52, Tiles.LAND, false);
create_tile_info(i++, 50, 110, 120, "Jungle", 53, 53, 53, Tiles.LAND, false);
create_tile_info(i++, 160, 0, 160, "High mountain", 16, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 240, 0, 240, "Mountain top", 16, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 125, 170, 145, "Sea", 70, 71, 70, Tiles.WATER, true);
create_tile_info(i++, 35, 50, 120, "Tundra", 56, 56, 56, Tiles.LAND, false);
create_tile_info(i++, 140, 0, 140, "Rocky", 16, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 140, 160, 120, "Deep sea", 72, 72, 72, Tiles.WATER, true);


globalvar elevation_grid;
globalvar heat_grid;
globalvar moisture_grid;
globalvar land_grid;
globalvar wind_grid;
globalvar world_size;
globalvar sealevel;
globalvar zoom;

//For drawing
zoom = 4;

assert_equal(room_height, room_width);

//Size of the world (i.e grid size)
world_size = room_height / 16;
sealevel = 0.5


//Drawing objects
/*
instance_create(0,100+0,obj_draw_elevation)
instance_create((1+world_size)*zoom,100+0,obj_draw_heatmap)
instance_create(0,100+(1+world_size)*zoom,obj_draw_moisture)
instance_create((1+world_size)*zoom,100+(1+world_size)*zoom,obj_draw_texture)
instance_create((1+world_size)*2*zoom,100,obj_draw_windspeed)
*/

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


var _l = layer_get_id("Tiles");
var _m = layer_tilemap_get_id(_l); // Uncomment for tiles!

for (ix = 0; ix < world_size; ix++)
{
    for (iy = 0; iy < world_size; iy++)
	{
		var t = ds_grid_get(land_grid,ix,iy);
		var u = iy > 0 ? ds_grid_get(land_grid,ix,iy - 1) : t;
		var d = iy < world_size - 1 ? ds_grid_get(land_grid,ix,iy + 1) : t;
		
		var brush = 0;
		
		if(Tile_Brush[t] != Tile_Brush_Up[t]
			&& Tile_Category[t] != Tile_Category[u]
			&& Tile_Brush[t] != Tile_Brush[u])
		{
			brush = Tile_Brush_Up[t];
		}
		else if(Tile_Brush[t] != Tile_Brush_Down[t]
			&& Tile_Category[t] != Tile_Category[d]
			&& Tile_Brush[t] != Tile_Brush[d])
		{
			brush = Tile_Brush_Down[t];
		}
		else 
		{
			brush = Tile_Brush[t];
		}
		
		
		tilemap_set(_m, brush, ix, iy); // Uncomment for tiles!
			
		aStar_set_blocked(ix, iy, Tile_Block[t]);
    }
}


instance_create_layer(room_width/2, room_height/2, "Instances", oPlayer);     // Create the player!

repeat(10)
{
	sGameLogic_ProcessADayImpl();	
}
