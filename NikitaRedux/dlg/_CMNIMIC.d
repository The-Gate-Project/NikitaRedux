BEGIN CMNIMIC

CHAIN
IF ~CombatCounter(0)
InParty("nikita")
See("nikita")
!StateCheck("nikita",STATE_SLEEPING)
Global("NikQuestEndGame","GLOBAL",0)~ THEN CMNIMIC NikEndGame
~Hello.~
DO ~SetGlobal("NikQuestEndGame","GLOBAL",1) SetGlobal("NikitaMichaelQuestCompleted","GLOBAL",1)~
== CMNIKITJ ~Michael I am so glad to see you alive. When I heard you were captured I was ... worried. Words can not describe what I feel right now about your safe return.~
== CMNIMIC ~Thank you.~
= ~(Michael stares at Nikita without any sign of emotion. He looks into her eyes as if he's communicating something to her.)~
== CMNIKITJ ~What is it Michael? (Nikita moves closer to Michael.)~
== CMNIMIC ~(He whispers into Nikita's ear.)~
== CMNIKITJ ~(Nikita listens intently and once Michael is done, she approaches you.) I'm afraid I have to leave <CHARNAME>. Something has come up and I must attend to it immediately.~
END
 ++ ~You have to go? I need you to help me, there is much we still have to do together.~ DO ~SetGlobal("NikQuestEndGame","GLOBAL",2)~ GOTO NikEndGamea
 ++ ~I am sorry to hear you say that. I thank you for your time and the help you offered. I wish you luck Nikita.~ DO ~SetGlobal("NikQuestEndGame","GLOBAL",2)~ GOTO NikEndGameb
 ++ ~I understand Nikita. I wish you safe journey.~ DO ~SetGlobal("NikQuestEndGame","GLOBAL",2)~ GOTO NikEndGameb
 
 
CHAIN CMNIMIC NikEndGamea
~We must leave.~
== CMNIKITJ ~I am sorry I must leave you on short notice <CHARNAME>, but I must. I thank you for your assistance in helping me find Michael. Goodbye.~
DO ~ActionOverride("CmMichael",EscapeArea()) 
LeaveParty() EscapeArea()~
EXIT

CHAIN CMNIMIC NikEndGameb
~We must leave.~
== CMNIKITJ ~Thank you <CHARNAME> for allowing me to help you out. I also thank you for your assistance in helping me find Michael. I wish you good journey, goodbye.~
DO ~ActionOverride("CmMichael",EscapeArea()) 
LeaveParty() EscapeArea()~
EXIT
