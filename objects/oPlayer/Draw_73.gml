/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



var len = 16;
var offsetX = lengthdir_x(len, m_TargetAngle);
var offsetY = lengthdir_y(len, m_TargetAngle) - sprite_height/2;

draw_sprite_ext(sprAnglePointer, 0, x + offsetX, y + offsetY, 1, 1, m_TargetAngle, c_white, 1);


