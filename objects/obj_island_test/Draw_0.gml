/*var zoom = 4;

for (ix = 0; ix<world_size; ix++){
    for (iy = 0; iy<world_size; iy++){
        draw_set_color(make_color_rgb(ds_grid_get(elevation_grid,ix,iy)*255,ds_grid_get(elevation_grid,ix,iy)*255,ds_grid_get(elevation_grid,ix,iy)*255))
        draw_rectangle(ix*zoom,iy*zoom,ix*zoom+zoom,iy*zoom+zoom,0)
        
        //draw_set_color(c_lime)
        //var l = zoom/(sqrt(gradx[ix,iy]*gradx[ix,iy]+grady[ix,iy]*grady[ix,iy]+0.01));
        //draw_line(ix*zoom+(zoom/2),iy*zoom+(zoom/2),(zoom/2)+ix*zoom+gradx[ix,iy]*l,(zoom/2)+iy*zoom+grady[ix,iy]*l)
    }
}

var ox = 120*zoom;
var oy = 0;

for (ix = 0; ix<world_size; ix++){
    for (iy = 0; iy<world_size; iy++){
        draw_set_color(make_color_rgb(ds_grid_get(heat_grid,ix,iy)*255,0,(1-ds_grid_get(heat_grid,ix,iy))*255))
        //draw_set_color(make_color_rgb(propagated_heat_array[ix,iy]*255,0,(1-propagated_heat_array[ix,iy])*255))
        
        
        draw_rectangle(ox+ix*zoom,oy+iy*zoom,ox+ix*zoom+zoom,oy+iy*zoom+zoom,0)
    }
}


var ox = 0;
var oy = 120*zoom;

for (ix = 0; ix<world_size; ix++){
    for (iy = 0; iy<world_size; iy++){
        draw_set_color(make_color_rgb(0,0,(ds_grid_get(moisture_grid,ix,iy))*255))
        //draw_set_color(make_color_rgb(propagated_heat_array[ix,iy]*255,0,(1-propagated_heat_array[ix,iy])*255))
        
        
        draw_rectangle(ox+ix*zoom,oy+iy*zoom,ox+ix*zoom+zoom,oy+iy*zoom+zoom,0)
    }
}



var ox = 120*zoom;
var oy = 120*zoom;


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
    
        shading = 1/(1+sqrt(hx[ix,iy]*hx[ix,iy]+hy[ix,iy]*hy[ix,iy]))
    
        draw_set_color(make_color_hsv(land[ds_grid_get(land_grid,ix,iy),0],land[ds_grid_get(land_grid,ix,iy),1],shading*land[ds_grid_get(land_grid,ix,iy),2]))
        draw_rectangle(ox+ix*zoom,oy+iy*zoom,ox+ix*zoom+zoom,oy+iy*zoom+zoom,0)
    }
}

/* */
/*  */
