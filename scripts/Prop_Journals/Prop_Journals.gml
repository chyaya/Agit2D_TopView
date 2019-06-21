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


Prop_AddJournal(Journal.NONE, "", "", []);

Prop_AddJournal(Journal.Prologue, "파괴된 세계",
@"우리는 왜 이곳에 있는가?
",
[]);

Prop_AddJournal(Journal.GoldenTicket, "엘리우시스행 티켓",
@"오래된 티켓. 뒷면에

'엘리우시스에서 곧 만나자 -엄마가'

라고 씌여있다.
",
[]);

Prop_AddJournal(Journal.Blueprint, "한-칼슨 연구소",
@"이 우주공항은 아주 오래전에 버려진듯하다.

버려진 우주선에는 '한-칼슨'이라는 연구소의 로고가 보인다.

그래, 연구소에 가면 무슨 방법이 있을거야.
", []);
