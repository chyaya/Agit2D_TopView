draw_set_color(c_black);
	
surface_set_target(m_SurfCircle);
draw_rectangle(0, 0, m_Width, m_Height, false);
gpu_set_blendmode(bm_subtract);


var offset = 0;

with(oPlayerController.m_PlayerObject)
{
	offset = sprite_height/2;	
}

var playerScreenPos = sUtil_Camera_WorldToScreen(oPlayerController.m_PlayerObjectX, oPlayerController.m_PlayerObjectY - offset);

var circleX = playerScreenPos[0];
var circleY = playerScreenPos[1];

draw_set_circle_precision(64);
draw_circle(circleX, circleY, m_CurrentCircleRaduis, false);


gpu_set_blendmode(bm_normal);
	
surface_reset_target();
	
draw_surface(m_SurfCircle, 0, 0);
