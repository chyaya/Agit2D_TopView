var constructId = argument[0];

var i = 1;
global.Construct_Sprite[constructId] = argument[i++];
global.Construct_Text[constructId] = argument[i++];
global.Construct_Result[constructId] = argument[i++];
global.Construct_Material_ItemId[constructId] = argument[i++];
global.Construct_Material_Count[constructId] = argument[i++];
global.Construct_Require_Building[constructId] = argument[i++];

assert_is_array(global.Construct_Material_ItemId[constructId]);
assert_is_array(global.Construct_Material_Count[constructId]);
assert_equal(
	array_length_1d(global.Construct_Material_ItemId),
	array_length_1d(global.Construct_Material_Count));