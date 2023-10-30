BEGIN CMNIKITJ



/* Interjections    */

I_C_T AELOTUS 3 NikLotus
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2500 /* Black lotus? An illegal substance that lowly people crave. */
END

I_C_T AERIEJ 4 NikQuayleDead
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN 
@2501 /* What a shame Aerie lost her uncle, I feel bad for her. */
END

I_C_T AERIEJ 5 NikQuayleDead
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2501 /* What a shame Aerie lost her uncle, I feel bad for her. */
END

I_C_T AERIEJ 6 NikQuayleDead
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2501 /* What a shame Aerie lost her uncle, I feel bad for her. */
END

I_C_T ANOMENJ 52 NikAnomen1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2502 /* This is a difficult decision for you Anomen. I am sure you will do the right thing. Do what an honorable knight would do. */
END

/* I_C_T ANOMENJ 104 NikAnomenEnemy
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Anomen this is madness! Pull yourself together!~
== ANOMENJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Silence fool! I am done with you and this party of fools!~ DO ~LeaveParty()
Enemy()~
END */

I_C_T2 ANOMENJ 150 NikAnomenSister
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2503 /* This is terrible Anomen! I feel sorry for you. If there was advice I could give you, I would. */
END

I_C_T ANOMENJ 232 NikAnomen2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2504 /* I am glad you have taken this quest to help them <CHARNAME>, this cult appears to be evil and must be dealt with. */
END

I_C_T ARAN 18 NikAranDefectors
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2505 /* Excellent. We get to cancel the defectors? The best way to deal with betrayers is with harsh measures. */
END

I_C_T ARNMAN03 0 NikCuchul
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2506 /* Why hello. I'm Nikita, the best blade that lurks in the shadows. (Nikita winks at Cuchul.) */
END

I_C_T ARNMAN04 0 NikMitsu1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2507 /* Greetings Mitsu, looks like you have been advancing up in the guild. You look well. */
END

I_C_T ARNMAN04 8 NikMitsu2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2508 /* Heh I see you haven't changed at all since I last saw you Mitsu. Still doing the lost damsel in distress act. */
== ARNMAN04 IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2509 /* Why change your act if it still works, I always say. */
END

I_C_T ARNMAN09 4 NikTraitor
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2510 /* Traitor! Your words just signed your death warrant. Those who lurk in shadow have heard your voice, beware. */
END

I_C_T BHARVAL 17 NikHarval
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2511 /* A worthy quest <CHARNAME>, lending a helping hand to the knights. */
END

I_C_T BHOISIG 19 NikOisig
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2512 /* Helping these knights is for the greater good <CHARNAME>. This cult is evil and must be dealt with. */
END

I_C_T BHNALLA 16 NikNalla
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2513 /* You wish to help the Storm Lords? Curious. */
=
@2514 /* Perhaps I shall keep an eye on you, for possible signs of evilness in the future. */
END

/* I_C_T BOANASTE 4 NikValenBodhi
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Two parties interested in you it seems. It may be worth checking out <CHARNAME>.~
END */

I_C_T BODHI 6 NikBodhiDeal1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2515 /* A discount? Maybe the Shadow Thieves will offer one as well? But there is something about this woman I do no trust. */
END

/* I_C_T BODHI 13 NikBodhiDeal2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Seems like a strange thing to say about a feud between rivals. But I doubt its because you have a heart.~
END */

/* I_C_T C6BODHI 4 NikC6bodhi
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Imoen is not alone fiend, she has us to help her unlike you and your "many" friends.~
END */

I_C_T DADROW12 1 NikDadrow12
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2516 /* Opps? */
END

I_C_T DADROW16 1 NikDadrow16
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2517 /* (Nikita gives him a harsh stare.) That is a good male! */
END

I_C_T DADROW26 0 NikDadrow26
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2518 /* I think it's horr... interesting. Yes, interesting. */
END

I_C_T DELCIA 0 NikDelcia1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2519 /* Bah! Typical manner of an aristocrat who thinks they are better than anyone else, even those who would help them. */
== DELCIA
 @2520 /* Of course we are better than you. It's your lot in life to serve us. */
END

I_C_T DELCIA 17 NikDelcia2
== CMNIKITJ  IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2521 /* I don't know if I can endure listening to this woman's "I'm better than you" remarks any longer. */
END

I_C_T DFISHER 3 NikFish1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2522 /* I would imagine that it makes them sick as well. */
END

I_C_T DFISHER 4 NikFish2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2523 /* No good thief? I resent that! */
END

I_C_T EDWINJ 10 NikEdwinScroll
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2524 /* What an unusual looking scroll you have Edwin. Perhaps you should read it and see what it does. */
== EDWIN IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2525 /* (Inbred fool acts as if she knows what this scroll does and Edwin doesn't!) Yes, yes do not interrupt me again fool! I intend to read this scroll and I must concentrate on the correct usage of the words and symbols. Remain silent! */
END

I_C_T GARREN 12 NikGarren1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2526 /* Falsehoods and trickery is something I am used to in my line of business. It's the part where I'm the victim or some innocent, that really burns me up. */
END

/* I_C_T GARREN 35 NikGarren2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Helping Garren find his missing child is a good thing <CHARNAME>.~
DO ~SetGlobal("Kidnap","GLOBAL",3)
SetGlobalTimer("ddKidnapTimer","GLOBAL",THREE_DAYS)~
END */

/* I_C_T GARREN 36 NikGarren2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~Helping Garren find his missing child is a good thing to do <CHARNAME>.~
DO ~SetGlobal("Kidnap","GLOBAL",3)
SetGlobalTimer("ddKidnapTimer","GLOBAL",THREE_DAYS)~
END */

I_C_T2 GIRL2 5 NikSlaveGirl
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2527 /* It feels good helping out the innocent, especially children. Those who would harm children need to be sent into the black. */
== MINSCJ IF ~IsValidForPartyDialog("Minsc") IsValidForPartyDialog("cmnikita")~ THEN
@2528 /* Minsc and Boo agree that <CHARNAME> does many good deeds! Soon <PRO_HESHE> will have many stories written and told about <PRO_HISHER> heroics. */
END

I_C_T2 HAEGAN 1 NikHaegan
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2529 /* Slaver scum! You can barely be called a person. Lets send him into the black <CHARNAME>! */
END

I_C_T HellJon 7 NikHellJon1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2530 /* It would seem that you like punishment mage, we have beaten you once before and we shall do so again. */
END

I_C_T HellJon 10 NikHellJon2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2530 /* It would seem that you like punishment mage, we have beaten you once before and we shall do so again. */
END

I_C_T HellJon 9 NikHellJon3
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2530 /* It would seem that you like punishment mage, we have beaten you once before and we shall do so again. */
END

I_C_T HellJon 8 NikHellJon4
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2530 /* It would seem that you like punishment mage, we have beaten you once before and we shall do so again. */
END


I_C_T HENDAK 4 NikHendak1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2531 /* I thought there was something odd about the man. Slaver trash! He needs to be sent into the black! */
END

I_C_T HENDAK 17 NikHendak2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2532 /* His cancellation was justified. A shame he didn't get the chance to be "questioned" by a set of twins that I know of. */
END

I_C_T HERVO 11 NikHervo
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2533 /* If the man is accused falsely then he needs our help. We must do what we can to help him. */
END

I_C_T IMOEN2 22 NikImoenLeave
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2534 /* <CHARNAME>, you cannot mean this! We have come so far, face many dangers in our time together, only to abandon her! */
 =
 @2535 /* Do not leave her here <CHARNAME>, do not! */
END

I_C_T ISAEA 28 NikNaliaKidnap
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2536 /* This is horrible <CHARNAME>! We must find a way to free Nalia from that foul man. */
=
@2537 /* We must not let a kind soul like Nalia be taken away. */
END

I_C_T JAHEIRAJ 54 NikJaheiraSick
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2538 /* Jaheira, you look bad. I think we should stop and rest until you feel better. */
== JAHEIRAJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2539 /* No! We do not need to stop and rest, we have to find Ployer! (cough) Rest assured I have more than enough strength to wring his scrawny neck. */
END

I_C_T JAHEIRAJ 112 NikJaheiraGalvaery
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2540 /* I hope you have not betrayed us Jaheira. I thought you were one to be trusted. */
END

I_C_T JANJ 132 NikJan1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2541 /* By the gods! Can someone shut him up? Please! */
END

I_C_T KELDORJ 23 NikKeldornMaria
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2542 /* Do what your heart tells you Keldorn, this is the only advice I can offer you. */
END

I_C_T KORGANJ 34 NikKorganTomb
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2543 /* Tombs... I can't stand them, they make me feel uneasy. */
== KORGANJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2544 /* Ye scared girl? Scared that some ghost will sneak up on ya and say boo! */
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2545 /* No, not at all. This place is haunted by the undead and the undead make me feel uneasy, not scared. */
== KORGANJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2546 /* Bah! Ye sound scared to me girl. Enough chatter, lets go find me treasure! */
END

I_C_T LEHTIN 10 NikLehtinan
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2547 /* I hope we can take care of our business here quickly. Something about him... seems out of place. */
END

I_C_T LYROS 24 NikXzar1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2548 /* You are quite the insulting little mage, perhaps changing your manner may improve your likelihood of having <CHARNAME> help you. */
== LYROS
 @2549 /* Silence fool! I am speaking to <CHARNAME>, not you. */
END

I_C_T MAEVAR 7 NikMaevar1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN 
@2550 /* I know of this man <CHARNAME>. Keep a close eye on him and listen intently on what he says. */
=
@2551 /* I don't trust him. */
END

I_C_T MAEVAR 8 NikMaevar2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN 
@2550 /* I know of this man <CHARNAME>. Keep a close eye on him and listen intently on what he says. */
=
@2551 /* I don't trust him. */
END

I_C_T MAEVAR 9 NikMaevar3
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2550 /* I know of this man <CHARNAME>. Keep a close eye on him and listen intently on what he says. */
=
@2551 /* I don't trust him. */
END

I_C_T MAEVAR 16 NikMaevar4
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2552 /* I disagree with this course of action <CHARNAME>. Stealing from the church of Lathander is wrong. */
END

I_C_T MAEVAR 17 NikMaevar5
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2553 /* Stealing from a priestess of Talos? I have no problem with that. */
END

I_C_T MAEVAR 31 NikMaevar6
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2554 /* I can sense we are almost done in our quest for Renal. Doing work for this traitor will come to an end. */
END

I_C_T MAZZYJ 115 NikMazzyPoison
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2555 /* I hope this antidote works Mazzy, I really do!  */
END

I_C_T PIRCOR03 0 NikMaleP1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2556 /* Well you don't beat around the bush do you? Sorry but I am already spoken for. */
END

I_C_T PIRCOR03 1 NikMaleP2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2556 /* Well you don't beat around the bush do you? Sorry but I am already spoken for. */
END

I_C_T PIRCOR03 2 NikMaleP
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2556 /* Well you don't beat around the bush do you? Sorry but I am already spoken for. */
END

I_C_T PPIRENI1 4 NikPPIreni1a
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2557 /* We're not here for your nonsense, we are here for Imoen. Hand her over, now! */
END

I_C_T PPIRENI1 10 NikPPIreni2b
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2558 /* Ignorant if you ask me. Typical of people who are small minded and unaccepting to something they do not understand. */
END

I_C_T PPIRENI2 32 NikSpellholdFight
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2559 /* Madness you say? You are quite the madman to think you can keep us restrained. */
END

I_C_T PPSAEM 58 NikSaemon1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2560 /* Betrayal and backstabbing is nothing new in my former line of business, I should have saw this coming. */
END

I_C_T PPSAEM 59 NikSaemon2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2561 /* Havarian you better learn some abilities in the marital skills or learn tolerance in pain. If I get my hands on you, you're going to need all the help you can get! */
END

I_C_T PPSAEM2 4 NikSaemonSpellhold1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2562 /* How mercenary of you Havarian. This wretch has made fools of us, <CHARNAME>. Cancelling him would benefit us greatly. */
== PPSAEM2 IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2563 /* Oh come now Nikita, <CHARNAME> and friends, I will explain why in small simple words that even you can understand. */
END

I_C_T PPSAEM2 19 NikSaemonSpellhold2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2564 /* This wretch wants to help us? Trusting him will only lead to betrayal. I think we go straight to the Underdark, and leave Havarian's bloody corpse here. */
END

I_C_T PPSAEM3 3 NikSaemonAgain
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2565 /* Liar! How much longer must we suffer his lies <CHARNAME>? */
END

INTERJECT RAELIS 2 NikRaelisBribe
== CMNIKITJ IF ~ReputationGT(Player1,10)
IsValidForPartyDialog("cmnikita")~ THEN
@2566 /* Raelis I am sorry, but we really do need the gold for some business we have to take care of. */
END RAELIS 4

I_C_T RAELIS 33 NikRaelis1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2567 /* They must be on hard times. The last time I saw one of Raelis's plays it was quite good. */
END

I_C_T RAELIS 79 NikRaelisBounty
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2568 /* I am shocked at this <CHARNAME>. I did not think of you as being a mercenary. */
END

I_C_T RENAL 12 NikRenal1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2569 /* You should reconsider this choice <CHARNAME>. Working with Renal has its benefits. */
END

I_C_T RENAL 18 NikRenal2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2570 /* You should not push Renal too far <CHARNAME>. He can help you in many ways, do not blow it. */
END

I_C_T RENAL 22 NikRenal3
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2571 /* Having the other guilds against you is not something I wish to see either Renal. We should help you in any possible way that we can. */
END

I_C_T RENAL 30 NikRenal4
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2572 /* Helping Renal is the best course to take <CHARNAME>. Renal is a good man and it will benefit you when it comes to finding Imoen. */
== MINSCJ IF ~IsValidForPartyDialog("Minsc") IsValidForPartyDialog("cmnikita")~ THEN
@2573 /* Boo agrees! Helping Renal will lead us to our friend Imoen and to the killer of Dynaheir that much quicker!  */
END

I_C_T RENAL 47 NikRenal5
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2574 /* <CHARNAME> we must help Renal and his Shadow Thieves, I believe it be the best option we have. */
END

I_C_T RENAL 69 NikRenal6
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2575 /* Congratulations <CHARNAME>! You have your very own guild! This calls for a celebration down at the local tavern! */
END

I_C_T RIFTG03 7 NikAmaunator1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2576 /* This is a god, an avatar that is long forgotten? Weakened by having no followers, no one to call his name. */
=
@2577 /* What a sad existence. */
END

I_C_T RIFTG03 29 NikAmaunator2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2578 /* Now the weaken god has found peace finally. So it ends. */
END

I_C_T RIFTW01 7 NikGuardian1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2579 /* After so many centuries, I would be forgetful to. */
== MINSCJ IF ~IsValidForPartyDialog("Minsc") IsValidForPartyDialog("cmnikita")~ THEN
@2580 /* Minsc is forgetful after a few hours, so says Boo. Boo keeps all of my memories for me! */
END

I_C_T SAHKNG01 36 NikKingFishy1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2581 /* Good thing we can handle this job without any problems. But there is something about this fish king I don't like <CHARNAME>. I just can't put my finger on it. */
END

I_C_T SAMIA 24 NikSamia1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2582 /* You are quite foolish to think you can defeat a group who has successfully made it through this death-trap. I can see you will not make it out of here alive. */
END

I_C_T SLAVERM 0 NikSlaverMage
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2583 /* Payments and bribes mean nothing when your death is at hand. */
END

I_C_T SURLY 17 NikSurly
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2584 /* You're sick <CHARNAME>! How can you watch animals fight each other? It's barbaric! */
END

I_C_T THIEF3 4 NikThief3
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2585 /* As am I my fellow sister, calm yourself. */
=
@2586 /* There may not be many in the guild, but the number is climbing. */
END

I_C_T THIEF5 3 NikGorvin
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2587 /* Hmmm that is a good question, isn't? */
END

I_C_T THIEF6 6 NikZyntris
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2588 /* Really? How charming to know. */
=
@2589 /* But remember Zyntris, the best blade is the unseen one. */
END

I_C_T THIEF7 13 NikAnishai
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2590 /* Perhaps he's just too incompetent to do the job. */
END

I_C_T THIEF8 5 NikThief8
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2591 /* Well, it would appear that you do not know all of the Shadow Thieves in the city after all. */
END

I_C_T TOLGER 18 NikTolVal
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2592 /* Capturing a wanted man? I have no objection to this <CHARNAME>. */
END

I_C_T TOLGER 76 NikTolgerias1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2593 /* This is an evil move on your part <CHARNAME>! I will not be a part of it! */ DO ~LeaveParty() EscapeArea()~
END

I_C_T TOLGER 80 NikTolgerias2
== CMNIKITJ  IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2594 /* We are not the betraying type if I may be so bold to say. We will not turn a friend over to you! */
END

I_C_T UDDEMON 9 NikDemon
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2595 /* Y-you... no I can't believe this! I won't be a part of this evilness! */ DO ~LeaveParty() Enemy()~
END

I_C_T UDDEMON 11 NikDemon
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2595 /* Y-you... no I can't believe this! I won't be a part of this evilness! */ DO ~LeaveParty() Enemy()~
END

I_C_T UDDUER03 5 NikUdduer
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2596 /* Gust thilij sewncish wyrnn phez! */
=
@2597 /* We eliminate trouble not cause it. */
END

I_C_T UDOGRE 4 NikOgreComment1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2598 /* I know many art forms concerning fighting, be it subtle, hidden and direct. I find it amusing an ogre is going to talk to me about fighting. */
END

I_C_T UDPHAE01 61 NikPhaere1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2599 /* (Nikita speaks in a low whisper.) They wouldn't stand a chance against us, this is a bad idea Veldrin.) */
END

I_C_T UDPHAE01 151 NikDeceivePhaere
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2600 /* (Nikita smiles and quickly changes her expression before anyone else see it.) */
END

I_C_T UDSILVER 9 NikAdalon1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2601 /* By the gods! A d-dragon! She is huge, massive... */
=
@2602 /* And she is not attacking us. */
END

I_C_T UDSILVER 34 NikAdalon2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2603 /* Amazing! We look like drow! This is simply amazing! */
 =
 @2604 /* But I do feel uncomfortable being in this guise. */
END

I_C_T UDSIMYAZ 7 NikSimyaz1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2605 /* The brain suckers are revolting creatures. Sanitizing them would benefit everyone who considers them an enemy. */
END

I_C_T UDSIMYAZ 14 NikSimyaz2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2606 /* If that is the case, we should cease discussion and prepare for the upcoming fight. */
END

I_C_T UDSIMYAZ 18 NikSimyaz3
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2607 /* Disrupt them while I hide in the shadows and strike at them when they lest expect it. */
END

I_C_T UDSOLA01 117 NikSolaDeath
==CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2608 /* I am surprised Veldrin, I did not think you had it in you to do this. */
==UDSOLA01
@2609 /* What is she talking about? What's going on? */
END

I_C_T UDSOLA01 162 NikSolaTrust
==CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2610 /* A smart move is, never wise to trust a drow, you are learning <CHARNAME>. */
END

I_C_T UDSVIR03 9 NikGnome1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2611 /* This sounds intriguing <CHARNAME>, you should listen. */
END

I_C_T UHKID03 4 NikAleKids3
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2612 /* Swords? You'll poke your eyes out kid. */
END

I_C_T UHMAY01 18 NikImnes
== CMNIKITJ IF ~GlobalGT("Chapter","GLOBAL","%bg2_chapter_5%")IsValidForPartyDialog("cmnikita")~ THEN
@2613 /* Imnesvale? This is a simple town, occupied by simple people, mostly farmers. If they need our help, we should offer it <CHARNAME>. */
END

I_C_T UHMAY01 18 NikImnes2
== CMNIKITJ IF ~!GlobalGT("Chapter","GLOBAL","%bg2_chapter_5%")IsValidForPartyDialog("cmnikita")~ THEN
@2614 /* Imnesvale? This is a simple town, occupied by simple people, mostly farmers. If they need our help, we should offer it <CHARNAME> if you think Imoen can wait. */
END

I_C_T VALYGAR 5 NikValygar1
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
 @2615 /* We must not let harm come to an innocent. We must not follow the orders of the Cowled Wizards any more <CHARNAME>. */
END

I_C_T VALYGAR 43 NikValygar2
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2616 /* So the Cowled Wizards have tricked us? I don't take lightly to being lied to. Valygar speaks the truth, I can tell, no harm should come to him. */
END

I_C_T VICONI 2 NikViconiaJoins
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
  @2617 /* A drow? You are letting a drow join us <CHARNAME>? */
  =
  @2618 /* (Nikita pauses for a moment.) Very well if that is what you wish, so be it. */
END

I_C_T YOSHJ 113 YoshBetrayalReaction
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2619 /* Unknown circumstances? A traitor is a traitor in my book Yoshimo. You betrayed us to the enemy, and for that, you will feel my blade burning inside you! */
END

I_C_T PLAYER1 15 NikLonk
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2620 /* A shame he had to go, I am sure you did the right thing <CHARNAME>. */
END

I_C_T PLAYER1 16 NikIrenicusDead
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2621 /* Finally Irenicus is dead. Praise the gods. */
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2622 /* Now we should report back to the Queen and inform her of this victory. */
END

/* I_C_T PLAYER1 25 NikInHell
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
~(A surprised look is on Nikita's face.) No, it can't be. I have lead a good life, I helped people, I did what I could to the greater good, how can I be here?~
=
~Or is it you, <CHARNAME>, who have brought me here?~
END   */



INTERJECT PLAYER1 5 NikSlayer
== CMNIKITJ IF ~IsValidForPartyDialog("cmnikita")~ THEN
@2623 /* What a thing of horror we have witnessed here, <CHARNAME>. */
=
@2624 /* This thing, this is what you carry within your soul? */
END
++ @2625 /* Nikita, I do not need to hear it from you right now. */ EXTERN CMNIKITJ NikSlayer1a
++ @2626 /* I have nothing to say about it Nikita. I am not in the mood. */ EXTERN CMNIKITJ NikSlayer2a
++ @2627 /* Better to see the horror than become it. */ EXTERN CMNIKITJ NikSlayer3a

APPEND CMNIKITJ
IF ~~ THEN BEGIN NikSlayer1a
SAY @2628 /* Sorry, I will say nothing more on it. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NikSlayer2a
SAY @2629 /* Have it your way. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NikSlayer3a
SAY @2630 /* Yes I know. This is something that should be contained and not be unreleased. */
IF ~~ THEN EXIT
END
END

CHAIN IF WEIGHT #-1 
~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikitaSalvanas","LOCALS",0)~ THEN SALVANAS NikSalvanas
@2631 /* Well, hello there, you sexy blond babe. I like to run my hands through that nice long, blond hair of yours. */
=
@2632 /* Please let me do it, please! */
DO ~SetGlobal("NikitaSalvanas","LOCALS",1)~
== CMNIKITJ @2633 /* Haven't we met before? */
== SALVANAS @2634 /* Oh I think not, I would have remembered a fine looking woman like you. */
== CMNIKITJ @2635 /* I have met you before. Down a dark back alley way as I recall, I broke your nose when you grabbed me. */
== SALVANAS @2636 /* That was you? Could you hit me again, except this time on the butt. I like to be spanked. */
== CMNIKITJ @2637 /* I have a strong urge to do that right now. But it is not going to be something you would enjoy. */
== SALVANAS @2638 /* (Salvanas' eyes brighten at this.) Really? This is exciting! */
== CMNIKITJ @2639 /* I was thinking about shoving my sword up where the sun doesn't shine. Sound exciting now? */
== SALVANAS @2640 /* Ummm I think I need a refill or two at the moment. Nice talking to you. */
== CMNIKITJ @2641 /* (Nikita rolls her eyes and walks away.) */
EXIT


/* CHAIN IF WEIGHT #-1
~See("cmnikita")
IsValidForPartyDialog("cmnikita")
Global("NikBelminChat","AR0700",0)~ THEN BELMIN NikBelminChat
~A foul elf! All of you filthy elves should be put to the sword!~
 DO ~SetGlobal("NikBelminChat","AR0700",1)~
== CMNIKITJ IF ~See("cmnikita") IsValidForPartyDialog("cmnikita")~ THEN
     ~Leave me alone elf hater, I have nothing to say to you.~
== BELMIN ~Bah! Begone from my sight you coward! Pray I never meet you again!~
EXIT  */

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
Name("cmnikita",LastTalkedToBy)~
 THEN EXTERN TRGYP02 TRGYP02_1
END

CHAIN TRGYP02 TRGYP02_1
@2642 /* You do the errands of others, which leads to helping those who can not help themselves. Stay the course for you have a kind heart. */
== CMNIKITJ @2643 /* I have always followed my heart and will always do so. It is who I am after all. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikWay","LOCALS",0)~ THEN WAYLANE NikWay
@2644 /* Hey you! Lass with the blond locks and blue eyes. */
DO ~SetGlobal("NikWay","LOCALS",1)~
== CMNIKITJ @2645 /* Yes, what is it? */
== WAYLANE @2646 /* See this fine looking sphere? It can be all yours for only 500 gold pieces! No better bargain in all of Athkatla */
== CMNIKITJ @2647 /* What would I want with a building? Sorry I'm not interested. */
== WAYLANE @2648 /* How about 200 gold pieces? An even better bargain. */
== CMNIKITJ @2649 /* Thanks but I am not falling for any scam. Bye. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikTown7","LOCALS",0)~ THEN FTOWN7 NikTown7
@2650 /* What beautiful blue eyes you have my dear. Sit down, stay awhile, lets get to know one another. */
DO ~SetGlobal("NikTown7","LOCALS",1)~
== CMNIKITJ @2651 /* Thank you for the compliment but I really can't stay. Goodbye. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
Global("NikTown1","LOCALS",0)~ THEN DFTOWN1 NikTown1
@2652 /* A pretty girl like you shouldn't be on these dangerous streets young miss. Ye may get mugged or worse. */
DO ~SetGlobal("NikTown1","LOCALS",1)~
== CMNIKITJ @2653 /* I can take care of myself. I was raised in the seedy parts of town and I know all of the dangers that come with the territory. */
== DFTOWN1 @2654 /* I am sure ye can missus, you have a strength about ye I can see. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikKid2","LOCALS",0)~ THEN URCHIN2 NikKid2
@2655 /* You smell funny. Mother says that thieves don't bathe, is that true? */
DO ~SetGlobal("NikKid2","LOCALS",1)~
== CMNIKITJ @2656 /* That's ridicules. Go away kid. */
== URCHIN2 @2657 /* Na na na! */
EXIT

CHAIN  IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikKid1","LOCALS",0)~ THEN URCHIN1 NikKid1
@2658 /* That sure is a nice sword you have lady. Can I play with it? */
DO ~SetGlobal("NikKid1","LOCALS",1)~
== CMNIKITJ @2659 /* No you can't, you might poke your eye out. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikKid3","LOCALS",0)~ THEN URCHIN3 NikKid3
@2660 /* Are you a Shadow Thief lady or do you like death? */
DO ~SetGlobal("NikKid3","LOCALS",1)~
== CMNIKITJ
@2661 /* Why would you say that kid? */
== URCHIN3
@2662 /* You dress in all black. Did someone die? Or are you morbid like a dark mage or is it that you like to hide in the shadows? */
== CMNIKITJ
@2663 /* I dress in black because it makes it easier for me to sneak up on you and yell, BOO! */
EXIT


CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikSlum1","LOCALS",0)~ THEN SLUMF1 NikSlumf1
@2664 /* Hey there pretty thing, I thinks I knows ya. */
DO ~SetGlobal("NikSlum1","LOCALS",1)~
== CMNIKITJ @2665 /* I'm sorry I never seen you before. */
== SLUMF1 @2666 /* I knows where I saw ye, ye one of them Shadow Thieves ain't ya? */
== CMNIKITJ @2667 /* A good question, but I am afraid I don't have an answer to give you. Something to keep in mind, what did curiosity do to the cat? */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikSlum2","LOCALS",0)~ THEN SLUMF2 NikSlum2
@2668 /* Hey miss, me thinks you be one of those robbers, you look like one. */
DO ~SetGlobal("NikSlum2","LOCALS",1)~
== CMNIKITJ @2669 /* No I am not a common thief. */
== SLUMF2 @2670 /* So you are an uncommon theif then? */
== CMNIKITJ @2671 /* I really don't know what you are talking about. You should lay off the ale. */
== SLUMF2 @2672 /* Sure thing miss, whatever you says. */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
!StateCheck("cmnikita",STATE_SLEEPING)
Global("NikThumb","LOCALS",0)~ THEN THUMB NikThumb
@2673 /* Well, well ain't it Nikita. I haven't seen you in a while, how are ye? */
DO ~SetGlobal("NikThumb","LOCALS",1)~
== CMNIKITJ @2674 /* Hello Thumb. I'm fine, been keeping myself busy as of late. Looks like you are prospering quite nicely. */
== THUMB @2675 /* Aye true that. Business 'as been picking up lately, brings in more coin. Plus me side jobs 'elp out a lot. */
== CMNIKITJ @2676 /* Side jobs? What sort of side jobs are they? */
== THUMB @2677 /* Err ye know I can't be talkin about that. */
== CMNIKITJ @2678 /* Yes, I know. Just checking. (Nikita winks at Thumb and leaves.) Goodbye Thumb, it has been nice chatting. */
END THUMB 0

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
Global("NikTuff1","LOCALS",0)~ THEN DRUFF1 NikTuff1
@2679 /* Come o'er here pretty thing. I'd make ye hollar all night long! */
DO ~SetGlobal("NikTuff1","LOCALS",1)~
== CMNIKITJ @2680 /* (Nikita takes out her dagger juggles it from one hand to the other.) I believe I can make you scream all night long. When I get done with you, you will have a permanent high voice. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("cmnikita")
See("cmnikita")
Global("NikTuff2","LOCALS",0)~ THEN DRUFF2 NikTuff2
@2681 /* Hey, ye lookin fer a good time babe? */
DO ~SetGlobal("NikTuff2","LOCALS",1)~
== CMNIKITJ @2682 /* That I am and it looks like I will still be looking for it. */
EXIT


