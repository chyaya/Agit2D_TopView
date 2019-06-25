gml_pragma("global", "Prop_Journals();");

enum Journal
{
	NONE,
	
	Prologue,
	GoldenTicket,
	Cardkey,
	RocketPart,
	
	MAX
}


Prop_AddJournal(Journal.NONE, "", "", "", []);

Prop_AddJournal(Journal.Prologue, "오늘은 어디서 자야할까?",
@"날이 추워지기 전에 침낭을 만들어야겠어",
@"침낭 만들기",
[]);

Prop_AddJournal(Journal.GoldenTicket, "엘리우시스행 티켓",
@"오래된 티켓. 뒷면에

'엘리우시스에서 곧 만나자 -엄마가'

라고 씌여있다.",
@"엘리우시스 우주공항으로 가기",
[oRocketDebris]);

Prop_AddJournal(Journal.Cardkey, "한-칼슨 연구소",
@"이 우주공항은 아주 오래전에 버려진듯하다.

버려진 우주선에는 '한-칼슨'이라는 연구소의 로고가 보인다.

그래, 연구소에 가면 무슨 방법이 있을거야.",
@"한-칼슨 연구소로 가기",
[]);

Prop_AddJournal(Journal.RocketPart, "로켓 만들기",
@"연구소에서 발견한 작은 드론은 자신을 J2라고 소개했다.

이 드론은 로켓 엔지니어의 인격을 복사한 것인데

엘리우시스에 가면 다시 인간의 몸을 가질 수 있다고 한다.

든든한 동료를 얻었다. 세가지 부품을 모아서 로켓을 만들자.",
@"우주 항법 시스템
로켓 엔진,
반물질 연료",
[oPanta, oWareHouse, oDebris]);