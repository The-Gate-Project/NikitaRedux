BEGIN BCMNIKIT

// General dialogs with PC

IF
~Global("CM_NikitaFriendTalk","GLOBAL",2)~ THEN BEGIN NikTalk1
SAY ~Tell me something about yourself, <CHARNAME>. I am curious about the person that I travel with.~
 ++ ~What do you want to know?~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11a
 ++ ~It's kinda of boring, there isn't much to tell. I was raised by monks in a library.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11b
 ++ ~I'm your typical adventurer.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11c
 ++ ~I'm a simple <PRO_RACE>, nothing more.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",3)~ GOTO NikTalk11d
END

IF ~~ NikTalk11a
SAY ~I would like to know more about the leader that I follow, nothing more.~
 ++ ~Very well then. I am a simple <PRO_RACE>.~ GOTO NikTalk11d
 ++ ~I'm a simple <PRO_MANWOMAN> on a grand adventure to see the world.~ GOTO NikTalk11c
 ++ ~Before I took to adventuring, I was raised by monks in a library called Candlekeep.~ GOTO NikTalk11b
 ++ ~I'm an adventurer. What else is there to know?~ GOTO NikTalk11c
END

IF ~~ NikTalk11b
SAY ~Raised in a library? I would guess you learned a lot while you were there.~
 ++ ~Even though some of the tutors were harsh task masters, I still learned a lot from them.~ GOTO NikTalk11L1
 ++ ~I never listened in my lessons. They were pretty boring.~ GOTO NikTalk11L2
 ++ ~I learned a lot while I was there. I gained much insight in the lessons that were taught to me.~ GOTO NikTalk11L3
END


IF ~~ NikTalk11c
 SAY ~Adventuring to see the world and visiting new people and places, is something that I consider exciting. I've done a lot of traveling down the Sword Coast. I know you are new to Amn, what do you think of it so far?~
 ++ ~I find it to be a cess pit of corruption and lowly thieves that would steal a half copper from a child.~ GOTO NikTalk11A1
 ++ ~So far Amn seems like a wonderful city. Full of merchants selling their wares and friendly people all around.~ GOTO NikTalk11A2
 ++ ~I don't know what to think of it yet. Show me around town Nik and I may enjoy the sight seeing even more.~ GOTO NikTalk11A3
 ++ ~What do I think about Amn? I don't know yet, time will tell.~ GOTO NikTalk11A4
END

IF ~~ NikTalk11d
 SAY ~A simple <PRO_RACE>, I think not <CHARNAME>. Surely you can tell me something about yourself.~
 ++ ~Ok Nik I give in. I'm a simple <PRO_MANWOMAN> on a grand adventure to see the world.~ GOTO NikTalk11c
 ++ ~If you must know Nik, before I took to adventuring, I was raised by monks in a library called Candlekeep.~ GOTO NikTalk11b
 ++ ~I'm an adventurer, not a big surprise I am sure. What else is there to know?~ GOTO NikTalk11c
END

IF ~~ NikTalk11A1
 SAY ~Really? With an attitude like that, I would keep those comments like that to yourself. You never know who may be listening and take offense to your words.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk11A2
 SAY ~It may have its problem areas, what city doesn't, but it's a good city in my opinion.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk11A3
SAY ~Oh? It would be a pleasure to show you around <CHARNAME>. Its a big city so it may take a while.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk11A4
SAY ~Well, I hope you enjoy being here in Amn. It's been my home for so long. Well, before I was brought into Section that is.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk11L1
SAY ~Sometimes the best lesson learned, is the one that had the most hardship. Living on the streets and making due with what you have or could get, was my life's harsh lesson to learn.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk11L2
SAY ~Well, I hope that is not a trait you still have <CHARNAME>. Ignorance is not bliss, it may get you into trouble.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk11L3
SAY ~That is good to hear <CHARNAME>. I hope you use that knowledge from your time at Candlekeep and apply it now. What you learn, may help you out at a later time.~
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",4)~
THEN BEGIN NikTalk2
SAY ~<CHARNAME>, I am curious as to who Imoen is. I only recall her during our brief meeting back in Baldur's Gate. Is she fellow companion you met on your travels or is she something more?~
 ++ ~Imoen and I grew up together, and I've always thought of her as a sister.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk21a
 ++ ~We've known each other a long time, since when we were children in fact.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk22a
 ++ ~Imoen? She's just a means to an end. It's Irenicus I want!~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk23a
 ++ ~Imoen is more than that, she's my best friend.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",5)~ GOTO NikTalk24a
END

IF ~~ NikTalk21a
SAY ~You were raised together? So I would imagine that Imoen is very special to you then?~
 ++ ~That she is, we are best friends.~ GOTO NikTalk21b
 ++ ~Being raised together had made us close to one another. I think of her as my best friend.~ GOTO NikTalk21b
 ++ ~If you knew Imoen, you would feel the same. She's very special.~ GOTO NikTalk21c
END

IF ~~ NikTalk21b
SAY ~It's very noble of you <CHARNAME> to seek out your best friend and help her. I hope we make it in time to save her.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk21c
SAY ~Lucky for Imoen that she has a great friend in you <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk21d
SAY ~Annoying she may be, but you have strong feelings towards her, otherwise you would not be helping her out.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk22a
SAY ~You thought of her as a sister? What was she like when you two were growing up <CHARNAME>?~
 ++ ~She was a trouble maker when we were growing up. Nothing bad mind you, she used to pull all sorts of pranks and jokes, but I would cover for her if she got into too much trouble.~ GOTO NikTalk21c
 ++ ~She would pull pranks and steal minor things. I would cover her of course, like a good friend would.~ GOTO NikTalk21c
 ++ ~Never mind that, I lied. I wasn't serious about Imoen. It's Irenicus I'm after.~ GOTO NikTalk23a
 ++ ~She was an annoying little brat who always got herself into trouble. I don't know why I am helping her out of trouble, yet again.~ GOTO NikTalk21d
END


IF ~~ THEN NikTalk23a
SAY ~Well I guess I know where your loyalties lie <CHARNAME>, me, myself and I. It's all about you and your petty revenge, what a shame. You would have fit into the Section lifestyle.~
IF ~~ THEN EXIT
END


IF ~~ THEN NikTalk24a
SAY ~A best friend is it? Yes, I can see you have strong feelings towards her. I do hope we find her in time.~
++ ~I hope we find her in time to Nikita. I would be lost without her if anything happened to her.~ GOTO NikTalk24b
++ ~We really should get going Nikita. I have a feeling time is starting to run out on her.~ GOTO NikTalk24c
END

IF ~~ NikTalk24b
SAY ~Well, we should quit chatting about this and find her quickly <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk24c
SAY ~Of course <CHARNAME>, we should double our efforts to get to her.~
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",6)~
THEN BEGIN NikTalk3
SAY ~Gorion is a name I hear spoken often. Who is this person and what does he mean to you?~
++ ~I don't want to talk about this with you. I'm sorry, perhaps another time.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",7)~ GOTO NikTalk31a
++ ~Gorion was my foster father. He raised me at Candlekeep.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",7)~ GOTO NikTalk32a
++ ~Gorion was the man who raised me since I was little. He was a stuffy old man, but he was a good man none of the less.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",7)~ GOTO NikTalk32a
END

IF ~~ NikTalk31a
SAY ~Of course <CHARNAME>, we can discuss this later if you wish.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk32a
SAY ~Was? He is deceased then?~
++ ~Yes. He was killed by a villain named Sarevok, who happen to be my half brother.~ GOTO NikTalk32b
++ ~Yes, he is gone and I miss him.~ GOTO NikTalk32c
++ ~Gorion died defending me from my half brother, Sarevok when we left Candlekeep.~ GOTO NikTalk32d
END

IF ~~ NikTalk32b
SAY ~Your own half brother killed him? That is most foul deed.~
++ ~Y-yes it was a foul deed. I am sorry, I don't wish to discuss this any further.~ GOTO NikTalk31a
++ ~Sarevok had a grand plan of conquest, Gorion got in his way and was killed for it.~ GOTO NikTalk32e
END

IF ~~ NikTalk32c
SAY ~What happen to him if I may ask?~
++ ~Yes. He was killed by a villain named Sarevok, who happen to be my half brother.~ GOTO NikTalk32b
++ ~I am sorry Nik, but it's too hard for me to talk about this, even now.~ GOTO NikTalk31a
++ ~Gorion died defending me from my half brother, Sarevok when we left Candlekeep.~ GOTO NikTalk32d
END

IF ~~ NikTalk32d
SAY ~Your half brother killed him? Why would he do such a thing?~
++ ~I-it's hard to talk about, even now. I'm sorry, I don't wish to discuss this any further.~ GOTO NikTalk31a
++ ~Murder and war was in his blood as well power. Gorion got in the way and Sarevok removed him. But in the end, Gorion was avenged, Sarevok died by my hands.~ GOTO NikTalk32f
++ ~Sarevok was an evil power obsessed bastard. He killed a great man, one who I avenged righteously in the end!~ GOTO NikTalk32f
END

IF ~~ NikTalk32e
SAY ~I know the feeling. My grandparents were killed when they got in the way of bandits who raided their home. Y-yes I know how you feel indeed.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk32f
SAY ~A shame Gorion was lost due to your power mad half brother. May his soul rest in peace.~
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",8)~
THEN BEGIN NikTalk4
SAY ~<CHARNAME>, I was wondering if you have any living relatives. Being on the road so much, I would imagine you would miss them.~
++ ~None that I consider relatives.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk41a
++ ~Yes so many that I've lost count.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk41a
++ ~None except Imoen I suppose.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk42a
++ ~I'd rather not talk about it.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",9)~ GOTO NikTalk41c
END

IF ~~ NikTalk41a
SAY ~What do you mean?~
++ ~All the Bhaalspawn are my siblings, I guess. Bhaal was one busy god let me tell you.~ GOTO NikTalk41b
++ ~Bah, nothing, never mind. I don't like talking about this after all.~ GOTO NikTalk41c
++ ~I mean I'm an offspring of Bhaal and I would guess there are many more offspring by him. He saw his demise coming after all. So in a sense they are family.~ GOTO NikTalk41b
END

IF ~~ NikTalk41b
SAY ~Yes that would make sense after all. I did not think about that.~
++ ~So Nikita what about you? How is your family doing?~ GOTO NikTalk41d
++ ~You rarely think before you speak, do you?~ GOTO NikTalk41h
++ ~I'd rather hear about your family Nikita.~ GOTO NikTalk41d
END

IF ~~ NikTalk41c
SAY ~Very well.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk41d
SAY ~Me? I'm very private, especially about my past. You seem like a decent person <CHARNAME>, ugh I don't know.~
++ ~You can trust me Nik. I talked about myself, some information that I keep between myself and a select few. Surely you can say something about your past?~ GOTO NikTalk41e
++ ~Well keep your past to yourself. I really don't care.~ GOTO NikTalk41f
++ ~Why are you so private Nik? You can fill me in on something at least. I like to know about the people who are in my group are.~ GOTO NikTalk41g
END

IF ~~ NikTalk41e
SAY ~Yes, you are right about that <CHARNAME>, you have told me important information about yourself.~
= ~Well, I never knew my father he was out of our life soon after I was born. My mother never said much about him.~
= ~My mother wasn't there much for me. She thought drowning her sorrows in ale was more important.~
= ~I was pretty much raised on the streets of Amn. Pick pocketing, stealing, doing whatever it took to survive. Than I was... well, never mind. I don't wish to discuss this any longer.~
IF ~~ THEN DO ~SetGlobal("CM_NikRevealPast","GLOBAL",1)~
EXIT
END

IF ~~ NikTalk41f
SAY ~Fine by me!~
IF ~~ THEN EXIT
END

IF ~~ NikTalk41g
SAY ~I have my reasons for being private, but yes, you are right about that <CHARNAME>, I should tell you more about myself.~
= ~Well, I never knew my father he was out of our life soon after I was born. My mother never said much about him.~
= ~My mother wasn't there that much for me any way. She thought drowning her sorrows in ale was more important.~
= ~I was pretty much raised on the streets. Pick pocketing, stealing, doing whatever it took to survive. Then I was... well, never mind. I don't wish to discuss this any longer.~
IF ~~ THEN DO ~SetGlobal("CM_NikRevealPast","GLOBAL",1)~
EXIT
END

IF ~~ NikTalk41h
SAY ~Cute <CHARNAME>, very cute. I believe this discussion is over.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk42a
SAY ~Of course. You two were raised together.~
++ ~Yes, she is the only person I consider family, related by blood or otherwise. What of you?~ GOTO NikTalk41d
++ ~But other than Imoen, I'm pretty much on my own, I suppose. What about you?~ GOTO NikTalk41d
++ ~I'd rather hear about your family Nikita.~ GOTO NikTalk41d
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",10)~
THEN BEGIN NikTalk5
SAY ~<CHARNAME>, I was wondering what do you plan on doing with all of the gold coins in your pouch?~
 ++ ~(You put your hand over the pouch, looking at Nikita nervously.) Why, do you plan on pick pocketing me?~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~  GOTO NikTalk51a
 ++ ~I don't think its really any of your business what I do with *my* gold coins.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~ GOTO NikTalk51b
 ++ ~Well I plan on giving some of it as a donation to needy kids or some other charitable cause.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~ GOTO NikTalk51c
 ++ ~I really don't feel like having this conversation right now Nikita.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",11)~  GOTO NikTalk51d
END

IF ~~ NikTalk51a
SAY ~(Nikita laughs.) Of course not, silly. I was wondering what you plan on doing with all of that coin. Giving some as a donation to needy kids would be a good thing to do.~
 ++ ~I don't think its really any of your business what I do with *my* gold coins.~ GOTO NikTalk51b
 ++ ~You are right Nikita, I should give some of this to a worthy charity. The poor orphans need this more than I do.~ GOTO NikTalk51c
 ++ ~I really don't feel like having this conversation right now Nikita.~ GOTO NikTalk51d
END

IF ~~ NikTalk51b
SAY ~It is your money after all, do as you wish with it. I thought I would mention that helping the needy would be a good thing to do. I guess you don't want to hear it.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk51c
SAY ~Really? That would be great! I know of a few organizations you could give it to.~
++ ~I look forward to helping out people, they should not suffer needlessly.~ GOTO NikTalk52a
++ ~Heh, got you. I was kidding, I would never give away my hard earned coin to a bunch of bums.~ GOTO NikTalk52b
IF ~Gender(Player1,FEMALE)~ REPLY ~Good. We will have to visit them when we have the chance. I enjoy helping the needy, especially the children.~ GOTO NikTalk52c
IF ~Gender(Player1,MALE)~ REPLY ~Good. We will have to visit them when we have the chance. I enjoy helping the needy, especially the children.~ GOTO NikTalk52c1
END

IF ~~ NikTalk51d
SAY ~Very well, some other time perhaps.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk52a
SAY ~(Nikita smiles at you.) That is wonderful <CHARNAME>! You truly have a noble heart.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk52b
SAY ~(Nikita stares at you with contempt and says nothing more.)~
IF ~~ THEN EXIT
END

IF ~~ NikTalk52c
SAY ~(Nikita walks up to you and gives you a hug.) That is wonderful <CHARNAME>! You truly have a noble heart.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk52c1
SAY ~(Nikita walks up to you and kisses you on the cheek.) That is wonderful <CHARNAME>! You truly have a noble heart.~
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",12)~
THEN BEGIN NikTalk7
SAY ~(You notice Nikita has been silent lately. She has been keeping to herself more than what she usually does.)~
 ++ ~Is something on your mind Nikita?~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",13)~ GOTO NikTalk71a
 ++ ~(You leave her alone to her thoughts.)~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",13)~ GOTO NikTalk71b
 ++ ~Is there something bothering you Nikita? You have been silent for a while.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",13)~ GOTO NikTalk71a
END

IF ~~ NikTalk71a
SAY ~Hmm? Oh, I was just thinking about someone.~
 ++ ~Who are you thinking about?~ + NikTalk72a
 ++ ~Are you thinking about me?~ + NikTalk72b
 ++ ~Do you mind if I ask who you are thinking about?~ + NikTalk72a
 ++ ~Sorry, I didn't mean to interrupt you.~ + NikTalk72c
END

IF ~~ NikTalk71b
SAY ~(She is still deep in her thoughts, you go about your business.)~
IF ~~ THEN EXIT
END

IF ~~ NikTalk72a
SAY ~I am thinking about a friend, a lover. He's gone to Waterdeep to find his son, I haven't heard from him in a while. (A surprised look is on Nikita's face, as if she said too much.)~
 ++ ~Find his son? Did he get in some kind of trouble?~ + NikTalk73a
 ++ ~I hope he is all right. Not hearing from a loved one is a painful wait.~ + NikTalk73b
 ++ ~Interesting. We should get going.~ + NikTalk73c
END

IF ~~ NikTalk72b
SAY ~You? Oh no <CHARNAME>, not you. I am thinking about a friend, a lover. He's gone to Waterdeep to find his son, I haven't heard from him in a while. (A surprised look is on Nikita's face, as if she said too much.)~
 ++ ~Find his son? Did he get in some kind of trouble?~ + NikTalk73a
 ++ ~I hope he is all right. Not hearing from a loved one is a painful wait.~ + NikTalk73b
 ++ ~Interesting. We should get going.~ + NikTalk73c
END

IF ~~ NikTalk72c
SAY ~(She says nothing else, you go about your business.)~
IF ~~ THEN EXIT
END

IF ~~ NikTalk73a
SAY ~No I don't think so. Years ago when Michael was on a mission in Waterdeep, he met a woman and, well... a few months later he was a father. He hasn't seen his son since then because he was in Section.~
 ++ ~Interesting, well I hope he is all right. Not hearing from a loved one is a painful wait.~ + NikTalk73b
 ++ ~Interesting. We should get going.~ + NikTalk73c
 ++ ~Sounds like a dangerous situation if you ask me. Waterdeep is a hive of scum and villainy after all. I hope you hear from him soon.~ + NikTalk73d
END

IF ~~ NikTalk73b
SAY ~Yes, I am sure he is alright, he is very good at what he does. I should be use to this by now, we were taught to disconnect ourselves when emotional situations arise.~
= ~(A blank look appears on her face.) I believe I had said enough, we should get back to the task at hand.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk73c
SAY ~Very well.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk73d
SAY ~It is a dangerous situation but he is very good at what he does. He will be just fine. I should be use to this by now, we were taught to disconnect ourselves when emotional situations arise.~
= ~(A blank look is on her face.) I believe I had said enough, we should get back to the task at hand.~
IF ~~ THEN EXIT
END

IF
~Global("CM_NikitaFriendTalk","GLOBAL",14)~
THEN BEGIN NikTalk8
SAY ~What is it <CHARNAME>? You have a look on your face as if you have a question to ask me.~
 ++ ~Am I that transparent?~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",15)~ + NikTalk81a
 ++ ~I am not that transparent Nikita.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",15)~ + NikTalk81b
 ++ ~I do have a question to ask, I was just waiting to ask it at the right time.~ DO ~RealSetGlobalTimer("CM_NikitaFriendTimer","GLOBAL",2000) SetGlobal("CM_NikitaCheckF","GLOBAL",0) SetGlobal("CM_NikitaFriendTalk","GLOBAL",15)~ + NikTalk81c
END

IF ~~ NikTalk81a
SAY ~Oh I know you are not <CHARNAME>. I am just saying that I am pretty good at reading the expressions of others and I have been around you for a while to get an idea on how you are. What did you wish to ask me?~
 ++ ~The Shadow Thieves here in Amn, what do you think of them?~ + NikTalk82a
 ++ ~I was wondering what your opinion is on the Shadow Thieves?~ + NikTalk82a
 ++ ~Well that is good to know. Any way, I was curious on your opinion of the Shadow Thieves, what do you think about them?~ + NikTalk82a
END

IF ~~ NikTalk81b
SAY ~No, not really <CHARNAME>. But I am pretty good at reading the expressions of others and I have been around you for a while to get an idea on how you are. What did you wish to ask me?~
 ++ ~The Shadow Thieves here in Amn, what do you think of them?~ + NikTalk82a
 ++ ~I was wondering what your opinion is on the Shadow Thieves?~ + NikTalk82a
 ++ ~Well that is good to know. Any way, I was curious on your opinion of the Shadow Thieves, what do you think about them?~ + NikTalk82a
END

IF ~~ NikTalk81c
SAY ~Right now is a good as time as any. What did you wish to know?~
 ++ ~The Shadow Thieves here in Amn, what do you think of them?~ + NikTalk82a
 ++ ~I was wondering what your opinion is on the Shadow Thieves?~ + NikTalk82a
 ++ ~Well that is good to know. Any way, I was curious as to your opinion of the Shadow Thieves, what do you think about them?~ + NikTalk82a
END

IF ~~ NikTalk82a
SAY ~They're an efficient organization with many connections in the underworld. Their power base here in Amn is great and in other cities along the Sword Coast. What else do you wish to know?~
 ++ ~I think they're nothing more than a bunch of criminals that should rot in jail.~ + NikTalk82b
 ++ ~Interesting. What is your connection with them?~ + NikTalk82c
 ++ ~What do you think about the Nards Collective?~ + NikTalk82d
 ++ ~You seem to know a lot about them. Are you a member?~ + NikTalk82e
END

IF ~~ NikTalk82b
SAY ~Why would you say that? The majority of them are decent people if you got to know them.~
 ++ ~They're nothing but a bunch of assassins, murders, pimps and dealers of illegal goods. They would stab you in the back and steal from your corpse.~ + NikTalk83a
 ++ ~Stealing from hard working people is hardly what I call noble.~ + NikTalk83b
 ++ ~You seem to have a silly romantic notion about the Shadow Thieves.~ + NikTalk83a
END

IF ~~ NikTalk82c
SAY ~My connection with them? They are associates that have helped me from time to time, plus I aid them when they need our help, well, Section's help. They are a great source of information as well.~
= ~(A surprised look is on her face and is then quickly gone.) I-I said more than enough on this. We should get going <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk82d
SAY ~The Nards Collective needs to be taken out of play. They're an evil organization that needs to be removed in my opinion.~
 ++ ~The same thing could be said about the Shadow Thieves in general. What good could come out of a thief organization?~ + NikTalk82d1
 ++ ~Interesting. Now what is your connection with the Shadow Thieves?~ + NikTalk82c
END

IF ~~ NikTalk82d1
SAY ~The Shadow Thieves like any organization will have it's bad apples. For the most part they are a decent bunch of men and women. They help out the homeless by setting up soup kitchens and shelters, when is the last time a noble has done anything like that?~
= ~I said enough on this topic <CHARNAME>. Your questions are starting to become insulting.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk82e
SAY ~No, I am not a member of their guild. They are associates that have helped me from time to time, plus I aid them when they needed help. They are a great source of information after all.~
= ~(A surprised look is on her face and is quickly gone.) I-I said more than enough on this. We should get going <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk83a
SAY ~That is not true <CHARNAME>. Granted there are a few bad apples but a lot of members are decent and help out the unfortunate. They help out the homeless by setting up soup kitchens and shelters, when is the last time a noble has done anything like that?~
= ~I said enough on this topic <CHARNAME>. Your questions are starting to become insulting.~
IF ~~ THEN EXIT
END

IF ~~ NikTalk83b
SAY ~They take from the rich, not those who work hard to make an earning. Nobles have all of that coin and spend it on trivial things on themselves while many of the poor starve. The Shadow Thieves help out the homeless by setting up soup kitchens and shelters, when is the last time a noble has done anything like that?~
= ~I said enough on this topic <CHARNAME>. Your questions are starting to become insulting.~
IF ~~ THEN EXIT
END

// Class specific dialogs
/* ------------------------------------------------ */

IF
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,RANGER_ALL)
Global("NikRangerTalk","GLOBAL",0)~ THEN BEGIN NikRanger
SAY ~I never really understood what it means to be a ranger <CHARNAME>. Perhaps you can tell me more about being a guardian of the woods?~
 ++ ~Why is that?~ DO ~SetGlobal("NikRangerTalk","GLOBAL",1)~ GOTO NikRanger1a
 ++ ~What is there not to understand?~ DO ~SetGlobal("NikRangerTalk","GLOBAL",1)~ GOTO NikRanger1a
 ++ ~What do you wish to know? Anything in specific?~ DO ~SetGlobal("NikRangerTalk","GLOBAL",1)~ GOTO NikRanger2a
END

IF ~~ NikRanger1a
SAY ~You could say I lived a sheltered life in the city, far from the woods. Except for a few visits to my grandparents farm when I was a a child, I know little of Nature or Her guardians.~
 ++ ~I protect nature from those who would do it harm. Beings like ogres and trolls care nothing for nature. I fight them whenever I can.~ GOTO NikRanger3a
 ++ ~It's nothing glamorous. I aid and defend nature from evil beings who would do it harm.~ GOTO NikRanger3a
 ++ ~Sheltered life? You city slickers would not be able to understand nature, so why bother asking about it?~ GOTO NikRanger4a
END

IF ~~ NikRanger2a
SAY ~I heard you can speak to animals. Is this true?~
 ++ ~I can speak to animals but they never answer back. Go figure.~ GOTO NikRanger2b
 ++ ~Speak to animals? That's ridiculous. Any other bright questions you want to ask me?~ GOTO NikRanger2c
 ++ ~I can speak with them and they communicate back to me in a limited way. Not in a verbal language that you can understand, but in feelings. It's hard to explain.~ + NikRanger2d
END

IF ~~ NikRanger2b
SAY ~Interesting. Too bad they can not communicate back at you. I wonder what goes on in their little minds.~
IF ~~ THEN EXIT
END

IF ~~ NikRanger2c
SAY ~No, not at the moment. I need some time to go think up some bright questions for you.~
IF ~~ THEN EXIT
END

IF ~~ NikRanger2d
SAY ~That seems interesting <CHARNAME>. I always wondered what it would be like to be able to speak with an animal.~
= ~I had a cat once, I wondered what she thought sometimes.~
IF ~~ THEN EXIT
END

IF ~~ NikRanger3a
SAY ~Protecting nature is a noble deed <CHARNAME>. Nature is beautiful, it would be sad to see it be destroyed by those of evil intent.~
IF ~~ THEN EXIT
END

IF ~~ NikRanger4a
SAY ~Indeed. I wonder at times why I bother talking to you.~
IF ~~ THEN EXIT
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,MONK)
Global("NikMonkTalk","GLOBAL",0)~ THEN BEGIN NikMonk
SAY ~<CHARNAME>, you fight barehanded a lot, I have noticed. I find this unusual when a sword of a knife is at your disposal.~
 ++ ~Why fight with a man made weapon, when the man himself is a weapon? A weapon may not be at your disposal thus it is good to know the unarmed fighting skills.~ DO ~SetGlobal("NikMonkTalk","GLOBAL",1)~ GOTO NikMonk1a
 ++ ~What do you mean? I don't find it strange at all. It's how I was raised.~ DO ~SetGlobal("NikMonkTalk","GLOBAL",1)~ GOTO NikMonk2a
END

IF ~~ NikMonk1a
SAY ~You are correct about that. I have received unarmed training myself but nothing that compares to yours. I prefer a bladed weapon in my hand when I am engaged in combat.~
IF ~~ THEN EXIT
END

IF ~~ NikMonk2a
SAY ~I just find it strange that you go charging into action with your fists against well armed opponents.~
 = ~I prefer a long sword or my trust worthy crossbow to reach out and touch someone.~
IF ~~ THEN EXIT
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,FIGHTER_ALL)
!Class(Player1,MONK)
Global("NikFighterTalk","GLOBAL",0)~ THEN BEGIN NikFighter
SAY ~I noticed when we are engaged in combat, you fight well, <CHARNAME>. Where did you learn it from?~
 ++ ~Really? And who made you my judge?~ DO ~SetGlobal("NikFighterTalk","GLOBAL",1)~ GOTO NikFighter1a
 ++ ~I learned it while I was at Candlekeep. You think my fighting skills are good?~ DO ~SetGlobal("NikFighterTalk","GLOBAL",1)~ GOTO NikFighter3a
 ++ ~Well? I thought I fought great.~ DO ~SetGlobal("NikFighterTalk","GLOBAL",1)~ GOTO NikFighter2a
END

IF ~~ NikFighter1a
SAY ~It was not my intention to offend you. I just took notice of your fighting ability and thought I would give you praise.~
 = ~With a little more practice, you may be my equal. (Nikita winks at you.)~
IF ~~ THEN EXIT
END

IF ~~ NikFighter2a
SAY ~As I have witnessed so far I would consider it good, not great.~
 = ~With a little more practice, you may be my equal. (Nikita winks at you.)~
IF ~~ THEN EXIT
END

IF ~~ NikFighter3a
SAY ~Candlekeep eh? I suppose they did well with you <CHARNAME>.~
 = ~With a little more practice, you may be my equal. (Nikita winks at you.)~
IF ~~ THEN EXIT
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,THIEF_ALL)
Global("NikThiefTalk","GLOBAL",0)~ THEN BEGIN NikThief
SAY ~<CHARNAME>, you move with a practiced, light step, the grace of one who can sneak upon another and take them out and they would never know what hit them.~
 = ~You appear to be like myself, a kindred spirit in the shadow arts.~
 ++ ~I have learned that treading heavily can mean your death.~ DO ~SetGlobal("NikThiefTalk","GLOBAL",1)~ GOTO NikThief1a
 ++ ~You speak as if you understand me. Am I that obvious?~ DO ~SetGlobal("NikThiefTalk","GLOBAL",1)~ GOTO NikThief2a
 ++ ~What do you mean by that?~ DO ~SetGlobal("NikThiefTalk","GLOBAL",1)~ GOTO NikThief3a
END

IF ~~ NikThief1a
SAY ~Your caution does you credit. A silent, unseen enemy is the deadliest in the shadows.~
 ++ ~You make it sound like I am an assassin. I am not an assassin, Nikita.~ GOTO NikThief1b
 ++ ~My subtle forms of evasion have served me well.~ GOTO NikThief1c
END

IF ~~ NikThief1b
SAY ~I am not saying you are <CHARNAME>, but merely mentioning your talents which will be quite useful to you when put to good use.~
IF ~~ THEN EXIT
END

IF ~~ NikThief1c
SAY ~And they will serve you again. This quest you are on demands extreme action. "The best knife is the unseen one", to quote a drow proverb.~
IF ~~ THEN EXIT
END

IF ~~ NikThief2a
SAY ~I understand your methods they are similar to my own. As for your question, no, you are not obvious.~
 ++ ~Oh, for a moment there, I thought I was slipping.~ GOTO NikThief2b
 ++ ~So you have been studying me?~ GOTO NikThief2c
END

IF ~~ NikThief2b
SAY ~Not at all. I am keen on noticing a fellow thief, nothing more.~
IF ~~ THEN EXIT
END

IF ~~ NikThief2c
SAY ~You could say that. (Nikita stares at you for a moment and says nothing more on the subject.)~
IF ~~ THEN EXIT
END

IF ~~ NikThief3a
SAY ~I mean, I understand your methods, they are similar to my own.~
 ++ ~Are you studying me for possible weaknesses?~ GOTO NikThief2b
 ++ ~So you have been studying me?~ GOTO NikThief2c
END

/* ------------------------------------------------ */

IF 
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,MAGE_ALL)
Global("NikMageTalk","GLOBAL",0)~ THEN BEGIN NikMage
SAY ~I was wondering <CHARNAME>, did it take you a while to learn the knowledge of becoming a wizard? Spending all of your time reading books, I would find that boring after a while.~
 ++ ~No it didn't take me long to absorb the knowledge of becoming a mage. I was never bored by reading all of the tomes either.~ DO ~SetGlobal("NikMageTalk","GLOBAL",1)~ GOTO NikMage1a
 ++ ~No it didn't take me long to absorb the knowledge of becoming a mage. But learning from all of those tomes, it was boring after a while.~ DO ~SetGlobal("NikMageTalk","GLOBAL",1)~ GOTO NikMage2a
END

IF ~~ NikMage1a
SAY ~Well, I guess not all of us can be bookworms. Was there anything in particular that you liked more in your pursuit of the arcane knowledge?~
 ++ ~I always liked to learn about new spells. It comes natural to me it seems.~ GOTO NikMage1b
 ++ ~Learning about old magical artifacts always fascinated me.~ GOTO NikMage1c
 ++ ~Nothing really. It was all the same to me.~ GOTO NikMage1d
END

IF ~~ NikMage1b
SAY ~A little bit of studying does pay off after all <CHARNAME>. Keep it up and you may be up there with Elminster one day.~
IF ~~ THEN EXIT
END

IF ~~ NikMage1c
SAY ~Old artifacts have a history behind them. Knowing about it's history is a learning experience itself.~
IF ~~ THEN EXIT
END

IF ~~ NikMage1d
SAY ~All the same? I would have thought some aspects would be more interesting over others. For example, if I was studying to be a mage, I would be interested in old magical artifacts.~
= ~Old artifacts have a history behind them. Knowing about it's history is a learning experience itself.~
IF ~~ THEN EXIT
END

IF ~~ NikMage2a
SAY ~Boring? Hmmm. Was there anything in particular that you liked more in your pursuit of the arcane knowledge?~
 ++ ~I always liked to learn about new spells. It comes natural to me it seems.~ GOTO NikMage1b
 ++ ~Learning about old magical artifacts always fascinated me.~ GOTO NikMage1c
 ++ ~Nothing really. It was all the same to me.~ GOTO NikMage1d
END

/* ------------------------------------------------ */

/* ------------------------------------------------ */


// Reputation dialogs

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,4)
ReputationLT(Player1,8)
Global("BNikRep6","LOCALS",0)~ THEN BEGIN Rep6Comment
SAY ~You have done many good deeds <CHARNAME>. Do not destroy it with questionable actions.~
 IF ~~ THEN REPLY ~So? Don't question my actions Nikita otherwise you will find yourself out of my group.~ DO ~SetGlobal("BNikRep6","LOCALS",1)~ GOTO NikScrewU
 IF ~~ THEN REPLY ~I have not always done right, but you have my assurance I will not stray again.~ GOTO NikOk
END

IF ~~ NikScrewU
SAY ~You may be the leader but I will not permit evil to over take this group. You have been warned.~
IF ~~ THEN EXIT
END

IF ~~ NikOk
SAY ~Very well let us see if your actions reflect your words and all shall be well.~
IF ~~ THEN EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,5)
Global("BNikRep4","LOCALS",0)~ THEN BEGIN 87
SAY ~My conscience can not allow me to be idle no longer. Your evilness shall go no further!~
++ ~What?~ DO ~SetGlobal("BNikRep64","LOCALS",1)~ GOTO NikItsOver
END

IF ~~ NikItsOver
SAY ~Stand and fight, if you have the courage!~
IF ~~ THEN DO ~LeaveParty()
Attack(Player1)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,14)
Global("BNikRep14","LOCALS",0)~ THEN BEGIN Rep14Comment
SAY ~In the time that I have traveled with you, you have proven yourself to be a person with your heart in the right place. I am glad to be a part of this group.~
  IF ~~ THEN REPLY ~Why, thank you, Nikita. It is nice to know that I am appreciated.~ DO ~SetGlobal("BNikRep14","LOCALS",1)~ GOTO Nik14Praise
  IF ~~ THEN REPLY ~What makes you think that your opinion is important to me? Keep it to yourself.~ DO ~SetGlobal("BNikRep14","LOCALS",1)~ GOTO Nik14Screw
END

IF ~~ Nik14Praise
SAY ~I merely speak the words that beg voicing. You deserve my support.~
IF ~~ THEN EXIT
END

IF ~~ Nik14Screw
SAY ~It seems that I have been proven wrong mere seconds after I've spoken. Perhaps you do not deserve my support. I shall have to reconsider my place in this party.~
IF ~~ THEN EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Reputation(Player1,20)
Global("BNikRep20","LOCALS",0)~ THEN BEGIN Rep20Comment
SAY  ~<CHARNAME>, you are the most noble person I have ever met. Your good deeds will be remembered many generations from now. You are an inspiration to me.~
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
~I like being in the outdoors Nikita, any chance I can get. Its so beautiful and quiet so much unlike the city.~
DO ~SetGlobal("NikAerieChat1","LOCALS",1) SetGlobal("NikGpPast","GLOBAL",1)~
== BCMNIKIT ~It's nice to get away from the city once in a while. I remember the times when I used to go with my mother and visit my grandparents farm.~
= ~It was a lovely farm they had.~
== BAERIE ~A-a farm? Oh I can imagine that being a nice place!~
== BCMNIKIT ~Yes it was, I have many fond memories of it. Grandma had such a beautiful flower garden, red roses were her favorite.~
== BAERIE ~That sounds nice Nikita. I like roses to! Mother had a small garden where she grew her special healing herbs and yellow roses.~
= ~It smelled so nice but it attracted bees and I can remember getting stung so many times.~
== BCMNIKIT ~Bees? Yuck! I had to avoid them since I was allergic to being stung. I got stung once and it almsot killed me. Luckily Grandma had some of her special elixirs on hand and I was healed.~
== BAERIE ~That's horrible Nikita!~
== BCMNIKIT ~Yes it was. I usually keep a small vial of Grandma's special elixir on hand, in case of emergencies.~
== BAERIE ~Did you have any other fond memories of your grandparents farm?~
== BCMNIKIT ~(Nikita's facial expression turns to that of sadness, she ponders on whether to continue this conversation or not.)~
= ~I-I don't want to talk about this any more Aerie. Perhaps another time.~
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
AreaType(CITY)
Global("NikAerieChat2","LOCALS",0)~ THEN BCMNIKIT NikAerie2
~It's so good to be back in the city once again, makes me feel at home.~
DO ~SetGlobal("NikAerieChat2","LOCALS",1)~
== BAERIE ~I find the city i-intimidating. There are so many people at the markets shopping and trading their goods. People at the fairs with their children, the city is just exhilarating.~
== BCMNIKIT ~Don't forget the cut throats, the drunks and the prostitutes that inhabit the city.~
= ~Never forget the seedy aspects of the city Aerie, your life depends on your being aware of possible dangers.~
== BAERIE ~Y-yes I have noticed this in human cities.~
== BCMNIKIT ~Yes, mostly in human cities. I know you are new to this Aerie but do heed my advice on this, I know from living most of my life in a human city.~
== BAERIE ~I-I would welcome any advice you can give me.~
== BCMNIKIT ~Awareness is can go a long way. Use your ears, listen for possible sounds for someone sneaking up on you in the back alley way. Use your eyes to take notice of shadows as someone may try to sneak up on you.~
= ~Even a stranger's tone of voice can identify their intent. Always be alert.~
== BAERIE ~Thank you Nikita I will take heed in what you have said.~
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AerieRomanceActive","GLOBAL",2)
Global("NikAerieChat3","LOCALS",0)~ THEN BCMNIKIT NikAerie3
~I notice that twinkle in your eye when you talk to <CHARNAME> Aerie. You like him don't you?~
DO ~SetGlobal("NikAerieChat3","LOCALS",1)~
== BAERIE ~T-twinkle? I-I, well no.~
== BCMNIKIT ~You're stuttering and blushing Aerie. Come now, you can tell me.~
== BAERIE ~Well y-yes he is attractive. He's a nice, warm and caring person who makes my heart beat with excitement.~
== BCMNIKIT ~You seem very smitten by him Aerie. Do you see a future of being together, settling down?~
== BAERIE ~Oh that would be wonderful! I would look forward to getting married, having a lot of children, getting old together! It would make my life complete.~
== BCMNIKIT ~I hope you do find love Aerie, you deserve it.~
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikGpPast","GLOBAL",1)
Global("NikAerieChat4","LOCALS",0)~ THEN BAERIE NikAerie4
~Nikita, i-is something bothering you?~
DO ~SetGlobal("NikAerieChat4","LOCALS",1)~
== BCMNIKIT ~Hmmm? Oh, it's nothing. N-nothing really.~
= ~Actually there is something. Remember our last discussion about my grandparents?~
== BAERIE ~Yes I remember.~
== BCMNIKIT ~You asked if I had fond memories of my grandparent's farm, I used to. They were killed when a bunch of drunk bandits forced their way into their house, looted whatever they could find of value and then killed my grandparents.~
= ~It w-was quite senseless really. They were killed because they had nothing of real value. Nothing of bloody value!~
== BAERIE ~I am so sorry for you Nikita. You know, the real value they had, those bandits would have had little use for. The greatest value they had was the love they gave you, something they could never take away.~
== BCMNIKIT ~Y-yes y-you're right about that. Thank you.~
EXIT

// Anomen banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("AnomenIsKnight","GLOBAL",1)
Global("NikAnomenChat1","LOCALS",0)~ THEN BANOMEN NikAnomen1
~Nikita I need to speak with you.~
DO ~SetGlobal("NikAnomenChat1","LOCALS",1)~
== BCMNIKIT ~Sure Anomen what is it?~
== BANOMEN ~I believe you need work on your swordsmanship. I offer my serves to help you become better than what you are now.~
== BCMNIKIT ~I thank you for the offer Anomen but I am quite sure my handling of the sword is fine.~
== BANOMEN ~Since becoming a knight it's my duty to help my fellow travelers in bettering themselves in combat skills. Are you sure you don't need my help?~
== BCMNIKIT ~Well yes thanks for the offer.~
== BANOMEN ~I only offer it because in our last battle, I found your skills a little clumsy.~
== BCMNIKIT ~Clumsy? I am not clumsy when I fight. Just because you are a knight now doesn't make you an ultimate warrior.~
= ~That was insulting Anomen, just insulting of you to say!~
== BANOMEN ~Well I thought...~
== BCMNIKIT ~Oh leave me alone before I show how clumsy I can get!~
EXIT

CHAIN
IF ~
InParty("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("NikAnomenChat2","LOCALS",0)~ THEN BCMNIKIT NikAnomen2
~Anomen, you have not said much about the Order since your test. If you need someone to talk to...~
DO ~SetGlobal("NikAnomenChat2","LOCALS",1)~
== BANOMEN ~I have not said anything about the Order because I have no desire to speak it.~
== BCMNIKIT ~Some times talking about it will make you feel better, get the negative emotions out of your mind.~
== BANOMEN ~I have nothing to say about those hypocrites, woman, leave me alone.~
== BCMNIKIT ~Ok have it your way.~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("NikAnomenChat3","LOCALS",0)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN BCMNIKIT NikAnomen3
~Anomen, are you a Knight of the Order?~
DO ~SetGlobal("NikAnomenChat3","LOCALS",1)~
== BANOMEN ~Not yet, Nikita. I am still a humble squire.~
== BCMNIKIT ~Are you excited to get in the Knights of the Order?~
== BANOMEN ~Very much so. It is something I have been striving for all of my life. To be accepted would be a great honor.~
== BCMNIKIT ~I would be happy for you Anomen when the time comes when you can be called Knight.~
== BANOMEN ~Thank you Nikita.~
== BCMNIKIT ~No problem.~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("NikAnomenChat4","LOCALS",0)
OR(2)
Global("AnomenRomanceCheck","GLOBAL",1)
Global("AnomenRomanceCheck","GLOBAL",2)~ THEN BCMNIKIT NikAnomen4
~I have noticed you and <CHARNAME> are spending a lot of time together Anomen. Anything special going on?~
DO ~SetGlobal("NikAnomenChat4","LOCALS",1)~
== BANOMEN ~<CHARNAME> is an intriguing woman to know.~
== BCMNIKIT ~Intriguing? Certainly there is more to it than that.~
== BANOMEN ~Well, she is a good listener and an excellent conversationalist.~
== BCMNIKIT ~Anomen, I have seen the way you have looked at her and the way she has looked at you. There is more going on here I believe.~
== BANOMEN ~Oh very well. Yes <CHARNAME> is a very beautiful <PRO_RACE> if I may say so and who's company I enjoy being in.~
= ~Do you think she feels the same way about me?~
== BCMNIKIT ~Judging by the looks she gives you when you are not looking, I think she may feel the same way Anomen.~
== BANOMEN ~Really? I hope so Nikita, I really do.~
EXIT

// Cernd banters

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("NikCerndChat1","LOCALS",0)~ THEN BCMNIKIT NikCernd1
~When you shapeshift are you ever concerned about losing control, giving into the lust for blood?~
DO ~SetGlobal("NikCerndChat1","LOCALS",1)~
== BCERND ~No, I will not give into the bloodlust. I am still in complete control of my actions.~
== BCMNIKIT ~Turning into a bear or a wolf, two very deadly predators, their killer instinct does not take charge?~
== BCERND ~Predators they are, to kill for food or to defend their self is natural. To kill for the sake of bloodlust is unnatural.~
=  ~When I shape change, I defend myself and my allies, to kill as a last resort. Thus I am still one with Nature.~
== BCMNIKIT ~Interesting Cernd, quite interesting.~
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("NikCerndChat2","LOCALS",0)~ THEN BCMNIKIT NikCernd2
~I was wondering about something Cernd.~
DO ~SetGlobal("NikCerndChat2","LOCALS",1)~
== BCERND ~What can I help you with Nikita?~
== BCMNIKIT ~Have you always wanted to be a druid? Is it something you wanted to be when you were a young child?~
== BCERND ~Mother had a love of Nature, something that has passed on to me. To be a guardian of Nature is a great honor.~
== BCMNIKIT ~A family trait, wonderful.~
EXIT

// Edwin banters

CHAIN IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("NikEdwinChat1","LOCALS",0)~ THEN BCMNIKIT NikEdwin1
~Why the sick look on your face, Edwin? Feeling a little ill are we?~
DO ~SetGlobal("NikEdwinChat1","LOCALS",1)~
== BEDWIN ~I am fine! Leave me be fool! (Stupid woman nosing around in my business!)~
== BCMNIKIT ~Well you don't sound fine. Your voice seems to be a little high pitched.~
== BEDWIN ~Fine, fine! I have a cold nothing more. It affected my voice slightly it is not a big deal.~
= ~Now cease your bothersome questions and leave me be!~
== BCMNIKIT ~Well it looks to me as if someone is having that special time of month.~
== BEDWIN ~(Edwina stares at Nikita. If looks could kill, she would have been dead.)~
== BCMNIKIT ~Err sorry, I think <CHARNAME> wants to talk to me. Talk to you later.~
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("NikEdwinChat2","LOCALS",0)~ THEN BCMNIKIT NikEdwin2
~Edwin, you are the most arrogant person I have ever met. Were you born this way or is it something that developed over time?~
DO ~SetGlobal("NikEdwinChat2","LOCALS",1)~
== BEDWIN ~You are addressing me woman?~
== BCMNIKIT ~Obviously.~
== BEDWIN ~My answer would be beyond your comprehension. (Such a small mind could never process the complexities that make up the greatness of Edwin.)~
== BCMNIKIT ~It's a small wonder that you don't have any friends with that condescending attitude.~
== BEDWIN ~I do not need nor want friends. You have taken up enough of my valuable time with your poor bumbling attempts at a conversation. Be gone!~
== BCMNIKIT ~Fine by me. This conversation was getting to be a little too stuffy for my tastes.~
EXIT

// Haer Dalis' banters

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("NikHaerChat1","LOCALS",0)~ THEN BCMNIKIT NikHaer1
~You are the first tiefling I have ever met, Haer'Dalis. You are not what I expected.~
DO ~SetGlobal("NikHaerChat1","LOCALS",1)~
== BHAERDA ~Oh? What did you expect my little dove?~
== BCMNIKIT ~Is it true that tieflings have demon blood? Demons are evil beings after all.~
==BHAERDA ~This sparrow's blood is warm with the blood of a demon it is true. Seek no evil here before you, for you will find none.~
== BCMNIKIT ~Do you mind the reputation it gives you?~
== BHAERDA ~Reputation? What is reputation? Is it the deeds we do in our travels from city to city or the rumors spread by idle gossips?~
= ~To answer your question, no I am not concerned about the reputation it may give me.~
== BCMNIKIT ~A poetic tiefling, how quaint.~
EXIT

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",STATE_SLEEPING)
Global("NikHaerChat2","LOCALS",0)~ THEN BCMNIKIT NikHaer2
~Have you thought up any good poems lately Haer'Dalis'? If you have I would like to hear it.~
DO ~SetGlobal("NikHaerChat2","LOCALS",1)~
== BHAERDA ~I am afraid not my little dove. A bards greatest enemy has struck this sad sparrow.~
== BCMNIKIT ~Writers block?~
== BHAERDA ~Ah, yes my dove. A foul thing it is, besetting itself on the greatest of minds.~
== BCMNIKIT ~It is a burden on bards, writers, musicians and any other artist of the pen.~
=  ~It's also a blessing.~
== BHAERDA ~How so my little dove?~
== BCMNIKIT ~Once the block is lifted, imagine all of the thoughts racing back into your mind. Have your pen ready, there will be much to write down.~
EXIT

// Imoen banters

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!Dead("c6bodhi")
Global("NikImoenChat1","LOCALS",0)~ THEN BCMNIKIT NikImoen1
~Imoen, you have known <CHARNAME> since you were children, correct?~
DO ~SetGlobal("NikImoenChat1","LOCALS",1)~
== IMOEN2J ~Yeppers that is right. <CHARNAME> was raised by Gorion and I was raised by Winthrop in Candlekeep.~
== BCMNIKIT ~What was <CHARNAME> like when you were growing up together?~
== IMOEN2J ~<CHARNAME> always had <PRO_HISHER> nose in the books reading and learning new things. Total bore if you ask me.~
= ~<PRO_HESHE> was never any fun to be around. No I'm kidding. <CHARNAME> had <PRO_HISHER> moments of fun.~
== BCMNIKIT ~So <CHARNAME> was mostly a bookworm? Sounds interesting, if you wanted to become a monk.~
== IMOEN2J ~Well I guess when you have a stepfather like Gorion, you're bound to pick up on his habits.~
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
~It's so dark out, I don't know how you can see where you are going without stumbling over something Nikita.~
DO ~SetGlobal("NikImoenChat2","LOCALS",1)~
== BCMNIKIT ~When I was with Section most of my assignments were during the darkness of night. I can see just fine.~
== IMOEN2J ~I'm almost afraid to ask what kind of assignments they were.~
== BCMNIKIT ~The type where my target ended up dead. I was... I was good at being stealthy and accomplishing my mission without error.~
== IMOEN2J ~Sorry, I didn't mean to bring up a touchy subject.~
== BCMNIKIT ~Don't be. I have much to atone for. Not all of my targets were evil. Some... some of them were actually good people.~
= ~(Nikita falls silent and doesn't say any more.)~
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("NikImoenChat3","LOCALS",0)
Gender(Player1,MALE)~ THEN BCMNIKIT NikImoen3
~Imoen, you must be very close to <CHARNAME>. Is he more than a friend?~
DO ~SetGlobal("NikImoenChat3","LOCALS",1)~
== IMOEN2J ~Me and <CHARNAME> are very close. We've known each other since being raised in Candlekeep.~
== BCMNIKIT ~So you two are lovers?~
== IMOEN2J ~No! Oh no. (Imoen laughs.) He's my brother.~
== BCMNIKIT ~(Nikita's face is slightly red from embarrassment.) Oh... sorry. I don't know what came over me to reach that assumption.~
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("NikImoenChat3a","LOCALS",0)
Gender(Player1,FEMALE)~ THEN BCMNIKIT NikImoen3a
~Are you and your sister are very close Imoen?~
DO ~SetGlobal("NikImoenChat3a","LOCALS",1)~
== IMOEN2J ~Me and <CHARNAME> are very close. We've known each other since being raised in Candlekeep.~
== BCMNIKIT ~Being close to a sibling I can imagine was a good thing growing up. I didn't have any brothers or sisters, I was on my own.~
== IMOEN2J ~I feel sorry for you.~
== BCMNIKIT ~Don't be. I had plenty of surrogate siblings on the streets. They were my family after mother passed on.~
= ~(A look of sadness is on Nikita's face at the mention of her mother.) We should get going Imoen.~
EXIT

// Jaheira banters

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
AreaType(FOREST)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikJaheiraChat1","LOCALS",0)~ THEN BCMNIKIT NikJaheira1
~The wilderness is always so quiet compared to the city, don't you agree Jaheira?~
DO ~SetGlobal("NikJaheiraChat1","LOCALS",1)~
== BJAHEIR ~I enjoy the peaceful quiet the forest Nikita. It calms me. Is it unsettling to you?~
== BCMNIKIT ~It's just different for me. Most of my life has been that of a city dweller, hearing the various sounds as people come and go about their business.~
== BJAHEIR ~I feel at home in the forest ever since I was taken in by the druids of the Tethyr forest.~
= ~The opposite could be said about myself, being in the city makes me feel at unease.~
== BCMNIKIT ~I have fond memories of the countryside and the woods when I was younger. My grandparents had a farm I would visit when mother was able to travel.~
= ~Good memories those times were. I used to go out into the woods and watch the squirrels climb the trees and make all sorts of noises.~
== BJAHEIR ~Have you visited your grandparents farm since then?~
== BCMNIKIT ~N-no. They died when a group of bandits raided their home. They took everything of value and killed my grandparents.~
= ~I'm s-sorry but I can't talk about this any more.~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
AreaType(DUNGEON)
Global("NikJaheiraChat2","LOCALS", 0)~ THEN BCMNIKIT NikJaheira2
~Is there something wrong Jaheira? You have been on edge since we entered here.~
DO ~SetGlobal("NikJaheiraChat2","LOCALS",1)~
== BJAHEIR ~Being in places like this has always made me feel uncomfortable. I prefer the openness of a forest not the dank darkness of being below ground.~
== BCMNIKIT ~Fear not Jaheira, you will adapt to it over time.~
== BJAHEIR ~That is not likely Nikita. It is unnatural.~
== BCMNIKIT ~Why is that? There are many places one could hide in the darkness below.~
= ~Some of us homeless had to call the sewers home. During the cold months it was warmer and provided better shelter than being above. One thing I could never get over is the stench.~
== BJAHEIR ~Now you see one of the points I was trying to make.~
== BCMNIKIT ~Oh yes I whole heartily agree with that one.~
EXIT

// Jan banters

CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("NikJanChat1","LOCALS",0) ~ THEN BJAN NikJan1
~Hey there Nik, would you like one of my tasty turnips? They are delicious! Once you start eating one, you won't be able to stop.~
DO ~SetGlobal("NikJanChat1","LOCALS",1)~
== BCMNIKIT ~Turnips? Yuck! I can't stand the taste of those things.~
== BJAN ~My dear you must not be preparing them properly. Uncle Ned always said that to get a great tasting turnip, you must first prepare it properly. There are two different ways to prepare them, depending on how you are going to eat them. Raw or cooked.~
= ~First there's the raw preparation. Uncle Ned said you have to wash it thoroughly in water that comes from a fast running stream or from a well. Next you...~
== BCMNIKIT ~No.~
== BJAN ~No? Ok on to preparations for cooking them then. First you take a fine bristled brush, gently scrub the turnip until all of the dirt is off of it. Once this is done, they must be soaked for an hour before they are cooked, making them nice and tender.~
== BCMNIKIT ~Bloody hell Jan enough already! I do not want any turnips, they taste bad and they make me break out in hives.~
== BJAN ~Well no need for all of that. You should have said you didn't want any.~
== BCMNIKIT ~(Nikita looks at Jan, shakes her head and leaves.)~
EXIT

// Korgan banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikKorganChat1","LOCALS",0)~ THEN BKORGAN NikKorgan1
~Bloody blazes! I'm out of ale! We need to get to the nearest inn, unless ye 'ave some on ya lass.~
DO ~SetGlobal("NikKorganChat1","LOCALS",1)~
== BCMNIKIT ~No Korgan, I don't have any ale on me.~
== BKORGAN ~I should've known a fey human wouldn't 'ave any of the good stuff on her. Ye probably carryin that pansy elf wine that turns the stomach inside out on us dwarves!~
== BCMNIKIT ~Elven wine? What would make you think I would drink that? Actually I prefer a good mug of Firekin Mead.~
== BKORGAN ~Firekin Mead? That's some potent stuff girly! It burns the throat as it goes down and creates a warm sensation in yer gut.~
== BCMNIKIT ~That it is. The best drink you can have on a cold winter night.~
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("NikKorganChat2","LOCALS",0)~ THEN BCMNIKIT NikKorgan2
~Your use of the axe is extraordinary, Korgan.~
DO ~SetGlobal("NikKorganChat2","LOCALS",1)~
== BKORGAN ~That I am! Nothin makes me day than swingin this fine axe at an enemy's gut!~
== BCMNIKIT ~You are quite the passionate fighter Korgan~
== BKORGAN ~And I be quite the passionate lover as well! Why don't ye let me show you aye?~
== BCMNIKIT ~I believe I shall pass on that.~
EXIT

// Mazzy banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikMazzyChat1","LOCALS",0)~ THEN BMAZZY NikMazzy1
~Have you lived in Athkala all of your life Nikita?~
DO ~SetGlobal("NikMazzyChat1","LOCALS",1)~
== BCMNIKIT ~I have lived in Athkatla during most of my childhood which was spent living on the streets.~
== BMAZZY ~A life on the streets is a challenging life. It can lead you down the road of evil or goodness depending on how you met the challenges.~
= ~From the deeds you have done while in this group, I sense you have taken the path of goodness.~
== BCMNIKIT ~Your words are kind Mazzy. I do my best to help those who can not help themselves. Some acquaintances of mine feel the same way, by helping those in need, do what they have to do for the greater good.~
== BMAZZY ~That is noble and honorable of them Nikita.~
== BCMNIKIT ~(A look of sadness is on her face briefly than it is gone.) Yes... they are.~
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("NikMazzyChat2","LOCALS",0)~ THEN BCMNIKIT NikMazzy2
~Mazzy, have you had to endure much racism in your travels?~
DO ~SetGlobal("NikMazzyChat2","LOCALS",1)~
== BMAZZY ~Racism?~
== BCMNIKIT ~Yes, when people stereotype you because of your race, that being a halfling. Halflings are well "known" for their pick pocketing and food consumption to name a couple examples.~
= ~You being a knight, this can be frustrating to you at times I would imagine.~
== BMAZZY ~It can be frustrating at times, people not taking me serious because of my size, because I am a halfling.~
= ~Once they get pass the exterior and see what a valiant and honorable knight I am, I tend to gain their respect.~
== BCMNIKIT ~You're a good knight Mazzy, never forget that.~
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING) 
HPLT("cmnikita",15)
Global("NikMazzyChat3","LOCALS",0)~ THEN BMAZZY NikMazzy3
~You should heal those wounds Nikita, before you bleed to death. Here, have some of my family's home brewed healing potion.~
DO ~SetGlobal("NikMazzyChat3","LOCALS",1)~
== BCMNIKIT ~Ow! That stings. I don't know how someone got the upper hand on me.~
== BMAZZY ~Even the best of warriors are injured in the heat of battle. I have a few scars from such battles myself.~
= ~Take this, it will close your wounds up.~
== BCMNIKIT ~Thanks. (Nikita pours more of the liquid on her wounds.) Ahhh! That burns!~
== BMAZZY ~It does indeed burn for a moment, look at the wounds, they are closing up.~
== BCMNIKIT ~That they are. The burning sensation is going away also. Thanks Mazzy.~
== BMAZZY ~Any time my friend.~
EXIT


// Minsc banters

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
CombatCounter(0)
Global("NikMinscChat1","LOCALS",0)~ THEN BMINSC NikMinsc1
~You are quiet once battle is engaged Nikita! You should shout out and let your enemies her your voice! They will tremble before you!~
DO ~SetGlobal("NikMinscChat1","LOCALS",1)~
== BCMNIKIT ~My fighting style is that of one that lurks in shadow, striking the enemy when they least expect it. Making noise would alert my whereabouts.~
== BMINSC ~Minsc's loud voice strikes fear into his enemies, like his big sword! Boo agrees. Boo would shout loudly if he had the voice for it.~
== BCMNIKIT ~I think your little friend would be good at striking from the shadows. His small size gives him the advantage Minsc.~
== BMINSC ~No Boo is like Minsc, roars with a loud voice in battle! Well as loud as he can, ha ha!~
== BCMNIKIT ~If you say so big guy.~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NikMinscChat2","LOCALS",0)~ THEN BCMNIKIT NikMinsc2
~Minsc!~
DO ~SetGlobal("NikMinscChat2","LOCALS",1)~
== BMINSC ~Yes Nikita?~
== BCMNIKIT ~Would you keep track of your little friend. He keeps getting into my pockets and hides.~
== BMINSC ~But Boo likes Nikita, that is why he hides in your pockets.~
== BCMNIKIT ~I like him to, but he will give me away with his squeaks. Not very effective if I need to hide.~
= ~Now come here and take him Minsc.~
== BMINSC ~(Minsc reaches out to get Boo, but Boo scurries underneath her top.) See Boo like Nikita.~
== BCMNIKIT ~Ah! Get him out from under there. A ha ha, that tickles. Minsc!~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NikMinscChat3","LOCALS",0)~ THEN BCMNIKIT NikMinsc3
~Minsc, you are from Rashemen I heard. What is it like?~
DO ~SetGlobal("NikMinscChat3","LOCALS",1)~
== BMINSC ~Its a beautiful place of forests and open lands. Plenty of room for Boo to run free!~
== BCMNIKIT ~What about the people, what are they like?~
== BMINSC ~We warriors sit around camp fires, telling tales of our dajemma, of battles we have fought gloriously! We seek battle and fight valiantly making our enemies cower from our sight!~
== BCMNIKIT ~So you are a race of warriors?~
== BMINSC ~Yes, but our witches help fight the evil wizards. Our witches are smart and know much about magic and our past!~
== BCMNIKIT ~So your people are a people for goodness?~
== BMINSC ~Yes! We fight evil around our homelands, doing righteous butt kicking!~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("NikMinscChat4","LOCALS",0)~ THEN BCMNIKIT NikMinsc4
~Minsc! Boo is invading my food pouch, for the third time. I told you to keep him with you.~
  DO ~SetGlobal("NikMinscChat4","LOCALS",1)~
== BMINSC ~Boo, come here, come to Minsc.~
= ~(Boo looks at Minsc and does nothing.)~
== BCMNIKIT ~Come over here and pick him up Minsc.~
== BMINSC ~(Boo hides in Nikita's backpack as he approaches.)~
== BCMNIKIT ~All right that did it!~
= ~(Nikita reaches in her backpack and grabs something, pulls it out and throws it at Minsc.) Catch!~
== BMINSC ~Ahhhh!!! (Minsc reaches out, grabs what Nikita threw and lands hard on the ground face first.)~
= ~There Boo has been saved. Ehhh what's this? This isn't Boo! This is a walnut! Where is Boo!~
== BCMNIKIT ~(Nikita holds her hand out.) He's right here. (Nikita walks over to Minsc and places Boo on his head.)~
= ~Now that looks cute. Minsc keep track of Boo from now on, ok?~
EXIT

// Nalia banters

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("CM_NikRevealPast","GLOBAL",1)
Global("NikNaliaChat1","LOCALS",0)~ THEN BCMNIKIT NikNalia1
~Nalia, I admire how you help people who are down on their luck, regardless of your station in the nobility.~  
DO ~SetGlobal("NikNaliaChat1","LOCALS",1)~
== BNALIA ~I believe the nobility should help people who need it. They have all of their wealth, what are they going to do with it? There are so many people living on the streets without a roof over their heads.~
== BCMNIKIT ~That's a great outlook you have Nalia, too bad not many nobles have the heart like you.~
= ~I know how life on the streets can be.~
== BNALIA ~Thank you Nikita. You were raised on the streets right?~
== BCMNIKIT ~For most of my young life I was. I was always looking for food in the garbage, pick pocketing people to get money so I could get clothes. It was a hard life.~
== BNALIA ~Now you help others when you can. Your early hardship in life taught you a valuable lesson.~
== BCMNIKIT ~That it did. Be kind to the unfortunate and offer help to those who need help.~
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
HPLT("Nalia",15)
Global("NikNaliaChat2","LOCALS",0)~ THEN BCMNIKIT NikNalia2
~Nalia, you're injured pretty bad. You should drink a healing potion right away.~
DO ~SetGlobal("NikNaliaChat2","LOCALS",1)~
== BNALIA ~Y-yes I will do that, I just have to find it.~
== BCMNIKIT ~I don't want to sound like a mother hen Nalia, but you need to be more careful next time. I would hate to see us lose a valuable companion.~
== BNALIA ~Thank you Nikita, that means a lot.~
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
AreaType(CITY)
Global("NikNaliaChat3","LOCALS",0)~ THEN BCMNIKIT NikNalia3
~Nalia, a few moments a go, a kid brushed up against you. It looked like he took some of your coins, why didn't you stop him?~
DO ~SetGlobal("NikNaliaChat3","LOCALS",1)~
== BNALIA ~Yes I know. He took a few silver pieces from my pocket.~
== BCMNIKIT ~Why didn't you stop him?~
== BNALIA ~He needed the coin more than me. Did you see the clothes he had on? Nothing but rags.~
== BCMNIKIT ~Don't you give coin to charities, orphanages and temples? Isn't that enough?~
= ~You allowed him to steal from you, don't you consider that setting a bad example?~
== BNALIA ~I didn't think of it like that. Stealing is a bad thing to teach a young child, I will make sure to stop a would be thief next time.~
= ~There is one thing I find odd about this conversation.~
== BCMNIKIT ~What is that Nalia?~
== BNALIA ~A Shadow *Thief* talking about not teaching street urchins to steal. I thought being part of a Shadow Thief is to teach youngsters the finer points of thievery.~
== BCMNIKIT ~I am not a Shadow Thief Nalia.~
== BNALIA ~Well I thought...~
== BCMNIKIT ~I associate with them from time to time Nalia, nothing more. Lets leave it that.~
EXIT

// Valygar banters

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
AreaType(CITY)
Global("NikValChat1","LOCALS",0)~ THEN BCMNIKIT NikVal1
~The busy city that is full of life of many interesting people , oh how I enjoy being here. Don't you enjoy being in the city Valygar?~
DO ~SetGlobal("NikValChat1","LOCALS",1)~
== BVALYGA ~The city is a place of disease, corruption, murder, death, pollution and the hunger of small children.~
= ~Not what I would call my place of enjoyment.~
== BCMNIKIT ~Not too fond of cities I take it?~
== BVALYGA ~No. I prefer the quietness, the peace that the untainted forest has to offer.~
== BCMNIKIT ~Quite the negative person you are Valygar.~
== BVALYGA ~One person's view of negativism is another's realism.~
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
~Admiring the darkness Viconia?~  DO ~SetGlobal("NikVicChat1", "LOCALS", 1)~
== BVICONI ~What makes you think that Nikita?~
== BCMNIKIT ~You keep gazing at the stars and the moon as if it was your first time seeing them.~
== BVICONI ~I find them memorizing, its an alien thing for me to see.~
== BCMNIKIT ~Being in the sky less underdark would be unsettling to me. It would make me feel claustrophobic.~
== BVICONI ~You would adapt to it or die. Only the strong survive in the underdark, those who show signs of weakness will not live long.~
== BCMNIKIT ~Such a harsh outlook on life Viconia.~
== BVICONI ~Life is harsh Nikita, never forget that.~
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikVikChat2","LOCALS",0)~ THEN BVICONI NikVic2
~Why do you keep staring at me darthiir? You have been doing it since we met.~
DO ~SetGlobal("NikVikChat2","LOCALS",1)~
== BCMNIKIT ~Have I? (Nikita thinks for a moment, pondering what to say next.)~
= ~I have met drow before but I never traveled with them for an extended period.~
== BVICONI ~Met drow? Did they live long, knowing how you surfacers would rather kill my kind than allow us to live.~
== BCMNIKIT ~On the contrary, they were informants they provided us with valuable information.~
= ~Not all surfacers kill drow on first sight.~
== BVICONI ~It has been my past experiences that surfacers would rather kill than get to know a drow that walks the surface.~
= ~With our reputation it would serve them to act that way.~
== BCMNIKIT ~Yes, you are right on that Viconia.~
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
~I prefer to travel in the dark, away from that damnable yellow orb.~
DO ~SetGlobal("NikVikChat3","LOCALS",1)~
== BCMNIKIT ~Find it blinding do you? Your eyes may adjust after a few years being on the surface.~
== BVICONI ~Even if time passes and my eyes adjust, I will still consider that yellow orb a foul thing to behold.~
== BCMNIKIT ~No romantic sunrises for you Viconia?~
== BVICONI ~Waela darthiir.~
== BCMNIKIT ~Just as I thought.~
EXIT

// Yoshimo banters

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("NikYoshiChat1","LOCALS",0)~ THEN BCMNIKIT NikYosh1
~Yoshimo, you hail from Kara-Tur correct?~
DO ~SetGlobal("NikYoshiChat1","LOCALS",1)~
== BYOSHIM ~Yes I do Nikita. Kara-Tur is a wonderful place with a few thieving guilds. If we ever go there, you should think about joining one.~
== BCMNIKIT ~I heard about their guilds and what they are capable of. Your basic riff raff thieves that would steal a single copper from the corpse of a dead man.~
= ~Assassination guilds are known by a select few just as well as bounty hunting guilds. Not the type of guilds that get advertised.~
== BYOSHIM ~Indeed. That is possible Nikita.~
= ~Why would this interest a Shadow Thief?~
== BCMNIKIT ~Shadow Thief? I never implied I was a member of the Shadow Thieves.~
== BYOSHIM ~But you associate yourself with them as if you are one of them. Most curious.~
== BCMNIKIT ~Curious, as in how you changed the subject Yoshimo?~
== BYOSHIM ~Did I? I thought we were discussing your affiliation with the Shadow Thieves.~
== BCMNIKIT ~We were discussing the guilds in Kara-Tur, specifically the assassin and bounty hunter guilds.~
== BYOSHIM ~Not any more. Nice talking Nikita.~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",4)
Global("NikYoshiChat2","LOCALS",0)~ THEN BCMNIKIT NikYosh2
~I was wondering about something Yoshimo.~
DO ~SetGlobal("NikYoshiChat2","LOCALS",1)~
== BYOSHIM ~What would that be Nikita?~
== BCMNIKIT ~Why are you with us? What motivates you to be in <CHARNAME>'s group?~
== BYOSHIM ~I could ask the same question about a Shadow Thief being in the group.~
== BCMNIKIT ~I tire of your word play Yoshimo, answer the question.~
== BYOSHIM ~Ever since we met, you have had a distrust of me. I have seen how you look at me, always a look of contempt on your face.~
= ~But to answer your question, I am here to help <CHARNAME>. I heard about <PRO_HISHER> adventures along the Sword Coast and Baldur's Gate and only wish to ofer my services to <PRO_HIMHER>.~
== BCMNIKIT ~So you only wish to offer your services? No hidden agenda?~
== BYOSHIM ~You wound me madam with your questions.~
== BCMNIKIT ~You have evaded my questions yet again. Are you always so difficult?~
== BYOSHIM ~Not difficult. I just know how to play the game.~
EXIT

CHAIN
IF ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",4)
Global("NikYoshiChat3","LOCALS",0)
OR(3)
AreaCheck("AR1602")
AreaCheck("AR1604")
AreaCheck("AR1500")
~ THEN BYOSHIM NikYosh3
~Why do you keep staring at me Nikita? You've been doing it since we arrived here.~
DO ~SetGlobal("NikYoshiChat3","LOCALS",1)~
== BCMNIKIT ~You've seem anxious since we arrived here Yoshimo. Why is that?~
== BYOSHIM ~Anxious? More like sea sickness. I hate traveling by ship, it makes my stomach toss and turn.~
== BCMNIKIT ~Sea sickness? Your anxiety occurred shortly after we landed in port. Seems odd how...~
== BYOSHIM ~Give it a rest will you! Ever since we have met, you have done nothing but question my intents, and watch my every move.~
= ~I tire of this.~
== BCMNIKIT ~Losing your cool Yoshimo? I thought you were better at masking your emotions, I guess I was wrong.~
== BYOSHIM ~Lets concentrate on rescuing Imoen, Nikita, and once that is done, we can settle our differences.~
== BCMNIKIT ~Name the when and where and I'll be there.~
EXIT

// Misc banters



