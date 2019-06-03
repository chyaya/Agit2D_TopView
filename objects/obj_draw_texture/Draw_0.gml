
//Shading
smoother_elevation = average_filter(elevation_grid,4);

var s_grid = ds_grid_create(world_size,world_size)
for (ix = 0; ix<world_size; ix++)
    for (iy = 0; iy<world_size; iy++)
        ds_grid_set(s_grid,ix,iy,smoother_elevation[ix,iy])
    

hx = gradient_x(s_grid);
hy = gradient_y(s_grid);
ds_grid_destroy(s_grid)
//

for (ix = 0; ix<world_size; ix++){
    for (iy = 0; iy<world_size; iy++){
    
        shading = 0.4/(0.4+sqrt(hx[ix,iy]*hx[ix,iy]+hy[ix,iy]*hy[ix,iy]))
    
        draw_set_color(make_color_hsv(land[ds_grid_get(land_grid,ix,iy),0],land[ds_grid_get(land_grid,ix,iy),1],shading*land[ds_grid_get(land_grid,ix,iy),2]))
        draw_rectangle(x+ix*zoom,y+iy*zoom,x+ix*zoom+zoom,y+iy*zoom+zoom,0)
    }
}

draw_set_color(c_white)
if mouse_x>x && mouse_x<x+world_size*zoom && mouse_y>y && mouse_y<y+world_size*zoom
    draw_text(0,0,string_hash_to_newline("Land type: "+string(land[ds_grid_get(land_grid,(mouse_x-x)/zoom,(mouse_y-y)/zoom),3])+"#Elevation: "+string(ds_grid_get(elevation_grid,(mouse_x-x)/zoom,(mouse_y-y)/zoom)) + "#Temperature: "+string(ds_grid_get(heat_grid,(mouse_x-x)/zoom,(mouse_y-y)/zoom))+ "#Moisture: "+string(ds_grid_get(moisture_grid,(mouse_x-x)/zoom,(mouse_y-y)/zoom))))

