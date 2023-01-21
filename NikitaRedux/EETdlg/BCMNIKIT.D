BEGIN BCMNIKIT

// General dialogs with PC

IF
~Global("CM_NikitaFriendTalk","GLOBAL",2)~ THEN BEGIN NikTalk1
SAY @500 /* Tell me something about yourself, <CHARNAME>. I am curious about the person that I travel with. */
 ++ @501 /* What do you want to know? */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11a
 ++ @502 /* It's kinda of boring, there isn't much to tell. I was raised by monks in a library. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11b
 ++ @503 /* I'm your typical adventurer. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11c
 ++ @504 /* I'm a simple <PRO_RACE>, nothing more. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11d
END

IF ~~ NikTalk11a
SAY @505 /* I would like to know more about the leader that I follow, nothing more. */
 ++ @506 /* Very well then. I am a simple <PRO_RACE>. */ GOTO NikTalk11d
 ++ @507 /* I'm a simple <PRO_MANWOMAN> on a grand adventure to see the world. */ GOTO NikTalk11c
 ++ @508 /* Before I took to adventuring, I was raised by monks in a library called Candlekeep. */ GOTO NikTalk11b
 ++ @509 /* I'm an adventurer. What else is there to know? */ GOTO NikTalk11c
END

IF ~~ NikTalk11b
SAY @510 /* Raised in a library? I would guess you learned a lot while you were there. */
 ++ @511 /* Even though some of the tutors were harsh task masters, I still learned a lot from them. */ GOTO NikTalk11L1
 ++ @512 /* I never listened in my lessons. They were pretty boring. */ GOTO NikTalk11L2
 ++ @513 /* I learned a lot while I was there. I gained much insight in the lessons that were taught to me. */ GOTO NikTalk11L3
END


IF ~~ NikTalk11c
 SAY @514 /* Adventuring to see the world and visiting new people and places, is something that I consider exciting. I've done a lot of traveling down the Sword Coast. I know you are new to Amn, what do you think of it so far? */
 ++ @515 /* I find it to be a cess pit of corruption and lowly thieves that would steal a half copper from a child. */ GOTO NikTalk11A1
 ++ @516 /* So far Amn seems like a wonderful city. Full of merchants selling their wares and friendly people all around. */ GOTO NikTalk11A2
 ++ @517 /* I don't know what to think of it yet. Show me around town Nik and I may enjoy the sight seeing even more. */ GOTO NikTalk11A3
 ++ @518 /* What do I think about Amn? I don't know yet, time will tell. */ GOTO NikTalk11A4
END

IF ~~ NikTalk11d
 SAY @519 /* A simple <PRO_RACE>, I think not <CHARNAME>. Surely you can tell me something about yourself. */
 ++ @520 /* Ok Nik I give in. I'm a simple <PRO_MANWOMAN> on a grand adventure to see the world. */ GOTO NikTalk11c
 ++ @521 /* If you must know Nik, before I took to adventuring, I was raised by monks in a library called Candlekeep. */ GOTO NikTalk11b
 ++ @522 /* I'm an adventurer, not a big surprise I am sure. What else is there to know? */ GOTO NikTalk11c
END

IF ~~ NikTalk11A1
 SAY @523 /* Really? With an attitude like that, I would keep those comments like that to yourself. You never know who may be listening and take offense to your words. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk11A2
 SAY @524 /* It may have its problem areas, what city doesn't, but it's a good city in my opinion. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk11A3
SAY @525 /* Oh? It would be a pleasure to show you around <CHARNAME>. Its a big city so it may take a while. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk11A4
SAY @526 /* Well, I hope you enjoy being here in Amn. It's been my home for so long. Well, before I was brought into Section that is. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk11L1
SAY @527 /* Sometimes the best lesson learned, is the one that had the most hardship. Living on the streets and making due with what you have or could get, was my life's harsh lesson to learn. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk11L2
SAY @528 /* Well, I hope that is not a trait you still have <CHARNAME>. Ignorance is not bliss, it may get you into trouble. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk11L3
SAY @529 /* That is good to hear <CHARNAME>. I hope you use that knowledge from your time at Candlekeep and apply it now. What you learn, may help you out at a later time. */
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",4)~
THEN BEGIN NikTalk2
SAY @530 /* <CHARNAME>, I am curious as to who Imoen is. I only recall her during our brief meeting back in Baldur's Gate. Is she fellow companion you met on your travels or is she something more? */
 ++ @531 /* Imoen and I grew up together, and I've always thought of her as a sister. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk21a
 ++ @532 /* We've known each other a long time, since when we were children in fact. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk22a
 ++ @533 /* Imoen? She's just a means to an end. It's Irenicus I want! */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk23a
 ++ @534 /* Imoen is more than that, she's my best friend. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk24a
END

IF ~~ NikTalk21a
SAY @535 /* You were raised together? So I would imagine that Imoen is very special to you then? */
 ++ @536 /* That she is, we are best friends. */ GOTO NikTalk21b
 ++ @537 /* Being raised together had made us close to one another. I think of her as my best friend. */ GOTO NikTalk21b
 ++ @538 /* If you knew Imoen, you would feel the same. She's very special. */ GOTO NikTalk21c
END

IF ~~ NikTalk21b
SAY @539 /* It's very noble of you <CHARNAME> to seek out your best friend and help her. I hope we make it in time to save her. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk21c
SAY @540 /* Lucky for Imoen that she has a great friend in you <CHARNAME>. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk21d
SAY @541 /* Annoying she may be, but you have strong feelings towards her, otherwise you would not be helping her out. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk22a
SAY @542 /* You thought of her as a sister? What was she like when you two were growing up <CHARNAME>? */
 ++ @543 /* She was a trouble maker when we were growing up. Nothing bad mind you, she used to pull all sorts of pranks and jokes, but I would cover for her if she got into too much trouble. */ GOTO NikTalk21c
 ++ @544 /* She would pull pranks and steal minor things. I would cover her of course, like a good friend would. */ GOTO NikTalk21c
 ++ @545 /* Never mind that, I lied. I wasn't serious about Imoen. It's Irenicus I'm after. */ GOTO NikTalk23a
 ++ @546 /* She was an annoying little brat who always got herself into trouble. I don't know why I am helping her out of trouble, yet again. */ GOTO NikTalk21d
END


IF ~~ THEN NikTalk23a
SAY @547 /* Well I guess I know where your loyalties lie <CHARNAME>, me, myself and I. It's all about you and your petty revenge, what a shame. You would have fit into the Section lifestyle. */
IF ~~ THEN EXIT
END


IF ~~ THEN NikTalk24a
SAY @548 /* A best friend is it? Yes, I can see you have strong feelings towards her. I do hope we find her in time. */
++ @549 /* I hope we find her in time to Nikita. I would be lost without her if anything happened to her. */ GOTO NikTalk24b
++ @550 /* We really should get going Nikita. I have a feeling time is starting to run out on her. */ GOTO NikTalk24c
END

IF ~~ NikTalk24b
SAY @551 /* Well, we should quit chatting about this and find her quickly <CHARNAME>. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk24c
SAY @552 /* Of course <CHARNAME>, we should double our efforts to get to her. */
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",6)~
THEN BEGIN NikTalk3
SAY @553 /* Gorion is a name I hear spoken often. Who is this person and what does he mean to you? */
++ @554 /* I don't want to talk about this with you. I'm sorry, perhaps another time. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",7)~ GOTO NikTalk31a
++ @555 /* Gorion was my foster father. He raised me at Candlekeep. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",7)~ GOTO NikTalk32a
++ @556 /* Gorion was the man who raised me since I was little. He was a stuffy old man, but he was a good man none of the less. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",7)~ GOTO NikTalk32a
END

IF ~~ NikTalk31a
SAY @557 /* Of course <CHARNAME>, we can discuss this later if you wish. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk32a
SAY @558 /* Was? He is deceased then? */
++ @559 /* Yes. He was killed by a villain named Sarevok, who happen to be my half brother. */ GOTO NikTalk32b
++ @560 /* Yes, he is gone and I miss him. */ GOTO NikTalk32c
++ @561 /* Gorion died defending me from my half brother, Sarevok when we left Candlekeep. */ GOTO NikTalk32d
END

IF ~~ NikTalk32b
SAY @562 /* Your own half brother killed him? That is most foul deed. */
++ @563 /* Y-yes it was a foul deed. I am sorry, I don't wish to discuss this any further. */ GOTO NikTalk31a
++ @564 /* Sarevok had a grand plan of conquest, Gorion got in his way and was killed for it. */ GOTO NikTalk32e
END

IF ~~ NikTalk32c
SAY @565 /* What happen to him if I may ask? */
++ @559 /* Yes. He was killed by a villain named Sarevok, who happen to be my half brother. */ GOTO NikTalk32b
++ @566 /* I am sorry Nik, but it's too hard for me to talk about this, even now. */ GOTO NikTalk31a
++ @561 /* Gorion died defending me from my half brother, Sarevok when we left Candlekeep. */ GOTO NikTalk32d
END

IF ~~ NikTalk32d
SAY @567 /* Your half brother killed him? Why would he do such a thing? */
++ @568 /* I-it's hard to talk about, even now. I'm sorry, I don't wish to discuss this any further. */ GOTO NikTalk31a
++ @569 /* Murder and war was in his blood as well power. Gorion got in the way and Sarevok removed him. But in the end, Gorion was avenged, Sarevok died by my hands. */ GOTO NikTalk32f
++ @570 /* Sarevok was an evil power obsessed bastard. He killed a great man, one who I avenged righteously in the end! */ GOTO NikTalk32f
END

IF ~~ NikTalk32e
SAY @571 /* I know the feeling. My grandparents were killed when they got in the way of bandits who raided their home. Y-yes I know how you feel indeed. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk32f
SAY @572 /* A shame Gorion was lost due to your power mad half brother. May his soul rest in peace. */
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",8)~
THEN BEGIN NikTalk4
SAY @573 /* <CHARNAME>, I was wondering if you have any living relatives. Being on the road so much, I would imagine you would miss them. */
++ @574 /* None that I consider relatives. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk41a
++ @575 /* Yes so many that I've lost count. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk41a
++ @576 /* None except Imoen I suppose. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk42a
++ @577 /* I'd rather not talk about it. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk41c
END

IF ~~ NikTalk41a
SAY @578 /* What do you mean? */
++ @579 /* All the Bhaalspawn are my siblings, I guess. Bhaal was one busy god let me tell you. */ GOTO NikTalk41b
++ @580 /* Bah, nothing, never mind. I don't like talking about this after all. */ GOTO NikTalk41c
++ @581 /* I mean I'm an offspring of Bhaal and I would guess there are many more offspring by him. He saw his demise coming after all. So in a sense they are family. */ GOTO NikTalk41b
END

IF ~~ NikTalk41b
SAY @582 /* Yes that would make sense after all. I did not think about that. */
++ @583 /* So Nikita what about you? How is your family doing? */ GOTO NikTalk41d
++ @584 /* You rarely think before you speak, do you? */ GOTO NikTalk41h
++ @585 /* I'd rather hear about your family Nikita. */ GOTO NikTalk41d
END

IF ~~ NikTalk41c
SAY @586 /* Very well. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk41d
SAY @587 /* Me? I'm very private, especially about my past. You seem like a decent person <CHARNAME>, ugh I don't know. */
++ @588 /* You can trust me Nik. I talked about myself, some information that I keep between myself and a select few. Surely you can say something about your past? */ GOTO NikTalk41e
++ @589 /* Well keep your past to yourself. I really don't care. */ GOTO NikTalk41f
++ @590 /* Why are you so private Nik? You can fill me in on something at least. I like to know about the people who are in my group are. */ GOTO NikTalk41g
END

IF ~~ NikTalk41e
SAY @591 /* Yes, you are right about that <CHARNAME>, you have told me important information about yourself. */
= @592 /* Well, I never knew my father he was out of our life soon after I was born. My mother never said much about him. */
= @593 /* My mother wasn't there much for me. She thought drowning her sorrows in ale was more important. */
= @594 /* I was pretty much raised on the streets of Amn. Pick pocketing, stealing, doing whatever it took to survive. Than I was... well, never mind. I don't wish to discuss this any longer. */
IF ~~ THEN DO ~SetGlobal("CM_NikRevealPast","GLOBAL",1)~
EXIT
END

IF ~~ NikTalk41f
SAY @595 /* Fine by me! */
IF ~~ THEN EXIT
END

IF ~~ NikTalk41g
SAY @596 /* I have my reasons for being private, but yes, you are right about that <CHARNAME>, I should tell you more about myself. */
= @592 /* Well, I never knew my father he was out of our life soon after I was born. My mother never said much about him. */
= @597 /* My mother wasn't there that much for me any way. She thought drowning her sorrows in ale was more important. */
= @598 /* I was pretty much raised on the streets. Pick pocketing, stealing, doing whatever it took to survive. Then I was... well, never mind. I don't wish to discuss this any longer. */
IF ~~ THEN DO ~SetGlobal("CM_NikRevealPast","GLOBAL",1)~
EXIT
END

IF ~~ NikTalk41h
SAY @599 /* Cute <CHARNAME>, very cute. I believe this discussion is over. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk42a
SAY @600 /* Of course. You two were raised together. */
++ @601 /* Yes, she is the only person I consider family, related by blood or otherwise. What of you? */ GOTO NikTalk41d
++ @602 /* But other than Imoen, I'm pretty much on my own, I suppose. What about you? */ GOTO NikTalk41d
++ @585 /* I'd rather hear about your family Nikita. */ GOTO NikTalk41d
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",10)~
THEN BEGIN NikTalk5
SAY @603 /* <CHARNAME>, I was wondering what do you plan on doing with all of the gold coins in your pouch? */
 ++ @604 /* (You put your hand over the pouch, looking at Nikita nervously.) Why, do you plan on pick pocketing me? */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~  GOTO NikTalk51a
 ++ @605 /* I don't think its really any of your business what I do with *my* gold coins. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~ GOTO NikTalk51b
 ++ @606 /* Well I plan on giving some of it as a donation to needy kids or some other charitable cause. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~ GOTO NikTalk51c
 ++ @607 /* I really don't feel like having this conversation right now Nikita. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~  GOTO NikTalk51d
END

IF ~~ NikTalk51a
SAY @608 /* (Nikita laughs.) Of course not, silly. I was wondering what you plan on doing with all of that coin. Giving some as a donation to needy kids would be a good thing to do. */
 ++ @605 /* I don't think its really any of your business what I do with *my* gold coins. */ GOTO NikTalk51b
 ++ @609 /* You are right Nikita, I should give some of this to a worthy charity. The poor orphans need this more than I do. */ GOTO NikTalk51c
 ++ @607 /* I really don't feel like having this conversation right now Nikita. */ GOTO NikTalk51d
END

IF ~~ NikTalk51b
SAY @610 /* It is your money after all, do as you wish with it. I thought I would mention that helping the needy would be a good thing to do. I guess you don't want to hear it. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk51c
SAY @611 /* Really? That would be great! I know of a few organizations you could give it to. */
++ @612 /* I look forward to helping out people, they should not suffer needlessly. */ GOTO NikTalk52a
++ @613 /* Heh, got you. I was kidding, I would never give away my hard earned coin to a bunch of bums. */ GOTO NikTalk52b
IF ~Gender(Player1,FEMALE)~ REPLY @614 /* Good. We will have to visit them when we have the chance. I enjoy helping the needy, especially the children. */ GOTO NikTalk52c
IF ~Gender(Player1,MALE)~ REPLY @614 /* Good. We will have to visit them when we have the chance. I enjoy helping the needy, especially the children. */ GOTO NikTalk52c1
END

IF ~~ NikTalk51d
SAY @615 /* Very well, some other time perhaps. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk52a
SAY @616 /* (Nikita smiles at you.) That is wonderful <CHARNAME>! You truly have a noble heart. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk52b
SAY @617 /* (Nikita stares at you with contempt and says nothing more.) */
IF ~~ THEN EXIT
END

IF ~~ NikTalk52c
SAY @618 /* (Nikita walks up to you and gives you a hug.) That is wonderful <CHARNAME>! You truly have a noble heart. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk52c1
SAY @619 /* (Nikita walks up to you and kisses you on the cheek.) That is wonderful <CHARNAME>! You truly have a noble heart. */
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",12)~
THEN BEGIN NikTalk7
SAY @620 /* (You notice Nikita has been silent lately. She has been keeping to herself more than what she usually does.) */
 ++ @621 /* Is something on your mind Nikita? */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",13)~ GOTO NikTalk71a
 ++ @622 /* (You leave her alone to her thoughts.) */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",13)~ GOTO NikTalk71b
 ++ @623 /* Is there something bothering you Nikita? You have been silent for a while. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",13)~ GOTO NikTalk71a
END

IF ~~ NikTalk71a
SAY @624 /* Hmm? Oh, I was just thinking about someone. */
 ++ @625 /* Who are you thinking about? */ + NikTalk72a
 ++ @626 /* Are you thinking about me? */ + NikTalk72b
 ++ @627 /* Do you mind if I ask who you are thinking about? */ + NikTalk72a
 ++ @628 /* Sorry, I didn't mean to interrupt you. */ + NikTalk72c
END

IF ~~ NikTalk71b
SAY @629 /* (She is still deep in her thoughts, you go about your business.) */
IF ~~ THEN EXIT
END

IF ~~ NikTalk72a
SAY @630 /* I am thinking about a friend, a lover. He's gone to Waterdeep to find his son, I haven't heard from him in a while. (A surprised look is on Nikita's face, as if she said too much.) */
 ++ @631 /* Find his son? Did he get in some kind of trouble? */ + NikTalk73a
 ++ @632 /* I hope he is all right. Not hearing from a loved one is a painful wait. */ + NikTalk73b
 ++ @633 /* Interesting. We should get going. */ + NikTalk73c
END

IF ~~ NikTalk72b
SAY @634 /* You? Oh no <CHARNAME>, not you. I am thinking about a friend, a lover. He's gone to Waterdeep to find his son, I haven't heard from him in a while. (A surprised look is on Nikita's face, as if she said too much.) */
 ++ @631 /* Find his son? Did he get in some kind of trouble? */ + NikTalk73a
 ++ @632 /* I hope he is all right. Not hearing from a loved one is a painful wait. */ + NikTalk73b
 ++ @633 /* Interesting. We should get going. */ + NikTalk73c
END

IF ~~ NikTalk72c
SAY @635 /* (She says nothing else, you go about your business.) */
IF ~~ THEN EXIT
END

IF ~~ NikTalk73a
SAY @636 /* No I don't think so. Years ago when Michael was on a mission in Waterdeep, he met a woman and, well... a few months later he was a father. He hasn't seen his son since then because he was in Section. */
 ++ @637 /* Interesting, well I hope he is all right. Not hearing from a loved one is a painful wait. */ + NikTalk73b
 ++ @633 /* Interesting. We should get going. */ + NikTalk73c
 ++ @638 /* Sounds like a dangerous situation if you ask me. Waterdeep is a hive of scum and villainy after all. I hope you hear from him soon. */ + NikTalk73d
END

IF ~~ NikTalk73b
SAY @639 /* Yes, I am sure he is alright, he is very good at what he does. I should be use to this by now, we were taught to disconnect ourselves when emotional situations arise. */
= @640 /* (A blank look appears on her face.) I believe I had said enough, we should get back to the task at hand. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk73c
SAY @586 /* Very well. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk73d
SAY @641 /* It is a dangerous situation but he is very good at what he does. He will be just fine. I should be use to this by now, we were taught to disconnect ourselves when emotional situations arise. */
= @642 /* (A blank look is on her face.) I believe I had said enough, we should get back to the task at hand. */
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",14)~
THEN BEGIN NikTalk8
SAY @643 /* What is it <CHARNAME>? You have a look on your face as if you have a question to ask me. */
 ++ @644 /* Am I that transparent? */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",15)~ + NikTalk81a
 ++ @645 /* I am not that transparent Nikita. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",15)~ + NikTalk81b
 ++ @646 /* I do have a question to ask, I was just waiting to ask it at the right time. */ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",15)~ + NikTalk81c
END

IF ~~ NikTalk81a
SAY @647 /* Oh I know you are not <CHARNAME>. I am just saying that I am pretty good at reading the expressions of others and I have been around you for a while to get an idea on how you are. What did you wish to ask me? */
 ++ @648 /* The Shadow Thieves here in Amn, what do you think of them? */ + NikTalk82a
 ++ @649 /* I was wondering what your opinion is on the Shadow Thieves? */ + NikTalk82a
 ++ @650 /* Well that is good to know. Any way, I was curious on your opinion of the Shadow Thieves, what do you think about them? */ + NikTalk82a
END

IF ~~ NikTalk81b
SAY @651 /* No, not really <CHARNAME>. But I am pretty good at reading the expressions of others and I have been around you for a while to get an idea on how you are. What did you wish to ask me? */
 ++ @648 /* The Shadow Thieves here in Amn, what do you think of them? */ + NikTalk82a
 ++ @649 /* I was wondering what your opinion is on the Shadow Thieves? */ + NikTalk82a
 ++ @650 /* Well that is good to know. Any way, I was curious on your opinion of the Shadow Thieves, what do you think about them? */ + NikTalk82a
END

IF ~~ NikTalk81c
SAY @652 /* Right now is a good as time as any. What did you wish to know? */
 ++ @648 /* The Shadow Thieves here in Amn, what do you think of them? */ + NikTalk82a
 ++ @649 /* I was wondering what your opinion is on the Shadow Thieves? */ + NikTalk82a
 ++ @653 /* Well that is good to know. Any way, I was curious as to your opinion of the Shadow Thieves, what do you think about them? */ + NikTalk82a
END

IF ~~ NikTalk82a
SAY @654 /* They're an efficient organization with many connections in the underworld. Their power base here in Amn is great and in other cities along the Sword Coast. What else do you wish to know? */
 ++ @655 /* I think they're nothing more than a bunch of criminals that should rot in jail. */ + NikTalk82b
 ++ @656 /* Interesting. What is your connection with them? */ + NikTalk82c
 ++ @657 /* What do you think about the Nards Collective? */ + NikTalk82d
 ++ @658 /* You seem to know a lot about them. Are you a member? */ + NikTalk82e
END

IF ~~ NikTalk82b
SAY @659 /* Why would you say that? The majority of them are decent people if you got to know them. */
 ++ @660 /* They're nothing but a bunch of assassins, murders, pimps and dealers of illegal goods. They would stab you in the back and steal from your corpse. */ + NikTalk83a
 ++ @661 /* Stealing from hard working people is hardly what I call noble. */ + NikTalk83b
 ++ @662 /* You seem to have a silly romantic notion about the Shadow Thieves. */ + NikTalk83a
END

IF ~~ NikTalk82c
SAY @663 /* My connection with them? They are associates that have helped me from time to time, plus I aid them when they need our help, well, Section's help. They are a great source of information as well. */
= @664 /* (A surprised look is on her face and is then quickly gone.) I-I said more than enough on this. We should get going <CHARNAME>. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk82d
SAY @665 /* The Nards Collective needs to be taken out of play. They're an evil organization that needs to be removed in my opinion. */
 ++ @666 /* The same thing could be said about the Shadow Thieves in general. What good could come out of a thief organization? */ + NikTalk82d1
 ++ @667 /* Interesting. Now what is your connection with the Shadow Thieves? */ + NikTalk82c
END

IF ~~ NikTalk82d1
SAY @668 /* The Shadow Thieves like any organization will have it's bad apples. For the most part they are a decent bunch of men and women. They help out the homeless by setting up soup kitchens and shelters, when is the last time a noble has done anything like that? */
= @669 /* I said enough on this topic <CHARNAME>. Your questions are starting to become insulting. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk82e
SAY @670 /* No, I am not a member of their guild. They are associates that have helped me from time to time, plus I aid them when they needed help. They are a great source of information after all. */
= @671 /* (A surprised look is on her face and is quickly gone.) I-I said more than enough on this. We should get going <CHARNAME>. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk83a
SAY @672 /* That is not true <CHARNAME>. Granted there are a few bad apples but a lot of members are decent and help out the unfortunate. They help out the homeless by setting up soup kitchens and shelters, when is the last time a noble has done anything like that? */
= @669 /* I said enough on this topic <CHARNAME>. Your questions are starting to become insulting. */
IF ~~ THEN EXIT
END

IF ~~ NikTalk83b
SAY @673 /* They take from the rich, not those who work hard to make an earning. Nobles have all of that coin and spend it on trivial things on themselves while many of the poor starve. The Shadow Thieves help out the homeless by setting up soup kitchens and shelters, when is the last time a noble has done anything like that? */
= @669 /* I said enough on this topic <CHARNAME>. Your questions are starting to become insulting. */
IF ~~ THEN EXIT
END

// Class specific dialogs
/* ------------------------------------------------ */

IF
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,RANGER_ALL)
Global("NikRangerTalk","GLOBAL",0)~ THEN BEGIN NikRanger
SAY @674 /* I never really understood what it means to be a ranger <CHARNAME>. Perhaps you can tell me more about being a guardian of the woods? */
 ++ @675 /* Why is that? */ DO ~SetGlobal("NikRangerTalk","GLOBAL",1)~ GOTO NikRanger1a
 ++ @676 /* What is there not to understand? */ DO ~SetGlobal("NikRangerTalk","GLOBAL",1)~ GOTO NikRanger1a
 ++ @677 /* What do you wish to know? Anything in specific? */ DO ~SetGlobal("NikRangerTalk","GLOBAL",1)~ GOTO NikRanger2a
END

IF ~~ NikRanger1a
SAY @678 /* You could say I lived a sheltered life in the city, far from the woods. Except for a few visits to my grandparents farm when I was a a child, I know little of Nature or Her guardians. */
 ++ @679 /* I protect nature from those who would do it harm. Beings like ogres and trolls care nothing for nature. I fight them whenever I can. */ GOTO NikRanger3a
 ++ @680 /* It's nothing glamorous. I aid and defend nature from evil beings who would do it harm. */ GOTO NikRanger3a
 ++ @681 /* Sheltered life? You city slickers would not be able to understand nature, so why bother asking about it? */ GOTO NikRanger4a
END

IF ~~ NikRanger2a
SAY @682 /* I heard you can speak to animals. Is this true? */
 ++ @683 /* I can speak to animals but they never answer back. Go figure. */ GOTO NikRanger2b
 ++ @684 /* Speak to animals? That's ridiculous. Any other bright questions you want to ask me? */ GOTO NikRanger2c
 ++ @685 /* I can speak with them and they communicate back to me in a limited way. Not in a verbal language that you can understand, but in feelings. It's hard to explain. */ + NikRanger2d
END

IF ~~ NikRanger2b
SAY @686 /* Interesting. Too bad they can not communicate back at you. I wonder what goes on in their little minds. */
IF ~~ THEN EXIT
END

IF ~~ NikRanger2c
SAY @687 /* No, not at the moment. I need some time to go think up some bright questions for you. */
IF ~~ THEN EXIT
END

IF ~~ NikRanger2d
SAY @688 /* That seems interesting <CHARNAME>. I always wondered what it would be like to be able to speak with an animal. */
= @689 /* I had a cat once, I wondered what she thought sometimes. */
IF ~~ THEN EXIT
END

IF ~~ NikRanger3a
SAY @690 /* Protecting nature is a noble deed <CHARNAME>. Nature is beautiful, it would be sad to see it be destroyed by those of evil intent. */
IF ~~ THEN EXIT
END

IF ~~ NikRanger4a
SAY @691 /* Indeed. I wonder at times why I bother talking to you. */
IF ~~ THEN EXIT
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,MONK)
Global("NikMonkTalk","GLOBAL",0)~ THEN BEGIN NikMonk
SAY @692 /* <CHARNAME>, you fight barehanded a lot, I have noticed. I find this unusual when a sword of a knife is at your disposal. */
 ++ @693 /* Why fight with a man made weapon, when the man himself is a weapon? A weapon may not be at your disposal thus it is good to know the unarmed fighting skills. */ DO ~SetGlobal("NikMonkTalk","GLOBAL",1)~ GOTO NikMonk1a
 ++ @694 /* What do you mean? I don't find it strange at all. It's how I was raised. */ DO ~SetGlobal("NikMonkTalk","GLOBAL",1)~ GOTO NikMonk2a
END

IF ~~ NikMonk1a
SAY @695 /* You are correct about that. I have received unarmed training myself but nothing that compares to yours. I prefer a bladed weapon in my hand when I am engaged in combat. */
IF ~~ THEN EXIT
END

IF ~~ NikMonk2a
SAY @696 /* I just find it strange that you go charging into action with your fists against well armed opponents. */
 = @697 /* I prefer a long sword or my trust worthy crossbow to reach out and touch someone. */
IF ~~ THEN EXIT
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,FIGHTER_ALL)
!Class(Player1,MONK)
Global("NikFighterTalk","GLOBAL",0)~ THEN BEGIN NikFighter
SAY @698 /* I noticed when we are engaged in combat, you fight well, <CHARNAME>. Where did you learn it from? */
 ++ @699 /* Really? And who made you my judge? */ DO ~SetGlobal("NikFighterTalk","GLOBAL",1)~ GOTO NikFighter1a
 ++ @700 /* I learned it while I was at Candlekeep. You think my fighting skills are good? */ DO ~SetGlobal("NikFighterTalk","GLOBAL",1)~ GOTO NikFighter3a
 ++ @701 /* Well? I thought I fought great. */ DO ~SetGlobal("NikFighterTalk","GLOBAL",1)~ GOTO NikFighter2a
END

IF ~~ NikFighter1a
SAY @702 /* It was not my intention to offend you. I just took notice of your fighting ability and thought I would give you praise. */
 = @703 /* With a little more practice, you may be my equal. (Nikita winks at you.) */
IF ~~ THEN EXIT
END

IF ~~ NikFighter2a
SAY @704 /* As I have witnessed so far I would consider it good, not great. */
 = @703 /* With a little more practice, you may be my equal. (Nikita winks at you.) */
IF ~~ THEN EXIT
END

IF ~~ NikFighter3a
SAY @705 /* Candlekeep eh? I suppose they did well with you <CHARNAME>. */
 = @703 /* With a little more practice, you may be my equal. (Nikita winks at you.) */
IF ~~ THEN EXIT
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,THIEF_ALL)
Global("NikThiefTalk","GLOBAL",0)~ THEN BEGIN NikThief
SAY @706 /* <CHARNAME>, you move with a practiced, light step, the grace of one who can sneak upon another and take them out and they would never know what hit them. */
 = @707 /* You appear to be like myself, a kindred spirit in the shadow arts. */
 ++ @708 /* I have learned that treading heavily can mean your death. */ DO ~SetGlobal("NikThiefTalk","GLOBAL",1)~ GOTO NikThief1a
 ++ @709 /* You speak as if you understand me. Am I that obvious? */ DO ~SetGlobal("NikThiefTalk","GLOBAL",1)~ GOTO NikThief2a
 ++ @710 /* What do you mean by that? */ DO ~SetGlobal("NikThiefTalk","GLOBAL",1)~ GOTO NikThief3a
END

IF ~~ NikThief1a
SAY @711 /* Your caution does you credit. A silent, unseen enemy is the deadliest in the shadows. */
 ++ @712 /* You make it sound like I am an assassin. I am not an assassin, Nikita. */ GOTO NikThief1b
 ++ @713 /* My subtle forms of evasion have served me well. */ GOTO NikThief1c
END

IF ~~ NikThief1b
SAY @714 /* I am not saying you are <CHARNAME>, but merely mentioning your talents which will be quite useful to you when put to good use. */
IF ~~ THEN EXIT
END

IF ~~ NikThief1c
SAY @715 /* And they will serve you again. This quest you are on demands extreme action. "The best knife is the unseen one", to quote a drow proverb. */
IF ~~ THEN EXIT
END

IF ~~ NikThief2a
SAY @716 /* I understand your methods they are similar to my own. As for your question, no, you are not obvious. */
 ++ @717 /* Oh, for a moment there, I thought I was slipping. */ GOTO NikThief2b
 ++ @718 /* So you have been studying me? */ GOTO NikThief2c
END

IF ~~ NikThief2b
SAY @719 /* Not at all. I am keen on noticing a fellow thief, nothing more. */
IF ~~ THEN EXIT
END

IF ~~ NikThief2c
SAY @720 /* You could say that. (Nikita stares at you for a moment and says nothing more on the subject.) */
IF ~~ THEN EXIT
END

IF ~~ NikThief3a
SAY @721 /* I mean, I understand your methods, they are similar to my own. */
 ++ @722 /* Are you studying me for possible weaknesses? */ GOTO NikThief2b
 ++ @718 /* So you have been studying me? */ GOTO NikThief2c
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,MAGE_ALL)
Global("NikMageTalk","GLOBAL",0)~ THEN BEGIN NikMage
SAY @723 /* I was wondering <CHARNAME>, did it take you a while to learn the knowledge of becoming a wizard? Spending all of your time reading books, I would find that boring after a while. */
 ++ @724 /* No it didn't take me long to absorb the knowledge of becoming a mage. I was never bored by reading all of the tomes either. */ DO ~SetGlobal("NikMageTalk","GLOBAL",1)~ GOTO NikMage1a
 ++ @725 /* No it didn't take me long to absorb the knowledge of becoming a mage. But learning from all of those tomes, it was boring after a while. */ DO ~SetGlobal("NikMageTalk","GLOBAL",1)~ GOTO NikMage2a
END

IF ~~ NikMage1a
SAY @726 /* Well, I guess not all of us can be bookworms. Was there anything in particular that you liked more in your pursuit of the arcane knowledge? */
 ++ @727 /* I always liked to learn about new spells. It comes natural to me it seems. */ GOTO NikMage1b
 ++ @728 /* Learning about old magical artifacts always fascinated me. */ GOTO NikMage1c
 ++ @729 /* Nothing really. It was all the same to me. */ GOTO NikMage1d
END

IF ~~ NikMage1b
SAY @730 /* A little bit of studying does pay off after all <CHARNAME>. Keep it up and you may be up there with Elminster one day. */
IF ~~ THEN EXIT
END

IF ~~ NikMage1c
SAY @731 /* Old artifacts have a history behind them. Knowing about it's history is a learning experience itself. */
IF ~~ THEN EXIT
END

IF ~~ NikMage1d
SAY @732 /* All the same? I would have thought some aspects would be more interesting over others. For example, if I was studying to be a mage, I would be interested in old magical artifacts. */
= @731 /* Old artifacts have a history behind them. Knowing about it's history is a learning experience itself. */
IF ~~ THEN EXIT
END

IF ~~ NikMage2a
SAY @733 /* Boring? Hmmm. Was there anything in particular that you liked more in your pursuit of the arcane knowledge? */
 ++ @727 /* I always liked to learn about new spells. It comes natural to me it seems. */ GOTO NikMage1b
 ++ @728 /* Learning about old magical artifacts always fascinated me. */ GOTO NikMage1c
 ++ @729 /* Nothing really. It was all the same to me. */ GOTO NikMage1d
END

/* ------------------------------------------------ */

/* ------------------------------------------------ */


// Reputation dialogs

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,4)
ReputationLT(Player1,8)
Global("BNikRep6","LOCALS",0)~ THEN BEGIN Rep6Comment
SAY @734 /* You have done many good deeds <CHARNAME>. Do not destroy it with questionable actions. */
 IF ~~ THEN REPLY @735 /* So? Don't question my actions Nikita otherwise you will find yourself out of my group. */ DO ~SetGlobal("BNikRep6","LOCALS",1)~ GOTO NikScrewU
 IF ~~ THEN REPLY @736 /* I have not always done right, but you have my assurance I will not stray again. */ GOTO NikOk
END

IF ~~ NikScrewU
SAY @737 /* You may be the leader but I will not permit evil to over take this group. You have been warned. */
IF ~~ THEN EXIT
END

IF ~~ NikOk
SAY @738 /* Very well let us see if your actions reflect your words and all shall be well. */
IF ~~ THEN EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,5)
Global("BNikRep4","LOCALS",0)~ THEN BEGIN 87
SAY @739 /* My conscience can not allow me to be idle no longer. Your evilness shall go no further! */
++ @740 /* What? */ DO ~SetGlobal("BNikRep64","LOCALS",1)~ GOTO NikItsOver
END

IF ~~ NikItsOver
SAY @741 /* Stand and fight, if you have the courage! */
IF ~~ THEN DO ~LeaveParty()
Attack(Player1)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,14)
Global("BNikRep14","LOCALS",0)~ THEN BEGIN Rep14Comment
SAY @742 /* In the time that I have traveled with you, you have proven yourself to be a person with your heart in the right place. I am glad to be a part of this group. */
  IF ~~ THEN REPLY @743 /* Why, thank you, Nikita. It is nice to know that I am appreciated. */ DO ~SetGlobal("BNikRep14","LOCALS",1)~ GOTO Nik14Praise
  IF ~~ THEN REPLY @744 /* What makes you think that your opinion is important to me? Keep it to yourself. */ DO ~SetGlobal("BNikRep14","LOCALS",1)~ GOTO Nik14Screw
END

IF ~~ Nik14Praise
SAY @745 /* I merely speak the words that beg voicing. You deserve my support. */
IF ~~ THEN EXIT
END

IF ~~ Nik14Screw
SAY @746 /* It seems that I have been proven wrong mere seconds after I've spoken. Perhaps you do not deserve my support. I shall have to reconsider my place in this party. */
IF ~~ THEN EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Reputation(Player1,20)
Global("BNikRep20","LOCALS",0)~ THEN BEGIN Rep20Comment
SAY  @747 /* <CHARNAME>, you are the most noble person I have ever met. Your good deeds will be remembered many generations from now. You are an inspiration to me. */
IF ~~ THEN DO ~SetGlobal("BNikRep20","LOCALS",1)~ EXIT
END

// NPC banters  ******************************** //

// Aerie banters

CHAIN IF
~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
AreaType(OUTDOOR)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikGpPast","GLOBAL",0)
Global("NikAerieChat1","LOCALS",0)~ THEN BAERIE NikAerie1
@748 /* I like being in the outdoors Nikita, any chance I can get. Its so beautiful and quiet so much unlike the city. */
DO ~SetGlobal("NikAerieChat1","LOCALS",1) SetGlobal("NikGpPast","GLOBAL",1)~
== BCMNIKIT @749 /* It's nice to get away from the city once in a while. I remember the times when I used to go with my mother and visit my grandparents farm. */
= @750 /* It was a lovely farm they had. */
== BAERIE @751 /* A-a farm? Oh I can imagine that being a nice place! */
== BCMNIKIT @752 /* Yes it was, I have many fond memories of it. Grandma had such a beautiful flower garden, red roses were her favorite. */
== BAERIE @753 /* That sounds nice Nikita. I like roses to! Mother had a small garden where she grew her special healing herbs and yellow roses. */
= @754 /* It smelled so nice but it attracted bees and I can remember getting stung so many times. */
== BCMNIKIT @755 /* Bees? Yuck! I had to avoid them since I was allergic to being stung. I got stung once and it almsot killed me. Luckily Grandma had some of her special elixirs on hand and I was healed. */
== BAERIE @756 /* That's horrible Nikita! */
== BCMNIKIT @757 /* Yes it was. I usually keep a small vial of Grandma's special elixir on hand, in case of emergencies. */
== BAERIE @758 /* Did you have any other fond memories of your grandparents farm? */
== BCMNIKIT @759 /* (Nikita's facial expression turns to that of sadness, she ponders on whether to continue this conversation or not.) */
= @760 /* I-I don't want to talk about this any more Aerie. Perhaps another time. */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
AreaType(CITY)
Global("NikAerieChat2","LOCALS",0)~ THEN BCMNIKIT NikAerie2
@761 /* It's so good to be back in the city once again, makes me feel at home. */
DO ~SetGlobal("NikAerieChat2","LOCALS",1)~
== BAERIE @762 /* I find the city i-intimidating. There are so many people at the markets shopping and trading their goods. People at the fairs with their children, the city is just exhilarating. */
== BCMNIKIT @763 /* Don't forget the cut throats, the drunks and the prostitutes that inhabit the city. */
= @764 /* Never forget the seedy aspects of the city Aerie, your life depends on your being aware of possible dangers. */
== BAERIE @765 /* Y-yes I have noticed this in human cities. */
== BCMNIKIT @766 /* Yes, mostly in human cities. I know you are new to this Aerie but do heed my advice on this, I know from living most of my life in a human city. */
== BAERIE @767 /* I-I would welcome any advice you can give me. */
== BCMNIKIT @768 /* Awareness is can go a long way. Use your ears, listen for possible sounds for someone sneaking up on you in the back alley way. Use your eyes to take notice of shadows as someone may try to sneak up on you. */
= @769 /* Even a stranger's tone of voice can identify their intent. Always be alert. */
== BAERIE @770 /* Thank you Nikita I will take heed in what you have said. */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AerieRomanceActive","GLOBAL",2)
Global("NikAerieChat3","LOCALS",0)~ THEN BCMNIKIT NikAerie3
@771 /* I notice that twinkle in your eye when you talk to <CHARNAME> Aerie. You like him don't you? */
DO ~SetGlobal("NikAerieChat3","LOCALS",1)~
== BAERIE @772 /* T-twinkle? I-I, well no. */
== BCMNIKIT @773 /* You're stuttering and blushing Aerie. Come now, you can tell me. */
== BAERIE @774 /* Well y-yes he is attractive. He's a nice, warm and caring person who makes my heart beat with excitement. */
== BCMNIKIT @775 /* You seem very smitten by him Aerie. Do you see a future of being together, settling down? */
== BAERIE @776 /* Oh that would be wonderful! I would look forward to getting married, having a lot of children, getting old together! It would make my life complete. */
== BCMNIKIT @777 /* I hope you do find love Aerie, you deserve it. */
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikGpPast","GLOBAL",1)
Global("NikAerieChat4","LOCALS",0)~ THEN BAERIE NikAerie4
@778 /* Nikita, i-is something bothering you? */
DO ~SetGlobal("NikAerieChat4","LOCALS",1)~
== BCMNIKIT @779 /* Hmmm? Oh, it's nothing. N-nothing really. */
= @780 /* Actually there is something. Remember our last discussion about my grandparents? */
== BAERIE @781 /* Yes I remember. */
== BCMNIKIT @782 /* You asked if I had fond memories of my grandparent's farm, I used to. They were killed when a bunch of drunk bandits forced their way into their house, looted whatever they could find of value and then killed my grandparents. */
= @783 /* It w-was quite senseless really. They were killed because they had nothing of real value. Nothing of bloody value! */
== BAERIE @784 /* I am so sorry for you Nikita. You know, the real value they had, those bandits would have had little use for. The greatest value they had was the love they gave you, something they could never take away. */
== BCMNIKIT @785 /* Y-yes y-you're right about that. Thank you. */
EXIT

// Anomen banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("AnomenIsKnight","GLOBAL",1)
Global("NikAnomenChat1","LOCALS",0)~ THEN BANOMEN NikAnomen1
@786 /* Nikita I need to speak with you. */
DO ~SetGlobal("NikAnomenChat1","LOCALS",1)~
== BCMNIKIT @787 /* Sure Anomen what is it? */
== BANOMEN @788 /* I believe you need work on your swordsmanship. I offer my serves to help you become better than what you are now. */
== BCMNIKIT @789 /* I thank you for the offer Anomen but I am quite sure my handling of the sword is fine. */
== BANOMEN @790 /* Since becoming a knight it's my duty to help my fellow travelers in bettering themselves in combat skills. Are you sure you don't need my help? */
== BCMNIKIT @791 /* Well yes thanks for the offer. */
== BANOMEN @792 /* I only offer it because in our last battle, I found your skills a little clumsy. */
== BCMNIKIT @793 /* Clumsy? I am not clumsy when I fight. Just because you are a knight now doesn't make you an ultimate warrior. */
= @794 /* That was insulting Anomen, just insulting of you to say! */
== BANOMEN @795 /* Well I thought... */
== BCMNIKIT @796 /* Oh leave me alone before I show how clumsy I can get! */
EXIT

CHAIN
IF ~
InParty("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("NikAnomenChat2","LOCALS",0)~ THEN BCMNIKIT NikAnomen2
@797 /* Anomen, you have not said much about the Order since your test. If you need someone to talk to... */
DO ~SetGlobal("NikAnomenChat2","LOCALS",1)~
== BANOMEN @798 /* I have not said anything about the Order because I have no desire to speak it. */
== BCMNIKIT @799 /* Some times talking about it will make you feel better, get the negative emotions out of your mind. */
== BANOMEN @800 /* I have nothing to say about those hypocrites, woman, leave me alone. */
== BCMNIKIT @801 /* Ok have it your way. */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("NikAnomenChat3","LOCALS",0)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN BCMNIKIT NikAnomen3
@802 /* Anomen, are you a Knight of the Order? */
DO ~SetGlobal("NikAnomenChat3","LOCALS",1)~
== BANOMEN @803 /* Not yet, Nikita. I am still a humble squire. */
== BCMNIKIT @804 /* Are you excited to get in the Knights of the Order? */
== BANOMEN @805 /* Very much so. It is something I have been striving for all of my life. To be accepted would be a great honor. */
== BCMNIKIT @806 /* I would be happy for you Anomen when the time comes when you can be called Knight. */
== BANOMEN @807 /* Thank you Nikita. */
== BCMNIKIT @808 /* No problem. */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("NikAnomenChat4","LOCALS",0)
OR(2)
Global("AnomenRomanceCheck","GLOBAL",1)
Global("AnomenRomanceCheck","GLOBAL",2)~ THEN BCMNIKIT NikAnomen4
@809 /* I have noticed you and <CHARNAME> are spending a lot of time together Anomen. Anything special going on? */
DO ~SetGlobal("NikAnomenChat4","LOCALS",1)~
== BANOMEN @810 /* <CHARNAME> is an intriguing woman to know. */
== BCMNIKIT @811 /* Intriguing? Certainly there is more to it than that. */
== BANOMEN @812 /* Well, she is a good listener and an excellent conversationalist. */
== BCMNIKIT @813 /* Anomen, I have seen the way you have looked at her and the way she has looked at you. There is more going on here I believe. */
== BANOMEN @814 /* Oh very well. Yes <CHARNAME> is a very beautiful <PRO_RACE> if I may say so and who's company I enjoy being in. */
= @815 /* Do you think she feels the same way about me? */
== BCMNIKIT @816 /* Judging by the looks she gives you when you are not looking, I think she may feel the same way Anomen. */
== BANOMEN @817 /* Really? I hope so Nikita, I really do. */
EXIT

// Cernd banters

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("NikCerndChat1","LOCALS",0)~ THEN BCMNIKIT NikCernd1
@818 /* When you shapeshift are you ever concerned about losing control, giving into the lust for blood? */
DO ~SetGlobal("NikCerndChat1","LOCALS",1)~
== BCERND @819 /* No, I will not give into the bloodlust. I am still in complete control of my actions. */
== BCMNIKIT @820 /* Turning into a bear or a wolf, two very deadly predators, their killer instinct does not take charge? */
== BCERND @821 /* Predators they are, to kill for food or to defend their self is natural. To kill for the sake of bloodlust is unnatural. */
=  @822 /* When I shape change, I defend myself and my allies, to kill as a last resort. Thus I am still one with Nature. */
== BCMNIKIT @823 /* Interesting Cernd, quite interesting. */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("NikCerndChat2","LOCALS",0)~ THEN BCMNIKIT NikCernd2
@824 /* I was wondering about something Cernd. */
DO ~SetGlobal("NikCerndChat2","LOCALS",1)~
== BCERND @825 /* What can I help you with Nikita? */
== BCMNIKIT @826 /* Have you always wanted to be a druid? Is it something you wanted to be when you were a young child? */
== BCERND @827 /* Mother had a love of Nature, something that has passed on to me. To be a guardian of Nature is a great honor. */
== BCMNIKIT @828 /* A family trait, wonderful. */
EXIT

// Edwin banters

CHAIN IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("NikEdwinChat1","LOCALS",0)~ THEN BCMNIKIT NikEdwin1
@829 /* Why the sick look on your face, Edwin? Feeling a little ill are we? */
DO ~SetGlobal("NikEdwinChat1","LOCALS",1)~
== BEDWIN @830 /* I am fine! Leave me be fool! (Stupid woman nosing around in my business!) */
== BCMNIKIT @831 /* Well you don't sound fine. Your voice seems to be a little high pitched. */
== BEDWIN @832 /* Fine, fine! I have a cold nothing more. It affected my voice slightly it is not a big deal. */
= @833 /* Now cease your bothersome questions and leave me be! */
== BCMNIKIT @834 /* Well it looks to me as if someone is having that special time of month. */
== BEDWIN @835 /* (Edwina stares at Nikita. If looks could kill, she would have been dead.) */
== BCMNIKIT @836 /* Err sorry, I think <CHARNAME> wants to talk to me. Talk to you later. */
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("NikEdwinChat2","LOCALS",0)~ THEN BCMNIKIT NikEdwin2
@837 /* Edwin, you are the most arrogant person I have ever met. Were you born this way or is it something that developed over time? */
DO ~SetGlobal("NikEdwinChat2","LOCALS",1)~
== BEDWIN @838 /* You are addressing me woman? */
== BCMNIKIT @839 /* Obviously. */
== BEDWIN @840 /* My answer would be beyond your comprehension. (Such a small mind could never process the complexities that make up the greatness of Edwin.) */
== BCMNIKIT @841 /* It's a small wonder that you don't have any friends with that condescending attitude. */
== BEDWIN @842 /* I do not need nor want friends. You have taken up enough of my valuable time with your poor bumbling attempts at a conversation. Be gone! */
== BCMNIKIT @843 /* Fine by me. This conversation was getting to be a little too stuffy for my tastes. */
EXIT

// Haer Dalis' banters

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("NikHaerChat1","LOCALS",0)~ THEN BCMNIKIT NikHaer1
@844 /* You are the first tiefling I have ever met, Haer'Dalis. You are not what I expected. */
DO ~SetGlobal("NikHaerChat1","LOCALS",1)~
== BHAERDA @845 /* Oh? What did you expect my little dove? */
== BCMNIKIT @846 /* Is it true that tieflings have demon blood? Demons are evil beings after all. */
==BHAERDA @847 /* This sparrow's blood is warm with the blood of a demon it is true. Seek no evil here before you, for you will find none. */
== BCMNIKIT @848 /* Do you mind the reputation it gives you? */
== BHAERDA @849 /* Reputation? What is reputation? Is it the deeds we do in our travels from city to city or the rumors spread by idle gossips? */
= @850 /* To answer your question, no I am not concerned about the reputation it may give me. */
== BCMNIKIT @851 /* A poetic tiefling, how quaint. */
EXIT

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("NikHaerChat2","LOCALS",0)~ THEN BCMNIKIT NikHaer2
@852 /* Have you thought up any good poems lately Haer'Dalis'? If you have I would like to hear it. */
DO ~SetGlobal("NikHaerChat2","LOCALS",1)~
== BHAERDA @853 /* I am afraid not my little dove. A bards greatest enemy has struck this sad sparrow. */
== BCMNIKIT @854 /* Writers block? */
== BHAERDA @855 /* Ah, yes my dove. A foul thing it is, besetting itself on the greatest of minds. */
== BCMNIKIT @856 /* It is a burden on bards, writers, musicians and any other artist of the pen. */
=  @857 /* It's also a blessing. */
== BHAERDA @858 /* How so my little dove? */
== BCMNIKIT @859 /* Once the block is lifted, imagine all of the thoughts racing back into your mind. Have your pen ready, there will be much to write down. */
EXIT

// Imoen banters

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!Dead("c6bodhi")
Global("NikImoenChat1","LOCALS",0)~ THEN BCMNIKIT NikImoen1
@860 /* Imoen, you have known <CHARNAME> since you were children, correct? */
DO ~SetGlobal("NikImoenChat1","LOCALS",1)~
== IMOEN2J @861 /* Yeppers that is right. <CHARNAME> was raised by Gorion and I was raised by Winthrop in Candlekeep. */
== BCMNIKIT @862 /* What was <CHARNAME> like when you were growing up together? */
== IMOEN2J @863 /* <CHARNAME> always had <PRO_HISHER> nose in the books reading and learning new things. Total bore if you ask me. */
= @864 /* <PRO_HESHE> was never any fun to be around. No I'm kidding. <CHARNAME> had <PRO_HISHER> moments of fun. */
== BCMNIKIT @865 /* So <CHARNAME> was mostly a bookworm? Sounds interesting, if you wanted to become a monk. */
== IMOEN2J @866 /* Well I guess when you have a stepfather like Gorion, you're bound to pick up on his habits. */
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
OR(2)
TimeOfDay(NIGHT)
TimeOfDay(DUSK)
OR(2)
AreaType(DUNGEON)
AreaType(FOREST)
Global("NikImoenChat2","LOCALS",0)~ THEN IMOEN2J NikImoen2
@867 /* It's so dark out, I don't know how you can see where you are going without stumbling over something Nikita. */
DO ~SetGlobal("NikImoenChat2","LOCALS",1)~
== BCMNIKIT @868 /* When I was with Section most of my assignments were during the darkness of night. I can see just fine. */
== IMOEN2J @869 /* I'm almost afraid to ask what kind of assignments they were. */
== BCMNIKIT @870 /* The type where my target ended up dead. I was... I was good at being stealthy and accomplishing my mission without error. */
== IMOEN2J @871 /* Sorry, I didn't mean to bring up a touchy subject. */
== BCMNIKIT @872 /* Don't be. I have much to atone for. Not all of my targets were evil. Some... some of them were actually good people. */
= @873 /* (Nikita falls silent and doesn't say any more.) */
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("NikImoenChat3","LOCALS",0)
Gender(Player1,MALE)~ THEN BCMNIKIT NikImoen3
@874 /* Imoen, you must be very close to <CHARNAME>. Is he more than a friend? */
DO ~SetGlobal("NikImoenChat3","LOCALS",1)~
== IMOEN2J @875 /* Me and <CHARNAME> are very close. We've known each other since being raised in Candlekeep. */
== BCMNIKIT @876 /* So you two are lovers? */
== IMOEN2J @877 /* No! Oh no. (Imoen laughs.) He's my brother. */
== BCMNIKIT @878 /* (Nikita's face is slightly red from embarrassment.) Oh... sorry. I don't know what came over me to reach that assumption. */
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("NikImoenChat3a","LOCALS",0)
Gender(Player1,FEMALE)~ THEN BCMNIKIT NikImoen3a
@879 /* Are you and your sister are very close Imoen? */
DO ~SetGlobal("NikImoenChat3a","LOCALS",1)~
== IMOEN2J @875 /* Me and <CHARNAME> are very close. We've known each other since being raised in Candlekeep. */
== BCMNIKIT @880 /* Being close to a sibling I can imagine was a good thing growing up. I didn't have any brothers or sisters, I was on my own. */
== IMOEN2J @881 /* I feel sorry for you. */
== BCMNIKIT @882 /* Don't be. I had plenty of surrogate siblings on the streets. They were my family after mother passed on. */
= @883 /* (A look of sadness is on Nikita's face at the mention of her mother.) We should get going Imoen. */
EXIT

// Jaheira banters

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
AreaType(FOREST)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikJaheiraChat1","LOCALS",0)~ THEN BCMNIKIT NikJaheira1
@884 /* The wilderness is always so quiet compared to the city, don't you agree Jaheira? */
DO ~SetGlobal("NikJaheiraChat1","LOCALS",1)~
== BJAHEIR @885 /* I enjoy the peaceful quiet the forest Nikita. It calms me. Is it unsettling to you? */
== BCMNIKIT @886 /* It's just different for me. Most of my life has been that of a city dweller, hearing the various sounds as people come and go about their business. */
== BJAHEIR @887 /* I feel at home in the forest ever since I was taken in by the druids of the Tethyr forest. */
= @888 /* The opposite could be said about myself, being in the city makes me feel at unease. */
== BCMNIKIT @889 /* I have fond memories of the countryside and the woods when I was younger. My grandparents had a farm I would visit when mother was able to travel. */
= @890 /* Good memories those times were. I used to go out into the woods and watch the squirrels climb the trees and make all sorts of noises. */
== BJAHEIR @891 /* Have you visited your grandparents farm since then? */
== BCMNIKIT @892 /* N-no. They died when a group of bandits raided their home. They took everything of value and killed my grandparents. */
= @893 /* I'm s-sorry but I can't talk about this any more. */
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
AreaType(DUNGEON)
Global("NikJaheiraChat2","LOCALS", 0)~ THEN BCMNIKIT NikJaheira2
@894 /* Is there something wrong Jaheira? You have been on edge since we entered here. */
DO ~SetGlobal("NikJaheiraChat2","LOCALS",1)~
== BJAHEIR @895 /* Being in places like this has always made me feel uncomfortable. I prefer the openness of a forest not the dank darkness of being below ground. */
== BCMNIKIT @896 /* Fear not Jaheira, you will adapt to it over time. */
== BJAHEIR @897 /* That is not likely Nikita. It is unnatural. */
== BCMNIKIT @898 /* Why is that? There are many places one could hide in the darkness below. */
= @899 /* Some of us homeless had to call the sewers home. During the cold months it was warmer and provided better shelter than being above. One thing I could never get over is the stench. */
== BJAHEIR @900 /* Now you see one of the points I was trying to make. */
== BCMNIKIT @901 /* Oh yes I whole heartily agree with that one. */
EXIT

// Jan banters

CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("NikJanChat1","LOCALS",0) ~ THEN BJAN NikJan1
@902 /* Hey there Nik, would you like one of my tasty turnips? They are delicious! Once you start eating one, you won't be able to stop. */
DO ~SetGlobal("NikJanChat1","LOCALS",1)~
== BCMNIKIT @903 /* Turnips? Yuck! I can't stand the taste of those things. */
== BJAN @904 /* My dear you must not be preparing them properly. Uncle Ned always said that to get a great tasting turnip, you must first prepare it properly. There are two different ways to prepare them, depending on how you are going to eat them. Raw or cooked. */
= @905 /* First there's the raw preparation. Uncle Ned said you have to wash it thoroughly in water that comes from a fast running stream or from a well. Next you... */
== BCMNIKIT @906 /* No. */
== BJAN @907 /* No? Ok on to preparations for cooking them then. First you take a fine bristled brush, gently scrub the turnip until all of the dirt is off of it. Once this is done, they must be soaked for an hour before they are cooked, making them nice and tender. */
== BCMNIKIT @908 /* Bloody hell Jan enough already! I do not want any turnips, they taste bad and they make me break out in hives. */
== BJAN @909 /* Well no need for all of that. You should have said you didn't want any. */
== BCMNIKIT @910 /* (Nikita looks at Jan, shakes her head and leaves.) */
EXIT

// Korgan banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikKorganChat1","LOCALS",0)~ THEN BKORGAN NikKorgan1
@911 /* Bloody blazes! I'm out of ale! We need to get to the nearest inn, unless ye 'ave some on ya lass. */
DO ~SetGlobal("NikKorganChat1","LOCALS",1)~
== BCMNIKIT @912 /* No Korgan, I don't have any ale on me. */
== BKORGAN @913 /* I should've known a fey human wouldn't 'ave any of the good stuff on her. Ye probably carryin that pansy elf wine that turns the stomach inside out on us dwarves! */
== BCMNIKIT @914 /* Elven wine? What would make you think I would drink that? Actually I prefer a good mug of Firekin Mead. */
== BKORGAN @915 /* Firekin Mead? That's some potent stuff girly! It burns the throat as it goes down and creates a warm sensation in yer gut. */
== BCMNIKIT @916 /* That it is. The best drink you can have on a cold winter night. */
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("NikKorganChat2","LOCALS",0)~ THEN BCMNIKIT NikKorgan2
@917 /* Your use of the axe is extraordinary, Korgan. */
DO ~SetGlobal("NikKorganChat2","LOCALS",1)~
== BKORGAN @918 /* That I am! Nothin makes me day than swingin this fine axe at an enemy's gut! */
== BCMNIKIT @919 /* You are quite the passionate fighter Korgan */
== BKORGAN @920 /* And I be quite the passionate lover as well! Why don't ye let me show you aye? */
== BCMNIKIT @921 /* I believe I shall pass on that. */
EXIT

// Mazzy banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikMazzyChat1","LOCALS",0)~ THEN BMAZZY NikMazzy1
@922 /* Have you lived in Athkala all of your life Nikita? */
DO ~SetGlobal("NikMazzyChat1","LOCALS",1)~
== BCMNIKIT @923 /* I have lived in Athkatla during most of my childhood which was spent living on the streets. */
== BMAZZY @924 /* A life on the streets is a challenging life. It can lead you down the road of evil or goodness depending on how you met the challenges. */
= @925 /* From the deeds you have done while in this group, I sense you have taken the path of goodness. */
== BCMNIKIT @926 /* Your words are kind Mazzy. I do my best to help those who can not help themselves. Some acquaintances of mine feel the same way, by helping those in need, do what they have to do for the greater good. */
== BMAZZY @927 /* That is noble and honorable of them Nikita. */
== BCMNIKIT @928 /* (A look of sadness is on her face briefly than it is gone.) Yes... they are. */
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("NikMazzyChat2","LOCALS",0)~ THEN BCMNIKIT NikMazzy2
@929 /* Mazzy, have you had to endure much racism in your travels? */
DO ~SetGlobal("NikMazzyChat2","LOCALS",1)~
== BMAZZY @930 /* Racism? */
== BCMNIKIT @931 /* Yes, when people stereotype you because of your race, that being a halfling. Halflings are well "known" for their pick pocketing and food consumption to name a couple examples. */
= @932 /* You being a knight, this can be frustrating to you at times I would imagine. */
== BMAZZY @933 /* It can be frustrating at times, people not taking me serious because of my size, because I am a halfling. */
= @934 /* Once they get pass the exterior and see what a valiant and honorable knight I am, I tend to gain their respect. */
== BCMNIKIT @935 /* You're a good knight Mazzy, never forget that. */
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING) 
HPLT("cmnikita",15)
Global("NikMazzyChat3","LOCALS",0)~ THEN BMAZZY NikMazzy3
@936 /* You should heal those wounds Nikita, before you bleed to death. Here, have some of my family's home brewed healing potion. */
DO ~SetGlobal("NikMazzyChat3","LOCALS",1)~
== BCMNIKIT @937 /* Ow! That stings. I don't know how someone got the upper hand on me. */
== BMAZZY @938 /* Even the best of warriors are injured in the heat of battle. I have a few scars from such battles myself. */
= @939 /* Take this, it will close your wounds up. */
== BCMNIKIT @940 /* Thanks. (Nikita pours more of the liquid on her wounds.) Ahhh! That burns! */
== BMAZZY @941 /* It does indeed burn for a moment, look at the wounds, they are closing up. */
== BCMNIKIT @942 /* That they are. The burning sensation is going away also. Thanks Mazzy. */
== BMAZZY @943 /* Any time my friend. */
EXIT


// Minsc banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
CombatCounter(0)
Global("NikMinscChat1","LOCALS",0)~ THEN BMINSC NikMinsc1
@944 /* You are quiet once battle is engaged Nikita! You should shout out and let your enemies her your voice! They will tremble before you! */
DO ~SetGlobal("NikMinscChat1","LOCALS",1)~
== BCMNIKIT @945 /* My fighting style is that of one that lurks in shadow, striking the enemy when they least expect it. Making noise would alert my whereabouts. */
== BMINSC @946 /* Minsc's loud voice strikes fear into his enemies, like his big sword! Boo agrees. Boo would shout loudly if he had the voice for it. */
== BCMNIKIT @947 /* I think your little friend would be good at striking from the shadows. His small size gives him the advantage Minsc. */
== BMINSC @948 /* No Boo is like Minsc, roars with a loud voice in battle! Well as loud as he can, ha ha! */
== BCMNIKIT @949 /* If you say so big guy. */
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NikMinscChat2","LOCALS",0)~ THEN BCMNIKIT NikMinsc2
@950 /* Minsc! */
DO ~SetGlobal("NikMinscChat2","LOCALS",1)~
== BMINSC @951 /* Yes Nikita? */
== BCMNIKIT @952 /* Would you keep track of your little friend. He keeps getting into my pockets and hides. */
== BMINSC @953 /* But Boo likes Nikita, that is why he hides in your pockets. */
== BCMNIKIT @954 /* I like him to, but he will give me away with his squeaks. Not very effective if I need to hide. */
= @955 /* Now come here and take him Minsc. */
== BMINSC @956 /* (Minsc reaches out to get Boo, but Boo scurries underneath her top.) See Boo like Nikita. */
== BCMNIKIT @957 /* Ah! Get him out from under there. A ha ha, that tickles. Minsc! */
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NikMinscChat3","LOCALS",0)~ THEN BCMNIKIT NikMinsc3
@958 /* Minsc, you are from Rashemen I heard. What is it like? */
DO ~SetGlobal("NikMinscChat3","LOCALS",1)~
== BMINSC @959 /* Its a beautiful place of forests and open lands. Plenty of room for Boo to run free! */
== BCMNIKIT @960 /* What about the people, what are they like? */
== BMINSC @961 /* We warriors sit around camp fires, telling tales of our dajemma, of battles we have fought gloriously! We seek battle and fight valiantly making our enemies cower from our sight! */
== BCMNIKIT @962 /* So you are a race of warriors? */
== BMINSC @963 /* Yes, but our witches help fight the evil wizards. Our witches are smart and know much about magic and our past! */
== BCMNIKIT @964 /* So your people are a people for goodness? */
== BMINSC @965 /* Yes! We fight evil around our homelands, doing righteous butt kicking! */
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NikMinscChat4","LOCALS",0)~ THEN BCMNIKIT NikMinsc4
@966 /* Minsc! Boo is invading my food pouch, for the third time. I told you to keep him with you. */
  DO ~SetGlobal("NikMinscChat4","LOCALS",1)~
== BMINSC @967 /* Boo, come here, come to Minsc. */
= @968 /* (Boo looks at Minsc and does nothing.) */
== BCMNIKIT @969 /* Come over here and pick him up Minsc. */
== BMINSC @970 /* (Boo hides in Nikita's backpack as he approaches.) */
== BCMNIKIT @971 /* All right that did it! */
= @972 /* (Nikita reaches in her backpack and grabs something, pulls it out and throws it at Minsc.) Catch! */
== BMINSC @973 /* Ahhhh!!! (Minsc reaches out, grabs what Nikita threw and lands hard on the ground face first.) */
= @974 /* There Boo has been saved. Ehhh what's this? This isn't Boo! This is a walnut! Where is Boo! */
== BCMNIKIT @975 /* (Nikita holds her hand out.) He's right here. (Nikita walks over to Minsc and places Boo on his head.) */
= @976 /* Now that looks cute. Minsc keep track of Boo from now on, ok? */
EXIT

// Nalia banters

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikNaliaChat1","LOCALS",0)~ THEN BCMNIKIT NikNalia1
@977 /* Nalia, I admire how you help people who are down on their luck, regardless of your station in the nobility. */  
DO ~SetGlobal("NikNaliaChat1","LOCALS",1)~
== BNALIA @978 /* I believe the nobility should help people who need it. They have all of their wealth, what are they going to do with it? There are so many people living on the streets without a roof over their heads. */
== BCMNIKIT @979 /* That's a great outlook you have Nalia, too bad not many nobles have the heart like you. */
= @980 /* I know how life on the streets can be. */
== BNALIA @981 /* Thank you Nikita. You were raised on the streets right? */
== BCMNIKIT @982 /* For most of my young life I was. I was always looking for food in the garbage, pick pocketing people to get money so I could get clothes. It was a hard life. */
== BNALIA @983 /* Now you help others when you can. Your early hardship in life taught you a valuable lesson. */
== BCMNIKIT @984 /* That it did. Be kind to the unfortunate and offer help to those who need help. */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
HPLT("Nalia",15)
Global("NikNaliaChat2","LOCALS",0)~ THEN BCMNIKIT NikNalia2
@985 /* Nalia, you're injured pretty bad. You should drink a healing potion right away. */
DO ~SetGlobal("NikNaliaChat2","LOCALS",1)~
== BNALIA @986 /* Y-yes I will do that, I just have to find it. */
== BCMNIKIT @987 /* I don't want to sound like a mother hen Nalia, but you need to be more careful next time. I would hate to see us lose a valuable companion. */
== BNALIA @988 /* Thank you Nikita, that means a lot. */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
AreaType(CITY)
Global("NikNaliaChat3","LOCALS",0)~ THEN BCMNIKIT NikNalia3
@989 /* Nalia, a few moments a go, a kid brushed up against you. It looked like he took some of your coins, why didn't you stop him? */
DO ~SetGlobal("NikNaliaChat3","LOCALS",1)~
== BNALIA @990 /* Yes I know. He took a few silver pieces from my pocket. */
== BCMNIKIT @991 /* Why didn't you stop him? */
== BNALIA @992 /* He needed the coin more than me. Did you see the clothes he had on? Nothing but rags. */
== BCMNIKIT @993 /* Don't you give coin to charities, orphanages and temples? Isn't that enough? */
= @994 /* You allowed him to steal from you, don't you consider that setting a bad example? */
== BNALIA @995 /* I didn't think of it like that. Stealing is a bad thing to teach a young child, I will make sure to stop a would be thief next time. */
= @996 /* There is one thing I find odd about this conversation. */
== BCMNIKIT @997 /* What is that Nalia? */
== BNALIA @998 /* A Shadow *Thief* talking about not teaching street urchins to steal. I thought being part of a Shadow Thief is to teach youngsters the finer points of thievery. */
== BCMNIKIT @999 /* I am not a Shadow Thief Nalia. */
== BNALIA @795 /* Well I thought... */
== BCMNIKIT @1000 /* I associate with them from time to time Nalia, nothing more. Lets leave it that. */
EXIT

// Valygar banters

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
AreaType(CITY)
Global("NikValChat1","LOCALS",0)~ THEN BCMNIKIT NikVal1
@1001 /* The busy city that is full of life of many interesting people , oh how I enjoy being here. Don't you enjoy being in the city Valygar? */
DO ~SetGlobal("NikValChat1","LOCALS",1)~
== BVALYGA @1002 /* The city is a place of disease, corruption, murder, death, pollution and the hunger of small children. */
= @1003 /* Not what I would call my place of enjoyment. */
== BCMNIKIT @1004 /* Not too fond of cities I take it? */
== BVALYGA @1005 /* No. I prefer the quietness, the peace that the untainted forest has to offer. */
== BCMNIKIT @1006 /* Quite the negative person you are Valygar. */
== BVALYGA @1007 /* One person's view of negativism is another's realism. */
EXIT

// Viconia banters

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
TimeGT(20)
TimeLT(6)
AreaType(OUTDOOR)
Global("NikVicChat1", "LOCALS", 0)~ THEN BCMNIKIT NikVic1
@1008 /* Admiring the darkness Viconia? */  DO ~SetGlobal("NikVicChat1", "LOCALS", 1)~
== BVICONI @1009 /* What makes you think that Nikita? */
== BCMNIKIT @1010 /* You keep gazing at the stars and the moon as if it was your first time seeing them. */
== BVICONI @1011 /* I find them memorizing, its an alien thing for me to see. */
== BCMNIKIT @1012 /* Being in the sky less underdark would be unsettling to me. It would make me feel claustrophobic. */
== BVICONI @1013 /* You would adapt to it or die. Only the strong survive in the underdark, those who show signs of weakness will not live long. */
== BCMNIKIT @1014 /* Such a harsh outlook on life Viconia. */
== BVICONI @1015 /* Life is harsh Nikita, never forget that. */
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikVikChat2","LOCALS",0)~ THEN BVICONI NikVic2
@1016 /* Why do you keep staring at me darthiir? You have been doing it since we met. */
DO ~SetGlobal("NikVikChat2","LOCALS",1)~
== BCMNIKIT @1017 /* Have I? (Nikita thinks for a moment, pondering what to say next.) */
= @1018 /* I have met drow before but I never traveled with them for an extended period. */
== BVICONI @1019 /* Met drow? Did they live long, knowing how you surfacers would rather kill my kind than allow us to live. */
== BCMNIKIT @1020 /* On the contrary, they were informants they provided us with valuable information. */
= @1021 /* Not all surfacers kill drow on first sight. */
== BVICONI @1022 /* It has been my past experiences that surfacers would rather kill than get to know a drow that walks the surface. */
= @1023 /* With our reputation it would serve them to act that way. */
== BCMNIKIT @1024 /* Yes, you are right on that Viconia. */
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
OR(2)
TimeOfDay(DUSK)
TimeOfDay(NIGHT)
AreaType(OUTDOOR)
Global("NikVikChat3","LOCALS",0)~ THEN BVICONI NikVic3
@1025 /* I prefer to travel in the dark, away from that damnable yellow orb. */
DO ~SetGlobal("NikVikChat3","LOCALS",1)~
== BCMNIKIT @1026 /* Find it blinding do you? Your eyes may adjust after a few years being on the surface. */
== BVICONI @1027 /* Even if time passes and my eyes adjust, I will still consider that yellow orb a foul thing to behold. */
== BCMNIKIT @1028 /* No romantic sunrises for you Viconia? */
== BVICONI @1029 /* Waela darthiir. */
== BCMNIKIT @1030 /* Just as I thought. */
EXIT

// Yoshimo banters

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("NikYoshiChat1","LOCALS",0)~ THEN BCMNIKIT NikYosh1
@1031 /* Yoshimo, you hail from Kara-Tur correct? */
DO ~SetGlobal("NikYoshiChat1","LOCALS",1)~
== BYOSHIM @1032 /* Yes I do Nikita. Kara-Tur is a wonderful place with a few thieving guilds. If we ever go there, you should think about joining one. */
== BCMNIKIT @1033 /* I heard about their guilds and what they are capable of. Your basic riff raff thieves that would steal a single copper from the corpse of a dead man. */
= @1034 /* Assassination guilds are known by a select few just as well as bounty hunting guilds. Not the type of guilds that get advertised. */
== BYOSHIM @1035 /* Indeed. That is possible Nikita. */
= @1036 /* Why would this interest a Shadow Thief? */
== BCMNIKIT @1037 /* Shadow Thief? I never implied I was a member of the Shadow Thieves. */
== BYOSHIM @1038 /* But you associate yourself with them as if you are one of them. Most curious. */
== BCMNIKIT @1039 /* Curious, as in how you changed the subject Yoshimo? */
== BYOSHIM @1040 /* Did I? I thought we were discussing your affiliation with the Shadow Thieves. */
== BCMNIKIT @1041 /* We were discussing the guilds in Kara-Tur, specifically the assassin and bounty hunter guilds. */
== BYOSHIM @1042 /* Not any more. Nice talking Nikita. */
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",16)
Global("NikYoshiChat2","LOCALS",0)~ THEN BCMNIKIT NikYosh2
@1043 /* I was wondering about something Yoshimo. */
DO ~SetGlobal("NikYoshiChat2","LOCALS",1)~
== BYOSHIM @1044 /* What would that be Nikita? */
== BCMNIKIT @1045 /* Why are you with us? What motivates you to be in <CHARNAME>'s group? */
== BYOSHIM @1046 /* I could ask the same question about a Shadow Thief being in the group. */
== BCMNIKIT @1047 /* I tire of your word play Yoshimo, answer the question. */
== BYOSHIM @1048 /* Ever since we met, you have had a distrust of me. I have seen how you look at me, always a look of contempt on your face. */
= @1049 /* But to answer your question, I am here to help <CHARNAME>. I heard about <PRO_HISHER> adventures along the Sword Coast and Baldur's Gate and only wish to ofer my services to <PRO_HIMHER>. */
== BCMNIKIT @1050 /* So you only wish to offer your services? No hidden agenda? */
== BYOSHIM @1051 /* You wound me madam with your questions. */
== BCMNIKIT @1052 /* You have evaded my questions yet again. Are you always so difficult? */
== BYOSHIM @1053 /* Not difficult. I just know how to play the game. */
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",16)
Global("NikYoshiChat3","LOCALS",0)
OR(3)
AreaCheck("AR1602")
AreaCheck("AR1604")
AreaCheck("AR1500")
~ THEN BYOSHIM NikYosh3
@1054 /* Why do you keep staring at me Nikita? You've been doing it since we arrived here. */
DO ~SetGlobal("NikYoshiChat3","LOCALS",1)~
== BCMNIKIT @1055 /* You've seem anxious since we arrived here Yoshimo. Why is that? */
== BYOSHIM @1056 /* Anxious? More like sea sickness. I hate traveling by ship, it makes my stomach toss and turn. */
== BCMNIKIT @1057 /* Sea sickness? Your anxiety occurred shortly after we landed in port. Seems odd how... */
== BYOSHIM @1058 /* Give it a rest will you! Ever since we have met, you have done nothing but question my intents, and watch my every move. */
= @1059 /* I tire of this. */
== BCMNIKIT @1060 /* Losing your cool Yoshimo? I thought you were better at masking your emotions, I guess I was wrong. */
== BYOSHIM @1061 /* Lets concentrate on rescuing Imoen, Nikita, and once that is done, we can settle our differences. */
== BCMNIKIT @1062 /* Name the when and where and I'll be there. */
EXIT

// Misc banters



