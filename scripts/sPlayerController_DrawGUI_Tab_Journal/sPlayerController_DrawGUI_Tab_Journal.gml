var viewW = view_wport[0];
var viewH = view_hport[0];

var _w = 500;
var _h = 64;
var _x = 300;
var _y = 300;
var gapH = 15;

var materialX = _x + _w + 100;
var materialY = 300;
var materialW = viewW - materialX - _x;
var materialH = 64*7;
var materialGapH = 5;

NineSliceBoxStretch(
	spr_slot,
	materialX, materialY, materialW, materialH, 3);

draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_set_font(fontGUINormal);

draw_text(materialX + 20, materialY + 20, global.Journal_Desc[m_SelectedJournalId])

var journalList = sPlayerController_GetVisibleJournalList();

var _listPage = 7;
var _listMax = array_length_1d(journalList);
var _listH = _listPage*(_h + gapH) - gapH;

if(false == variable_instance_exists(id, "m_JournalList_ListIndex"))
{
	m_JournalList_ListIndex = 0;
}

var curSelectedListIndex = sPlayerController_FindVisibleJournalIndex(m_SelectedJournalId);
assert_greater_than_or_equal(curSelectedListIndex, 0);

if(curSelectedListIndex < m_JournalList_ListIndex)
{
	m_JournalList_ListIndex = curSelectedListIndex;
}

if(curSelectedListIndex >= m_JournalList_ListIndex + _listPage)
{
	m_JournalList_ListIndex = curSelectedListIndex - _listPage + 1;
}

var _listIndex = m_JournalList_ListIndex;

draw_set_valign(fa_middle);
draw_set_halign(fa_center);

for(var i = _listIndex; i < min(_listIndex + _listPage, _listMax); ++i)
{
	var journalId = journalList[i];
	
	var xx = _x;
	var yy = _y+((i - _listIndex)*(_h + gapH)); 
	
	NineSliceBoxStretch(
		m_SelectedJournalId == journalId ? spr_selected_slot : spr_slot,
		xx, yy, _w, _h, 3);
		
	var complete = false;
	
	with(oPlayerController)
	{
		complete = m_JournalComplete[journalId];
	}
	
	var color = complete ? c_gray : c_white;
	
	draw_set_color(color);
	
	var text = global.Journal_Text[journalId];
	
	if(complete)
		text += " (완료)";
	
	sUtil_DrawTextShadow(xx + _w/2, yy + _h/2, text);
}

if(_listPage < _listMax)
	sUtil_DrawScroll(_x + _w + 10, _y, 10, _listH, _listIndex, _listPage, _listMax);

