/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.Aluminium, random_range(1, 2));

// 티켓이 없을때만 드랍
if(false == oPlayerController.m_JournalVisible[Journal.GoldenTicket])
{
	sGameLogic_CreateItem(x, y, Item.GoldenTicket, 1);
}

