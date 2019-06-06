var _x = argument[0];
var _y = argument[1];
var itemId = argument[2];
var itemCount = argument_count > 3 ? argument[3] : 1;
var _random_range = argument_count > 4 ? argument[4] : 20;

repeat(itemCount)
{
	with(instance_create_layer(
		_x + random_range(-_random_range, _random_range),
		_y + random_range(-_random_range, _random_range),
		"Props", oBlank))
	{
		m_ItemId = itemId;

		instance_change(oItem, true);
	}
}