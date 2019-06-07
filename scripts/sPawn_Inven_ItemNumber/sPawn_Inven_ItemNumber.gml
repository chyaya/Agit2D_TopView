var itemId = argument0;
var count = 0;

for (var i = 1; i <= total_slots; ++i) 
{
   if (inv[i] == itemId)
   {
		count += inv_count[i];   
   }
}

return count;
