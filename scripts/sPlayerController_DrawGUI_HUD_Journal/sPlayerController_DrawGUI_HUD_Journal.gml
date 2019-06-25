var viewW = view_wport[0];
var viewH = view_hport[0];

draw_set_alpha(1.0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fontGUINormal);

var text_x = 50, text_y = 100;
var line_h = 40, offset = 280;
var barW = 250, barH = 24, barOutline = 0;

var journalId = sPlayerController_CurrentJournalIndex();

draw_set_colour(c_yellow);
sUtil_DrawTextShadow(text_x, text_y, global.Journal_Text[journalId]);

draw_set_colour(c_white);
sUtil_DrawTextShadow(text_x, text_y + 50, global.Journal_Condition[journalId]);


