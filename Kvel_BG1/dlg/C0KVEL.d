BEGIN C0KVEL
BEGIN C0KVELP
BEGIN C0KVNP01
BEGIN C0KVNP02
BEGIN C0KVNP03
BEGIN C0KVNP04
BEGIN C0KVNP05
BEGIN C0KVNP06
BEGIN C0KVNP07

CHAIN IF WEIGHT #-1 ~Global("C0KvelBentleyBook","GLOBAL",0)~ THEN BENTLY KVEL-BENTLEY-BOOK
~By Garl, that boy'll run his family's business into the ground if he doesn't get his head on straight... Nessie? Nessie, are you free right now? Blast it, the girl's carrying too many hot plates to even move.~
DO ~SetGlobal("C0KvelBentleyBook","GLOBAL",1)~
== BENTLY ~You there, can I pay you a small amount in advance to do a favor for me? An acquaintance of mine got ridiculously drunk last night and left an important ledger on my table, and was too hung over to remember it come the morning. I need someone to bring it to him in case he goes off without realizing it's missing.~
END
  ++ ~Alright, I'll bring it to him. Where can I find this person?~ EXTERN BENTLY KVEL-BENTLEY-BOOK-1
  ++ ~Sorry, but I don't have time for that right now.~ EXTERN BENTLY KVEL-BENTLEY-BOOK-2

CHAIN BENTLY KVEL-BENTLEY-BOOK-1
~Thank you. The boy's name is Ecthel Darcourt, and he's a merchant of Darcourt Enterprises. Around this time, he'll probably be unloading some goods in the area behind the temple.~
== BENTLY ~Here's 50 gold for the trouble, good <MANWOMAN>.~
DO ~GiveItemCreate("C0KVBK01",LastTalkedToBy(Myself),1,0,0) GiveGoldForce(50)~ EXIT

CHAIN BENTLY KVEL-BENTLEY-BOOK-2
~Blast it. Well, I can't force you. I'll just hold on to it until the fool boy remembers what his job is. He can't possibly not think about something so important even once all day, could he...?~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",0)~ THEN C0KVNP01 KVEL-START-0
~Come on, get a move on, lads. I'm not paying you by the hour to do things at this pace. A nice, hot meal for you all is on me if you get all this unloaded in time! We were supposed to get this done yesterday!~
DO ~SetGlobal("C0KvelBegin","GLOBAL",1)~
== C0KVNP03 ~But, boss, we only didn't get it done because you insisted that...~
== C0KVNP01 ~What's that? I'm sure I pay you all to work, not to talk back. Hop to it, go on!~
== C0KVNP02 ~Ugh, boss... can't we eat now and *then* finish work? It'd be a lot faster that way.~
== C0KVNP03 ~'Sides, why doesn't HE do anything? He's over six feet and built like an ox, nobody would even believe me if I said he's an elf. Why does he get to just sit in the shade like that?~
== C0KVEL ~...~
== C0KVNP01 ~You can think of getting breaks when you fight even half as well as he does, and no sooner. Now hurry up, we've—I beg your pardon, good <PRO_SIRMAAM>! I didn't expect someone to pass by here.~
== C0KVNP01 ~Ecthel Darcourt, merchant and messenger, at your service. If you're looking for wares, I'm afraid we haven't got much at the current moment, but I can still show you some items that might be suitable for those of the adventuring profession.~
END
  + ~PartyHasItem("C0KVBK01")~ + ~You're Ecthel Darcourt? Bentley asked me to bring you your ledger. You left it with him.~ DO ~SetGlobal("C0KvelMetEcthel","GLOBAL",1) TakePartyItem("C0KVBK01") DestroyItem("C0KVBK01")~ EXTERN C0KVNP01 KVEL-START-0-1
  ++ ~Show me what you have, then.~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~Not right now.~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",1)~ THEN C0KVNP01 KVEL-START-0
~Yes, good <PRO_SIRMAAM>? What can Ecthel Darcourt do for you?~
END
  + ~PartyHasItem("C0KVBK01")~ + ~You're Ecthel Darcourt? Bentley asked me to bring you your ledger. You left it with him.~ DO ~SetGlobal("C0KvelMetEcthel","GLOBAL",1) TakePartyItem("C0KVBK01") DestroyItem("C0KVBK01")~ EXTERN C0KVNP01 KVEL-START-0-1
  ++ ~Show me what you have, then.~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~Not right now.~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN C0KVNP01 KVEL-START-0-1
~I left my ledger? Surely not, there's no way—oh dear. I really might have misplaced it.~
== C0KVNP01 ~Let's see... yes, this is definitely mine. Thank Waukeen you brought it to me, friend. I would have ended up several feet deep in a quagmire if I had gone off without it. Can you believe this? Four pairs of eyes at my side, and none of them even notice something so important!~
== C0KVEL ~I did.~
== C0KVNP01 ~So why didn't you tell me?~
== C0KVEL ~*I did*.~
== C0KVNP01 ~You liar!~
== C0KVNP02 ~Boss, you were drunk.~
== C0KVEL ~It is not my fault you were barely coherent.~
== C0KVNP01 ~That's... well... argh! Fine, fine! So I was. I regret saying anything.~
== C0KVEL ~I regret too often that you say things as well.~
== C0KVNP01 ~Beg pardon, my <PRO_LADYLORD>. This one calls himself Kvel, and he's my bodyguard. I pay him, feed him, give him shelter, but he'll never put in a good word for me so long as he breathes.~
END
  ++ ~Your bodyguard? He seems more like your straight man.~ EXTERN C0KVNP01 KVEL-START-0-4
  ++ ~Is he really an elf? He's taller than your average human.~ EXTERN C0KVNP01 KVEL-START-0-5
  ++ ~Never mind him. I'm interested in your wares.~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~Nice to meet you both, but I need to go now.~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN C0KVNP01 KVEL-START-0-2
~Yes, of course. Do tell me if anything catches your eye, and I'll be sure to give you a more than reasonable deal.~
DO ~StartStore("C0KVST01",LastTalkedToBy(Myself))~ EXIT

CHAIN C0KVNP01 KVEL-START-0-3
~Well, if you ever know anyone in need of special goods, tell your friends and family that Darcourt Enterprises can acquire just about anything at a fairer price than you'll find at home.~
EXIT

CHAIN C0KVNP01 KVEL-START-0-4
~That's us. The comedic duo, or at least he likes giving others laugh at my expense. Completely unintentionally, too. He's just like that.~
EXTERN C0KVNP01 KVEL-START-0-6

CHAIN C0KVNP01 KVEL-START-0-5
~Well, you do see miracles of nature now and again. Tall elves, short humans, skinny dwarves...~
== KAGAIJ IF ~InParty("KAGAIN")~ THEN ~Watch yer mouth, longlimbs.~
== C0KVNP01 IF ~InParty("KAGAIN")~ THEN ~I—I'm just speaking conceptually.~
== C0KVNP01 ~Not that I don't understand what you mean. It's quite intimidating, but I find it useful when I'm on the road. Even if he is about as cold as a white dragon in winter.~
EXTERN C0KVNP01 KVEL-START-0-6

CHAIN C0KVNP01 KVEL-START-0-6
~But Kvel and I have a few years of camaraderie between us, so don't get the wrong impression. I'd trust him with my life, and he hasn't ever lost a single battle with his greatsword, as far as I've seen. I couldn't have signed off on a better contract.~
== C0KVNP01 ~Really, he's not even as surly as he looks. Close, but he'll talk to you on a good day. Even at worst, he won't hurt you... actually, that sounds bad, doesn't it. People just ask it a lot.~
END
  ++ ~Never mind him. I'm interested in your wares.~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~Nice to meet you both, but I need to go now.~ EXTERN C0KVNP01 KVEL-START-0-3
  ++ ~I see. Maybe I'll go have a chat with him. Goodbye.~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN IF WEIGHT #-1 ~GlobalLT("C0KvelBegin","GLOBAL",1)~ THEN C0KVEL KVEL-START-2
~Talk to my employer if you're looking to do business.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",1)~ THEN C0KVEL KVEL-START-1
~Make it quick.~
END
  + ~OR(2) TimeOfDay(DAY) TimeOfDay(MORNING)~ + ~It's a hot day. Why do you keep the helmet on?~ EXTERN C0KVEL KVEL-START-1-1
  + ~OR(2) TimeOfDay(DUSK) TimeOfDay(NIGHT)~ + ~It's pretty dark. Doesn't the helmet make it harder to see?~ EXTERN C0KVEL KVEL-START-1-1
  ++ ~I don't suppose I could buy off your contract? You seem like a pretty strong sellsword.~ EXTERN C0KVEL KVEL-START-1-2
  + ~Global("C0KvelAskHome","GLOBAL",0)~ + ~Where are you from? You're obviously not a native of the Sword Coast.~ DO ~SetGlobal("C0KvelAskHome","GLOBAL",1)~ EXTERN C0KVEL KVEL-START-1-3
  ++ ~Why aren't you working?~ EXTERN C0KVEL KVEL-START-1-4
  ++ ~I don't have anything to say. Goodbye.~ EXIT

CHAIN C0KVEL KVEL-START-1-1
~It is bearable.~
EXIT

CHAIN C0KVEL KVEL-START-1-2
~That is on my employer, though should you ask him, I do not think highly of your chances.~
EXIT

CHAIN C0KVEL KVEL-START-1-3
~No.~
END
  ++ ~So you're from...?~ + KVEL-START-1-3-1
  ++ ~Alright then.~ EXIT

CHAIN C0KVEL KVEL-START-1-3-1
~...~
= ~The Underdark.~
END
  ++ ~The *Underdark*?~ EXTERN C0KVEL KVEL-START-1-3-2

CHAIN C0KVEL KVEL-START-1-3-2
~Yes, the Underdark. I barely escaped from a hellscape with my life intact, and have been living off my sword ever since.~
END
  ++ ~You can't be serious.~ EXTERN C0KVEL KVEL-START-1-3-3
  ++ ~So... what, are you a drow? A very large duergar?~ EXTERN C0KVEL KVEL-START-1-3-3
  ++ ~Somehow, I get the feeling you're telling the truth.~ EXTERN C0KVEL KVEL-START-1-3-3

CHAIN C0KVEL KVEL-START-1-3-3
~Believe what you will. I've lost interest in this conversation.~
EXIT

CHAIN C0KVEL KVEL-START-1-4
~My job is to keep my employer alive.~
END
  ++ ~So you're conserving your strength?~ + KVEL-START-1-5
  ++ ~Your employer would probably be happier if you helped out.~ + KVEL-START-1-6
  ++ ~Fair enough.~ EXIT

CHAIN C0KVEL KVEL-START-1-5
~Yes.~
EXIT

CHAIN C0KVEL KVEL-START-1-6
~His safety is my concern. His satisfaction is not.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",3)~ THEN C0KVNP01 KVEL-START-3
~Y—you there! Please, help an honest traveler in need! These beasts are relentless!~
DO ~SetGlobal("C0KvelBegin","GLOBAL",4)
ChangeEnemyAlly(Myself,GOODBUTBLUE)
ChangeEnemyAlly("C0KVEL",GOODBUTBLUE)
ActionOverride("C0KVEL",Spell(Myself,ASSASSIN_POISON))
ActionOverride("C0KVEL",ApplySpellRES("C0KVSP06",Myself))
ChangeEnemyAlly("C0KVNP02",GOODBUTBLUE)
ChangeEnemyAlly("C0KVNP03",GOODBUTBLUE)
ChangeEnemyAlly("C0KVNP04",GOODBUTBLUE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",5)~ THEN C0KVNP01 KVEL-START-5
~Ahh... th—thank you for your assistance, friend, and thank Waukeen that our paths crossed. I have never seen raiding beasts so ferocious.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",6)~
== C0KVNP01 ~Gods, and our caravan... how bad is the damage?~
== C0KVEL ~...~
== C0KVEL ~A complete loss. Everything was destroyed by the explosion, from our wares to our supplies.~
== C0KVNP01 ~Damn it! Blasted monsters, never would I have expected them to hurl a potion of explosions our way... we are fortunate enough not to have perished in flames ourselves.~
== C0KVNP01 ~It was only a stroke of luck that we evaded the direct blast, and if not for you, stranger, we would have all been sent to the afterlife along with our carriage.~
END
IF ~Global("C0KvelMetEcthel","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-5-1
IF ~!Global("C0KvelMetEcthel","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-5-2

CHAIN C0KVNP01 KVEL-START-5-1
~Hang on... I think I remember you from somewhere. Yes, it must have been at the Friendly Arm Inn. You brought me my ledger, didn't you?~
END
  ++ ~That's right.~ EXTERN C0KVNP01 KVEL-START-5-1-1

CHAIN C0KVNP01 KVEL-START-5-1-1
~In that case, I'm glad to see another friendly face. Though not to diminish my gratitude, but it all amounted to, well... suffice to say that ledger got caught in the explosion, and is a pile of ash along with the rest of my documents. *sigh*~
EXTERN C0KVNP01 KVEL-START-5-3

CHAIN C0KVNP01 KVEL-START-5-2
~I'm not sure if this is the first time we've met, but after a helping in a battle like that I'll be sure to remember you for as long as I live.~ 
EXTERN C0KVNP01 KVEL-START-5-3

CHAIN C0KVNP01 KVEL-START-5-3
~Just to be formal, please allow me to introduce myself properly. I am Ecthel Darcourt, heir of the Darcourt Enterprises merchant family of Waterdeep. Though there's no small chance I'll be disowned after a disaster like this.~
== C0KVNP01 ~Still, my life is more precious than anything, so I'm not ungrateful, far from it. Might I know my savior's name?~
END
  + ~PartyHasItem("C0KVBK01")~ + ~Hang on, you're Ecthel Darcourt? I just realized, I have your ledger.~ DO ~SetGlobal("C0KvelMetEcthel","GLOBAL",1) TakePartyItem("C0KVBK01") DestroyItem("C0KVBK01")~ EXTERN C0KVNP01 KVEL-START-5-BOOK
  ++ ~<CHARNAME>.~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~My name's not important. I'm happy to have helped.~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~So I assume you have absolutely nothing to repay me with for saving you?~ EXTERN C0KVNP01 KVEL-START-5-6

CHAIN C0KVNP01 KVEL-START-5-BOOK
~YOU have my ledger? By Tymora's smile, let me take a look immediately! Yes, this is mine.~
= ~I've been wondering where this damn thing was ever since I left the Friendly Arm. Bentley told me he handed it off to someone to deliver to me. I assume that was you? In any other circumstance, I'd be cursing your name for all the trouble I've been through without my ledger, but in this case it may be inadvertently fortunate.~
= ~Still, now with no caravan or goods, a damn lot of good this thing will be at this point, eh? Well, at least I might still be able to recoup some of my losses. In any case, I would still like to know your name. I hold no grudges against you, I promise!~
END
  ++ ~<CHARNAME>.~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~My name's not important. I'm happy to have helped.~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~So I assume you have absolutely nothing to repay me with for saving you?~ EXTERN C0KVNP01 KVEL-START-5-6

CHAIN C0KVNP01 KVEL-START-5-4
~<CHARNAME>, right. If I still had something to write with, I would take note of it so that I know later to whom I should send a reward.~
EXTERN C0KVNP01 KVEL-START-5-7

CHAIN C0KVNP01 KVEL-START-5-5
~No, no. I insist. Consider it as an introduction to a new friend, at the very least.~
END
  ++ ~Alright. Call me <CHARNAME>, then.~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~I'm not interested in making friends. I only care for a reward, which I assume you don't have one in your pitiable state.~ EXTERN C0KVNP01 KVEL-START-5-6

CHAIN C0KVNP01 KVEL-START-5-6
~No, not a thing, I'm afraid.~
EXTERN C0KVNP01 KVEL-START-5-7

CHAIN C0KVNP01 KVEL-START-5-7
~I truly wish I had something to repay you with right now, but as you can see, our caravan... well, I have no choice but to return to Nashkel and gather my bearings there. If we meet again, I will reward you twice over what you deserve.~
== C0KVEL ~If you do intend to seek this fool for a reward, be sure to check the local tavern, and quickly, before he drinks away what coins he has left to his name.~
== C0KVNP01 ~Yes, *thank you*, Kvel, that was very helpful. But I will indeed be spending some time drinking after this mess... farewell, friend.~
DO ~ActionOverride("C0KVEL",EscapeArea())
ActionOverride("C0KVNP02",EscapeArea())
ActionOverride("C0KVNP03",EscapeArea())
ActionOverride("C0KVNP04",EscapeArea())
EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",7)~ THEN C0KVNP01 KVEL-START-7
~We meet again, friend. I would be more thrilled to see you, but given my recent situation, well... I hope you can understand.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",8)~
== C0KVNP01 ~Regardless, you helped me out of a deadly situation, and I have gathered enough gold to call a worthy reward for you. Please take this.~
DO ~GiveGoldForce(1000)~
== C0KVNP01 ~If I had more to offer, I'd give it to you. But right now, I have to balance my expenses between keeping myself and this elf fed, making sure I can afford to travel again, and of course, drinks.~
END
  ++ ~What happened to your other bodyguards?~ EXTERN C0KVNP01 KVEL-START-7-1
  ++ ~Don't you think you should cut down on the unnecessary expenses?~ EXTERN C0KVNP01 KVEL-START-7-2
  ++ ~What will you do now?~ EXTERN C0KVNP01 KVEL-START-7-3

CHAIN C0KVNP01 KVEL-START-7-1
~With no caravan to guard and my income currently at a halt, do you think they'd stay around? I'd be paying them just to stand by and look stupid.~
EXTERN C0KVNP01 KVEL-START-7-4
  
CHAIN C0KVNP01 KVEL-START-7-2
~Which is the unnecessary part, again? Certainly not this part. *gulp* Ah... I'd be nothing without my liquid courage, joy, and forgetfulness. *hic*~
EXTERN C0KVNP01 KVEL-START-7-4

CHAIN C0KVNP01 KVEL-START-7-3
~What do you think? No, I mean, what do you think I should go for next, the Dragon's Breath or the Firewine? I could do with a fire in my belly right now.~
EXTERN C0KVNP01 KVEL-START-7-4
  
CHAIN C0KVNP01 KVEL-START-7-4
~*sigh*~
== C0KVEL ~You will be dead before the day's end if you continue drinking like this. Either by your liver, or the inevitable debt you will amass.~
== C0KVNP01 ~Bah, stow it. Let me forget about my problems for at least a few hours. Besides, Kvel, what do I keep you around as a bodyguard for if not to deal with people trying to shake me down?~
== C0KVEL ~I'm surprised you still remember that I'm your bodyguard. You've got no one else standing beside you now, in case you've forgotten.~
== C0KVNP01 ~Ugh, I wish I'd written a clause for holding your tongue to your employer in our contract... can you hear me, barman? Another drink!~
== BART2 ~*grumble* *sigh*~
== C0KVNP01 ~In any case, I am grounded here for the time being, against my will. I have nothing to sell, and barely enough gold in my pocket to keep myself fed. I'm afraid I have no wares to sell you, friend, but when I do you'll get an exclusive deal, that I promise.~
== C0KVNP01 ~For now, though, I intend to get drunk... er than I already am. Do take a seat and join me if you've got time. My partner there refuses to partake despite my constant invitations. I really should have written more into his contract...~
== C0KVNP01 ~Hang on, isn't that someone I know by the door? Move over a little, so I can have a better look...? Oh. Oh dear.~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreature("C0KVNP05",[295.395],NE)
SmallWait(5)
Wait(1)
ActionOverride(Player1,MoveToPoint([439.230]))
ActionOverride(Player1,SmallWait(1))
ActionOverride(Player1,Face(SW))
ActionOverride(Player2,MoveToPoint([426.359]))
ActionOverride(Player2,SmallWait(1))
ActionOverride(Player2,Face(SW))
ActionOverride(Player3,MoveToPoint([406.399]))
ActionOverride(Player3,SmallWait(1))
ActionOverride(Player3,Face(NW))
ActionOverride(Player4,MoveToPoint([482.367]))
ActionOverride(Player4,SmallWait(1))
ActionOverride(Player4,Face(NW))
ActionOverride(Player5,MoveToPoint([438.465]))
ActionOverride(Player5,SmallWait(1))
ActionOverride(Player5,Face(NW))
ActionOverride(Player6,MoveToPoint([229.286]))
ActionOverride(Player6,SmallWait(1))
ActionOverride(Player6,Face(SE))
ActionOverride("C0KVNP05",MoveToPoint([308.377]))
ActionOverride("C0KVNP05",SmallWait(2))
ActionOverride("C0KVNP05",Face(N))
Wait(1)
CreateCreature("C0KVNP06",[263.386],NE)
CreateCreature("C0KVNP07",[304.417],NE)
Wait(2)
ActionOverride("C0KVNP05",MoveToPoint([298.278]))
ActionOverride("C0KVNP05",SmallWait(2))
ActionOverride("C0KVNP05",Face(NE))
ActionOverride("C0KVNP05",Wait(1))
ActionOverride("C0KVNP05",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",8)~ THEN C0KVNP05 KVEL-START-8
~Well, well. If it isn't dear Ecthel.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",9)~
== C0KVNP01 ~*groan* If the day had any hope left, it's been crushed now. What do you want, Oxley?~
== C0KVNP05 ~Tut tut. Is that really any way to greet an old friend? You are looking positively awful today. I take it from the stench of peasants' ale, business has not been faring well lately.~
== C0KVNP01 ~Calling us friends makes my skin crawl. And I'm sure that seeing my personal woes is making you completely giddy.~
== C0KVNP05 ~Oh, don't be like that. We were raised in the same district of Waterdeep, taught by the same tutors. By reason, I should consider you something of a brother.~
== C0KVNP01 ~Don't. You're just making the goosebumps on my skin even worse.~
== C0KVNP05 ~Ditto.~
== C0KVNP01 ~Let's cut to the chase, Oxley. I can't imagine a Waterdhavian merchant noble just happening to come across me here in Amn of all places. I'll ask you again—what do you want?~
== C0KVNP05 ~Yes, to business. That is a language neither of us are adverse to speaking in. I come to you as a representative of the Throne.~
== C0KVNP01 ~"The Throne"? Don't make me laugh, Oxley, the Open Lord would never make you one of his messengers, nor would he call his position something as pretentious as a "throne"...~
== C0KVNP01 ~...Wait. The Throne? The "Iron Throne"?~
== C0KVNP05 ~Very astute. Though I would call you a pitiful excuse of a merchant—not that you aren't already—if you did not know their name.~
== C0KVNP01 ~You are a madman, Edoras Oxley.~
== C0KVNP05 ~I prefer to call myself a daring opportunist. 'Tis true that the Iron Throne does not do business in the North, owing to short-and-narrowminded men such as Piergerion the Paladinson... but that is why I have come here, to more pragmatic lands, to better serve the interests of the Oxley name. As you serve the Darcourt family like a slavish dog.~
== C0KVNP05 ~True, it will be difficult for the time being for me to return home, lest I have an angry mass of my fellow merchants protesting at my estates' doors... but that will change. The Iron Throne is growing more powerful than you can imagine, Ecthel, and their allies more and more dangerous and effective. Soon, there will be no place for trade except under their banner. And I will be there to reap the benefits.~
== C0KVNP01 ~You'll be hanged at the end of a noose first if I have anything to say about it.~
== C0KVNP05 ~Under what charge, precisely? True, the Iron Throne is disreputable in places, but they are still a legitimate business by all rights. But if you do intend to report me to the Waterdhavian merchant guilds, you had best travel back home fast and deliver the message personally.~
== C0KVNP01 ~And what if I'd rather stay right here in the Sword Coast?~
== C0KVNP05 ~That brings me to my reason for being here, before you so rudely interrupted me.~
== C0KVNP05 ~Ecthel Darcourt. Darcourt Enterprises is to cease all business under their name in the Sword Coast and Amn. Rieltar Anchev is willing to tolerate merchants of low status to work independently, but he does not appreciate the competition that names of notable renown brings here in his territory.~
== C0KVNP01 ~What?! The Iron Throne holds no official authority over trade! Regardless of Rieltar Anchev's name, *spit* loathsome as it is, you have no authority to command this of anyone!~
== C0KVNP05 ~By law that is true. Which is why you are seeing me here, rather than an armored hireling of the Flaming Fist. But these men behind me are hardly their lessers in competence. This is your only warning, Ecthel. Leave, or remain but do business as a subsidiary of the Throne, who will expect a share of your profit.~
== C0KVNP01 ~Or else... you'll do what, buy out all my connections and make sure I have nowhere to do business until I starve? That'd be the sort of crude method you'd know.~
== C0KVNP05 ~I hear your caravan was beset upon by orogs and blown to cinders. I may have even passed by the remnants on the way here. Such a dangerous place the Sword Coast is these days, and I fear it will only get worse. The wise course of action would be to leave while one still can.~
== C0KVNP01 ~You... tch. Hahahahaaaa...! Ahh... of course. Of—bloody—course!~
== C0KVNP05 ~Of course what?~
== C0KVNP01 ~I should have seen it coming the moment I saw you step in the door. So simple. Oxley Senior would be ashamed by the method if he had any shame left under his wrinkled hide.~
== C0KVNP05 ~I am in no mood for insinuations, Ecthel. Give your answer now, and I will bring it back to my masters.~
== C0KVNP01 ~You can take this answer and this hand gesture as well for I care. "Go swallow your coins, your jewels, and whatever little pride you have and squat at your gilded latrines until you've painfully shat them all out"!~
== C0KVNP05 ~How vulgar. I take it that's a no.~
== C0KVNP01 ~"Very astute".~
== C0KVNP05 ~Out of respect for your family and our personal history, I will give you one chance to change your mind.~
== C0KVNP01 ~While this may not be my establishment to make such a call, for honor's sake I'm still going to say it anyway. GET OUT!~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
SetSequence(SEQ_ATTACK_SLASH)
Wait(1)
PlaySound("C0KVSF4")
Wait(1)
ActionOverride("C0KVNP05",Face(W))
ActionOverride("C0KVNP05",Wait(1))
ActionOverride("C0KVNP05",Face(NE))
ActionOverride("C0KVNP05",Wait(1))
ActionOverride("C0KVNP05",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",9)~ THEN C0KVNP05 KVEL-START-9A
~...~
== C0KVNP01 ~...~
== C0KVEL ~...~
== C0KVNP05 ~Now, whatever was that for?~
== C0KVNP01 ~You heard me. Get out, before I sober up enough to nail you in the head on the next one.~
== C0KVNP05 ~It truly boggles the mind that you have managed to keep your family's name out of the mud for this long. But I cannot return until I have acceptable results for my superiors. And I am not averse to using hard diplomacy.~
== C0KVNP06 ~S'time to get to work, boss?~
== C0KVNP05 ~Make him scream a little. Just leave enough of him to walk away alive.~
DO ~ClearAllActions()
StartCutSceneMode()
MoveToPoint([255.309])
SmallWait(2)
Face(NE)
ActionOverride("C0KVNP06",MoveToPoint([310.294]))
ActionOverride("C0KVNP06",SmallWait(2))
ActionOverride("C0KVNP06",Face(N))
ActionOverride("C0KVEL",MoveToPoint([310.253]))
ActionOverride("C0KVEL",SmallWait(2))
ActionOverride("C0KVEL",Face(S))
Wait(3)
ActionOverride("C0KVNP06",StartDialogNoSet("C0KVEL"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",9)~ THEN C0KVNP06 KVEL-START-9
~Beat it, toothpick, lest you want me to knock that head off your shoulders, metal bucket an' all.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",10)~
== C0KVEL ~Oh?~
DO ~ClearAllActions()
StartCutSceneMode()
SmallWait(2)
SetSequence(SEQ_ATTACK_BACKSLASH)
PlaySound("HIT_03A")
ActionOverride("C0KVNP06",SetSequence(SEQ_ATTACK_BACKSLASH))
FadeFromColor([15.0],0)
SmallWait(5)
PlaySound("HUMAN08")
ActionOverride("C0KVNP06",SetSequence(SEQ_DIE))
Wait(2)
ActionOverride("C0KVNP07",MoveToPoint([275.278]))
ActionOverride("C0KVNP07",SmallWait(1))
ActionOverride("C0KVNP07",Face(NE))
ActionOverride("C0KVNP07",SetSequence(SEQ_ATTACK_BACKSLASH))
ActionOverride("C0KVNP07",FadeFromColor([15.0],0))
ActionOverride("C0KVNP07",SmallWait(1))
ActionOverride("C0KVNP07",PlaySound("HIT_03A"))
ActionOverride("C0KVNP07",PlaySound("HUMAN08"))
ActionOverride("C0KVNP07",SetSequence(SEQ_DIE))
Wait(4)
Face(SW)
ApplyDamage("C0KVNP07",2,CRUSHING)
SmallWait(10)
ApplyDamage("C0KVNP07",2,CRUSHING)
SmallWait(10)
ApplyDamage("C0KVNP07",2,CRUSHING)
Wait(3)
ActionOverride("C0KVNP07",StartDialogNoSet("C0KVEL"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",10)~ THEN C0KVNP07 KVEL-START-10
~Yaaarrghh! M—mercy, MERCY!~
DO ~SetGlobal("C0KvelBegin","GLOBAL",11)~
== C0KVNP01 ~*snort* Pfft... *cough* agh, down the wrong pipe... suddenly this drink tastes better than it has all day.~
== C0KVEL ~If you foolishly choke, I will see to it that you live, but in as much agony as this one here.~
== C0KVNP07 ~*crack* Arrrghh!~
== BART2 ~S–s–sirs! Please take it outside, if you must fight! Don't make me call for the militia!~
== C0KVNP01 ~Alright, that's enough, Kvel. I think the message has been sent.~
DO ~ClearAllActions()
StartCutSceneMode()
SmallWait(2)
ActionOverride("C0KVNP06",SetSequence(SEQ_AWAKE))
ActionOverride("C0KVNP06",SmallWait(5))
ActionOverride("C0KVNP06",MoveToPoint([258.346]))
ActionOverride("C0KVNP06",SmallWait(5))
ActionOverride("C0KVNP06",Face(N))
ActionOverride("C0KVNP07",SetSequence(SEQ_AWAKE))
ActionOverride("C0KVNP07",SmallWait(5))
ActionOverride("C0KVNP07",MoveToPoint([298.374]))
ActionOverride("C0KVNP07",SmallWait(5))
ActionOverride("C0KVNP07",Face(N))
Wait(2)
ActionOverride("C0KVNP01",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",11)~ THEN C0KVNP01 KVEL-START-11
~Hahaha—agh... oh, my head... *cough* I shouldn't laugh that hard... now then.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",12)~
== C0KVNP01 ~Oxley, old chum. I appreciate your thoughtfulness in coming all this way for a concerned warning, but I think you've got more problems at the current moment than I do. I'd be more than happy to contribute a small sum of the temple fees for your unfortunate employees here, if you need it.~
== C0KVNP05 ~Grr... that, that will not be necessary.~
== C0KVNP01 ~Then fare thee well. Between you and this tankard, I find the latter's shape much more pleasing, so don't mind me if I go back to admiring it instead.~
== C0KVNP05 ~Hmph... we'll see how long you can keep up this flippantry, Ecthel. I admit, I didn't think you could find more capable hands than I. This was an unexpected setback.~
== C0KVNP05 ~You, mercenary. Would you be opposed to considering a change in duties? Surely your current employer can't be paying you *that* much, if his current condition is any indication.~
== C0KVEL ~Don't waste your breath.~
== C0KVNP05 ~Your loss.~
== C0KVNP05 ~We'll meet again, Ecthel. You're stepping on the territory of the Throne now, and perhaps something even greater. Best not regret it.~
== C0KVNP01 ~Goodbye, Oxley.~
DO ~ClearAllActions()
StartCutSceneMode()
SmallWait(2)
ActionOverride("C0KVNP05",EscapeArea())
ActionOverride("C0KVNP06",EscapeArea())
ActionOverride("C0KVNP07",EscapeArea())
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",12)~ THEN C0KVNP01 KVEL-START-12
~Unbelievable... he's always been like that. It never fails to make my blood boil.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",13)~
== C0KVNP01 ~Listen, Kvel... about what he offered. I know you can be trusted, but Oxley isn't lying when he says he can pay far more than what's in my contract. I doubt this is the last we'll see of him, so if he suggests it to you again...~
== C0KVEL ~You fear I will not hold to my contract?~
== C0KVNP01 ~I'm just saying... you told me your only goal is to live, so... well, if—~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride("C0KVEL",MoveToPoint([289.360]))
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",13)~ THEN C0KVNP01 KVEL-START-13
~Wh–where are you going?~
DO ~SetGlobal("C0KvelBegin","GLOBAL",14)~
== C0KVEL ~To rinse my hands.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",14)~ THEN C0KVNP01 KVEL-START-14
~I shouldn't have said that.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",15)~
END
  ++ ~You don't think he's changed his mind and gone off to join your enemy?~ EXTERN C0KVNP01 KVEL-START-14-1
  ++ ~I hope you know what you're doing, antagonizing someone so supposedly powerful like that.~ EXTERN C0KVNP01 KVEL-START-14-2
  ++ ~I think I've stayed and seen too long. I should go.~ EXTERN C0KVNP01 KVEL-START-14-3

CHAIN C0KVNP01 KVEL-START-14-1
~No, I know Kvel better than that. It's my fault for questioning his integrity. He's really just gone off to rinse, and probably curse me out in private for a while.~
EXTERN C0KVNP01 KVEL-START-14-3

CHAIN C0KVNP01 KVEL-START-14-2
~Now that the drinking's worn off a little bit, even I'm not so sure that was a good idea. But I have to uphold some semblance of dignity if I don't want to ruin the name of the Darcourts.~
= ~Besides, I don't regret seeing that smug look being wiped off Oxley's face, even if it means I'm going to be an absolute paranoiac after today.~
EXTERN C0KVNP01 KVEL-START-14-3

CHAIN C0KVNP01 KVEL-START-14-3
~*sigh* I'm sorry you had to see that, <CHARNAME>. It's just the merchant's life, though the recent crisis has probably made tensions run even hotter. The smart thing to do would be to just walk away, but as Kvel would tell me, I'm not a smart man.~
= ~Just don't get involved with the Iron Throne, <CHARNAME>. Whatever you think they're good for, it's not worth it. That advice comes free.~
= ~Do you think you could... check on Kvel for me? I'm a little worried he took what I said a bit too hard. I'd rather he not go out on his own for too long.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",15)~ THEN C0KVEL KVEL-START-15
~You have something to say? If not, I'll ask you to stand aside.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",16)~
END
  ++ ~Sorry.~ + KVEL-START-15-1
  ++ ~What were you doing just now?~ + KVEL-START-15-1A
  ++ ~I saw you without your helmet.~ + KVEL-START-15-2
//  ++ ~About your employer, Ecthel...~ + KVEL-START-15-

CHAIN C0KVEL KVEL-START-15-1
~Hmm.~
DO ~EscapeAreaObject("Door4809")~ EXIT

CHAIN C0KVEL KVEL-START-15-1A
~As I said previously, rinsing. Or do you expect me to continue my day soaked in the blood of my enemies?~
END
  ++ ~No, I don't mean that. I'll get out of your way now.~ + KVEL-START-15-1
  ++ ~It's just that I saw you putting your helmet back on.~ + KVEL-START-15-2
  ++ ~Why don't we just cut to the chase? I saw your hair and the color of your hands. I know you're a drow.~ + KVEL-START-15-3

CHAIN C0KVEL KVEL-START-15-2
~...~
DO ~EscapeAreaObject("Door4809")~
= ~And?~
END
  ++ ~I couldn't see your face, but I saw your hands and hair. You're a drow.~ + KVEL-START-15-3
  ++ ~To be honest, I've been suspecting it for a while, but seeing your dark skin confirmed it.~ + KVEL-START-15-3
  ++ ~Nothing. Forget I mentioned it.~ + KVEL-START-15-1

CHAIN C0KVEL KVEL-START-15-3
~Get to the point. I have a job to do.~
END
  ++ ~You don't deny it?~ + KVEL-START-15-4
  ++ ~What is a drow doing as a bodyguard to a common merchant?~ + KVEL-START-15-5
  ++ ~It mustn't be easy, living on the surface and being forced to keep that helmet on, always.~ + KVEL-START-15-6
  ++ ~The evil reputation of the drow is known to everyone. I don't trust you.~ + KVEL-START-15-7
  ++ ~I don't have a point to make. Just telling you that I know.~ + KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-4
~Under the current situation, have I any argument to dispute your claim?~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-5
~I signed a contract, just as any sellsword might. Those with nothing but their blade at their side must provide for themselves on the surface. Especially a drow.~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-6
~I do what I must to survive. That is all. Though consider yourself fortunate that you will never have to live such a way.~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-7
~Then it is fortunate for you that you are not my responsibility. I have a contract, and will serve according to its terms. Whether that convinces you is not my concern.~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-8
~You know a truth of me, do with it as you will. You may even use it against me... though do not think I am not prepared to face whatever consequences you think you may inflict.~
DO ~SetGlobal("C0KvelKnowsDrow","GLOBAL",1)~ 
= ~Now I must return to my employer.~
DO ~EscapeAreaObject("Door4809")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",17)~ THEN C0KVEL KVEL-START-17-KVELTALKS
~If you have anything to say, say it to Ecthel, unless you must seek answers from me.~
END
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)
     Global("C0KvelAsksDrow","GLOBAL",0)~ + ~Does Ecthel know that you're a drow?~ + KVEL-START-17-KVELTALKS-1
  ++ ~How did you and Ecthel develop this working relationship?~ + KVEL-START-17-KVELTALKS-2
  ++ ~You were quite impressive against those half-orc brutes.~ + KVEL-START-17-KVELTALKS-3
  ++ ~So... what skills do you possess, exactly? I've seen you wielding both sword and spell.~ + KVEL-START-17-KVELTALKS-4
  ++ ~Very well. I'll leave you alone.~ EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-1
~Ask him, if you care so greatly.~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-2
~If you truly wish to know, you should hear it from Ecthel. If he deigns not to tell you, then I will also say nothing.~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-3
~They could hardly have been called opponents. Merely leashed hounds, barking and charging at their master's command. A heavy hand is all that is needed for discipline.~
END
  ++ ~And you are different?~ + KVEL-START-17-KVELTALKS-3-1
  ++ ~But aren't you also a sellsword?~ + KVEL-START-17-KVELTALKS-3-2
  ++ ~Fair enough.~ EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-3-1
~Different enough.~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-3-2
~My blade is offered for coin, but I also see the face behind the hand which offers. If one is to live with purpose, they must do more than simply beg at the table for scraps from anyone who might listen.~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-4
~I am a swordsman. Whatever other talents you see, be it of arcane arts or trickery, were merely honed through a need for survival in days past. They are tools, which still serve me well to this day.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",17)~ THEN C0KVNP01 KVEL-START-17
~Hello again, <CHARNAME>. Is there something you needed? Not that I have much to offer you, in my current position.~
END
  ++ ~What are your current plans on what next?~ + KVEL-START-17-1
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)
     Global("C0KvelAsksDrow","GLOBAL",0)~ + ~Are you aware that your trusted bodyguard is actually a dark elf?~ DO ~SetGlobal("C0KvelAsksDrow","GLOBAL",1)~ + KVEL-START-17-2
  ++ ~Is there anything I can do to help you?~ + KVEL-START-17-3
  ++ ~Are you sure you aren't worried about Oxley?~ + KVEL-START-17-4
  ++ ~Tell me about the Iron Throne.~ + KVEL-START-17-5
  ++ ~Nevermind. I'll be going now.~ EXIT

CHAIN C0KVNP01 KVEL-START-17-1
~*groan* If only I knew. My father will kill me if he finds out what happened to my caravan... that's if I don't end up dead on the streets first.~
== C0KVNP01 ~Well, I can count myself safe on that end at least, so long as I have Kvel to protect me. Still, I see no path forward that will lead to immediate gain.~
== C0KVNP01 ~I suppose making my way towards Baldur's Gate once I've got my bearings is as good a decision as any. I could pay to join another merchant travelling north... but that will have to wait.~
== C0KVNP01 ~For now, I intend to get drunk. One tankard at a time.~
EXIT

CHAIN C0KVNP01 KVEL-START-17-2
~Ah, haha, what's that? It must be the drinking, but I'M AFRAID I DIDN'T QUITE HEAR YOU, COULD YOU COME A BIT CLOSER AND REPEAT THAT?~
== C0KVNP01 ~*whisper* Now, <CHARNAME>, I don't need to ask how you found out, but I'd thank you to keep knowledge of this between us. I have a good partnership with Kvel, and I don't need anything ruining that.~
END
  ++ ~You already know?~ + KVEL-START-17-2-1
  ++ ~How can you trust him so much?~ + KVEL-START-17-2-2
  ++ ~I think he's using you.~ + KVEL-START-17-2-2

CHAIN C0KVNP01 KVEL-START-17-2-1
~I didn't build my success as a merchant—yes, despite my recent misfortune I would count myself successful, stop looking at me like that—by being a fool, you know. I've known the truth of Kvel's identity since before the day I signed his contract.~
EXTERN C0KVNP01 KVEL-START-17-2-2

CHAIN C0KVNP01 KVEL-START-17-2-2
~We have a... close working relationship, though he'll never see it that way. Suffice to say that between my general sense of character and using what magical knowledge I have at my disposal, I can assure you Kvel can be trusted, despite what the common, and admittedly not undeserved, reputation of the drow might have you believe.~
= ~That said, I know many others will not see it that way, which is why that helmet he wears is a necessary precaution at all. Just rest assured that I know what I'm doing by keeping him at my side. That should be enough.~
EXIT

CHAIN C0KVNP01 KVEL-START-17-3
~Thank you, but I can't ask that of you. As foolish as it may sound, I have my pride as a merchant and relying on the generosity of others would hurt it, not to mention the long-term consequences I could face if other merchants find out. No, you've done more than enough already.~
EXIT

CHAIN C0KVNP01 KVEL-START-17-4
~Even if I was, I couldn't exactly give off the impression in their face, could I? *sigh* I'm going to get myself into a lot of trouble once word of what happened here gets out, but it's my problem to deal with, not yours. Thank you for the concern.~
EXIT

CHAIN C0KVNP01 KVEL-START-17-5
~What is there to say about them? They've from Sembia, and if you have an inkling of what that means, then just know that their people have made their living by bending anyone below them over and buggering them out of everything they have just to line their own pockets.~
= ~Their methods are hardly imaginative either once you stop to think a little. All it takes is the absence of any ethics, scruples, or a single thought about the long-term consequences of messing up the realms and making everyone outside your circle curse your next seven generations. But they are powerful, even I can't deny that. Especially Rieltar Anchev.~
= ~I'll probably be sleeping with one eye open for as long as I stay in the Sword Coast... but I've got Kvel with me. I'm sure that alone will protect me from the worst.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",18)~ THEN C0KVEL KVEL-START-18-KVEL
~Speak with Ecthel. He will undoubtedly be happier to see you.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",18)~ THEN C0KVNP01 KVEL-START-18
~<CHARNAME>, my good friend! Fortune does seem to cross our paths time and again, not that I'm complaining. I trust your journeys have fared well?~
DO ~SetGlobal("C0KvelBegin","GLOBAL",19)~
END
  ++ ~Well enough. Good to see you, Ecthel.~ + KVEL-START-18-1
  ++ ~I see you've safely made it to Baldur's Gate.~ + KVEL-START-18-2

CHAIN C0KVNP01 KVEL-START-18-1
~The notion is mutual. What a difficult journey it was, but between Kvel's blade and my silver tongue, I have arrived, safe and sound. The future looks bright for me indeed.~
EXTERN C0KVEL KVEL-START-18-3

CHAIN C0KVNP01 KVEL-START-18-2
~And a difficult journey it was, but between Kvel's blade and my silver tongue, I have arrived, safe and sound. The future looks bright for me indeed.~
EXTERN C0KVEL KVEL-START-18-3

CHAIN C0KVEL KVEL-START-18-3
~He conveniently omits the part where he needed to beg the proprietor six times in order to afford a premium with the pitiful remnants within his purse.~
== C0KVNP01 ~*ahem*! Kvel, I pay you for your muscle, not your tongue, at least not openly. Pipe down a little for my sake, will you?~
== C0KVEL ~...~
== C0KVNP01 ~Gods, but my trusted bodyguard only seems to talk when I don't want him to, and becomes silent as a rock elsewise. Regardless, what brings you to Baldur's Gate?~
END
  ++ ~I've come to investigate the Iron Throne.~ EXTERN C0KVNP01 KVEL-START-18-4
  ++ ~Just sightseeing.~ EXTERN C0KVNP01 KVEL-START-18-7
  ++ ~That is my own business.~ EXTERN C0KVNP01 KVEL-START-18-8

CHAIN C0KVNP01 KVEL-START-18-4
~The Iron...~
== C0KVNP01 ~Kvel, please ensure no one is listening in on us.~
== C0KVEL ~Very well.~
== C0KVNP01 ~<CHARNAME>, I hope you understand what you're getting into. The Iron Throne is more than your average greedy merchanting company that spends their off time counting coins. You have to understand, people have died in the worst ways just from *accidentally* offending them. Whatever it is you're thinking of doing, I hope you've thought on if it's really worth it.~
END
  ++ ~Didn't you also refuse Oxley's demand for you to either join or stay out of the Iron Throne's territory?~ EXTERN C0KVNP01 KVEL-START-18-5
  ++ ~I've had more people after my life already than I can count. I can handle a bunch of merchants getting too big for their breeches.~ EXTERN C0KVNP01 KVEL-START-18-6
  ++ ~My problem with the Iron Throne is my own to worry about. I'm just letting you know so you can stay away from them.~ EXTERN C0KVNP01 KVEL-START-18-8

CHAIN C0KVNP01 KVEL-START-18-5
~Er... alright, yes. I forgot you were there for that ugly scene. But that was done out of necessity. What else was I going to do, sacrifice my integrity for some extra coins and a false sense of security?~
== C0KVEL ~Tch.~
== C0KVNP01 ~I heard that. Your helmet can't hide every scoff, you know.~
== C0KVNP01 ~Besides, I'm not here in the city to openly act against them, so I doubt I'm within their sights anyway. At most, they might send Oxley with some bigger thugs to shake me down some more, but you've seen what my bodyguard's capable of.~
== C0KVNP01 ~I'm not getting into anything close to the kind of hot water you are, <CHARNAME>. You're playing a dangerous game, I hope you understand. You were involved in that business in Cloakwood, from what I've heard. That's already probably made you a mark for bounty hunters.~
END
  ++ ~I've had bounty hunters after me anyways. I need to get to the bottom of this.~ EXTERN C0KVNP01 KVEL-START-18-6
  ++ ~My problem with the Iron Throne is my own to worry about. I'm just letting you know so you can stay away from them.~ EXTERN C0KVNP01 KVEL-START-18-8

CHAIN C0KVNP01 KVEL-START-18-6
~You're really committed, aren't you? Well, if I can't stop you, I can at least point you in the right direction, if you haven't already figured something out.~
= ~I've been trying to keep a low profile to not attract the Throne's attention, but I still have some good relations with the merchants in the city. They've all said the Seven Suns have been undergoing strange changes in leadership. Jhasso's nowhere to be seen, and their business dealings have been... bizarre, and even that is putting it generously.~
= ~But really, your best bet is probably to go to the Flaming Fist. Scar's an honest, trustworthy commander, and if you want to make your investigation as smooth as possible, you want his help most of all.~
= ~That's the most I can tell you. I wish I could do more, but I've got my own reponsibilities, so I can't start getting involved in too much trouble. Maybe you already know what I've told you, but if it's any help at all...~
EXTERN C0KVNP01 KVEL-START-18-9

CHAIN C0KVNP01 KVEL-START-18-7
~Sightseeing, eh? Well, on any other day, I'd offer to show you around the finest sights, but I've been keeping a low profile so I can't afford to wander around the city openly. Make sure to check the market and the Temple of Gond though, you wouldn't want to miss those.~
EXTERN C0KVNP01 KVEL-START-18-9

CHAIN C0KVNP01 KVEL-START-18-8
~Fair enough, it's not my place to pry into your business, so all I can do is hope all things go well for you. You've helped me out of a tight situation, so I feel I owe you something.~
EXTERN C0KVNP01 KVEL-START-18-9

CHAIN C0KVNP01 KVEL-START-18-9
~Well, in any case, though I'm hoping to *avoid* conflict from here on, I wish you well in your endeavors, <CHARNAME>, so...~
== C0KVEL ~...! Ecthel! Stand away! NOW!~
== C0KVNP01 ~What? What's going on?~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC02")~ EXIT


CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",21)~ THEN C0KVNP01 KVEL-START-21
~By Waukeen, Tymora, and all the gods of fortune that I can think of... what even was that?!~
DO ~SetGlobal("C0KvelBegin","GLOBAL",22)~
== C0KVNP01 ~I'm used to being threatened, but not like this, with the arrows coming from nowhere, brutes dressed in plate mail...~
== C0KVNP01 ~But that's not even the worst part. I'm hoping it's just my drinking and the light that's tricking me, but under the hood of that assassin... he was a drow, wasn't he?~
END
  ++ ~Yes, he was.~ EXTERN C0KVNP01 KVEL-START-21-1
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)~ + ~I'm not sure. What do you think, "Kvel"? Did he look familiar?~ EXTERN C0KVEL KVEL-START-21-2
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)~ + ~Let's ask your own drow what he saw, shall we?~ EXTERN C0KVEL KVEL-START-21-2

CHAIN C0KVNP01 KVEL-START-21-1
~Ugh! *slap*~ [C0KVSF3]
== C0KVNP01 ~I'm not dreaming, am I. Kvel?~
EXTERN C0KVEL KVEL-START-21-4

CHAIN C0KVEL KVEL-START-21-2
~...~
== C0KVNP01 ~You think Kvel...?! No. No, I don't believe it.~
END
IF ~Global("C0KvelAsksDrow","GLOBAL",0)~ EXTERN C0KVNP01 KVEL-START-21-2A
IF ~!Global("C0KvelAsksDrow","GLOBAL",0)~ EXTERN C0KVNP01 KVEL-START-21-3

CHAIN C0KVNP01 KVEL-START-21-2A
~I won't ask how you found out or how long you've known for, but listen to me, <CHARNAME>...~
EXTERN C0KVNP01 KVEL-START-21-3

CHAIN C0KVNP01 KVEL-START-21-3
~I know it seems like it can't be a coincidence, but I've known Kvel longer than you, and I mean it when I say I'd trust him with my life. Even if he is somehow connected to that drow assassin, that doesn't mean they're allies. You saw how he reacted earlier. I don't believe he'd betray me.~
== C0KVEL ~I can speak for myself, Ecthel. You are correct, though it is no concern to me whether this <PRO_MANWOMAN> <CHARNAME> believes it.~
== C0KVEL ~But given the situation, there is something that I cannot deny.~
EXTERN C0KVEL KVEL-START-21-4

CHAIN C0KVEL KVEL-START-21-4
~I do know that drow.~
DO ~CreateCreature("C0KVDR01",[651.622],E)~
== C0KVNP01 ~You do? What is his... hold on, we shouldn't talk here. I know Alyth personally, we can get a private space upstairs to—~ [ACT_07]
END
  ++ ~Behind you!~ EXTERN C0KVNP01 KVEL-START-21-5
  ++ ~The drow's back!~ EXTERN C0KVNP01 KVEL-START-21-5
  ++ ~(Remain silent)~ EXTERN C0KVEL KVEL-START-21-6

CHAIN C0KVNP01 KVEL-START-21-5
~What?!~
EXTERN C0KVEL KVEL-START-21-6

CHAIN C0KVEL KVEL-START-21-6
~...Damn it!~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC04")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",22)~ THEN C0KVEL KVEL-START-22
~Ngh... are you hurt, Ecthel?~
DO ~SetGlobal("C0KvelBegin","GLOBAL",23)~
== C0KVNP01 ~No, I'm... I'm fine, I think. Thank you, Kvel, but...~
== C0KVEL ~Hmm?~
== C0KVNP01 ~But... but—oh, gods. Your helmet... your face...!~
== C0KVEL ~My face...?~
== C0KVEL ~...~
== C0KVEL ~...damned iron.~
== C0KVNP01 ~Let's... let's go upstairs. There'll be less people... I doubt everyone here had a clear look at you. I'll tell Alyth to make sure nobody follows us, perhaps ask for some medicinal salve too... let's go. You too, <CHARNAME>.~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC05")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",23)~ THEN C0KVNP01 KVEL-START-23
~How's your face healing, Kvel? Looks like the salve stopped the bleeding. Though the scars will take longer to fade away.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",24)~
== C0KVEL ~Another to add to the rest.~
== C0KVNP01 ~This is all... excuse me a moment, <CHARNAME>. I don't even know where I should start.~
END
IF ~Global("C0KvelAsksDrow","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-23-A
IF ~!Global("C0KvelAsksDrow","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-23-B

CHAIN C0KVNP01 KVEL-START-23-A
~You already know the truth about Kvel, of course, and given you've still been helping thus far means I can trust you, but...~
EXTERN C0KVEL KVEL-START-23-C

CHAIN C0KVNP01 KVEL-START-23-B
~About Kvel's... real identity, I hope you can keep this a secret. It was agreed in our contract that I would protect his identity from being exposed, which is why I would have preferred this never came out.~
EXTERN C0KVEL KVEL-START-23-C

CHAIN C0KVEL KVEL-START-23-C
~If you are at a loss for words, Ecthel, then I will get to the point for you.~
== C0KVNP01 ~Kvel, wait...~
== C0KVEL ~This ends our contract.~
== C0KVNP01 ~Kvel!~
== C0KVEL ~The terms were clear that should my identity be compromised in the presence of surfacers, regardless of intent, our contract is null and void.~
== C0KVNP01 ~But that doesn't mean—~
== C0KVEL ~Though I only lost a part of my helmet, some of the humans saw my face. And from their word, more will know. It will become increasingly dangerous for both of us if I remain with you.~
== C0KVNP01 ~This is all... this is my fault. No, it's the bloody iron crisis, I should have arranged for a better helmet made when quality iron was finally being exported again. I'm sorry.~
== C0KVEL ~I doubt you would have had the coin to spare regardless. I do not blame you, Ecthel. But we are to go our own ways henceforth.~
== C0KVNP01 ~Kvel, wait! Listen, we can... we can still re-negotiate. This is a setback, but I can still need you, and your skills. There's nothing stopping us from writing a new contract. I can deal with the blowback—from my assessment, it'd be worth keeping you.~
== C0KVEL ~No.~
== C0KVNP01 ~Stop being so stubborn, you damned elf! Think about it—we've been working together for so long, I saved your life on the day we met, and you've saved me countless times over in return. Where are you going to find another stable working relationship like this, especially now that people will know what's under your helmet?~
== C0KVNP01 ~Just stay, and we can figure this out. Consider this me begging you, already!~
== C0KVEL ~It seems you are truly desperate. And ignorant of the true threat at hand as well. Very well, Ecthel, I will be blunt with you.~
== C0KVEL ~You must have saw the face of that assassin earlier. He was drow, the same as I. And this means these attempts are not simply on your life anymore. Looking back, perhaps this should have been clear sooner.~
== C0KVEL ~Do you recall the ambush from the orogs? Such beasts are more closely native to the Underdark than the surface. And they were unnaturally well-equipped, with even explosive potions to use against us.~
== C0KVNP01 ~But that could have just been a coinciden—~
== C0KVEL ~And the assassin. I recognized the house sigil on his chest. It was House Zaer'iyon of Eryndlyn, the same city as mine. I am the true target, and you are courting death by continuing to associate with me.~
== C0KVNP01 ~And what? You think that'll convince me to end our contract for my own safety? Is this what you think of us surfacers?~
== C0KVNP01 ~I've never figured out what you truly think of me all these years, Kvel, but I can tell you now, I've always considered you a friend! I'm not going to feel better knowing *you're* the one facing danger alone from now on!~
== C0KVEL ~...~
== C0KVNP01 ~...~
== C0KVEL ~We never could see eye to eye.~
== C0KVNP01 ~Not even once, for all of five years.~
== C0KVEL ~Tch. I have to wonder where this strength of character has been during the times it mattered. If you must know, Ecthel, I have always felt you a weak surfacer, who wouldn't survive another year without me to protect you. Perhaps I was half-wrong.~
== C0KVNP01 ~Funny coincidence. I was just thinking that with your lacking social graces, I doubt you'd last a year without me either before having to find another deep hole to hide in.~
== C0KVEL ~Your skill with words is undeniable, but the outcome is set. I intend to part ways with you now, Ecthel, and you do not possess the reason nor the skill to keep me.~
END
 IF ~OR(2)
 CheckStatGT(Player1,17,CHR)
 ReputationGT(Player1,14)~ EXTERN C0KVNP01 KVEL-START-23-1
 IF ~!CheckStatGT(Player1,17,CHR)
 !ReputationGT(Player1,14)~ EXTERN C0KVNP01 KVEL-START-23-LEAVE

CHAIN C0KVNP01 KVEL-START-23-LEAVE
~...Hah. You're right. I've always accepted that if you ever truly wanted to leave, there is not a single thing I could do to stop you. I just always did what I could to make you want to stay.~
EXTERN C0KVNP01 KVEL-START-23-LEAVE-2

CHAIN C0KVNP01 KVEL-START-23-LEAVE-2
~Fine, have it your way, obstinate bastard. I'm not sure if I'll see you alive again, but this is farewell, I guess. Here's to our good several years of cooperation.~
== C0KVNP01 ~*gulp*~ [GAM_07]
== C0KVEL ~*gulp*~ [GAM_07]
== C0KVEL ~Farewell, Ecthel. Though my sense tells me it is unlikely, I hope you live, despite all your foolishness.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",-1)
  SetGlobal("C0KvelLeft","GLOBAL",1)
  ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC15")~ EXIT

CHAIN C0KVNP01 KVEL-START-23-1
~Maybe you're right. I can't give you enough incentive to stay. But I think you underestimate me, Kvel. There is one plan I've considered that can still settle this to our liking.~
== C0KVNP01 IF ~ReputationGT(Player1,14)~ THEN ~<CHARNAME>, I've heard of your good reputation throughout the Sword Coast. You have done many good deeds, and have the favor of the people as a result. My own name may not be enough to keep Kvel safe, but yours is a different story.~
== C0KVNP01 IF ~!ReputationGT(Player1,14) CheckStatGT(Player1,17,CHR)~ THEN ~<CHARNAME>, I've witnessed your strength both in battle and in character. Something that can certainly assure Kvel's safety even with the stigma against drow. I would prefer that your name be more greatly praised by others, but this is a suitable alternative.~
== C0KVNP01 ~I can write a new contract, which will put Kvel under your service as a hired mercenary. Despite what he thinks of me, I know him well enough to know he will always honor his word, so long as he agrees to the terms. Payment for his service will be my responsibility, of course. All I ask for him is your protection.~
== C0KVNP01 ~It's a lot to ask of you, I know. Even your good name can't entirely offset the stigma of sheltering a drow. But this one's been the one investment I have never regretted, and I promise you, whatever fallout you may face is only in the short term, and you will have an irreplacable ally at your side in return.~
END
  ++ ~Are you sure you're alright with that? Even if you do this, he won't be protecting you anymore.~ + KVEL-START-23-2
  ++ ~If this is what you need, Ecthel, then I can handle whatever happens to my reputation.~ + KVEL-START-23-3
  ++ ~I could use a strong drow warrior at my side...~ + KVEL-START-23-3
  ++ ~I'm not interested in besmirching my good name to shelter a drow, Ecthel, forget it.~ + KVEL-START-23-4

CHAIN C0KVNP01 KVEL-START-23-2
~I don't need him to protect me, I just need the damn fool alive. I didn't keep him with me just for my own sake, I hope you understand that. It's going to be hard without him around, certainly, but I have... other connections on the business side.~
= ~As long as I don't have to lose sleep fearing the elf will meet his end at the hands of a mob or some zealot of justice, I'll feel better moving on. Just do me this favor.~
END
  ++ ~If this is what you need, Ecthel, then I can handle whatever happens to my reputation.~ + KVEL-START-23-3
  ++ ~I could use a strong drow warrior at my side...~ + KVEL-START-23-3
  ++ ~I'm not interested in besmirching my good name to shelter a drow, Ecthel, forget it.~ + KVEL-START-23-4

CHAIN C0KVNP01 KVEL-START-23-3
~You will accept? Thank you. All I need is for this bastard here to agree as well. Is that good enough for you, Kvel?~
== C0KVEL ~...~
== C0KVEL ~You have thought this through?~
== C0KVNP01 ~Damn right I have.~
== C0KVEL ~Not just you.~
END
  + ~ReputationGT(Player1,14)~ + ~I'm sure the good reputation I've built up will be enough.~ EXTERN C0KVEL KVEL-START-23-5
  ++ ~This is for my benefit, too.~ EXTERN C0KVEL KVEL-START-23-5
  ++ ~On second thought, I don't think this is a good idea.~ EXTERN C0KVNP01 KVEL-START-23-4

CHAIN C0KVNP01 KVEL-START-23-4
~Damn it. This was my last resort, but I suppose I cannot force you. You have no personal stake in this, after all.~
EXTERN C0KVNP01 KVEL-START-23-LEAVE-2

CHAIN C0KVEL KVEL-START-23-5
~I suppose I have no justification to refuse. If you are confident, or perhaps, foolish, enough to see this as profitable to you, then I will sell my sword to your cause, <CHARNAME>.~
== C0KVNP01 ~Finally. This may be the first time I've managed to convince you to compromise. Eh... Lady Alyth, might you be so generous as to spare a pen and parchment?~
== ALYTH ~It's a sorry state for a merchant to ask others for the primary tools of the trade... you may use the ones on the dresser, Ecthel. Just remember that I will add it to your tab.~
== C0KVNP01 ~Ahaha... I'll be sure to reimburse you at the very first chance, my lady. Now then, this won't be a long contract to write at all, just have to make sure to close any potential loopholes Kvel likes to exploit...~
== C0KVNP01 ~Now it's both your turns to sign.~
== C0KVEL ~...~
== C0KVNP01 ~Ah? You're signing under your real name this time, "K'Velarin"?~
== C0KVEL ~I may as well.~
== C0KVNP01 ~Fair enough. And now you, <CHARNAME>...?~
END
  + ~CheckStatGT(Player1,8,INT)~ + ~Done.~ EXTERN C0KVNP01 KVEL-START-23-6
  + ~CheckStatGT(Player1,8,INT)~ + ~I have terrible handwriting. Might you sign in my stead?~ EXTERN C0KVNP01 KVEL-START-23-7
  + ~CheckStatLT(Player1,9,INT)~ + ~I, uh... actually can't write. Or read, for that matter. Could you just do it?~ EXTERN C0KVNP01 KVEL-START-23-7

CHAIN C0KVNP01 KVEL-START-23-6
~And as the third party in this deal, I pronounce this contract hereby valid. Kvel, or K'Vel, K'Velarin, whatever name he favors, is in your service from now on. You won't regret this, <CHARNAME>, I promise you.~
== C0KVEL ~Just so long as <PRO_HESHE> does nothing to make me regret the same.~
== C0KVNP01 ~I'm sure <PRO_HESHE> won't, my friend, have a little trust in surfacers now and again. You'll find more than you think are willing to give you a fair exchange.~
== C0KVEL ~Hmph.~
== C0KVNP01 ~Now that we've gotten that out of the way, I suppose I can't put off proper work for much longer. I've done all I can here. Whatever happens from now on is on you, Kvel. Just don't get yourself killed.~
== C0KVEL ~I will likely rest more easily knowing keeping watch over your life is no longer a concern.~
== C0KVNP01 ~Heh. Maybe you're right.~
== C0KVNP01 ~I think I'll take a visit to Tymora's temple first just to try and offset some of this terrible luck, and finally it'll be the Merchants' League for me. If they give you entry as well, then we might see each other there, eh? Good luck, <CHARNAME>, and take care of Kvel, as a favor to me.~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC14")~ EXIT

CHAIN C0KVNP01 KVEL-START-23-7
~Ah, is that how it is? No judgment. I'll just sign under your name, then...~
EXTERN C0KVNP01 KVEL-START-23-6

CHAIN IF WEIGHT #-1 ~Global("C0KvelLeft","GLOBAL",1)~ THEN C0KVNP01 KVEL-START-LEFT
~Five years. Who knows if we'll meet again. At least he cared enough to share a toast.~
DO ~SetGlobal("C0KvelLeft","GLOBAL",2)~
END
  ++ ~Are you sure you shouldn't go after him?~ EXTERN C0KVNP01 KVEL-START-LEFT-1
  ++ ~So what are you going to do now?~ EXTERN C0KVNP01 KVEL-START-LEFT-2
  ++ ~I hope you haven't forgotten my part in helping you.~ EXTERN C0KVNP01 KVEL-START-LEFT-3

CHAIN C0KVNP01 KVEL-START-LEFT-1
~If I chased him right now, I'd likely end up knocked out, then wake up to find myself tied up in the Elfsong's cellars until somebody found me. No, he's gone.~
EXTERN C0KVNP01 KVEL-START-LEFT-3

CHAIN C0KVNP01 KVEL-START-LEFT-2
~I'll write to some contacts to see if I can't figure out where he goes next. Not that I've got high hopes. And then...~
= ~I'll... find someone else to take his place, I suppose. I've still got my own life to take care of, with or without him.~
EXTERN C0KVNP01 KVEL-START-LEFT-3

CHAIN C0KVNP01 KVEL-START-LEFT-3
~Here, <CHARNAME>, take this. I had something else in mind for this gold... but you may as well have it. You've saved my life too.~
DO ~GiveGoldForce(3000)~
= ~Now then, I've got business to attend to. It was good knowing you, <CHARNAME>. Maybe we'll meet again.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",24)~ THEN C0KVEL KVEL-START-24
~He has always loved hearing himself talk. Particularly more so when pleased with himself.~
DO ~SetGlobal("C0KvelBegin","GLOBAL",25)~
END
  ++ ~Are you sure you want this? This contract doesn't have to mean anything.~ + KVEL-START-24-1
  ++ ~So now that we're working together, how would you prefer to be referred as?~ + KVEL-START-24-2
  ++ ~Then we'll make things quick. Let's go, sellsword.~ + KVEL-START-24-3
  ++ ~I actually don't need you to follow me right now. Do you mind waiting?~ + KVEL-START-24-4

CHAIN C0KVEL KVEL-START-24-1
~I try to honor my word. Perhaps you may not expect this of drow, but that is all I have to say regarding the matter.~
EXTERN C0KVEL KVEL-START-25

CHAIN C0KVEL KVEL-START-24-2
~K'Vel will do.~
EXTERN C0KVEL KVEL-START-25

CHAIN C0KVEL KVEL-START-24-3
~As you command. You are my employer now, <CHARNAME>. As long as you don't betray our terms, you have no need to doubt my skill, nor my loyalty.~
DO ~JoinParty()~ EXIT

CHAIN C0KVEL KVEL-START-24-4
~Do as you wish. As long as the terms of the contract hold, I will wait until you require my service.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",25)~ THEN C0KVEL KVEL-START-25
~If you require it, then I am prepared to follow you, for as long as you see fit.~
END
  ++ ~Then join me, K'Vel.~ EXTERN C0KVEL KVEL-START-24-3
  ++ ~I don't need you right now.~ EXTERN C0KVEL KVEL-START-24-4

///

CHAIN IF WEIGHT #-1 ~Global("C0KvelAngeloTorture","GLOBAL",3)~ THEN C0KVELP C0KvelTorture
~Took you long enough to—ngh—escape.~
DO ~SetGlobal("C0KvelAngeloTorture","GLOBAL",4)~
END
  ++ ~Gods... what did they do to you?~ + C0KvelTorture-1
  ++ ~How did you escape?~ + C0KvelTorture-2
  ++ ~Good thing you're alive. Let's go.~ + C0KvelTorture-3

CHAIN C0KVELP C0KvelTorture-1
~Not as much as they should have, if they wanted to truly incapacitate me. Nothing they owned could match what can be done with a drow priestess's tentacle rod.~
EXTERN C0KVELP C0KvelTorture-3

CHAIN C0KVELP C0KvelTorture-2
~The humans underestimated my tolerance for pain, which made it easy to fool them with a convincing act of torpor... capturing the guard with a key and escaping was easy enough afterwards.~
EXTERN C0KVELP C0KvelTorture-3

CHAIN C0KVELP C0KvelTorture-3
~It would have been preferable if we had not surrendered ourselves at all. Do not expect a performance like that to work a second time... gah. We had best leave before we are captured again.~
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0)~ THEN C0KVELP KVEL-KICKED
~You seek for me to leave your company for now?~
END
  ++ ~Yes.~ EXTERN C0KVELP KVEL-KICKED-1
  ++ ~No.~ DO ~JoinParty()~ EXIT
  ++ ~I still need your help, but wait for me here first.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN C0KVELP KVEL-KICKED-1
~So be it. I will return to the Elfsong Tavern and wait for you there, as the proprietor has offered to help to hide my presence from other humans.~
DO ~EscapeAreaMove("%bg1_eet_symbol%0112",548,239,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)~ THEN C0KVELP KVEL-REJOIN
~You are back. I am prepared to honor my contract and rejoin you should you require my service.~
END
  ++ ~Very well.~ EXTERN C0KVELP KVEL-REJOIN-1
  ++ ~I don't need you at the moment.~ EXIT

CHAIN C0KVELP KVEL-REJOIN-1
~As directed.~
DO ~JoinParty() SetGlobal("KickedOut","GLOBAL",0)~ EXIT