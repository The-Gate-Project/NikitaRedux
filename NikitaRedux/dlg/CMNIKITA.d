BEGIN CMNIKITA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Greeting
 SAY ~<CHARNAME>? I was wondering if that was you, I haven't seen you since Baldur's Gate. How are you doing?~
++ ~Not to sound rude but I have pressing matters at the moment.~ + GetLost
++ ~Ah Nikita. I'm doing fine, how are you?~ + OfferJoin
++ ~You seem familar, who are you?~ + WhoRU
++ ~Nikita? Are you following me? If you are here to kill me, I'll take you out like I did to your Section friends.~ + Hostile
END

IF ~~ THEN BEGIN GetLost
  SAY ~Well, don't let me hold you up.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN OfferJoin
 SAY ~I am doing fine, thank you for asking. I've been looking for you since you left Baldur's Gate. The reason for that is I would like to join you and help you out. I owe you for destroying Section and freeing me from that evil organization. So can I join you?~
++ ~I could use someone of your skill in my group, you may join me.~ + NikitaJoin
++ ~I don't know. I really don't like the idea of a former assassin being with me. I'm afraid I will have to decline your offer.~ + NikitaRejected
++ ~Right now I don't need any help. Maybe another time.~ + NikitaRejected
END

IF ~~ THEN BEGIN WhoRU
 SAY ~My name is Nikita, I was a former operative of Section, the group that was hunting you down in Baldur's Gate. You destroyed their base in Beregost and with my help, you destroyed the Oversight branch in Baldur's Gate. I've been looking for you since then.~
++ ~You mean to kill me is that it? Some sort of revenge I would imagine!~ + Hostile
++ ~Ah Nikita, now I remember. I'm doing fine, how are you?~ + OfferJoin
++ ~I still don't remember you nor the events that took place. But then again I was recently tortured for a period of time and may have had some damage done to my mind. How are you doing?~ + OfferJoin
END

IF ~~ THEN BEGIN Hostile
 SAY ~Kill you? No, no nothing like that. The reason that I've been looking for you is because I would like to join you and help you out. I owe you for destroying Section and freeing me from that evil organization. So can I join you?~
++ ~I could use someone of your skill in my group, you may join me.~ + NikitaJoin
++ ~I don't know. I really don't like the idea of a former assassin being with me. I'm afraid I will have to decline your offer.~ + NikitaRejected
++ ~Right now I don't need any help. Maybe another time.~ + NikitaRejected
END

IF ~~ THEN BEGIN NikitaJoin
  SAY ~Thank you for letting me join with you <CHARNAME>.~
++ ~Good to have you with us, lets go.~ DO ~SetGlobal("NikitaJoined","LOCALS",1) SetGlobal("NikitaJoinedSpawnEnemies","GLOBAL",1) AddexperienceParty(9500)
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
IF ~~ THEN REPLY ~I think it would be better if we went separate ways.~ DO ~SetGlobal("NikitaJoinedSpawnEnemies","GLOBAL",0) EscapeArea()~ EXIT
END


