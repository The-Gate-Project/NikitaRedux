BEGIN CMNIKS1

CHAIN
IF ~InParty("nikita")
See("nikita")
!StateCheck("nikita",STATE_SLEEPING)
Global("NikMikeQuest","GLOBAL",0)~
THEN CMNIKS1 NikitaMessenger
~"Josephine".~
=
~(You hear the two of them whispering, you can't make out what they are saying.)~
DO ~SetGlobal("NikMikeQuest","GLOBAL",1) EscapeArea()~
== CMNIKITJ ~I need your help <CHARNAME>, my friend Michael has been captured.~
= ~We must go to the sewers underneath the Slums District, he is being transported secretly. We must do this in the next day or so while they are still in the area.~
DO ~SetGlobalTimer("NikitaComplainTime","GLOBAL",ONE_DAY)~
END

// ++ ~I would be glad to help you Nikita.~ GOTO HelpNikM
// ++ ~No I can't. We don't have time for this.~ GOTO NoHelpNikM

// CHAIN
// IF ~~ THEN CMNIKITJ HelpNikM
// ~Thank you for doing this for me <CHARNAME>. We must go to the sewers underneath the Slums District, he is being transported secretly. Our time is short.~
// DO ~SetGlobalTimer("NikitaComplainTime","GLOBAL",ONE_DAY)~
// EXIT //

// CHAIN
// IF ~~ THEN BCMNIKIT NoHelpNikM
// ~I am sorry to hear you say that. I must leave at once to save Michael.~
// DO ~LeaveParty()
// EscapeArea()~
// EXIT //
