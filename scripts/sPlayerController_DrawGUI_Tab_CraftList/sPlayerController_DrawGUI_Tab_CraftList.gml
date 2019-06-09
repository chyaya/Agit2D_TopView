var viewW = view_wport[0];
var viewH = view_hport[0];

var _w = 400;
var _h = 64;
var _x = (viewW - _w)/2;
var _y = 300;
var gapH = 15;


var materialX = (viewW + _w)/2 + 100;
var materialY = 300;
var materialH = 32;
var materialGapH = 5;

NineSliceBoxStretch(
	spr_slot,
	materialX, materialY, 300, 400, 3);

var materialItemId = global.Craft_Material_ItemId[m_SelectedCraftIndex];
var materialCount = global.Craft_Material_Count[m_SelectedCraftIndex];
	
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(fontGUINormal);

for(var i = 0; i < array_length_1d(materialItemId); i++)
{
	var xx = materialX;
	var yy = materialY+(i*(materialH + materialGapH)); 
	
	var color;
	
	with(m_PlayerObject)
	{
		color = sPawn_Inven_ItemNumber(materialItemId[i]) >= materialCount[i] ? c_white : c_red;
	}
	
	draw_set_color(color);
	
	sUtil_DrawTextShadow(xx + 20, yy + _h/2, global.Item_Text[materialItemId[i]]);
	sUtil_DrawTextShadow(xx + 200, yy + _h/2, "x" + string(materialCount[i]));
}


draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fontGUINormal);

for(var craftId = 1; craftId < array_length_1d(global.Craft_Text); ++craftId)
{
	var xx = _x;
	var yy = _y+((craftId-1)*(_h + gapH)); 
	
	NineSliceBoxStretch(
		m_SelectedCraftIndex == craftId ? spr_selected_slot : spr_slot,
		xx, yy, _w, _h, 3);
		
	var color = sPlayerController_CanBuild_MaterialEnough(craftId) ? c_white : c_red;
	draw_set_color(color);
	
	sUtil_DrawTextShadow(xx + _w/2, yy + _h/2, global.Craft_Text[craftId]);
}

