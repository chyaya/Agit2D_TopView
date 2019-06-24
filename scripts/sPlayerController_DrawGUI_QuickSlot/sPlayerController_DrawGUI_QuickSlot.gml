var viewW = view_wport[0];
var viewH = view_hport[0];

with(m_PlayerObject)
{
	if(m_QuickSlotMap != noone)
	{
		var _slotW = 64;
		var _slotH = 64;
		var _slotGap = 10;

		var _startX = (viewW - ((_slotW+_slotGap)*ds_map_size(m_QuickSlotMap)-_slotGap))/2;
		var _startY = viewH - _slotH - 20;

		var i = 0;
		for (var k = ds_map_find_first(m_QuickSlotMap); !is_undefined(k); k = ds_map_find_next(m_QuickSlotMap, k))
		{
			var v = m_QuickSlotMap[? k];
	
			var _x = _startX + i*(_slotW + _slotGap);
			var _y = _startY;

			if(m_SelectedQuickSlotItemId == k)
			{
				NineSliceBoxStretch(spr_selected_trans, _x, _y, _slotW, _slotH, 3);
			}

			draw_sprite_stretched(global.Item_Sprite[k], 0, _x, _y, _slotW, _slotH);
	
			++i;
		}
	}
}