var journalId = argument[0];

var i = 1;
global.Journal_Text[journalId] = argument[i++];
global.Journal_Desc[journalId] = argument[i++];
global.Journal_Targets[journalId] = argument[i++];

assert_is_array(global.Journal_Targets[journalId]);
