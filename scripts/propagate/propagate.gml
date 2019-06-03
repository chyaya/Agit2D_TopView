//argument0 = Grid to propagate
//argument1 = Grid for gradient to follow (heat map is a good choice)
//argument 2 = number of iterations

repeat(argument2){
    //Calculate gradients
    gradx = gradient_x(argument1);
    grady = gradient_y(argument1);

    //Last argument is step size, smaller is more accurate
    propagated_array = propagate_grid(argument0,gradx,grady,2);  
    
    for (ix = 0; ix<world_size; ix++)
        for (iy = 0; iy<world_size; iy++){
            ds_grid_set(argument0,ix,iy, propagated_array[ix,iy])
    }
}
