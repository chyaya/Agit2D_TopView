var _x = argument[0];
var _y = argument[1];
var _text = argument[2];
var _vx = argument[3];
var _vy = argument[4];
var _randomX = argument_count > 5 ? argument[5] : 20;
var _randomY = argument_count > 6 ? argument[6] : 20;

_x += irandom_range(-_randomX, _randomX);
_y += irandom_range(-_randomY, _randomY);

with(instance_create_layer(_x, _y, "Effects", oNotify))
{
	m_Text = _text;
	m_VX = _vx;
	m_VY = _vy;
}
