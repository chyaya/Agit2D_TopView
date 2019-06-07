#macro BUTTON_SIZE		48
#macro TEXT_GAP			15
#macro TEXT_OFFSET_Y	(BUTTON_SIZE/2)

draw_set_font(fontGUINormal);
draw_set_valign(fa_center);
draw_set_color(c_white);

var pad_x = view_wport[0] - 350, pad_y = view_hport[0] - 200;
draw_sprite_stretched(sprGUI_GamepadY, -1, pad_x + 50, pad_y, BUTTON_SIZE, BUTTON_SIZE);
draw_set_halign(fa_right);
sUtil_DrawTextShadow(pad_x + 50 - TEXT_GAP, pad_y + TEXT_OFFSET_Y, m_ActionName[m_Actions[ACTION_Y]]);

draw_sprite_stretched(sprGUI_GamepadX, -1, pad_x, pad_y + 50, BUTTON_SIZE, BUTTON_SIZE);
draw_set_halign(fa_right);
sUtil_DrawTextShadow(pad_x - TEXT_GAP, pad_y + 50 + TEXT_OFFSET_Y, m_ActionName[m_Actions[ACTION_X]]);

draw_sprite_stretched(sprGUI_GamepadA, -1, pad_x + 50, pad_y + 100, BUTTON_SIZE, BUTTON_SIZE);
draw_set_halign(fa_left);
sUtil_DrawTextShadow(pad_x + 50 + BUTTON_SIZE + TEXT_GAP, pad_y + 100 + TEXT_OFFSET_Y, m_ActionName[m_Actions[ACTION_A]]);

draw_sprite_stretched(sprGUI_GamepadB, -1, pad_x + 100, pad_y + 50, BUTTON_SIZE, BUTTON_SIZE);
draw_set_halign(fa_left);
sUtil_DrawTextShadow(pad_x + 100 + BUTTON_SIZE + TEXT_GAP, pad_y + 50 + TEXT_OFFSET_Y, m_ActionName[m_Actions[ACTION_B]]);

//pad_x = 300;
//pad_y = view_hport[0] - 400;
//draw_sprite_stretched(spr_gui_dpad_up, -1, pad_x + 50, pad_y, 48, 48);
//draw_sprite_stretched(spr_gui_dpad_left, -1, pad_x, pad_y + 50, 48, 48);
//draw_sprite_stretched(spr_gui_dpad_down, -1, pad_x + 50, pad_y + 100, 48, 48);
//draw_sprite_stretched(spr_gui_dpad_right, -1, pad_x + 100, pad_y + 50, 48, 48);