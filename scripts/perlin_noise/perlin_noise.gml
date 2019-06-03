
var grid = argument0;  //ds_grid id to manipulate
var octave_start = argument1;  //Which octave to start (for default use 1)
var octave_end = argument2;  //Highest octave (usually 3-4 is ideal), the higher, the smoother the noise
var persistance = argument3;  //The higher, the smoother the outcome. Around 2 is usually nice
var amplitude = 1;

var width = ds_grid_width(grid);
var height = ds_grid_height(grid);

//======Init noise=======
for (ix = 0; ix<width; ix++){
    for (iy = 0; iy<height; iy++){
        noise[ix,iy] = random(1);
        p_noise[ix,iy] = 0;
    }
}

//======Perlin Noise=======
for (oct = octave_start; oct<=octave_end; oct++){
    sample_period = power(oct,2);
    sample_freq = 1/sample_period;
    
     for (i = 0; i < width; i++)
     {
      //Calculate the horizontal sampling indices
      var sample_i0 = floor(i / sample_period) * sample_period;
      var sample_i1 = floor(sample_i0 + sample_period) % width; //Wrap around
      var horizontal_blend = (i - sample_i0) * sample_freq;
 
      for (j = 0; j < height; j++)
      {
         //calculate the vertical sampling indices
         var sample_j0 = floor(j / sample_period) * sample_period;
         var sample_j1 = floor(sample_j0 + sample_period) % height; //Wrap around
         var vertical_blend = (j - sample_j0) * sample_freq;
 
         //blend the top two corners
         var top = (1-horizontal_blend)*noise[sample_i0,sample_j0] + (horizontal_blend)*noise[sample_i1,sample_j0];
 
         //blend the bottom two corners
         var bottom = (1-horizontal_blend)*noise[sample_i0,sample_j1] + (horizontal_blend)*noise[sample_i1,sample_j1];
 
         //final blend
         p_noise[i,j] = p_noise[i,j] + amplitude*((1-vertical_blend)*top + (vertical_blend)*bottom);
         
      }
   }
   amplitude*=persistance;
}

//======Normalise=======
var maxval = 0;
for (ix = 0; ix<width; ix++){
    for (iy = 0; iy<height; iy++){
        if p_noise[ix,iy]>maxval
            maxval = p_noise[ix,iy];
    }
}

//Output
for (ix = 0; ix<width; ix++){
    for (iy = 0; iy<height; iy++){
        ds_grid_set(grid,ix,iy,p_noise[ix,iy]/maxval);
    }
}

