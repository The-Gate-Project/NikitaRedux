BEGIN ~CMNIK25~

IF ~Global("CM_NikitaSummoned","GLOBAL",1)~ THEN BEGIN 0
  SAY @1500 /* Eh?  <CHARNAME> what is this? What's going on? */ 
  IF ~~ THEN REPLY @1501 /* It's good to see you again, Nikita. */ DO ~SetGlobal("CM_NikitaSummoned","GLOBAL",2)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @1502 /* It is nice to see you again as well my friend. */ 
  IF ~~ THEN REPLY @1503 /* It's good to have you back! I need your help once again Nikita. */ GOTO 3
  IF ~~ THEN REPLY @1504 /* You don't seem very surprised to be here. */ GOTO 4
END

IF ~~ THEN BEGIN 3 
  SAY @1505 /* It is good to be back! I will endeavor to serve and help you whenever I can. Shall we go? */ 
  IF ~~ THEN REPLY @1506 /* Sounds good. Let's go. */ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @1507 /* Alright...wait here awhile and I'll deal with you later. After you tone down your excitement. */ GOTO 5
END

IF ~~ THEN BEGIN 4 
  SAY @1508 /* Why would I be surprised?  If you need a good thief in your party, well, I'm her. */
  IF ~~ THEN REPLY @1509 /* Let's go, Nikita. */ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @1510 /* Just wait here and I'll deal with you later. */ GOTO 5
END

IF ~~ THEN BEGIN 5 
  SAY @1511 /* Very well. I shall wait until you wish me to rejoin again. */ 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1688.1433])
Face(0)~ EXIT
END

IF ~Global("CM_NikitaSummoned","GLOBAL",2)~ THEN BEGIN 6
  SAY @1512 /* Yes? Do you wish me to join up? */ 
  IF ~~ THEN REPLY @1513 /* Yes let's go. */ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @1514 /* Wait here for awhile longer. */ GOTO 7
END

IF ~~ THEN BEGIN 7 
  SAY @1515 /* Good, good! I will be here then. */ 
  IF ~~ THEN EXIT
END


BEGIN ~BCMNIK25~

BEGIN ~CMNIK25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @1516 /* Yes? Oh you wish for us to part company? I would like to stay with you. */
  IF ~~ THEN REPLY @1517 /* No, stay with the party for now. */ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @1518 /* Just wait here awhile, Nikita. */ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1688.1433])
Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @1519 /* I'll send you back to the pocket plane...wait there. */ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1688.1433],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @1518 /* Just wait here awhile, Nikita. */ DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @1520 /* Very well. */ 
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 2 
  SAY @1521 /* Yes, what did you wish? Shall I return with you? */
  IF ~~ THEN REPLY @1522 /* Let's go. */ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @1523 /* Keep waiting here awhile. */ GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY @1524 /* Very well, here I shall wait. */ 
  IF ~~ THEN EXIT
END

BEGIN ~CMNIK25J~

EXTEND_BOTTOM FATESP 6 #4
+ ~!Dead("cmnikita") !InMyArea("cmnikita") Global("CM_NikitaSummoned","GLOBAL",0)~ + @1525 /* Bring me Nikita, the good hearted assassin. */
DO ~CreateVisualEffect("SPPORTAL",[1997.1228])
Wait(2) 
CreateCreature("CMNIKI25",[1997.1228],0)
SetGlobal("CM_NikitaSummoned","GLOBAL",1)~ GOTO 8
END


BEGIN ~CMNIK25D~