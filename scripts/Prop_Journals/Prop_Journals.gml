gml_pragma("global", "Prop_Journals();");

enum Journal
{
	NONE,
	
	Prologue,
	GoldenTicket,
	Blueprint,
	RocketPart_Drone,
	RocketPart_Fuel,
	RocketPart_Program,
	
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
[]);

Prop_AddJournal(Journal.Blueprint, "한-칼슨 연구소",
@"이 우주공항은 아주 오래전에 버려진듯하다.

버려진 우주선에는 '한-칼슨'이라는 연구소의 로고가 보인다.

그래, 연구소에 가면 무슨 방법이 있을거야.",
@"한-칼슨 연구소로 가기",
[]);
