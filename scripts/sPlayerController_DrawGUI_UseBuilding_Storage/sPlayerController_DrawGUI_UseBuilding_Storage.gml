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
	
	sUtil_DrawTextShadow(boxX + boxW/2, boxY + boxH/2, m_Name);
	
	draw_sprite_ext(sprWomanIdle,
		(current_time / 1000 * sprite_get_speed(sprWomanIdle)) mod sprite_get_number(sprWomanIdle) ,
		300, view_hport[0]/2, 12, 12, 0, c_white, 1.0);

	draw_sprite_ext(sprite_index,
		(current_time / 1000 * sprite_get_speed(sprite_index)) mod sprite_get_number(sprite_index),
		1500, view_hport[0]/2, 5, 5, 0, c_white, 1.0);

	with(oPlayerController.m_PlayerObject)
	{
		var slotSize = 80;
		var gapSize = 16;
		var row = sInven_GetSlotInRow(m_Inven_Bag);
		sInven_DrawUI(m_Inven_Bag, (viewW - row*slotSize - (row - 1)*gapSize)*0.5 - 250, 300, slotSize, row, gapSize);
	
		selectedItemId = sInven_GetItemId(oPlayerController.m_CurrentInven, oPlayerController.m_CurrentInvenSlot);
	}


	sInven_DrawUI(m_Inven_Storage, 1000, 500, slotSize, 3, gapSize);
	
}



