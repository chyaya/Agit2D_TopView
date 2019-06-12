var viewW = view_wport[0];
var viewH = view_hport[0];

with(m_InteractionObject)
{

	draw_set_alpha(0.5);
	draw_set_colour(c_black);

	draw_rectangle(0, 0, viewW, viewH, false);

	draw_set_alpha(1);
	draw_set_colour(c_white);

	var boxW = 250;
	var boxH = 64;
	var boxX = (viewW - boxW)/2;
	var boxY = 100;

	NineSliceBoxStretch(spr_slot, boxX, boxY, boxW, boxH, 3);
		
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fontGUINormal);
	
	sUtil_DrawTextShadow(boxX + boxW/2, boxY + boxH/2, global.Construct_Text[m_ConstructId]);


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
	
	var craftList = sBuilding_GetVisibleCraftList(other.m_CraftVisible);

	var materialItemId = global.Craft_Material_ItemId[m_SelectedCraftId];
	var materialCount = global.Craft_Material_Count[m_SelectedCraftId];
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_set_font(fontGUINormal);

	for(var i = 0; i < array_length_1d(materialItemId); i++)
	{
		var xx = materialX;
		var yy = materialY+(i*(materialH + materialGapH)); 
	
		var color;
	
		with(other.m_PlayerObject)
		{
			color = sInven_ItemNumber(m_Inven_Bag, materialItemId[i]) >= materialCount[i] ? c_white : c_red;
		}
	
		draw_set_color(color);
	
		sUtil_DrawTextShadow(xx + 20, yy + _h/2, global.Item_Text[materialItemId[i]]);
		sUtil_DrawTextShadow(xx + 200, yy + _h/2, "x" + string(materialCount[i]));
	}

	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fontGUINormal);

	var _listPage = 7;
	var _listMax = array_length_1d(craftList);
	var _listH = _listPage*(_h + gapH) - gapH;

	if(false == variable_instance_exists(id, "m_ConstructList_ListIndex"))
	{
		m_ConstructList_ListIndex = 0;
	}
	
	var curSelectedListIndex = sBuilding_FindVisibleCraftIndex(other.m_CraftVisible, m_SelectedCraftId);
	assert_greater_than_or_equal(curSelectedListIndex, 0);

	if(curSelectedListIndex < m_ConstructList_ListIndex)
	{
		m_ConstructList_ListIndex = curSelectedListIndex;
	}

	if(curSelectedListIndex >= m_ConstructList_ListIndex + _listPage)
	{
		m_ConstructList_ListIndex = curSelectedListIndex - _listPage + 1;
	}

	var _listIndex = m_ConstructList_ListIndex;

	for(var i = _listIndex; i < min(_listIndex + _listPage, _listMax); ++i)
	{
		var craftId = craftList[i];
		
		var xx = _x;
		var yy = _y+((i - _listIndex)*(_h + gapH)); 
	
		NineSliceBoxStretch(
			m_SelectedCraftId == craftId ? spr_selected_slot : spr_slot,
			xx, yy, _w, _h, 3);
		
		var color;
		
		with(other)
		{
			color = sPlayerController_CanCraft_MaterialEnough(craftId, 1) ? c_white : c_red;
		}
		
		draw_set_color(color);
		
		var text = global.Item_Text[global.Craft_Result[craftId]];
	
		sUtil_DrawTextShadow(xx + _w/2, yy + _h/2, text);
	}
	
	if(_listPage < _listMax)
		sUtil_DrawScroll(_x + _w + 10, _y, 10, _listH, _listIndex, _listPage, _listMax);
}



