uniform_color = shader_get_uniform(sh_daynight, "u_Colour"); // control shader

var i = 0;

// night
var_color[i++] = 0.25;
var_color[i++] = 0.35;
var_color[i++] = 0.5;

// dawn/sunset
var_color[i++] = 0.75;
var_color[i++] = 0.4;
var_color[i++] = 0.3;

// day
var_color[i++] = 1; // red
var_color[i++] = 1; // green
var_color[i++] = 1; // blue

// day
var_color[i++] = 1; // red
var_color[i++] = 1; // green
var_color[i++] = 1; // blue

// day
var_color[i++] = 1; // red
var_color[i++] = 1; // green
var_color[i++] = 1; // blue

// dawn/sunset
var_color[i++] = 0.75;
var_color[i++] = 0.4;
var_color[i++] = 0.3;

// night
var_color[i++] = 0.25;
var_color[i++] = 0.35;
var_color[i++] = 0.5;



// ^ you can change all vars up here for better effect in your game

// current vars
cur_color[0] = 0;
cur_color[1] = 0;
cur_color[2] = 0;

