BEGIN CMNIKITA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Greeting
 SAY ~Hello there. Can I spare a moment of your time?~
++ ~Not right now, I'm busy.~ + GetLost
++ ~Sure. What do you wish of me?~ + OfferJoin
END

IF ~~ THEN BEGIN GetLost
  SAY ~Very well, if you change your mind, I will be waiting right here.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN OfferJoin
 SAY ~My name is Nikitalleria and you are <CHARNAME> correct?~
++ ~I am <CHARNAME>. Is there something I can do for you?~ + Explain
++ ~I am <CHARNAME> that is correct. What do you wish of me?~ + Explain
END

IF ~~ THEN BEGIN Explain
 SAY ~I heard about your exploits in Baldur's Gate and your travels along the Sword Coast. I was wondering if you would allow me to join your party, I would like to help you out. I offer you my services as a skilled sword hand and a excellent thief who has many ties in Athkatla. May I join?~
++ ~I would be happy to have you join me. My main goal is to find my friend Imoen who was taken from me.~ + NikitaJoin
++ ~No, not at the moment. Perhaps some other time.~ + NikitaRejected
END

IF ~~ THEN BEGIN NikitaJoin
  SAY ~Thank you for letting me join. I would be happy to help you find your friend.~
++ ~Good to have you with us, lets go.~ DO ~SetGlobal("NikitaJoined","LOCALS",1) AddexperienceParty(9500)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN NikitaRejected
  SAY ~Well if you change your mind, I will be here waiting.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Return
  SAY ~I see you have returned, can I join you?~
++ ~Yes, you may join us Nikita.~ GOTO NikitaJoin
++ ~No, not at the moment. Perhaps some other time.~ GOTO NikitaRejected
END


BEGIN CMNIKITP

IF ~Global("NikitaJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY ~You wish me to go?~
IF ~~ THEN REPLY ~My mistake Nikita, please stay.~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~I think it would be better if we went separate ways.~ DO ~EscapeArea()~ EXIT
END


