BEGIN C0KVELJ

// ALYTH

CHAIN IF WEIGHT #-1 ~InParty("C0Kvel")
Global("C0KvelBG1Alyth","GLOBAL",0)~ THEN ALYTH KvelAlyth
~I see the sellsword is now your responsibility. Ecthel has always been too emotionally tied to his investments, but I can at least commend him for avoiding a complete loss.~
DO ~SetGlobal("C0KvelBG1Alyth","GLOBAL",1)~
== ALYTH ~If you find the drow's presence inconvenient for any tasks you have in the future, send him back here. I can at least keep him sheltered and kept from the public eye as a favor to the Darcourt family.~
== C0KVELJ ~Your hospitality is appreciated.~
== ALYTH ~Don't think that I approve of your treatment of the lad, however, K'Velarin. I hope things will be different with your new employer.~
EXIT

// ANGEL

CHAIN IF WEIGHT #-1 ~Global("C0KvelPetrinesCat","GLOBAL",1)~ THEN C0KVELJ KvelAngel
~That must be the girl's cat.~
DO ~SetGlobal("C0KvelPetrinesCat","GLOBAL",2)~
= ~...~
= ~Pst. Psst...~
END
  ++ ~What are you doing?~ + KvelAngel.1
  ++ ~I didn't think you would be fond of cats.~ + KvelAngel.2
  ++ ~Stop that. You look ridiculous.~ + KvelAngel.1

CHAIN C0KVELJ KvelAngel.1
~The creature is frightened and confused. The disappearance of its owner together with its abuse has made it distrusting of others.~
EXTERN C0KVELJ KvelAngel.3

CHAIN C0KVELJ KvelAngel.2
~Cats are clever beings that remember images and sensations well. Slow to trust, but accurate when placing it.~
EXTERN C0KVELJ KvelAngel.3

CHAIN C0KVELJ KvelAngel.3
~Come, this small cut of meat should sate your hunger. No one is here to harm you...~
= ~Find its comfort object, <CHARNAME>. It likely carries the girl's scent, which will calm it.~
END
  ++ ~Shouldn't we bring the cat with us?~ EXTERN C0KVELJ KvelAngel.4
  ++ ~Alright.~ EXIT

CHAIN C0KVELJ KvelAngel.4
~No. Let it act freely. Once we bring the girl's ring to her, it will find her on its own.~
EXIT

// ANGELO

EXTEND_TOP ANGELO 1
 IF ~InParty("C0KVEL") !InParty("Sharteel")~ THEN EXTERN C0KVELJ C0KvelAngeloC7
END

EXTEND_TOP ANGELO 9
 IF ~InParty("C0KVEL") !InParty("Sharteel")~ THEN EXTERN C0KVELJ C0KvelAngeloC7
END

CHAIN C0KVELJ C0KvelAngeloC7
~Ha. Haha...~
== ANGELO ~And what is it you find so amusing, drow?~
== C0KVELJ ~For as long as I can remember, I have been told that the weak surfacers could not see blood, and the even weaker ones able to see it, but not shed it themselves.~
== ANGELO ~Your point being? Spit it out while I have time. You'll be dead soon enough.~
== C0KVELJ ~...weakest among weaklings...~
== ANGELO ~What's that? Speak up, so I can hear. I'll even be generous enough to step a little closer for you.~
DO ~SetGlobal("C0KvelAngelo","GLOBAL",1)
StartCutSceneMode()
MoveToPoint([1006.696])
Wait(1)
ActionOverride("C0KVEL",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelAngelo","GLOBAL",1)~ THEN C0KVELJ C0KvelAngeloC7Spit
~*spit*~
== ANGELO ~Gh—!~
== C0KVELJ ~And slow to react as well.~
== ANGELO ~I would commend you for your defiance, if it did not anger me to the extreme.~
DO ~SetGlobal("C0KvelAngeloTorture","GLOBAL",1)~
== ANGELO ~You think I fear shedding blood personally? Fine. Men, take this drow downstairs. I'd like to show our guest some of my favorite mementos while we... get acquainted.~
END
  ++ ~K'Vel, what are you doing?!~ EXTERN C0KVELJ C0KvelAngeloC7.1
  ++ ~(Remain silent)~ EXTERN ANGELO 4

CHAIN C0KVELJ C0KvelAngeloC7.1
~*whisper* Do not say anything, do not interfere. Find a means of escape for yourselves. I will find you once you have.~
EXTERN ANGELO 4

// BENTLEY

CHAIN IF WEIGHT #-1 ~InParty("C0Kvel")
Global("C0KvelBG1Bentley","GLOBAL",0)~ THEN BENTLY KvelBentley
~What th—a drow? Keep your hands where I can see 'em, I don't want to see you causing any trouble if you're going to just walk in here like you own the place!~
DO ~SetGlobal("C0KvelBG1Bentley","GLOBAL",1)~
== C0KVELJ ~...Perhaps the helmet performed its role better than intended.~
== BENTLY ~Hang on, I think I recognize your shape. You're Ecthel's bodyguard, aren't you? Bah, I always thought you looked shifty, and now I know why. Ecthel says he trusts you with his life, so you're allowed here as long as you've got someone responsible for you.~
COPY_TRANS BENTLY 0

// BHEREN

EXTEND_TOP BHEREN 0
 IF ~InParty("C0KVEL")~ THEN EXTERN C0KVELJ C0KvelBheren
END

EXTEND_TOP BHEREN 1
 IF ~InParty("C0KVEL")~ THEN EXTERN C0KVELJ C0KvelBheren
END

CHAIN C0KvelJ C0KvelBheren
~...~
END
  ++ ~I saw your hand moving for your weapon.~ EXTERN C0KVELJ C0KvelBheren.1
  ++ ~Calm down. We can't just kill him.~ EXTERN C0KVELJ C0KvelBheren.1

CHAIN C0KvelJ C0KvelBheren.1
~I... forgot myself. I merely find needless cruelty to children and creatures that cannot defend themselves contemptible.~
EXIT

// DRIZZT

INTERJECT DRIZZT 0 C0KvelDrizzt
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~The drow ranger Drizzt Do'Urden, once of the fallen house of Menzoberranzan. I doubted I would encounter him in person, vast as the surface is.~
END
  ++ ~Shall we lend him a hand?~ EXTERN C0KVELJ C0KvelDrizzt-1
  ++ ~I assume you know a lot about him.~ EXTERN C0KVELJ C0KvelDrizzt-2
  ++ ~What do you think we should do?~ EXTERN C0KVELJ C0KvelDrizzt-1

CHAIN C0KVELJ C0KvelDrizzt-1
~Do as you see fit. He will survive regardless so long as you do not attempt to hinder him. He is drow, but we have no prior connection.~
EXTERN DRIZZT C0KvelDrizzt-3

CHAIN C0KVELJ C0KvelDrizzt-2
~I have heard of his past, and have my thoughts as you might expect. But this is hardly the time.~
EXTERN C0KVELJ C0KvelDrizzt-1

CHAIN DRIZZT C0KvelDrizzt-3
~What is your stance, stranger? Shall I regard you as friend, foe, or neither?~
COPY_TRANS DRIZZT 0

I_C_T DRIZZT 10 C0KvelDrizzt2
== DRIZZT IF ~InParty("C0Kvel")~ THEN ~Though I would have a word with your companion, who I see as a fellow drow, if he would allow it.~
== C0KVELJ ~...~
== C0KVELJ ~*sigh* Say your piece, then, if it is important.~
== DRIZZT ~I see your skill and accent with the Common tongue is well-practiced. Had I not a clear look at your face, I could not recognize you for one of my kin. I presume that means you have spent your share of years here?~
== C0KVELJ ~True.~
== DRIZZT ~That is a relief to know. Precious few drow are able to survive on the surface, and fewer still that can seek the life they desire. I hope you are successful so far.~
== C0KVELJ ~I have had to make many sacrifices. But the surface is not bad. Humans are comprehensible, and with experience, comes the understanding for how a drow must deal with them. As long as I have my blade, survival is no impossible task.~
== DRIZZT ~Indeed, your skill is masterful. No, I can tell you were once even greater. What has happened to you, friend?~
== C0KVELJ ~It does not matter.~
== DRIZZT ~Certainly, it is not my business, but I doubt that such a change would not matter. Would that I had the luxury, I would not be opposed to test my blades against yours in a friendly battle.~
== C0KVELJ ~You are not the only one. Best that your time is precious, then. I would only disappoint you.~
== DRIZZT ~Whatever reasons you have, they are your own, though I hope you might accept my advice—friendship will make the journey easier. I wish the best for your future, as another drow who now calls the surface home.~
== DRIZZT ~Farewell.~
END

// ECTHEL STORE

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",25) NumTimesTalkedTo(0)~ THEN C0KVNP01 ECTHEL-STORE
~There you are, <CHARNAME>.~
== C0KVNP01 IF ~InParty("C0KVEL")~ THEN ~I see Kvel, or I assume it's K'Vel now, is here with you too.~
== C0KVELJ IF ~InParty("C0KVEL")~ THEN ~Make this quick, <CHARNAME>, before he decides to start reminiscing.~
== C0KVNP01 IF ~InParty("C0KVEL")~ THEN ~Wow. Not even pretending, now that I'm no longer his employer. Not that he can really fool me.~
== C0KVNP01 ~I've settled in with the merchants here for the time being. It's not a perfect solution, but it should keep me out of the Iron Throne's sights for a bit. And I've managed to acquire some goods of actual value too.~
EXTERN C0KVNP01 ECTHEL-STORE-1

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",25) !NumTimesTalkedTo(0)~ THEN C0KVNP01 ECTHEL-STORE-1
~If you need to buy something useful for your journey, you can have a look, and I'll sell it to you at a premium.~
END
  ++ ~Show me what you have.~ DO ~StartStore("C0KVST01",LastTalkedToBy(Myself))~ EXIT
  ++ ~Thank you, Ecthel, but I'm good for now.~ EXIT

// FLAMING FIST

EXTEND_TOP FFHUNT 0
 IF ~InParty("C0KVEL") Global("C0KvelFlamingFistC7Kill","GLOBAL",0)~ THEN EXTERN C0KVELJ C0KvelFlamingFistC7
END

CHAIN C0KVELJ C0KvelFlamingFistC7
~This situation is dire, <CHARNAME>. In our position, I cannot imagine our lives will be safe should we lay down our weapons, but an open battle here will only turn more surfacers against us.~
END
  ++ ~Can you take them out without drawing any attention?~ EXTERN C0KVELJ C0KvelFlamingFistC7-1
  ++ ~It doesn't matter. I can deal with this.~ EXTERN FFHUNT C0KvelFlamingFistC7-0

CHAIN FFHUNT C0KvelFlamingFistC7-0
~Stand down, and I promise you will not be harmed until you have a chance to plead your case!~
COPY_TRANS FFHUNT 0

CHAIN C0KVELJ C0KvelFlamingFistC7-1
~I can deal with them easily enough... but I doubt I can spare his life. They are too alert and prepared for resistance. If I strike, it must be quick and fatal. And I can only expect for this to work once—any future patrols will likely be more prepared.~
= ~The choice is yours. Whether you would have me eliminate these soldiers, or if we should fight or flee, I will not argue as long as we survive. But I do not advise surrender.~
END
  ++ ~Do it. It's regrettable, but I cannot let anything stop me now.~ + C0KvelFlamingFistC7-2
  ++ ~I care not for the lives of these men. Kill him quickly.~ + C0KvelFlamingFistC7-2
  ++ ~Don't. I'll handle things.~ EXTERN FFHUNT C0KvelFlamingFistC7-0

CHAIN C0KVELJ C0KvelFlamingFistC7-2
~It will be done.~
DO ~SetGlobal("C0KvelFlamingFistC7Kill","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
MoveToObject("FFHUNT")
PlaySound("GAM_41A")
Wait(2)
EndCutSceneMode()
FadeFromColor([30.0],0)~ EXIT

// MARKETPLACE

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1MarketplaceTalk","GLOBAL",1)~ THEN C0KVELJ KVEL-MARKET
~This is the city's main market, I take it.~
DO ~SetGlobal("C0KvelBG1MarketplaceTalk","GLOBAL",2)~
END
  ++ ~That's right.~ + KVEL-MARKET-1
  ++ ~You sound unusually interested.~ + KVEL-MARKET-1
  ++ ~So what?~ + KVEL-MARKET-1

CHAIN C0KVELJ KVEL-MARKET-1
~Wait here a moment. I will not take long.~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
Wait(4)
FadeFromColor([30.0],0)
FaceObject(Player1)
Wait(3)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1MarketplaceTalk","GLOBAL",2)~ THEN C0KVELJ KVEL-MARKET2
~I've found what I was after.~
DO ~SetGlobal("C0KvelBG1MarketplaceTalk","GLOBAL",3)~
END
  ++ ~What did you buy?~ + KVEL-MARKET2-1
  ++ ~Alright, let's go.~ EXIT

CHAIN C0KVELJ KVEL-MARKET2-1
~...Spices.~
END
  ++ ~Cooking spices?~ + KVEL-MARKET2-2
  ++ ~That's it?~ + KVEL-MARKET2-2
  ++ ~I expected you to be after something more important.~ + KVEL-MARKET2-3
  ++ ~I see. Well, let's go then.~ EXIT

CHAIN C0KVELJ KVEL-MARKET2-2
~I will forage for material in the wild in most cases. Still, there are some things that are more easily found in human hands. They are... preferable to other alternatives.~
END
  ++ ~I heard you were skilled with cookery, but I didn't think it'd be a personal interest.~ + KVEL-MARKET2-4
  ++ ~Hang on, you just walked into the food market with a cloth around your face? And people didn't ask questions?~ + KVEL-MARKET2-5
  ++ ~That's true. If it means our meals taste better for the next few days, I won't complain.~ + KVEL-MARKET2-6

CHAIN C0KVELJ KVEL-MARKET2-3
~Your point is not without reason. This was not essential. But...~
EXTERN C0KVELJ KVEL-MARKET2-2

CHAIN C0KVELJ KVEL-MARKET2-4
~It is a useful skill to prepare your own food. Safer, and often necessary. In that respect, there is no reason not to improve in any way one can.~
EXTERN C0KVELJ KVEL-MARKET2-6

CHAIN C0KVELJ KVEL-MARKET2-5
~Some were suspicious, of course. But it only took a small display of culinary knowledge to distract the stallkeeper with casual conversation before our exchange. That, too, is a useful skill I have learned in my years on the surface.~
EXTERN C0KVELJ KVEL-MARKET2-6

CHAIN C0KVELJ KVEL-MARKET2-6
~My apologies for taking up your time. We may go.~
EXIT

// PHANDALYN

INTERJECT PHANDA 0 C0KvelPhandalyn
== C0KVELJ IF ~InParty("C0KVEL")~ THEN ~How ridiculous, to impulsively act in such a way.~
== C0KVELJ ~I can easily subdue this fool—quietly and non-lethally, and then leave him in a dark corner. Perhaps he will forget what he saw once he awakens. If not, he will still be unlikely to find us, even if he tries.~
END
  ++ ~Go ahead. Just don't seriously hurt him.~ EXTERN C0KVELJ C0KvelPhandalyn-1
  ++ ~I wish we could kill this idiot, but it's probably best that we don't. Give him a good, hard tap.~ EXTERN C0KVELJ C0KvelPhandalyn-1
  ++ ~No need. I was hoping for a chance to kill a do-gooder.~ EXTERN PHANDA C0KvelPhandalyn-2

CHAIN C0KVELJ C0KvelPhandalyn-1
~Very well.~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
MoveToObject("PHANDA")
Wait(1)
PlaySound("HIT_03A1")
PlaySound("FLAMN06")
ActionOverride("PHANDA",DestroySelf())
Wait(1)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
Wait(4)
FadeFromColor([30.0],0)
FaceObject(Player1)
Wait(3)
StartDialogNoSet(Player1)~ EXIT

CHAIN PHANDA C0KvelPhandalyn-2
~Death to all who seek to harbor the emissaries of darkness!~
COPY_TRANS PHANDA 0

CHAIN IF WEIGHT #-1 ~Global("C0KvelPhandalyn","GLOBAL",1)~ THEN C0KVELJ C0KvelPhandalyn2
~He won't wake up for a while. We can leave.~
DO ~SetGlobal("C0KvelPhandalyn","GLOBAL",2)~
END
  ++ ~You sure you didn't kill him?~ + C0KvelPhandalyn2.1
  ++ ~Good job. I'll let you deal with this sort of thing from now on.~ EXIT

CHAIN C0KVELJ C0KvelPhandalyn2.1
~The man will fall into his own grave sooner or later. I see no need to hasten his journey.~
EXIT

// OUTDOORS

CHAIN IF WEIGHT #-1 ~Global("C0KvelOutsideFirstTime","GLOBAL",1)~ THEN C0KVELJ KVEL-OUTDOOR
~The sun...~
= ~I had forgotten how rare it is that I must face it without my old helmet.~
DO ~SetGlobal("C0KvelOutsideFirstTime","GLOBAL",2)~
END
  ++ ~And?~ + KVEL-OUTDOOR-1
  ++ ~Stop complaining.~ + KVEL-OUTDOOR-2
  ++ ~We can find someone to make another of the same design, if it would help.~ + KVEL-OUTDOOR-3

CHAIN C0KVELJ KVEL-OUTDOOR-1
~And nothing. I will live with it. Let's go.~
EXIT

CHAIN C0KVELJ KVEL-OUTDOOR-2
~I will not mention it again. This is my burden to bear from now on.~
EXIT

CHAIN C0KVELJ KVEL-OUTDOOR-3
~That will not be necessary. That helmet was to protect from people, not the light above. It is no longer needed.~
EXIT

// OXLEY

CHAIN IF WEIGHT #-1 ~Global("C0KvelDeadOxley","GLOBAL",2)~ THEN C0KVELJ KVEL-OXLEY
~This dead man... Ecthel's old rival, Oxley. I see he outlived his usefulness.~
DO ~SetGlobal("C0KvelDeadOxley","GLOBAL",3)~
END
  ++ ~The merchant who threatened and then tried to buy you.~ + KVEL-OXLEY-1
  ++ ~I guess he was killed so his identity could be assumed.~ + KVEL-OXLEY-1
  ++ ~Just another corpse, now. Let's not dwell on it.~ EXIT

CHAIN C0KVELJ KVEL-OXLEY-1
~His shortsightedness and greed was obvious enough. No doubt it made him simple to manipulate, and even easier to dispose of.~
= ~Had I taken his offer, no doubt I would have to face the same potential end.~
END
  ++ ~And that's why you refused him? Loyalty had nothing to do with it?~ + KVEL-OXLEY-2
  ++ ~I don't see you dying so easily as this weak fool.~ + KVEL-OXLEY-3

CHAIN C0KVELJ KVEL-OXLEY-2
~It does not matter.~
END
  ++ ~I think it does. I need to know I can depend on you.~ + KVEL-OXLEY-4
  ++ ~Fine, forget I said anything.~ EXIT

CHAIN C0KVELJ KVEL-OXLEY-3
~Better to recognize a pitfall than try to climb your way out of it.~
EXTERN C0KVELJ KVEL-OXLEY-5

CHAIN C0KVELJ KVEL-OXLEY-4
~So long as you do not make equally poor decisions, you have no reason for fear.~
EXTERN C0KVELJ KVEL-OXLEY-5

CHAIN C0KVELJ KVEL-OXLEY-5
~Regardless, there is a reason I pointed out this dead fool—he is otherwise insignificant.~
= ~Do you see these blade marks? Uneven and curved, like that of a scimitar.~
END
  ++ ~Like that drow assassin that attacked you?~ + KVEL-OXLEY-6
  ++ ~What, are you suggesting Drizzt came all the way to kill this man?~ + KVEL-OXLEY-7
  ++ ~So? There's plenty of people who use scimitars.~ + KVEL-OXLEY-7

CHAIN C0KVELJ KVEL-OXLEY-6
~Yes. This was done by the same weapon. An imitation of a drow-crafted scimitar.~
EXTERN C0KVELJ KVEL-OXLEY-8

CHAIN C0KVELJ KVEL-OXLEY-7
~This was done by no ordinary blade. Drow-crafted, or at least an imitation of it. A true drow scimitar would not last under the sun.~
EXTERN C0KVELJ KVEL-OXLEY-8

CHAIN C0KVELJ KVEL-OXLEY-8
~The difference is minor, but I've seen the same types of wounds more than enough times to notice.~
= ~This merchant was involved with drow. Or, more likely, there are drow associating with the Iron Throne. I doubt they gave this specific fool a second thought.~
END
  ++ ~Why would drow associate with a human organization?~ + KVEL-OXLEY-9
  ++ ~So he had some connection with drow. But they killed him for some reason?~ + KVEL-OXLEY-10
  ++ ~We don't have time for speculation. Let's get a move on.~ + KVEL-OXLEY-11

CHAIN C0KVELJ KVEL-OXLEY-9
~A drow city such as Menzoberranzan or Ust Natha indeed would not. But if it were drow from Eryndlyn, or even Ched Nasad... that is a different story.~
== VICONJ IF ~InParty("Viconia")~ THEN ~And what am I then, jaluk? Chopped dro'vk?~
== BAELOTHJ IF ~InParty("Baeloth")~ THEN ~Correctly, my current concordat is but a matter of convenience, in lieu of preferable possibilities.~
== C0KVELJ IF ~OR(2) InParty("Viconia") InParty("Baeloth")~ THEN ~Present company, with no supporting house to lean upon, does not count.~
== C0KVELJ ~In places where the watchful eyes of Lolth's followers are fewer, drow seek power from more material sources. Wealth and connections... and for the pragmatic, they see only profit in dealing with similarly unscrupulous groups. Even surfacers.~
== C0KVELJ ~I have mentioned that the drow assassin before was of House Zaer'iyon. That is a house of Eryndlyn, one with powerful merchant associates. It would not be unheard of for association with a group such as the Iron Throne to seem appealing.~
END
  ++ ~And this man was their intermediary, or something similar. But why kill him?~ + KVEL-OXLEY-10
  ++ ~We don't have time for speculation. Let's get a move on.~ + KVEL-OXLEY-11

CHAIN C0KVELJ KVEL-OXLEY-10
~Who knows. Perhaps he offended them. Perhaps his own masters believed he was of more use dead than alive. I do not care to sift through the twisted minds of schemers, whether they be drow or human.~
= ~All I do know is that drow may now be our enemies. And that is a very dangerous thing.~
EXTERN C0KVELJ KVEL-OXLEY-11

CHAIN C0KVELJ KVEL-OXLEY-11
~If there are truly drow that serve as threats, whether it be to you or I, then you had best be wary.~
EXIT

// SPIDER'S BANE

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1SpidersBane","GLOBAL",1)~ THEN C0KVELJ KVEL-SPIDERBANE
~"Spider's Bane"?~
DO ~SetGlobal("C0KvelBG1SpidersBane","GLOBAL",2)~
= ~...Hah.~
END
  ++ ~What's so funny?~ EXTERN C0KVELJ KVEL-SPIDERBANE-1
  ++ ~I guess it must be strange for a drow to wield it.~ EXTERN C0KVELJ KVEL-SPIDERBANE-2
  ++ ~I'm glad you like the sword. You'll have no trouble using it then.~ EXIT

CHAIN C0KVELJ KVEL-SPIDERBANE-1
~I was just thinking that, were this in any drow city, one would lose their hand for even touching such a sacrilegious item, if not turned into a drider instead.~
EXTERN C0KVELJ KVEL-SPIDERBANE-3

CHAIN C0KVELJ KVEL-SPIDERBANE-2
~The irony is certainly not lost on me. Did you have that in mind when you handed me this blade?~
EXTERN C0KVELJ KVEL-SPIDERBANE-3

CHAIN C0KVELJ KVEL-SPIDERBANE-3
~No matter. It is a serviceable weapon, and I have no complaints.~
EXIT

// INTERJECTIONS

I_C_T ALATOS 0 C0KvelAlatos
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~I, too, would prefer to avoid hostility, but I have found keeping my weapon close to be the preferable deterrent against this one's ilk.~
END

I_C_T2 DELTAN2 0 C0KvelDukeEltan
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~It is fortunate that this Duke has enough influence to ensure a sudden death would provoke chaos. The poison is slow acting. He can survive with proper treatment.~
END

I_C_T2 DESRET 3 C0KvelDesreta
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~What an absurd philosophy. If one will seek no meaning in life and so easily discard it as worthless, then let us grant these fools what they desire.~
END

I_C_T SLYTHE 2 C0KvelSlythe
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~Ridiculous prattlers. Let us dispose of these two to make up for the time wasted listening to this drivel.~
END

// TALK 1

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Talk1","GLOBAL",2)~ THEN C0KVELJ KVEL-TALK1
~So, my first day under my newest employer. Another change. After a long five years, perhaps this is for the best.~
= ~I hope you do not expect an overly warm reception. I am currently sworn to your service, but nothing else.~
DO ~SetGlobal("C0KvelBG1Talk1","GLOBAL",3)~
END
  ++ ~Do you treat all your employers like this?~ + KVEL-TALK1-1
  ++ ~You seemed pretty friendly with Ecthel, all things considered.~ + KVEL-TALK1-2
  ++ ~I don't keep servants and mercenaries. If we are to work together, I'd prefer to trust you as a person.~ + KVEL-TALK1-3
  ++ ~Fine. I prefer allies who don't waste my time with pointless talk.~ + KVEL-TALK1-4

CHAIN C0KVELJ KVEL-TALK1-1
~Yes.~
EXTERN C0KVELJ KVEL-TALK1-5

CHAIN C0KVELJ KVEL-TALK1-2
~What you see is the sentimentality of a man with too few years in his future. It is better for him as well that our contract ended.~
EXTERN C0KVELJ KVEL-TALK1-5

CHAIN C0KVELJ KVEL-TALK1-3
~I can assure you of my sincerity, but how much worth do words alone hold? We have fought together, and now work together by chance. Had things been slightly different, we would not even have known each other.~
EXTERN C0KVELJ KVEL-TALK1-5

CHAIN C0KVELJ KVEL-TALK1-4
~Then we understand each other.~
EXIT

CHAIN C0KVELJ KVEL-TALK1-5
~You have placed your trust in a drow, and a stranger. Do you understand the connotations of such, <CHARNAME>?~
END
  ++ ~No. And that's why I need to know more about you, so that I can find some reason to trust you.~ + KVEL-TALK1-6
  ++ ~I know you are a drow, but that doesn't mean I distrust you... not unless you give me a reason to.~ + KVEL-TALK1-7
  ++ ~Sounds like you aren't so set on this new job after all.~ + KVEL-TALK1-8
  ++ ~The only thing I know is that you're a good fighter, and I can use someone like you.~ + KVEL-TALK1-9

CHAIN C0KVELJ KVEL-TALK1-6
~A reasonable starting point. Very well. I will tell you as much of me as you need to know.~
EXTERN C0KVELJ KVEL-TALK1-10

CHAIN C0KVELJ KVEL-TALK1-7
~Trust should never be given unconditionally. But you seem to at least recognize one must know things of whom they wish to place trust towards. In which case, I will introduce myself properly, so that you are under no illusions of what I am.~
EXTERN C0KVELJ KVEL-TALK1-10

CHAIN C0KVELJ KVEL-TALK1-8
~What I feel does not matter now. All I desire to know is whether you are prepared for the possibility of placing your life in my hands.~
END
  ++ ~As you said, we barely know each other. But that is why I wish to know more about you.~ + KVEL-TALK1-6
  ++ ~I can't trust you fully yet. But I also don't have a reason to distrust you yet.~ + KVEL-TALK1-7
  ++ ~So long as you can fight, I don't really care about all the details.~ + KVEL-TALK1-9

CHAIN C0KVELJ KVEL-TALK1-9
~So simple... if that is the case, then I shall be a weapon at your command. But there will be things from which even I cannot protect you.~
EXIT

CHAIN C0KVELJ KVEL-TALK1-10
~I am K'Velarin. I was born in the city of Eryndlyn, within the Underdark. My house was once Au'dayrr, a minor power. I raised my first sword the day I grew to match its height and killed my first sapient opponent when I was eight, long before my Blooding. I have been trained to fight since as long as I can remember.~
DO ~SetGlobal("C0KvelBG1Background","GLOBAL",1)~ 
= ~I fled to the surface under pain of death seven years ago, and sold my sword to whoever might offer. Ecthel found and hired me after my second year, and I had served him until the end of our contract. Now, I serve you by the strength of my word.~
= ~And with that, I have told you as much as I have any other surfacer who has sought my services. What you make of it, and of my worth, is up to you.~
EXIT

// TALK 2

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Talk2","GLOBAL",1)~ THEN C0KVELJ KVEL-TALK2
~I see you've yet to sleep, <CHARNAME>.~
DO ~SetGlobal("C0KvelBG1Talk2","GLOBAL",2)~
END
  + ~Race(Player1,ELF)~ + ~We are elves. The reverie is how we recover from the day's toils. Do you not reverie as well?~ + KVEL-TALK2-ELF
  ++ ~I wasn't tired yet, and wanted to see what you were doing.~ + KVEL-TALK2-1
  ++ ~You're not sleeping either.~ + KVEL-TALK2-1
  ++ ~What is it you're reading?~ + KVEL-TALK2-1
  ++ ~I was just about to.~ + KVEL-TALK2-0

CHAIN C0KVELJ KVEL-TALK2-ELF
~...~
= ~I have not experienced reverie since first coming to the surface.~
END
  ++ ~That is usually a sign of mental or physical malady. Are you alright?~ + KVEL-TALK2-ELF-1
  ++ ~I heard many drow have a more difficult time going into reverie. Is that the case for you as well?~ + KVEL-TALK2-ELF-2
  ++ ~Fair enough. What are you doing right now then?~ + KVEL-TALK2-1

CHAIN C0KVELJ KVEL-TALK2-ELF-1
~It is of no concern. You can be satisfied in knowing that my condition is more than hale enough to serve as your sellsword for as long as is required.~
EXTERN C0KVELJ KVEL-TALK2-1

CHAIN C0KVELJ KVEL-TALK2-ELF-2
~What you have heard is not untrue. But my case is... different. It is nothing for you to concern yourself with.~
EXTERN C0KVELJ KVEL-TALK2-1

CHAIN C0KVELJ KVEL-TALK2-0
~Hmm. Then I will return to my reading.~
EXIT

CHAIN C0KVELJ KVEL-TALK2-1
~I was familiarizing myself with some of the more common texts in human lands. This has been a common habit for me since coming to the surface, initially to nurture my understanding of Common so that I may survive.~
= ~In time, I suppose you could consider this becoming a more personal interest. With my history, I fully expect to finish my life here, and so I may as well be more knowledgable of your literatures and customs.~
END
  + ~GlobalLT("chapter","GLOBAL",6)~ + ~You like to read? I should introduce you to my old home of Candlekeep.~ + KVEL-TALK2-2
  ++ ~So what book are you going through now? I may know of it.~ + KVEL-TALK2-3
  + ~!InParty("Viconia")~ + ~I expected you might look down on surfacers and our ways.~ + KVEL-TALK2-4
  + ~InParty("Viconia")~ + ~I expected you might look down on surfacers and our ways.~ + KVEL-TALK2-5
  
CHAIN C0KVELJ KVEL-TALK2-2
~The great library. Yes, its reputation is known even to myself. Ecthel often expressed an interest to venture there, though its typical price of admission was always too much even for him. Though whether it is worthy of its name may depend on the value they place on books such as these.~
EXTERN C0KVELJ KVEL-TALK2-3

CHAIN C0KVELJ KVEL-TALK2-3
~You may find this one as amusing as I have. It is a 'historical' record of the drow, penned by a surface scribe who has undoubtedly never seen a single drow in their short lifetime. "The Descent"... what an absurd rendition of the past.~
= ~There is one indisputable truth written in its pages, though it does not give it the emphasis it deserves. The greatest enemy of the drow has never been their cousins, the dwarves, humans... no, their greatest disasters have all been self-inflicted.~
= ~I suppose even if every word that is penned in ink is drivel, the underlying fear and apprehension towards the drow is genuine.~
END
  ++ ~What is the truth of the drow's history, if it's not like this book?~ + KVEL-TALK2-6
  ++ ~The feared reputation of the drow isn't without merit.~ + KVEL-TALK2-7
  ++ ~I think most races have the potential to become so, when forced into a corner.~ + KVEL-TALK2-8
  ++ ~Forget literature. I've been through plenty during my time in Candlekeep. I'm going to bed.~ + KVEL-TALK2-0

CHAIN C0KVELJ KVEL-TALK2-4
~No doubt that I have seen those on the surface who are utterly below contempt. Then again, I would be foolish to say I could not say the same for drow. We are no more susceptible to the same vices as above, only indundated in more of it... despite what books such as these may claim to be otherwise.~
EXTERN C0KVELJ KVEL-TALK2-3

CHAIN C0KVELJ KVEL-TALK2-5
~Like our resident fallen priestess? I have not experienced the various privileges she struggles so greatly to let go of. She suffers more greatly than I do, though it is largely of her own doing.~
EXTERN C0KVELJ KVEL-TALK2-4

CHAIN C0KVELJ KVEL-TALK2-6
~Ask a scholar. Not that you will find any of note among the drow, but the elves of the West may be willing to entertain you, should you meet them one day.~
EXTERN C0KVELJ KVEL-TALK2-9

CHAIN C0KVELJ KVEL-TALK2-7
~Few are more aware of that than myself.~
EXTERN C0KVELJ KVEL-TALK2-9

CHAIN C0KVELJ KVEL-TALK2-8
~You are not wrong. Perhaps I should consider surfacers privileged, but it is not altogether a bad thing. Not if it allows you to avoid following the drow's example.~
EXTERN C0KVELJ KVEL-TALK2-9

CHAIN C0KVELJ KVEL-TALK2-9
~I cannot speak for whether the fall of the drow was deserved or not. I am no historian. But I have seen my kind, in their embedded belief that cruelty and self-interest are the only way to survive, become paranoid and self-defeating. It is little wonder that for all their power, the drow have never advanced in all these years that they have dwelled in the darkness.~
= ~You would think that eventually someone would learn. But the Spider Queen has a lust for chaos, even to the downfall of the very ones who pledge their devotion to her. And so we continue to play on her strings like puppets, destroying each other for amusement without end.~
= ~At least these records have not transcribed that part of the drow's dark history. A small mercy, perhaps, but one nonetheless.~
= ~I am done with these books, <CHARNAME>. Read it yourself if it amuses you, but do not take it as the full truth. Next time, I would prefer to read something a bit more practical.~
= ~Perhaps a cookbook might be compelling. Look out for them should you find one. Consider it a rare favor that I'm asking of you.~
DO ~GiveItemCreate("BOOK38",Player1,1,0,0)
GiveItemCreate("BOOK39",Player1,1,0,0)
RestParty()~ EXIT