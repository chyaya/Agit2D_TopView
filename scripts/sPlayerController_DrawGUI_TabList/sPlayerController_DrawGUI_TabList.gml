var viewW = view_wport[0];
var viewH = view_hport[0];

draw_set_alpha(1);
draw_set_colour(c_white);

var boxW = 250;
var boxH = 64;
var gapW = 10;

var _x = (viewW - Tab.MAX*boxW - (Tab.MAX - 1)*gapW)/2;
var _y = 100;

var names = ["Inventory", "Construct", "Map"];

for(var i = 0; i < Tab.MAX; ++i)
{
	var xx = _x + i*(boxW + gapW);
	var yy = _y;
	
	NineSliceBoxStretch(
		i == m_CurTab ? spr_selected_slot : spr_slot,
		xx, yy, boxW, boxH, 3);
		
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fontGUINormal);
	
	sUtil_DrawTextShadow(xx + boxW/2, yy+boxH/2, names[i]);
}