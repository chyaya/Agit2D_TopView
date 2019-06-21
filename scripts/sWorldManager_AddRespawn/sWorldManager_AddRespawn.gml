var obj = argument0;
var dayCount = argument1;

var json = BuildSaveDataFromInstance(obj);
var item = [m_CurrentDay + dayCount, json];
ds_list_add(m_RespawnQueue, item);