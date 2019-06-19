var s = sWorldManager_GetUnixTime();
var t = s/m_DayInSecond mod 1;
return t;

//if(t < 0.5)
//{
//	timeInDay = t*2;
//}
//else
//{
//	timeInDay = (t-0.5)*2;
//}
