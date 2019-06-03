
for (ix = 0; ix<world_size; ix++){
    for (iy = 0; iy<world_size; iy++){
        draw_set_color(make_color_hsv(0,0,min((ds_grid_get(wind_grid,ix,iy)*2550),255)))

        draw_rectangle(x+ix*zoom,y+iy*zoom,x+ix*zoom+zoom,y+iy*zoom+zoom,0)
    }
}

draw_set_color(c_white)
if mouse_x>x && mouse_x<x+world_size*zoom && mouse_y>y && mouse_y<y+world_size*zoom
    draw_text(0,0,string_hash_to_newline("Wind speed: "+string(ds_grid_get(wind_grid,(mouse_x-x)/zoom,(mouse_y-y)/zoom))))

