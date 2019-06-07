var itemId = argument0;
var itemCount = argument1;

if(itemId == 0)
	return itemCount;

for(var i = total_slots; i > 0; --i)
{
	if(inv[i] != itemId)
		continue;
		
	if(inv_count[i] <= itemCount)
	{
		itemCount -= inv_count[i];
		inv_count[i] = 0;
		inv[i] = 0;
	}
	else
	{
		inv_count[i] -= itemCount;	
		itemCount = 0;
		break;
	}
	
	assert_greater_than_or_equal(inv_count[i], 0);
}

return itemCount;