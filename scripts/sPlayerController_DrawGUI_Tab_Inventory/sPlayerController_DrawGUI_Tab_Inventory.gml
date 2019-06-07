if(m_PlayerObject == noone)
	return;
	
var viewW = view_wport[0];
var viewH = view_hport[0];

var selectedItemId = ItemType.NONE;

with(m_PlayerObject)
{
	var slotSize = 64;
	var gapSize = 16;
	var row = other.m_SlotsInRow;
	sPawn_Inven_DrawUI((viewW - row*slotSize - (row - 1)*gapSize)*0.5, 300, slotSize, row, gapSize);
	
	selectedItemId = inv[selected];
}


draw_set_font(fontGUINormal);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(view_wport[0]/2, view_hport[0]/2 + 150, global.Item_Text[selectedItemId]);

draw_text(view_wport[0]/2, view_hport[0]/2 + 200, global.Item_Desc[selectedItemId]);

/*
with(m_PlayerObject)
{
	var slotSize = 64;
	
	NineSliceBoxStretch(
		spr_slot, (viewW - slotSize)*0.5, viewH - 100,
		slotSize, slotSize, 3);
		
	var _x = (viewW - slotSize)*0.5;
	var _y = viewH - 100;
		
	draw_sprite_stretched(
		global.Item_Sprite[inv[selected]],0,
		_x, _y, slotSize, slotSize);
				
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fontNormal);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
		
	if(inv_count[selected] > 1)
		draw_text(_x + slotSize - 5, _y + slotSize - 3, string(inv_count[selected]));
}
*/