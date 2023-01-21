BEGIN ~CMNIK25~

IF ~Global("CM_NikitaSummoned","GLOBAL",1)~ THEN BEGIN 0
  SAY ~Eh?  <CHARNAME> what is this? What's going on?~ 
  IF ~~ THEN REPLY ~It's good to see you again, Nikita.~ DO ~SetGlobal("CM_NikitaSummoned","GLOBAL",2)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY ~It is nice to see you again as well my friend.~ 
  IF ~~ THEN REPLY ~It's good to have you back! I need your help once again Nikita.~ GOTO 3
  IF ~~ THEN REPLY ~You don't seem very surprised to be here.~ GOTO 4
END

IF ~~ THEN BEGIN 3 
  SAY ~It is good to be back! I will endeavor to serve and help you whenever I can. Shall we go?~ 
  IF ~~ THEN REPLY ~Sounds good. Let's go.~ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~Alright...wait here awhile and I'll deal with you later. After you tone down your excitement.~ GOTO 5
END

IF ~~ THEN BEGIN 4 
  SAY ~Why would I be surprised?  If you need a good thief in your party, well, I'm her.~
  IF ~~ THEN REPLY ~Let's go, Nikita.~ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~Just wait here and I'll deal with you later.~ GOTO 5
END

IF ~~ THEN BEGIN 5 
  SAY ~Very well. I shall wait until you wish me to rejoin again.~ 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1688.1433])
Face(0)~ EXIT
END

IF ~Global("CM_NikitaSummoned","GLOBAL",2)~ THEN BEGIN 6
  SAY ~Yes? Do you wish me to join up?~ 
  IF ~~ THEN REPLY ~Yes let's go.~ DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~Wait here for awhile longer.~ GOTO 7
END

IF ~~ THEN BEGIN 7 
  SAY ~Good, good! I will be here then.~ 
  IF ~~ THEN EXIT
END


BEGIN ~BCMNIK25~

BEGIN ~CMNIK25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY ~Yes? Oh you wish for us to part company? I would like to stay with you.~
  IF ~~ THEN REPLY ~No, stay with the party for now.~ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY ~Just wait here awhile, Nikita.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1688.1433])
Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY ~I'll send you back to the pocket plane...wait there.~ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1688.1433],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY ~Just wait here awhile, Nikita.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY ~Very well.~ 
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 2 
  SAY ~Yes, what did you wish? Shall I return with you?~
  IF ~~ THEN REPLY ~Let's go.~ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY ~Keep waiting here awhile.~ GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY ~Very well, here I shall wait.~ 
  IF ~~ THEN EXIT
END

BEGIN ~CMNIK25J~

EXTEND_BOTTOM FATESP 6 #4
+ ~!Dead("cmnikita") !InMyArea("cmnikita") Global("CM_NikitaSummoned","GLOBAL",0)~ + ~Bring me Nikita, the good hearted assassin.~
DO ~CreateVisualEffect("SPPORTAL",[1997.1228])
Wait(2) 
CreateCreature("CMNIKI25",[1997.1228],0)
SetGlobal("CM_NikitaSummoned","GLOBAL",1)~ GOTO 8
END


BEGIN ~CMNIK25D~