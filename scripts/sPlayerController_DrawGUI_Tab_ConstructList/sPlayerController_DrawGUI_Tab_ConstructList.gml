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

var materialItemId = global.Construct_Material_ItemId[m_SelectedConstructId];
var materialCount = global.Construct_Material_Count[m_SelectedConstructId];
	
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
		color = sInven_ItemNumber(m_Inven_Bag, materialItemId[i]) >= materialCount[i] ? c_white : c_red;
	}
	
	draw_set_color(color);
	
	sUtil_DrawTextShadow(xx + 20, yy + _h/2, global.Item_Text[materialItemId[i]]);
	sUtil_DrawTextShadow(xx + 200, yy + _h/2, "x" + string(materialCount[i]));
}


draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fontGUINormal);

var conList = sPlayerController_GetVisibleConstructList();

var _listPage = 7;
var _listMax = array_length_1d(conList);
var _listH = _listPage*(_h + gapH) - gapH;

if(false == variable_instance_exists(id, "m_ConstructList_ListIndex"))
{
	m_ConstructList_ListIndex = 0;
}

var curSelectedListIndex = sPlayerController_FindVisibleConstructIndex(m_SelectedConstructId);
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
	var constructId = conList[i];
	
	var xx = _x;
	var yy = _y+((i - _listIndex)*(_h + gapH)); 
	
	NineSliceBoxStretch(
		m_SelectedConstructId == constructId ? spr_selected_slot : spr_slot,
		xx, yy, _w, _h, 3);
		
	var color = sPlayerController_CanConstruct_MaterialEnough(constructId) ? c_white : c_red;
	draw_set_color(color);
	
	sUtil_DrawTextShadow(xx + _w/2, yy + _h/2, global.Construct_Text[constructId]);
}

if(_listPage < _listMax)
	sUtil_DrawScroll(_x + _w + 10, _y, 10, _listH, _listIndex, _listPage, _listMax);

