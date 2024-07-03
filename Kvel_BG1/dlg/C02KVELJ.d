BEGIN C02KVC01
BEGIN C02KVC02
BEGIN C02KVC03
BEGIN C02KVC04
BEGIN C02ANDRO

// ANDROSZ

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszEvent","GLOBAL",1)~ THEN C02KVELJ KVEL-ANDROSZ
~Stop!~
DO ~SetGlobal("C0KvelSoDAndroszEvent","GLOBAL",2)~
== C02KVELJ ~Keep your guard up, and do not move.~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~What's there to be afraid of? It's just a dead body.~ EXTERN C02KVELJ KVEL-ANDROSZ-1
  + ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~What's there to be afraid of? It's just a dead body.~ EXTERN C02KVELJ KVEL-ANDROSZ-5

CHAIN C02KVELJ KVEL-ANDROSZ-1
~Androsz was here. He killed this crusader.~
END
  ++ ~How can you tell just from a corpse?~ EXTERN C02KVELJ KVEL-ANDROSZ-2
  ++ ~Androsz? Your rival, the drow swordsman?~ EXTERN C02KVELJ KVEL-ANDROSZ-2
  ++ ~So what? I don't remember him being hostile to us.~ EXTERN C02KVELJ KVEL-ANDROSZ-3

CHAIN C02KVELJ KVEL-ANDROSZ-2
~The crusader was slain quickly and silently, enough so that none of his nearby companions noticed. With that and the patterns on his wounds, I can say with almost certainty that it is him.~
EXTERN C02KVELJ KVEL-ANDROSZ-3

CHAIN C02KVELJ KVEL-ANDROSZ-3
~Androsz is not so simple as being an enemy. But I cannot predict what his intentions are by being nearby, and I doubt it is mere coincidence. Be cautious.~
END
  ++ ~Well, he's clearly not watching us right now, or he'd have tried something already.~ EXTERN C02KVELJ KVEL-ANDROSZ-4
  ++ ~So where do you think he is now?~ EXTERN C02KVELJ KVEL-ANDROSZ-4

CHAIN C02KVELJ KVEL-ANDROSZ-4
~There is only one route from here. Even he could not slip past all those crusaders without causing alarm. He must be deeper in these tunnels.~
== C02KVELJ ~Remain wary. Androsz does not kill without reason, but if you give him one, you will be dead before you know it.~
EXIT

CHAIN C02KVELJ KVEL-ANDROSZ-5
~I recognize the blade marks on this crusader's corpse. A drow named Androsz did this.~
END
  ++ ~I can tell whoever killed this man was skilled, but how can you be certain from just a few wounds?~ EXTERN C02KVELJ KVEL-ANDROSZ-6
  ++ ~Who is this Androsz?~ EXTERN C02KVELJ KVEL-ANDROSZ-6
  ++ ~So is this a bad thing?~ EXTERN C02KVELJ KVEL-ANDROSZ-7

CHAIN C02KVELJ KVEL-ANDROSZ-6
~Androsz is of Eryndlyn, the same drow city as myself. He was... a rival, and not in the usual sense for a drow. He is a prodigy in swordsmanship, and we duelled many times over my past to improve ourselves, and each other.~
= ~Since I left the Underdark, my skill with the sword has dulled, and while I have only met Androsz once since I came to the surface, I know that his skill has only become even sharper. There are few more dangerous enemies you can make. However...~
EXTERN C02KVELJ KVEL-ANDROSZ-7

CHAIN C02KVELJ KVEL-ANDROSZ-7
~Androsz is... unusual. He has ambition, but not in the same way as other drow. His only goal in life is to perfect himself, and it was for that reason I caught his eye as a rival, and we reached... an agreement, of sorts.~
END
  ++ ~You were that good once?~ EXTERN C02KVELJ KVEL-ANDROSZ-8
  ++ ~So he may not be an enemy?~ EXTERN C02KVELJ KVEL-ANDROSZ-9

CHAIN C02KVELJ KVEL-ANDROSZ-8
~...It was a long time ago. Much has happened since the days I dedicated my life to mastering swordsmanship.~
EXTERN C02KVELJ KVEL-ANDROSZ-9

CHAIN C02KVELJ KVEL-ANDROSZ-9
~If we meet Androsz, I cannot assure you of his intentions. If you draw his interest, he may do nothing, or he will try to test you. The only thing that I know is that his appearance here, along with my joining you, is surely no coincidence.~
EXTERN C02KVELJ KVEL-ANDROSZ-4

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszEvent","GLOBAL",3)~ THEN C02KVC04 KVEL-ANDROSZ2
~He's the one! This drow killed our brethren!~
DO ~SetGlobal("C0KvelSoDAndroszEvent","GLOBAL",4)~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~There he is.~
== C02ANDRO ~Well... that may be true, but I assure you, I was left with no choice. I truly have no quarrel with you surfacers. Might we talk this over?~
== C02KVC01 ~You think we're easy to fool, do you? Bring him to Hephernaan, alive or dead. Make sure those loyal to the Shining Lady never hear of this.~
== C02ANDRO ~*sigh* Surfacers can be so difficult.~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("C02KVC01",MoveToObject("C02ANDRO"))
ActionOverride("C02KVC02",MoveToObject("C02ANDRO"))
ActionOverride("C02KVC03",MoveToObject("C02ANDRO"))
FadeToColor([30.0],0)
Wait(2)
ApplyDamagePercent("C02KVC01",110,SLASHING)
Kill("C02KVC01")
SmallWait(5)
ApplyDamagePercent("C02KVC02",110,SLASHING)
Kill("C02KVC02")
SmallWait(5)
ApplyDamagePercent("C02KVC03",110,SLASHING)
Kill("C02KVC03")
SmallWait(5)
ApplyDamagePercent("C02KVC04",110,SLASHING)
Kill("C02KVC04")
JumpToPoint([1234.2370])
FadeFromColor([30.0],0)
Wait(3)
FaceObject(Player1)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszEvent","GLOBAL",4)~ THEN C02ANDRO KVEL-ANDROSZ3
~Ah, if it isn't <CHARNAME>. I greet you, abbil, and I do apologize that you had to witness this regrettable bit of business.~
DO ~SetGlobal("C0KvelSoDAndroszEvent","GLOBAL",5)~
END
IF ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ3-1
IF ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ3-2

CHAIN C02ANDRO KVEL-ANDROSZ3-0
~As you wish, abbil. I will not intrude upon which I am not welcomed. Farewell.~
EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-1
~It would seem that our encounters are oft preceded by unfortunate battle. First, your slaying of my brother Jhan, and now this.~
EXTERN C02ANDRO KVEL-ANDROSZ3-3

CHAIN C02ANDRO KVEL-ANDROSZ3-2
~Is that surprise at my knowledge of you I see? Well, regardless, I hope you will not treat me with too much suspicion. My house, the noble Zaer'iyon of Eryndlyn, had dealings with the Iron Throne. I even met your brother, Sarevok, though I ultimately declined his offer to take part in the battle he had sought.~
EXTERN C02ANDRO KVEL-ANDROSZ3-3

CHAIN C02ANDRO KVEL-ANDROSZ3-3
~But, though you may not believe it, I truly had only intended to observe yours, and my rival K'Velarin's, progress from the shadows. Being discovered by these... crusaders, though they may be more than such, and having to silence them was not my intent.~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~In that, <CHARNAME>, you may believe at least half of what he has said. Observation has always been Androsz's strong point, but being inconspicuous is not.~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~K'Vel, you wound me. With truth, but the cut is no more shallow. I have always left such matters to you, even with your larger appearance.~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~You're only here to see the show? Not even going to try and trade a few blows this time?~ EXTERN C02ANDRO KVEL-ANDROSZ3-4
  + ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~You're acquainted with K'Vel? His rival, I assume?~ EXTERN C02ANDRO KVEL-ANDROSZ3-5
  ++ ~I already have enough people following me in the shadows. I don't appreciate another one.~ EXTERN C02ANDRO KVEL-ANDROSZ3-0

CHAIN C02ANDRO KVEL-ANDROSZ3-4
~I have seen K'Velarin's ability for myself already, and it has told me such. There will be a time for me to draw blades against him again, but this moment is still too early.~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~That assumes I will be ready to oblige you when at the 'correct' time.~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~I'll deal with that argument when the time comes, my friend.~
END
  IF ~!PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-8
  IF ~PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-5
~Indeed, Androsz Zaer'iyon, weapons master of our noble house of Eryndlyn, and only surviving son of Matron Siv'thra Zaer'iyon. I would have liked to make your acquaintance sooner, had I the opportunity to come in peace.~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~As for my history with K'Velarin, your loyal drow, well... let's just say we are the oldest of friends.~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~'Friends' who never ignored a chance to try to kill each other openly.~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~Is that not the nature of drow? To challenge you with a blade instead of resorting to a knife in the back is already the highest form or respect.~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~...I cannot argue with that.~
END
  + ~InParty("C0Kvel")~ + ~Well, I'm glad you two had a chance to meet here, but we're not here for sightseeing.~ EXTERN C02ANDRO KVEL-ANDROSZ3-6
  ++ ~I would say it's a pleasure to meet you, if you were not admitting to be affiliated with my old enemies.~ EXTERN C02ANDRO KVEL-ANDROSZ3-7
  ++ ~There's enough strange people watching my progress as it is. Get out before I kill you.~ EXTERN C02ANDRO KVEL-ANDROSZ3-0

CHAIN C02ANDRO KVEL-ANDROSZ3-6
~Of course, of course. You, the child of a god, have many more important affairs than myself to deal with, I am certain. We have no prior acquaintance, but as you are the friend of my friend, I hope you do well in your endeavor.~
END
  IF ~!PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-8
  IF ~PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-7
~I assure you, <CHARNAME>, I have never held any personal misgivings against you in the short time I have known your name. Eryndlyn is a merchant city, and we make dealings with surfacers from time to time. It was mere coincidence that your path and mine crossed. And as you are K'Velarin's commander, my best wishes are with you for the current crisis.~
END
  IF ~!PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-8
  IF ~PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-8
~Please, take this as a show of good faith. I believe it is a symbol of identification for these crusaders. I have no use for it, but if you wish to infiltrate their ranks, it will no doubt prove useful.~
DO ~GiveItemCreate("BDMISC04",Player1,1,0,0)~
EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-9
~Now then, I will waste no more of your precious time. That said, I had a rather enlightening conversation with a certain... transparent friend nearby, which may be of interest to you should she deem you worthy of her presence. A word of advice—sometimes defiance is the right path forward. Best of luck to you in this war that is to come.~
END
  + ~InParty("C0Kvel")~ + ~Wait, Androsz. Would you be interested in helping us?~ EXTERN C02KVELJ KVEL-ANDROSZ3-JOIN
  ++ ~What exactly does that mean?~ EXTERN C02ANDRO KVEL-ANDROSZ3-10
  ++ ~Well, goodbye then, I suppose.~  EXTERN C02ANDRO KVEL-ANDROSZ3-11
  + ~InParty("C0Kvel")~ + ~Don't think you're going anywhere, drow. Stay and fight!~ EXTERN C02KVELJ KVEL-ANDROSZ3-12
  + ~!InParty("C0Kvel")~ + ~Don't think you're going anywhere, drow. Stay and fight!~ EXTERN C02ANDRO KVEL-ANDROSZ3-13

CHAIN C02ANDRO KVEL-ANDROSZ3-10
~I believe it should be clearer given context. I have no doubt you will know what to do. Aluve.~
DO ~EscapeArea()~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-11
~Aluve, <CHARNAME>. Should you and K'Velarin continue to walk the same path, I have no doubt we will meet again.~
DO ~EscapeArea()~ EXIT

CHAIN C02KVELJ KVEL-ANDROSZ3-12
~Don't, <CHARNAME>. It will be the last thing you regret.~
== C02ANDRO ~K'Velarin has always been the wiser in action between us. I do not hope to stain my blades with the blood of a potential ally. Now then, farewell.~
DO ~EscapeArea()~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-13
~Please calm yourself, <CHARNAME>. I do not hope to stain my blades with the blood of a potential ally. Now then, farewell.~
DO ~EscapeArea()~ EXIT

CHAIN C02KVELJ KVEL-ANDROSZ3-JOIN
~Oh...?~
== C02ANDRO ~Now that is a most unexpected request. Although I find your cause interesting, I believe it is against my interest to make my presence known on the surface. For what reason would I place my blades in this battle?~
END
  + ~OR(2)
     CheckStatGT(Player1,15,INT)
     CheckStatGT(Player1,15,WIS)~ + ~Regardless of what you do, K'Vel will be fighting alongside me. The battle will be dangerous. And I know you wish for him to live.~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-1
  + ~OR(2)
     CheckStatGT(Player1,15,CHR)~ + ~Well, perhaps the fact that I'm asking nicely would be enough?~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-2
  ++ ~I don't have any good reason to ask. Forget I said anything.~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-3

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-1
~A fair point, certainly. Though I have little doubt in K'Vel's skills, nothing is ever certain on such a large battlefield.~
END
  IF ~GlobalGT("bd_sdd318_drow_teens","bd5100",3)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-4
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-5
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) !CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-6

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-2
~Ha! For most drow, courtesy would only make you less trustworthy. Still, I understand honest and gentle exchanges are preferred on the surface.~
END
  IF ~GlobalGT("bd_sdd318_drow_teens","bd5100",3)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-4
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-5
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) !CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-6

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-3
~Well, though I may not fight at your side, I still wish you and K'Velarin well, truly. Aluve, friends.~
DO ~EscapeArea()~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-4
~Actually, I should let you know that I encountered a pair of foolish young drow lovers. They were terrified by my presence, of course, but I was able to placate them easily enough. And such an interesting tale they spun me.~
= ~You've surprised me, <CHARNAME>. Few would allow drow to simply live and find their fortune as they wish. Most drow would curse you for it, but I salute you for such a decision.~
EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-7

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-5
~I find you most curious, <CHARNAME>, and for more than simply being K'Velarin's leader. Perhaps there is something to be gained by following you, at least briefly.~
EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-7

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-6
~Your words are compelling, but I fear I must decline. Though I would like to fight at K'Velarin's side once more, I fear there are risks that are simply not worth taking.~
EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-3

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-7
~Very well! You have gained my interest, and with that, my alliance as well. When the time comes, you will see me in the battlefield.~
= ~I know where your people have laid their camp, and I may visit there and make my allegiance known to your allies—under a suitable disguise, of course. I look forward to battling alongside you, and K'Velarin once again.~
= ~Now, I have some preparations to make before then. Farewell, and we will meet again soon.~
DO ~SetGlobal("C0KvelSoDAndroszAlly","GLOBAL",1) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszAlly","GLOBAL",1) Global("C0KvelSoDAndroszMeet","GLOBAL",0)~ THEN C02ANDRO KVEL-ANDROSZ3
~Ah, there you are, abbil.~
DO ~SetGlobal("C0KvelSoDAndroszMeet","GLOBAL",1)~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~I arranged for this helmet to be crafted not too long ago. The design is nostalgic, is it not?~
== C02KVELJ IF ~InParty("C0KVEL")~ THEN ~Very amusing.~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~Oh, come now. It's an ugly thing, certainly uncomfortable, and not at all suitable for my fighting style. I respect you for enduring it for as long as you undoubtedly did. Still, I can see the benefits. Even the glare of the sun is not as blinding.~
== C02ANDRO ~Finding my way into the camp was none too difficult with my features disguised. Even with my face hidden, it merely took some knowledge of you, the Hero of Baldur's Gate, to allow me a tentative amount of freedom. I have no doubt I am still under watch, of course, but as long as I do not make my intentions suspicious, I should have no cause for concern.~
== C02ANDRO ~When the battle begins, show me what you are capable of, <CHARNAME>, and I will show you why the blades of Androsz Zaer'iyon have no equal within Eryndlyn.~
END
  IF ~Class(Player1,FIGHTER_ALL)~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR
  IF ~!Class(Player1,FIGHTER_ALL)~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR
~Although...~
== C02KVELJ IF ~InParty("C0KVEL")~ THEN ~I do not like that look in your eye, Androsz.~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~Lower your guard once in a while, K'Vel. I just recognized a ripe opportunity that I would be amiss to let go.~
== C02ANDRO ~<CHARNAME>, you are a born <PRO_MANWOMAN> of combat. You walk the warrior's path, as K'Velarin and I are. Would you care for a friendly spar? I see no better chance.~
END
  ++ ~Can I trust you to fight fairly?~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-1
  ++ ~I wouldn't turn down a chance to test my skills.~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-2
  ++ ~I'm not interested.~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-3

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR-1
~Now that *is* rather rude. Do I seem the type to stoop to tricks? K'Velarin could vouch for my honest character.~
== C02KVELJ IF ~See("C0KVEL")~ THEN ~No comment.~
== C02ANDRO ~In any case, there is little to be gained in cheating in a battle not fought for survival. I will fight as an honorable warrior, of that you have my word.~
END
  ++ ~Let's spar, then.~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-2
  ++ ~I'm not interested.~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-3
  ++ ~Maybe later. I'm not ready yet.~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-3

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR-2
~Excellent, abbil. But we must find the appropriate arena, and this place will not do with all the others here. I would prefer to be able to fight without this helmet, as well. Let us find somewhere that we will surely not suffer interruptions. I know just the place.~
DO ~SetGlobal("C0KvelSoDAndroszSpar","GLOBAL",1)
StartCutSceneMode()
StartCutScene("C02KVC04")~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR-3
~As you wish. Go well.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszSpar","GLOBAL",1)~ THEN C02ANDRO KVEL-ANDROSZ4
~The rules will be simple, and relatively lenient. Use whatever weapons and tactics which you prefer, though I would ask that you refrain from using magic should you know any. And we will fight until either of us can no longer continue.~
== C02ANDRO ~Now, then. I look forward to seeing what you are capable of, <CHARNAME>!~
DO ~SetGlobal("C0KvelSoDAndroszSpar","GLOBAL",2)
ApplySpellRES("C02KVSP1",Player1)
ApplySpellRES("C02KVSP2",Player2)
ApplySpellRES("C02KVSP2",Player3)
ApplySpellRES("C02KVSP2",Player4)
ApplySpellRES("C02KVSP2",Player5)
ApplySpellRES("C02KVSP2",Player6)
Enemy()
Spell(Myself,KENSAI_KIA)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszPCLost","GLOBAL",1)
Global("C0KvelSoDAndroszSpar","GLOBAL",3)~ THEN C02ANDRO KVEL-ANDROSZ-SPAR-LOSE
~Ultrinnan! I believe victory is mine.~
END
IF ~!HPPercentLT(Myself,90)~ DO ~AddXPObject(Player1,50)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-REKT
IF ~HPPercentLT(Myself,90) !HPPercentLT(Myself,75)~ DO ~AddXPObject(Player1,800)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP90
IF ~HPPercentLT(Myself,75) !HPPercentLT(Myself,50)~ DO ~AddXPObject(Player1,2000)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP75
IF ~HPPercentLT(Myself,50) !HPPercentLT(Myself,25)~ DO ~AddXPObject(Player1,5000)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP50
IF ~HPPercentLT(Myself,25)~ DO ~AddXPObject(Player1,7000)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP25

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-REKT
~It seems that this was an unfortunate battle for you. Perhaps I did not hold back enough, or you are not in your finest form today. Regardless...~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP90
~I fear I may not have held back enough, and you have my apologies for that. Still, you landed some impressive blows.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP75
~That was a fine battle. Though I have the edge in experience, I can sense you have barely begun to reach your potential. There are great things meant for you in your future.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP50
~I have not been pushed like this by an opponent in some time. Very well fought, abbil. Most drow would envy your skill at such a young age.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP25
~Though it is perhaps generous to call this a victory... had luck shifted even slightly, perhaps I would be the one conceding defeat instead. You have truly surprised me, <CHARNAME>.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszPCWon","GLOBAL",1)
Global("C0KvelSoDAndroszSpar","GLOBAL",3)~ THEN C02ANDRO KVEL-ANDROSZ-SPAR-WIN
~That's enough—I concede defeat. Victory is yours, <CHARNAME>... well fought.~
DO ~AddXPObject(Player1,8000)~
== C02ANDRO ~I can see I did not overestimate your prowess. Despite your humble origins, you have great talent. I may have held back, but overcoming me in one-on-one combat is deeply impressive.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL
~No matter the outcome, I feel I have understood you after facing your technique with my own blades. You have my thanks. This was a worthwhile experience.~
END
  ++ ~I feel the same way.~ + KVEL-ANDROSZ-SPAR-FINAL-1
  + ~Global("C0KvelSoDAndroszPCLost","GLOBAL",1)~ + ~I want a rematch someday.~ + KVEL-ANDROSZ-SPAR-FINAL-2
  + ~Global("C0KvelSoDAndroszPCWon","GLOBAL",1)~ + ~You're rather confident considering you were defeated.~ + KVEL-ANDROSZ-SPAR-FINAL-3
  ++ ~I think we've spent too much time here as is. I have important things to do.~ + KVEL-ANDROSZ-SPAR-FINAL-1

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-1
~I am grateful you spared the time to indulge me in this selfish request. Though K'Velarin will not duel me adequately anymore, I am glad there are still worthy opponents against whom I can hone my skills.~
DO ~SetGlobal("C0KvelSoDAndroszSpar","GLOBAL",4)~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~Did that exchange of skill not spark even the slightest rush your blood, K'Vel?~
== C02KVELJ IF ~InParty("C0KVEL")~ THEN ~No.~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~Methinks our mutual friend deludes himself.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-4

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-2
~Of course. Choose a time and a place. So long as I am able, I will accept your challenge.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-1

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-3
~Well, had I sought victory instead of a proper challenge, perhaps I would have been less... well, who can say what the next duel might result in.~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-1

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-4
~I know you must have important tasks to attend to, and I will steal no more of your time.~
END
IF ~Global("C0KvelSoDAndroszPCWon","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-REWARD
IF ~!Global("C0KvelSoDAndroszPCWon","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C02KVC06")~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-REWARD
~However, I feel I cannot part ways without giving you, the victor, a proper reward. Though I carry few items I would call precious, save for my trusted swords which I could not part with, there is of course one treasure I have in abundance.~
DO ~ApplySpellRES("C02KVSP4",Player1) AddJournalEntry(%kvel_sod_journal_entry_reward%,USER)~
== C02ANDRO ~Though our styles differ, I am still a weapons master, and there are many things I can teach you of combat. I will divulge some valuable advice I have acquired from my own training during the way back...~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C02KVC06")~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("bd_plot","GLOBAL",394)
Global("C0KvelSoDAndroszAlly","GLOBAL",1)
Global("C0KvelSoDAndroszMeet","GLOBAL",1)
OR(2)
GlobalLT("C0KvelSoDAndroszSpar","GLOBAL",1)
GlobalGT("C0KvelSoDAndroszSpar","GLOBAL",3)~ THEN C02ANDRO KVEL-ANDROSZ5
~Is there something you wish, abbil?~
END
  ++ ~Can I ask you a few questions?~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q
  + ~Class(Player1,FIGHTER_ALL)~ + ~Are you still up for sparring? I'm ready now.~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-2
  ++ ~Not at the moment.~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ5-Q
~Of course. I can make for a better conversation partner than K'Velarin, I'm certain.~
END
  + ~Global("C0KvelSoDAndroszQuestion1","GLOBAL",0)~ + ~How did you and K'Velarin come to know each other?~ DO ~SetGlobal("C0KvelSoDAndroszQuestion1","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q-1
  + ~Global("C0KvelSoDAndroszQuestion2","GLOBAL",0)~ + ~Tell me about your city, Eryndlyn.~ DO ~SetGlobal("C0KvelSoDAndroszQuestion2","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q-2
  + ~Global("C0KvelSoDAndroszQuestion3","GLOBAL",0)~ + ~As a dedicated drow swordsman, what do you know of Drizzt Do'Urden?~ DO ~SetGlobal("C0KvelSoDAndroszQuestion3","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q-3

CHAIN C02ANDRO KVEL-ANDROSZ5-Q-1
~I assume he has only told you the bare minimum. Fortunately, I am not he, and I am happy to be more forthcoming.~
= ~To begin with some context... did you know that Eryndlyn has no true institution for martial training? Menzoberranzan has Melee-Magthere, Ust Natha has its Fighters' Societies... but the various powers within our own city lack the unity to allow for a place where aspiring warriors might come together and hone their skills.~
= ~By that result, truly skilled drow warriors are few and far between, and though unspoken, are given more value than even female priestesses by the more pragmatic matrons. I recognized my skill with weapons at a young age, and quickly became my mother's favored over my brothers. I was even given the privilege of being exempted from my Blooding, something granted exceptionally rarely.~
= ~But of course, even a prodigy will lose his edge despite sufficient challenge, and a proper opponent. My early years as my house's warrior were spent slaying inexperienced drow and mindless beasts. It was tedious, and I felt no progress in my ability. Until I met K'Velarin.~
= ~It was when my mother entrusted me with the task of eliminating a minor house named Au'dayrr, which had seemingly gained some noteworthy influence and could become a potential threat. I did not expect much from my opponents, and for the most part, my expectations were matched... until I encountered an opponent who did not fall within my second or third strike.~
= ~A warrior, perhaps two heads taller than myself, so heavyset I doubted I was fighting a drow. I had the edge in experience and training, but his sheer size and the reach of his greatsword were an obstacle I had never been challenged with. Neither of us could get the edge over each other as we matched each other blow for blow.~
= ~In the end, the enemy house managed to repel our forces. I had been too confident in our victory, and brought too few soldiers to the battle. For the first time I could recall, the matron was furious with me. I only managed to quell her anger by proposing an alliance with the house we had just invaded. And to prove it, I brought my worthy opponent, K'Velarin, to the great hall of House Zaer'iyon to duel him upon a stage, in front of my entire house and his.~
= ~The battle was magnificent. Like a dance, I struck with my dual blades, and he matched with his greatsword. From one round to two, to five, then ten, twenty... eventually, I lost count. There was no doubt I was the superior warrior at the time, though only slightly. Yet no matter how many cuts I made over him, he simply would not fall.~
= ~And so, in the end, when neither of us could raise our weapons any longer, we called the match a draw. But I believe we both won that day. For we had found something invaluable, an equal to whom we could use to improve our skills to the zenith, and with whom an unspoken bond of trust had been forged in our merciless, yet fundamentally honest battle.~
= ~Perhaps it was eventually too much. I have always wondered if my mother feared our alliance, and if my younger brother's act of poisoning K'Velarin was at her order... but it does not matter now. I was glad to see K'Velarin still alive and well. One day, we will have our proper, and final, test of skill.~
EXIT

CHAIN C02ANDRO KVEL-ANDROSZ5-Q-2
~Well... that will be quite the wordy tale. I will give you the short version, with only the parts that are relevant.~
= ~Our origins are not the same as of other drow cities. Eryndlyn was founded by drow whom sought to reclaim their lost lands when Lolth was originally banished from the Seldarine, starting from Miyeritar, an ancient land once inhabited by the dark elves.~
= ~Since those who built our great city never fully subscribed to the Spider Queen's doctrines, other powers managed to grab a foothold and shape the place as it is today. The spawns of Ghaunadaur, masked servants of Vhaeraun, and, most of all, the merchant lords whom controlled trade... as well as the Jaezred Chaulssin, the assassins' guild, founded by males who seek to eradicate Lolth's influence over we drow.~
= ~Our city suffers more greatly from infighting than any other, and drow houses are dissolved as quickly as they are built. It is quite the chaotic place to live, you can be certain of that. In truth, I respect much of the stability of surface life, for all the passivity of humans that I see.~
= ~But, it is for those same reasons that even males can become greatly valued, should they provide exceptional skills of worth to their matrons. I have been able to afford more liberties by my station as Eryndlyn's top swordsman, something male drow of any society would envy.~
EXIT

CHAIN C02ANDRO KVEL-ANDROSZ5-Q-3
~The drow renegade of Menzoberranzan. Indeed, I do know his reputation, as well as some of his history.~
= ~We have never met, but I have always idolized his father, the legendary weapons master Zaknafein. 'Tis a shame that few drow will speak of his name, and his legacy is unknown by surfacers at all. Though the fact that his offspring carries on his lessons and style is... close to enough.~
= ~Drow have always believed that to achieve supremacy means to discard weak emotions and embrace the inherent cruelty of our kind. Zaknafein Do'Urden did not, and neither did his son, yet they became some of the most legendary swordsmen ever to come of drow society.~
= ~Perhaps that is why I, also, have a foolish belief in a similar path. But whether I have a chance to follow it... well, that is yet to be known.~
EXIT

CHAIN IF ~GlobalLT("bd_plot","global",450)
Dead("bdashati")
Global("C0KvelSoDAndroszPostBattle","GLOBAL",0)~ THEN C02ANDRO ANDROSZ-POSTBATTLE
~Well, a most thrilling battle that was, and a satisfying victory it will be once it is truly over.~
DO ~SetGlobal("C0KvelSoDAndroszPostBattle","GLOBAL",1)~
== C02ANDRO ~I have played my part, abbil, and I believe the rest is up to you. Though I would like to see it to the end, I think it would be better for all involved if I make my exit now.~
== C02ANDRO ~Ensure K'Velarin's safety if you can. I'm sure we will meet again some day.~
DO ~EscapeArea()~ EXIT

// ALYTH

CHAIN IF WEIGHT #-1 ~InParty("C0KVEL")
Global("C0KvelSoDAlythTalk","GLOBAL",0)~ THEN BDALYTH KVEL-ALYTH
~I see you are packed and ready to leave, K'Velarin.~
DO ~SetGlobal("C0KvelSoDAlythTalk","GLOBAL",1)~
== C02KVELJ ~That should do no less than please you.~
== BDALYTH ~Don't be like that. I have a good relationship with Darcourt Enterprises. Ecthel asked me to give you shelter when needed, and I have done it without any complaints.~
== C02KVELJ ~Of that I am painfully aware. In any case... your generosity is appreciated. I will be sure to repay you appropriately.~
== BDALYTH ~Outside of all the patrons that have come in for the new menu, you can repay me by bringing down that crusade so everything goes back to normal. Safe travels.~
EXIT

// ASHATIEL

I_C_T BDASHATI 5 C0KvelAshatiel
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~A duel to decide the lives of those who serve you? There truly is a fine line between confidence and arrogance. If that is all it takes, then I can simply take this challenge instead.~
== BDASHATI ~Begone from my sight, dark elf. I will not accept any substitutions for the godchild. Your presence alone speaks ill of <PRO_HISHER> character.~
END

// BRIDGEFORT

I_C_T BDKHALIJ 33 C0KvelBridgeFortBetrayal
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~You and the drow are not so different, sacrificing so much for a temporary convenience.~
END

// CLOVISTA

EXTEND_TOP BDCLOVIS 3 #3
+ ~InParty("C0Kvel")~ + ~I see you shaking your head, K'Vel. Thoughts?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN C02KVELJ KVEL-CLOVISTA
END

CHAIN C02KVELJ KVEL-CLOVISTA
~A height disadvantage in combat is impossible to overcome. I have fought too many smaller foes who believed speed and reflexes would be enough to reach my weak points. They only delivered themselves into their doom.~
== BDCLOVIS ~S–so there's nothing I can do?~
== C02KVELJ ~Consider what the difference gives you in advantage. Strike lower, where it is slower for a larger man to react. I have learned that lesson through experience as well.~
EXTERN BDCLOVIS 5

// DANINE

EXTEND_TOP BDDANINE 3 #3
+ ~InParty("C0Kvel")~ + ~What do you think, K'Vel? You're familiar with dodgier fighting styles.~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_danine_skill","global",2)~ EXTERN C02KVELJ KVEL-DANINE
END

CHAIN C02KVELJ KVEL-DANINE
~Too many wasted movements. This one has the reflexes to fight well. She merely needs to learn how to force an opportunity and then strike efficiently.~
EXTERN BDDANINE 6

// DARNAS

I_C_T BDDARNAS 5 C0KvelDarnas
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~Wholly unprepared for the very cause they signed their life for. How inane this all was.~
END

// GARROLD

EXTEND_TOP BDGARROL 1 #3
+ ~InParty("C0Kvel")~ + ~Could you provide some veteran advice for this youngster, K'Vel?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_garrold_skill","global",2)~ EXTERN C02KVELJ KVEL-GARROLD
END

CHAIN C02KVELJ KVEL-GARROLD
~...~
== C02KVELJ ~I cannot help this one.~
== BDGARROL ~*sigh* I knew it. I'm hopeless, aren't I?~
END
  ++ ~He's just pessimistic. I'm sure he doesn't mean it.~ EXTERN C02KVELJ KVEL-GARROLD-1
  ++ ~What do you mean, you can't help him?~ EXTERN C02KVELJ KVEL-GARROLD-1
  ++ ~You heard him. You're not cut out for fighting.~ EXTERN C02KVELJ KVEL-GARROLD-1

CHAIN C02KVELJ KVEL-GARROLD-1
~From his cautious attacks, I can tell he has a sharp mind, but a mediocre body. He is a born mage, not a soldier. I have enough knowledge to recognize this, but not enough to tutor him.~
== C02KVELJ ~I have some understanding of the Waterdhavian battlemages' expertise from my prior line of work. They should teach him.~
EXTERN BDGARROL 3

// HELVDAR

I_C_T BDHELVDA 3 C0KvelHelvdar
== C02KVELJ IF ~InParty("C0Kvel") GlobalGT("C0KvelSoDDrinkTalk","GLOBAL",0)~ THEN ~That is an understatement.~
== BDHELVDA ~Well, I had a good time anyway. You're not such a bad one, drow, with how you downed those bottles like a true dwarf.~
== BDHELVDA ~One o' these days, I'll take you to drink real dwarven booze, an' then we'll see who comes out on top, eh?~
END

INTERJECT BDHELVDA 26 C0KvelHelvdarPersuade
== C02KVELJ IF ~InParty("C0Kvel") GlobalGT("C0KvelSoDDrinkTalk","GLOBAL",0)~ THEN ~That would include your loss in our friendly drinking competition as well, I take it, dwarf?~
== BDHELVDA ~That don't count! I had at least a dozen drinks in me afore you joined!~
== C02KVELJ ~I'm certain the other soldiers will sympathize once they hear of you drooling on the ground.~
== BDHELVDA ~Argh, don't go besmirchin' my good name like that, elf! Fine, fine...~
EXTERN BDHELVDA 27

// HALASAN

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDTrainingQuest","GLOBAL",1)~ THEN C02KVELJ KVEL-TRAINING
~This instructor's training methods are inefficient.~
DO ~SetGlobal("C0KvelSoDTrainingQuest","GLOBAL",2)~
== C02KVELJ ~She only expects of them a standard soldier, and cannot identify their individual shortcomings. At this rate, they will only be a liability on the battlefield.~
END
  ++ ~Do you have experience training soldiers, K'Vel?~ EXTERN C02KVELJ KVEL-TRAINING-1
  ++ ~You're a veteran soldier, as I recall. Can you give these trainees some tips?~ EXTERN C02KVELJ KVEL-TRAINING-2
  ++ ~Watch me. I'll whip this lot into shape in no time.~ EXIT

CHAIN C02KVELJ KVEL-TRAINING-1
~The standards for typical drow soldiers in Eryndlyn are... poor, at best. An experienced warrior, especially one whom can impart knowledge in an effective manner, is greatly valued by any house.~
= ~I certainly was not allowed to live all my years in the Underdark though appearance or status.~
END
  ++ ~Then could you give these people the sort of guidance they need?~ EXTERN C02KVELJ KVEL-TRAINING-2
  ++ ~You just stand back and watch. I'll turn these rookies into experts myself.~ EXIT

CHAIN C02KVELJ KVEL-TRAINING-2
~If you cannot see the necessary way of instructing any of these short-lived warriors-to-be, I will give advice as needed. It will not win us the war on its own, but they may survive.~
EXIT

// HESTER

EXTEND_TOP BDHESTER 6 7 #3
+ ~InParty("C0Kvel")~ + ~K'Vel, it seems like you have a thought on this.~ EXTERN C02KVELJ KVEL-HESTER
END

CHAIN C02KVELJ KVEL-HESTER
~Step forward, recruit.~
== BDHESTER ~A–alright...~
DO ~SetGlobal("C0KvelSoDHester","GLOBAL",1)
StartCutSceneMode()
MoveToObject("C0KVEL")
ActionOverride("C0KVEL",ApplyDamage("BDHESTER",1,CRUSHING))
ActionOverride("C0KVEL",SetSequence(SEQ_ATTACK_SLASH))
SetSequence(SEQ_DIE)
Wait(2)
SetSequence(SEQ_AWAKE)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDHester","GLOBAL",1)~ THEN BDHESTER KVEL-HESTER2
~Oww...~
== C02KVELJ ~You fell. Why did you fall?~
== BDHESTER ~B–because... you hit me.~
== C02KVELJ ~And why did you not react to my strike?~
== BDHESTER ~I... I wasn't expecting it.~
== C02KVELJ ~You did not expect me to strike you, because you could not anticipate that I was suddenly your enemy. And so, I effortlessly knocked you down.~
== C02KVELJ ~You have sheltered yourself from the instinct of battle for so long, you cannot even recognize it anymore. If this were true battle, you would be dead.~
== BDHESTER ~So what... what do I do?~
== C02KVELJ ~Accept your enemy. Face them. Death will not withdraw because you fear it. Running will not save you from it. Only by understanding that will you truly live.~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~
== BDHESTER ~I—I think I get it now. The more I try to avoid death, the less prepared I will be for it, and the more it will hurt. Thank you. I think I can focus now.~
DO ~AddJournalEntry(61857,QUEST)
SetGlobal("BD_TRAINED_HESTER","BD3000",1)
IncrementGlobal("BD_TROOPS_TRAINED","BD3000",1)
MoveToPointNoInterrupt([198.882])
Face(W)~ EXIT

// KAELET

EXTEND_BOTTOM BDKAELET 3
+ ~InParty("C0Kvel")~ + ~K'Vel, do you have any advice, having spent some years on the surface?~ EXTERN C02KVELJ KVEL-KAELET
END

CHAIN C02KVELJ KVEL-KAELET
~Surely you jest. What was successful for me is hardly a justification alone, and I had the advantage of more years of experience.~
EXTERN BDKAELET KVEL-KAELET-1

CHAIN BDKAELET KVEL-KAELET-1
~You're an *ugly* drow, aren't you? Did your matron sire you with an orc?~
== C02KVELJ ~...~
== BDUMAR ~Kaelet? Maybe you shouldn't have said that... if looks could kill...~
== BDKAELET ~...S–sorry.~
== C02KVELJ ~That attitude will not get you far on the surface. Others may not respond with something as merciful as a simple look. How far will your bond carry you in a dangerous world in which you know nothing?~
== BDKAELET ~Well...~
== C02KVELJ ~That said, this will not change even if you wait another year, or a hundred. You may as well judge whether this elopement is worth it now, before it is too late.~
== BDUMAR ~Perhaps he has a point... Kaelet, I can't promise you nothing will happen to me if we go back. If we're really thinking of escaping and live on the surface, we have to decide now.~
== BDKAELET ~Ugh. I've always hated decisions and responsibilities. That's why I never cared about being a priestess either. I decided we wanted to run, so that's what we're going to do.~
== C02KVELJ ~Fine.~
== C02KVELJ ~They may survive. The chances are not entirely favorable. But it is possible.~
== BDKAELET ~Yes! We're going right now, Umar!~
END
  + ~Global("bd_sdd318_drows_hostile","bd5100",1)~ + ~Be on your way, then. I slew the war band that was seeking you.~ EXTERN BDKAELET 13
  ++ ~We still need to figure out what to say to Shapur.~ EXTERN BDKAELET 11
  + ~CheckStatGT(Player1,13,CHR)~ + ~I can't let you wander off to die in the darkness. You must return to your families—it's the right thing to do.~ EXTERN BDUMAR 8
  + ~!CheckStatGT(Player1,13,CHR)~ + ~I can't let you wander off to die in the darkness. You must return to your families—it's the right thing to do.~ EXTERN BDUMAR 10
  + ~Global("bd_sdd318_plot","bd5100",3)
Global("bd_sdd318_drows_hostile","bd5100",0)
CheckStatGT(Player1,13,STR)~ + ~No, you won't, because you're going back to Shapur right now. Cease your whining and go to the northern cavern where she waits.~ EXTERN BDUMAR 8
  + ~Global("bd_sdd318_plot","bd5100",3)
Global("bd_sdd318_drows_hostile","bd5100",0)
!CheckStatGT(Player1,13,STR)~ + ~No, you won't, because you're going back to Shapur right now. Cease your whining and go to the northern cavern where she waits.~ EXTERN BDUMAR 10
  ++ ~I was hoping you'd talk them down, not encourage them.~ EXTERN C02KVELJ KVEL-KAELET-2

CHAIN C02KVELJ KVEL-KAELET-2
~You asked me for advice, and I have given it. I left the Underdark with no attachments. Whether they have any is on them.~
EXTERN BDUMAR 10

// KORLASZ

I_C_T2 BDKORLAS 5 C0KvelKorlasz
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~Enough talk. Let us end this.~
END

// LLUIS

EXTEND_BOTTOM BDLLUIS 5
+ ~InParty("C0Kvel")~ + ~K'Vel? Mind taking care of this?~ EXTERN C02KVELJ KVEL-THREATEN
END

CHAIN C02KVELJ KVEL-THREATEN
~*sigh* Intimidation.~
== C02KVELJ ~Really?~
END
  ++ ~Come on. It'll be fun.~ EXTERN C02KVELJ KVEL-THREATEN-1
  ++ ~I'm sure you're used to doing this sort of thing.~ EXTERN C02KVELJ KVEL-THREATEN-2
  ++ ~I mean, if you don't want to...~ EXTERN C02KVELJ KVEL-THREATEN-3

CHAIN C02KVELJ KVEL-THREATEN-1
~I disagree. But it may make the resulting fight less tiresome.~
EXTERN BDLLUIS KVEL-THREATEN-4

CHAIN C02KVELJ KVEL-THREATEN-2
~You aren't wrong. I will do it, but this tactic gets old.~
EXTERN BDLLUIS KVEL-THREATEN-4

CHAIN C02KVELJ KVEL-THREATEN-3
~No. It will not be difficult. I just grow tired of using the same trick every time.~
EXTERN BDLLUIS KVEL-THREATEN-4

CHAIN BDLLUIS KVEL-THREATEN-4
~What're you whispering about over there?~
== BDASERY ~Hang on. Look! That big one, he's a d–d–d–dr...~
== C02KVELJ ~Run, and you may live.~
EXTERN BDASERY 1

// MORLIS

EXTEND_TOP BDMORLIS 4 #5
+ ~InParty("C0Kvel")~ + ~Want a word, K'Vel? You seem particularly disappointed with this one.~ EXTERN C02KVELJ KVEL-MORLIS
END

CHAIN C02KVELJ KVEL-MORLIS
~You remind me of a warrior I once knew. The technique is different, but the drive behind each blow is the same. Furious, brutal, bloodthirsty.~
== BDMORLIS ~And... you're saying I'm like that? I–I have always felt like killing is natural to me...~
== C02KVELJ ~In that as well, you are alike.~
== BDMORLIS ~Where is this warrior now? I'd like to meet him one day, if it were possible.~
== C02KVELJ ~He is dead. I killed him, after finding the weakness in his rage-filled swings.~
== BDMORLIS ~Oh.~
== BDMORLIS ~I want to fight. I want to kill my enemies. But I don't want to die... if there's a better way to fight, I'd like to learn it.~
== C02KVELJ ~Rage can protect you. But only if you wield it as a tempered weapon, and not swinging blindly. Kill if you must, but never forget what you are killing, and how it will respond to your blows.~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)~
== BDMORLIS ~So... something like this?~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",1)
ActionOverride("BDTAIELD",FaceObject("BDMORLIS"))
FaceObject("BDTAIELD")
SpellRES("SPCL321",Myself)
Wait(1)
SetSequence(SEQ_ATTACK_SLASH)
SmallWait(8)
ApplySpellRES("BDMORLIS","BDTAIELD")
Wait(1)
StartDialogNoSet(LastTalkedToBy)~ EXIT

// TAIELD

EXTEND_TOP BDTAIELD 1 #3
+ ~InParty("C0Kvel")~ + ~K'Vel, do you think you can give any pointers?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_taield_skill","global",2)~ EXTERN C02KVELJ KVEL-TAIELD
END

CHAIN C02KVELJ KVEL-TAIELD
~He is not a poor fighter, but his conviction is lacking.~
== C02KVELJ ~Look upon me, half-elf. What do you see?~
== BDTAIELD ~Is this a trick question?~
== C02KVELJ ~Answer me.~
== BDTAIELD ~You... well, sir. You're a drow.~
== C02KVELJ ~Correct. I am drow. For all the years I have spent on the surface, the world has never forgotten I am one. And yet, I have chosen to fight here regardless, knowing I am different and will always be seen as such.~
== BDTAIELD ~That's...~
== C02KVELJ ~But you are not the same. The humans around you will not see you as differently as you see them. And in the battlefield, the only thing they fear is that they cannot trust you with their lives. Will you burden them with that?~
== BDTAIELD ~N–no, sir. I don't want any of my comrades' blood on my hands... ever.~
== C02KVELJ ~Then you know what to do.~
EXTERN BDTAIELD 6

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21 26 30 34 38 42 46 50 54 58 62 66 70 74 78 82 86 90
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 27 31 35 39 43 47 51 55 59 63 67 71 75 79 83 87 91 #1
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 #10
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 #5
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END



CHAIN BDTHRIX ThrixWager1
~The drow is a most fascinating mortal indeed. Few others of his like in both strength and philosophy. He would make an excellent enforcer, if not more.~
END
++ ~Fine. If I lose, I'll surrender K'Vel's contract over to you.~ DO ~SetGlobal("C02KvelSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
++ ~Absolutely not. The drow is still of great use to me. If we are to play this game, choose another.~ DO ~SetGlobal("C02_Saved_Kvel","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02KvelJ ThrixWager2
++ ~K'Vel is my responsibility, and he has loyally served me thus far. In return, I would prefer to be an honest employer. We can gamble, but we will wager my soul.~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN C02KvelJ ThrixWager2
~Do not place my life of greater value than any other in this place. This is a foolish gamble to wager on, and pointless.~
== BDTHRIX ~Hmm. I always believed drow had more interesting characters, willing to grasp for power at any cost. Very well, onto the next...~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Yes, with a few decades of tempering, this drow would be a more fearsome menace still. I can already see the rivers of blood spilling...~
= ~And, for extra incentive, that nasty plague running through your blood will be no trouble once the transfiguration into devilhood begins. I am a generous master, no?~
END
++ ~Well, K'Vel, I suppose you have a new master now..~ DO ~SetGlobal("C02_thrix_mark_kvel","global",1)~ EXTERN C02KvelJ ThrixWager5
++ ~I'll make a river of blood out of your entrails first, fiend!~ EXTERN BDTHRIX 10

CHAIN C02KvelJ ThrixWager5
~Begone, fiend. Extend a hand to claim me, and you will withdraw a bloody stump.~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

CHAIN IF WEIGHT #-1 ~Global("C02KvelSacrifice","bd4500",1)~ THEN C02KVELJ ThrixTalk0
~...tch.~
END
++ ~Sorry about that. I didn't think he was serious.~ DO ~SetGlobal("C02KvelSacrifice","bd4500",2)~ + ThrixTalk1
++ ~Well, let's get going. Unless you have some thoughts.~ DO ~SetGlobal("C02KvelSacrifice","bd4500",2)~ + ThrixTalk1
++ ~I couldn't exactly give up my soul if I had an alternative. I hope you understand.~ DO ~SetGlobal("C02KvelSacrifice","bd4500",2)~ + ThrixTalk2

CHAIN C02KvelJ ThrixTalk1
~I have nothing more to say.~
= ~The only reason I will not kill you is because you are still needed. After then, there are no guarantees.~
DO ~SetGlobal("C0KvelSoDAngry","GLOBAL",1)~ EXIT

CHAIN C02KvelJ ThrixTalk2
~Better than you hope.~
EXTERN C02KvelJ ThrixTalk1

// TIAX

I_C_T BDTIAX 38 C0KvelTiax
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~It is for the better of all that this reprobate never leaves.~
END

// TRISTIAN

EXTEND_BOTTOM BDTRISTI 14
+ ~InParty("C0Kvel")~ + ~K'Vel.~ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)~ EXTERN C02KVELJ KVEL-TRISTIAN
END

CHAIN C02KVELJ KVEL-TRISTIAN
~So be it. I will treat this as a typical game of sava.~
EXTERN BDTRISTI 15

// TSOLAK

I_C_T BDTSOLAK 2 C0KvelTsolak
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~By simply assessment of risk, the fanatics may still be worthy of more trust than this creature.~
END

// WILHELMINA

I_C_T BDWILHEL 11 C0KvelWilhemina
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~Wait. Let me taste a sample. I have my doubts, but I would be a fool to dismiss it without a test.~
== C02KVELJ ~...~
== C02KVELJ ~*pfft*!~ [C0KVSF8]
== BDNEERAJ IF ~InParty("NEERA")~ THEN ~Well, that's not a good sign. Maybe I should... no, it has to be this. I'm just going to have to pinch my nose when the time comes!~
== C02KVELJ ~Clearly overripe when juiced, and with a hideous aftertaste. This has no culinary value whatsoever.~
== BDWILHEL ~I heard that!~
END

// WYNAN

EXTEND_BOTTOM BDWYNAN 14
+ ~InParty("C0Kvel")~ + ~Yes. K'Vel, would you know how to perform the spell?~ EXTERN C02KVELJ KVEL-WYNAN
END

CHAIN C02KVELJ KVEL-WYNAN
~I have enough arcane knowledge for this, at least.~
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("C0_sdd200_kvel","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("C02KVCV1",FALSE)~ EXIT

EXTEND_BOTTOM BDWYNAN 21
IF ~Global("C0_sdd200_kvel","bd2100",1)~ EXTERN C02KVELJ KVEL-WYNAN2
END

CHAIN C02KVELJ KVEL-WYNAN2
~Not yet.~
EXTERN BDWYNAN 22

EXTEND_BOTTOM BDWYNAN 23
IF ~Global("C0_sdd200_kvel","bd2100",1)~ DO ~SetGlobal("C0KvelSoDKillWraith","GLOBAL",1)
AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
AddJournalEntry(61739,QUEST_DONE)
ClearAllActions()
StartCutSceneMode()
ActionOverride("C0Kvel",MoveToObject("BDWRAITH"))
ActionOverride("C0Kvel",SetSequence(SEQ_ATTACK_SLASH))
ActionOverride("C0Kvel",PlaySound("HIT_02A"))
ActionOverride("C0Kvel",Kill("BDWRAITH"))
ActionOverride("C0Kvel",Wait(1))
ActionOverride("C0Kvel",FaceObject("BDWYNAN"))
ActionOverride("C0Kvel",Wait(2))
AddExperienceParty(2000)
Wait(4)
StartDialogNoSet(Player1)~ EXIT
END

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDKillWraith","GLOBAL",1)~ THEN BDWYNAN KVEL-WYNAN3
~...eh?~
DO ~SetGlobal("C0KvelSoDKillWraith","GLOBAL",2)~
== C02KVELJ ~A mage's instinct alone only takes one so far.~
== BDWYNAN ~Ah. Yes, well... I am no warrior, so—*ahem* In any case...~
EXTERN BDWYNAN 25

// TALK ABOUT LOVE - AFTER SEEING CROMMUS AND CARLINE

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDLoveTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-LOVE-TALK
~They do seem to idealize eternal love on the surface. I often wonder if it is a good thing.~
= ~Perhaps one might find comfort in it, wherever they find themselves after death. Still, it seems to cause as much suffering as joy.~
DO ~SetGlobal("C0KvelSoDLoveTalk","GLOBAL",2)~
END
  + ~Global("BD_SDD124_DONE","GLOBAL",1)~ + ~Enough to drive a soul mad, it seems.~ + KVEL-LOVE-TALK-1
  + ~Global("BD_SDD124_DONE","GLOBAL",2)~ + ~It was still worth it in the end, no?~ + KVEL-LOVE-TALK-1
  + ~Global("BD_SDD124_DONE","GLOBAL",3)~ + ~Enough to drive two souls mad, it seems.~ + KVEL-LOVE-TALK-1
  ++ ~What do drow think of the concept of love?~ + KVEL-LOVE-TALK-2
  ++ ~Forget them. We've got more important things to think about.~ EXIT

CHAIN C02KVELJ KVEL-LOVE-TALK-1
~For my part, I hope never to be tied in such a way. Romantic love is rarely a stable path. Some manage to remain on it until the end. Others do not.~
= ~When it comes to drow, especially, the concept of love is... more a theory than a common experience.~
EXTERN C02KVELJ KVEL-LOVE-TALK-3

CHAIN C02KVELJ KVEL-LOVE-TALK-2
~To answer that, you would first need to find a drow who truly understood its meaning, and that is a rare thing.~
EXTERN C02KVELJ KVEL-LOVE-TALK-3

CHAIN C02KVELJ KVEL-LOVE-TALK-3
~I would not consider myself an authority in such matters. But I have seen it... how it can be wielded as a weapon. One which can make even a drow vulnerable.~
END
  ++ ~You knew a drow that was truly in love? Do tell.~ DO ~SetGlobal("C0KvelSoDJhanStory","GLOBAL",1)~ + KVEL-LOVE-TALK-4
  ++ ~Tell me the story when we have time. For now, let's move on.~ EXIT

CHAIN C02KVELJ KVEL-LOVE-TALK-4
~It is not a story I like to recall. But perhaps there is a lesson to be learned in it somewhere, much as it has eluded me. So be it.~
END
IF ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVELJ KVEL-LOVE-TALK-5A
IF ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVELJ KVEL-LOVE-TALK-5A

CHAIN C02KVELJ KVEL-LOVE-TALK-5A
~You recall Jhan Zaer'iyon, I presume? Androsz's brother, the Butcher. He was not... entirely as you saw him, once. Though he has always been had a hunger for battle, there was once a time when I believed he could have been an ally.~
EXTERN C02KVELJ KVEL-LOVE-TALK-6

CHAIN C02KVELJ KVEL-LOVE-TALK-5B
~During my life in Eryndlyn, my house had an alliance—much as that word means anything to drow—with the stronger House Zaer'iyon. I was given to them on occasion as an enforcer to perform certain dangerous tasks, and I became familiar with several of the matron mother's sons.~
= ~The secondboy, Androsz, who was a prodigy in swordsmanship, named me his rival and competed with me countless times over the years. But this tale is about his elder brother, Jhan. A bloodthirsty warrior, but for a time I believed he could be an ally, despite his instability.~
EXTERN C02KVELJ KVEL-LOVE-TALK-6

CHAIN C02KVELJ KVEL-LOVE-TALK-6
~And he once had a wife.~
END
  ++ ~"Once"?~ + KVEL-LOVE-TALK-7
  ++ ~Don't tell me you got involved with his wife somehow.~ + KVEL-LOVE-TALK-8
  ++ ~I didn't know drow put stock in marriage.~ + KVEL-LOVE-TALK-9

CHAIN C02KVELJ KVEL-LOVE-TALK-7
~It is exactly as you presume.~
EXTERN C02KVELJ KVEL-LOVE-TALK-9

CHAIN C02KVELJ KVEL-LOVE-TALK-8
~Do not be absurd. My visage draws little appeal to the average drow female, and the crime of forcing oneself upon another disgusts me. No, what happened had nothing to do with me.~
EXTERN C02KVELJ KVEL-LOVE-TALK-9

CHAIN C02KVELJ KVEL-LOVE-TALK-9
~The concept of marriage among drow varies by city, but it is usually a formality. In Eryndlyn, in particular, it is often deemed a way to exploit desirable males, or, more rarely, to draw value from drow females who are unfavored or too docile to accept the burden of priestesshood.~
= ~It is no different to a business transaction as you might know it. I know some humans of status treat it in the same way. Jhan's wife, a woman from some house of lower status than even my own, was offered to him as a way for her matron mother to gain some semblance of influence by allying with a powerful name.~
= ~I was serving as a bodyguard to the matron of House Zaer'iyon at the time, and witnessed the offer of marriage. Everyone present saw it for what it was—the girl being offered was slight of build, sickly and demure, and though not unattractive lacked any of the mature beauty most males desired from their mates. Her person was never a meaningful factor for anyone, and was but a means to an end.~
= ~At least, that is what we believed. Androsz later told me that, against expectations, Jhan held great affection for his new wife. Though he kept her isolated within their tower, he spent much time with her, cared for her when she was ill, and threatened or brutalized anyone who spoke badly of her low status or fragility.~
= ~Perhaps it was that fragility that affected Jhan somehow. He had always envied and distrusted Androsz and myself for our skill in battle, yet he would speak and train with us more often since his marriage. I began to see a potential ally in him, one worthy of trust.~
END
  ++ ~But that didn't come to pass, did it?~ + KVEL-LOVE-TALK-10
  ++ ~I assume someone killed his wife, and that ruined your relationship?~ + KVEL-LOVE-TALK-10

CHAIN C02KVELJ KVEL-LOVE-TALK-10
~Correct.~
= ~It was two years after Jhan's marriage. I had been summoned to House Zaer'iyon once again as a guard for a banquet in attendance between them and House Vin'huett, a wealthy merchant house. Jhan told us that his wife was considering taking part.~
= ~We advised him to keep her inside, both for her safety and so that her presence would not be used for some cruel joke by the Vin'huetts. He agreed. Androsz and I silently eliminated some spies without disrupting the feast, and all seemed well. We became complacent.~
= ~While the drow nobles were drunk on wine, everyone heard a spine-chilling female scream. Androsz and I were the first on the scene, and we found the body of Jhan's wife. She was thrown from the balcony of her quarters, at one of the highest points of the tower. The fall had disfigured her, but still, we recognized her. And her body was... in a horrific state that I will spare you the knowledge of knowing.~
= ~Soon, everyone of importance had arrived to the scene. Eyewitnesses ensured that myself and Androsz had a complete alibi, but the Zaer'iyon matron mother vehemently demanded the killer be found. And Jhan... he looked as though he were ready to kill everyone present, guilty or otherwise.~
END
  ++ ~So was a killer found?~ + KVEL-LOVE-TALK-11
  ++ ~How terrible. What happened next?~ + KVEL-LOVE-TALK-11

CHAIN C02KVELJ KVEL-LOVE-TALK-11
~We searched everywhere, and eventually found the elderboy of House Vin'huett trying to escape the grounds. Androsz subdued him. He carried a key for the tower that was taken from one of the servants. Both were imprisoned, and tortured into a confession.~
= ~The claim was that the elderboy had stolen a key and snuck into the girl's quarters in a drunken stupor, and threw her to her death when she refused his advances. After coming to his senses, he knew he was doomed and attempted to flee.~
END
  ++ ~And was that true?~ + KVEL-LOVE-TALK-12
  ++ ~Somehow, I doubt it was that simple.~ + KVEL-LOVE-TALK-12

CHAIN C02KVELJ KVEL-LOVE-TALK-12
~...Who knows.~
= ~Androsz and I never believed the story we were told. We had not drank a single drop throughout the feast, and the elderboy in his inebriated state would never have escaped our notice. But three days later, House Zaer'iyon declared war on House Vin'huett. The latter's house was exterminated, and House Zaer'iyon claimed all of their former wealth and connections.~
= ~Jhan led the charge. I did not take part in the invasion, but Androsz told me of it all afterwards. Of how Jhan slaughtered every member of the house he could find without mercy or hesistation, like a mad beast... and at that point, we both knew we had lost him.~
END
  ++ ~His love for his wife broke him.~ + KVEL-LOVE-TALK-13
  ++ ~So who do you think really killed his wife?~ + KVEL-LOVE-TALK-13
  ++ ~This is all too horrifying for me to listen to. Please stop it.~ + KVEL-LOVE-TALK-14

CHAIN C02KVELJ KVEL-LOVE-TALK-13
~I do not usually dwell on old matters. But I could never forgot this mystery that I had never been given the chance to resolve. Within a week of the event, House Vin'huett and its invasion was all but forgotten, and everyone had moved on, save for Jhan... and his House, now more powerful than ever.~
= ~We were never allowed to investigate further, but we have always suspected it was the plot of Androsz and Jhan's own mother, the matron... a gambit to break the growing bond of trust between us and his eldest son, as well as the perfect ploy to destroy a rival house and claim what was theirs.~
= ~And a woman, someone loved by a man who knew nothing else but violence... used and discarded as a pawn. Love can mean much to you, <CHARNAME>, and I will not tell you not to pursue it, but I hope that you will never find yourself leashed and used by it.~
EXIT

CHAIN C02KVELJ KVEL-LOVE-TALK-14
~As you wish. Just beware, <CHARNAME>. Love can mean much to you, and I will not tell you not to pursue it, but I hope that you will never find yourself leashed and used by it.~
EXIT

// POISON TALK - AFTER WAKING UP IN THE WILD

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDPoisonTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-POISON-TALK
~*cough* *cough!*... rgh... *spit*~
DO ~SetGlobal("C0KvelSoDPoisonTalk","GLOBAL",2)~
= ~If you... if you find this sight sickening... then I would prefer it if you looked away.~
END
  ++ ~What's happening? Why are you coughing blood?~ + KVEL-POISON-TALK-1
  ++ ~Are you injured from our last battle? Why didn't you say anything?~ + KVEL-POISON-TALK-1
  ++ ~Fine. I'll pretend I didn't see anything.~ + KVEL-POISON-TALK-0

CHAIN C02KVELJ KVEL-POISON-TALK-0
~...How long do I have left...? No, I said before that I would not think on it.~
= ~...Let's move.~
EXIT

CHAIN C02KVELJ KVEL-POISON-TALK-1
~A... *cough* lasting ailment. Nothing to be concerned about.~
END
  ++ ~Nothing to be concerned about? Your blood's almost pitch black!~ + KVEL-POISON-TALK-3
  ++ ~Don't take me for a fool, K'Vel. This is a symptom of poison.~ + KVEL-POISON-TALK-3
  ++ ~Whatever. Just catch up once you've recovered.~ + KVEL-POISON-TALK-0

CHAIN C02KVELJ KVEL-POISON-TALK-2
~No, my wounds have all been treated. This is only a...~
EXTERN C02KVELJ KVEL-POISON-TALK-1

CHAIN C02KVELJ KVEL-POISON-TALK-3
~...~
= ~I would ask that you not tell this to anyone, nor dwell on it, <CHARNAME>.~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~The poison you were afflicted with when you fled to the surface is still affecting you, isn't it?~ + KVEL-POISON-TALK-4
  ++ ~I can't do that. Your health is important. What if this happens again while you're in battle?~ + KVEL-POISON-TALK-5
  ++ ~Fine, just as long as this doesn't become a problem when it matters.~ + KVEL-POISON-TALK-0

CHAIN C02KVELJ KVEL-POISON-TALK-4
~...~
= ~It was... another drow, Musaj, who poisoned me a long time ago. I was always cautious for the methods of delivering poison, even preparing my own meals... until one day, one of my ingredients was replaced with a identical-looking plant.~
= ~The plant itself was not lethal, but when combined with the type of mushroom I had intended to pair the original kind with, along with the type of tea I favored... the three combines to become a slow-acting toxin... my knowledge of poisons was lacking at the time, and I was not ready.~
= ~By the time I had realized what had happened, it was far too late. I could not even find Musaj, my poisoner. I never even learned why he did it. He was always meek for a drow, and I never anticipated threat from him. Perhaps it was the matron mother of House Zaer'iyon, or even my own house, that ordered it. At this point, I don't even care to find out.~
END
  ++ ~So you just... accepted the fact that you were poisoned? You didn't even bother to find a cure?~ + KVEL-POISON-TALK-6
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~I knew I wasn't imagining it. Your health has declined since we fought Sarevok.~ + KVEL-POISON-TALK-6A

CHAIN C02KVELJ KVEL-POISON-TALK-5
~Then I suppose you will have to bury me afterwards.~
EXTERN C02KVELJ KVEL-POISON-TALK-4

CHAIN C02KVELJ KVEL-POISON-TALK-6
~"Find a cure"? Ha... haha...!~
EXTERN C02KVELJ KVEL-POISON-TALK-6B

CHAIN C02KVELJ KVEL-POISON-TALK-6A
~Yes. And as for the reason I never disclosed it...~
EXTERN C02KVELJ KVEL-POISON-TALK-6B

CHAIN C02KVELJ KVEL-POISON-TALK-6B
~<CHARNAME>, this type of poison is barely known, and over the years I have learned that it has no perfect cure. Not only that, but when I had started feeling symptoms, my only concern was to flee as discreetly as I could.~
= ~I was already barely tolerated for my competence as a fighter, and I had made many enemies over the years. Had any one of them known what had happened to me, I likely would have died by means far worse than poison.~
= ~Not that I was very successful. I was marked as a deserter, and warriors of both Zaer'iyon and Au'dayrr were already after my head not long after I had left the city. I eluded almost all of them, but I had no hope of escaping Androsz.~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~And so you had your ultimate duel with your rival...~ + KVEL-POISON-TALK-7
  ++ ~But you're still alive, haven't you? How did you survive for the last seven years with a deadly poison in your veins?~ + KVEL-POISON-TALK-9

CHAIN C02KVELJ KVEL-POISON-TALK-7
~For the first time, my battles with Androsz was one of life and death, and so I fought with all the zeal I had, which I did not before. He was... both thrilled and reluctant for the chance to properly, and fairly, take my life.~
= ~The poison had not affected my skills by much, not initially. But as our duel extended, I could feel it. Eventually, I could not withstand Androsz. He struck an incapacitating blow on me, and I was going to die.~
END
  ++ ~But he didn't kill you.~ + KVEL-POISON-TALK-8
  ++ ~Then what happened?~ + KVEL-POISON-TALK-8

CHAIN C02KVELJ KVEL-POISON-TALK-8
~Androsz realised, halfway through our duel, what had happened to me. Perhaps he could not accept such a victory, but he also could not afford to spare me, or he would lose his own life in exchange for defying his matron's orders.~
= ~I spared him the effort of deciding. I had anticipated the inevitable duel as he did, and knowing my chances of winning through prowess were slim, I had long prepared a trap meant to facilitate my escape. I used black powder I had stolen along with other alchemical compounds to cause an explosion, then used the cover of smoke and threat of a cave-in to flee.~
= ~Even then, I knew that my chances were low. I would never survive in the Underdark, and so the only path forward was the way to the surface.~
END
  ++ ~You came to the surface seven years ago. How did you survive that long while poisoned?~ + KVEL-POISON-TALK-9

CHAIN C02KVELJ KVEL-POISON-TALK-9
~This.~
END
  ++ ~Your insignia?~ + KVEL-POISON-TALK-10
  ++ ~What does that have to do with it?~ + KVEL-POISON-TALK-10

CHAIN C02KVELJ KVEL-POISON-TALK-10
~Do you think I kept this trinket at my side all these years out of sentimentality?~
= ~All noble insignias of Eryndlyn are enchanted to provide a measure of protection from poisons. Not a perfect immunity, but enough. Over the first days I spent under the sun, while my adamantite armor and weapons crumbled in the light, this carved obsidian insignia was my only possession that remained.~
= ~As long as I carried it, I was barely spared from death despite the poison spreading through my blood to every part of my body. While I wandered and sold my blade to any unscrupulous surfacer who would offer, I suffered, I lost consciousness many times, and only luck kept me alive long enough to awaken... but I survived, barely. But even that alone would not have been enough to keep me alive.~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~Then you met your previous employer for the first time.~ + KVEL-POISON-TALK-12
  ++ ~So what did?~ + KVEL-POISON-TALK-11

CHAIN C02KVELJ KVEL-POISON-TALK-11
~I researched poisons and herblore over my first two years on the surface. Though I could not cure my condition, I eventually learned how to brew concoctions to keep the worst of my symptoms at bay. I could prolong my life, though I knew it would not last.~
EXTERN C02KVELJ KVEL-POISON-TALK-12

CHAIN C02KVELJ KVEL-POISON-TALK-12
~Eventually, I traveled by a crossroad that merchants frequently passed, and the pain overtook me again. I laid down by the closest shelter and prepared myself to die. That was how Ecthel Darcourt, the foolish man, found me and saved me using a rare medicine from Waterdeep that only his wealth and privilege could afford.~
= ~Of course, even that could not truly save my life. We both knew it. Perhaps had it been two years before, there may have been a chance, but all he bought for me was some extra time, time which even to this day I do not know when it will run out.~
= ~At the time, I wished I could kill him. But I owed him a debt. And he offered me a contract to serve as his bodyguard and receive his protection for as long as he could afford it. I agreed.~
= ~Now, I am with you, and for as long as I still have my life, I will continue to find small purpose in it.~
END
  ++ ~Why not try to find a proper cure? Why give up?~ + KVEL-POISON-TALK-13
  ++ ~How long do you have left?~ + KVEL-POISON-TALK-14
  ++ ~You're not remotely afraid of dying?~ + KVEL-POISON-TALK-15

CHAIN C02KVELJ KVEL-POISON-TALK-13
~<CHARNAME>, I do not even know how much time I have left. A human's lifespan in years, if I am fortunate. Had I the desperation to live any longer, a majority of that time would be spent looking for a cure alone, and with little guarantee of success.~
EXTERN C02KVELJ KVEL-POISON-TALK-16

CHAIN C02KVELJ KVEL-POISON-TALK-14
~I cannot be certain. The pain comes irregularly, but it is more frequent nowadays than five years ago. I may only have a human lifespan's worth of time left within me, if I am fortunate.~
EXTERN C02KVELJ KVEL-POISON-TALK-16

CHAIN C02KVELJ KVEL-POISON-TALK-15
~Having no fear of death is a good way to invite it to you more quickly, <CHARNAME>. But I do not know how much time I have left, and I would rather not waste it lest it be less than I can hope for.~
EXTERN C02KVELJ KVEL-POISON-TALK-16

CHAIN C02KVELJ KVEL-POISON-TALK-16
~Do not concern yourself over my condition. I can safely say that I will live long enough to see this journey to the end, and several years after. Death will take me sooner than any elf, but anyone can face the suddenness of death.~
= ~In my remaining years, I only wish to find what peace I can. Fight for a meaningful cause, meet those whom I can fully trust, and improve upon my meals to make each day more bearable. That is enough.~
END
  ++ ~I'd still be willing to help, in any way that I can.~ + KVEL-POISON-TALK-17
  ++ ~"Meet those you can trust"? Since you're telling me all this, does that mean I count?~ + KVEL-POISON-TALK-18
  ++ ~I don't agree with your approach, but it's your decision to make.~ + KVEL-POISON-TALK-19
  ++ ~Fine. Whether you live or die is your choice. Just don't make it my problem if your affliction slows you down.~ + KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-17
~You have more than enough problems without adding mine to your plate. And why should your concern over this be greater than my own?~
EXTERN C02KVELJ KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-18
~Consider it that way, if you will. You have no need to trust in me unless you find it beneficial to. Perhaps every word I have told you is merely carefully crafted lie to garner sympathy.~
EXTERN C02KVELJ KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-19
~I do not mean to invalidate your position. Your concerns, if they are genuine, are not without reason, that much I have learned from surfacers similar to yourself.~
EXTERN C02KVELJ KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-20
~Though I hope you never find yourself in my position, <CHARNAME>, you will find that a long life for its own sake can grow tiresome. When your time is stolen from you, what is left becomes far more precious.~
= ~Now, enough of this. Though I have nothing to prove it, talking... *cough*... has, in my experience only led to more frequent occurrences of this pain.~
EXIT

// DRINK TALK - AFTER RESTING IN COALITION CAMP

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDDrinkTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-DRINK-TALK
~We are to depart? ...Not too loudly, please. *cough* *cough* My eyes are particularly sensitive this morning, as is my head.~
DO ~SetGlobal("C0KvelSoDDrinkTalk","GLOBAL",2)~
END
  ++ ~How much did you drink last night?~ + KVEL-DRINK-TALK-1
  ++ ~I'm surprised you agreed to join the drinking contest those men were holding.~ + KVEL-DRINK-TALK-2
  ++ ~You're holding together quite well, considering.~ + KVEL-DRINK-TALK-3
  ++ ~We can't wait too long. Drink some water and recover quickly so we can go.~ + KVEL-DRINK-TALK-0

CHAIN C02KVELJ KVEL-DRINK-TALK-0
~Pass me my waterskin. *gulp* Ah... not the state I would prefer to be in, but this is the best I can manage, I fear.~
= ~Enough talk. We have proper business to attend to.~
EXIT

CHAIN C02KVELJ KVEL-DRINK-TALK-1
~More than was sensible... ngh. The soldiers insisted I not walk away until the challenge was over. I know not what madness possessed me to accept.~
EXTERN C02KVELJ KVEL-DRINK-TALK-4

CHAIN C02KVELJ KVEL-DRINK-TALK-2
~I believed it an opportunity to... inst—*cough* instill trust in those I may fight alongside. It may have worked a little too well.~
EXTERN C02KVELJ KVEL-DRINK-TALK-4

CHAIN C02KVELJ KVEL-DRINK-TALK-3
~The liquors made by drow are far more potent than... ugh, than what humans drink, and I am very familiar with those. Still, even with these milder brews, I have my limits.~
EXTERN C02KVELJ KVEL-DRINK-TALK-4

CHAIN C02KVELJ KVEL-DRINK-TALK-4
~In truth, I assumed my presence there would only be brief, yet they were uncharacteristically insistent that I say. Perhaps the fact many of them were already drunk had something to do with it.~
= ~Thinking back, I had put myself in unnecessary danger, but I wished to see what kind of welcome I would receive outside the battlefield. A foolish decision, it seems.~
END
  ++ ~I don't think so. It seems you found some common ground with them.~ + KVEL-DRINK-TALK-5
  ++ ~You weren't afraid they'd take advantage of you dropping your guard?~ + KVEL-DRINK-TALK-6
  ++ ~So you drank a lot with a few soldiers, and everything's all sparkles and sunshine now?~ + KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-5
~Perhaps. It was a remarkably long time I spent sitting with them without weapons being drawn.~
EXTERN C02KVELJ KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-6
~Do you think I would not consider that? Fortunately, those that I considered potentially threatening were down on the ground long before I staggered back to my tent.~
EXTERN C02KVELJ KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-7
~Oh, I am not so foolish as to truly believe that. But I did learn some things of value... for the time that I still could remember what was happening.~
EXTERN C02KVELJ KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-8
~A strange lot, humans, especially those who walk the path of war. Things can change between men who seem mortal enemies one day, and drinking partners the next.~
= ~I suppose I can appreciate the impulsiveness that comes of a limited life, foolish as it seems. Especially as my future may not be so different.~
EXTERN C02KVELJ KVEL-DRINK-TALK-0

// FINAL TALK - LEAVE BEFORE REST

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDFinalTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-FINAL-TALK
~The war is over. I presume the celebration is to follow.~
DO ~SetGlobal("C0KvelSoDFinalTalk","GLOBAL",2)~
END
IF ~Global("C0KvelSoDAngry","GLOBAL",1)~ EXTERN C02KVELJ KVEL-FINAL-TALK-ANGRY
IF ~!Global("C0KvelSoDAngry","GLOBAL",1)~ EXTERN C02KVELJ KVEL-FINAL-TALK-HAPPY

CHAIN C02KVELJ KVEL-FINAL-TALK-ANGRY
~Do not think I have forgotten your deeds within there, however. You are fortunate we are here, where there is no way for me to kill you without reprisal.~
= ~I will take my leave of you now. If we meet again, I may sever your head from your shoulders... but I doubt I will care enough to seek you. May we never meet again.~
DO ~LeaveParty()
EscapeArea()~ EXIT

CHAIN C02KVELJ KVEL-FINAL-TALK-HAPPY
~I am a person of war and conflict. I have little interaction with peace, yet... perhaps it is not intolerable.~
END
  ++ ~Feel like getting drunk with the other soldiers again?~ + KVEL-FINAL-TALK-1
  ++ ~You're right. Time to savor the victory.~ + KVEL-FINAL-TALK-2
  ++ ~I'm not into these kinds of events either.~ + KVEL-FINAL-TALK-3
  ++ ~What will do you do now?~ + KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-1
~It is tempting. But no.~
EXTERN C02KVELJ KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-2
~I will not say it is not earned. For you, at least.~
EXTERN C02KVELJ KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-3
~Neither am I.~
EXTERN C02KVELJ KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-4
~There is a place for you here, the savior of these humans. I, however, think I will depart soon.~
END
  ++ ~What?~ + KVEL-FINAL-TALK-5
  ++ ~But you're part of the victory too.~ + KVEL-FINAL-TALK-6
  ++ ~I see. I hope you'll stay for the feast, at least.~ + KVEL-FINAL-TALK-7

CHAIN C02KVELJ KVEL-FINAL-TALK-5
~I have little interest in basking in the glory of human victories. It has never been my preference.~
= ~Perhaps this is abrupt. And I do not mean to diminish the worth of our time spent traveling together. But I am more comfortable in the shadows, as I always have been. Perhaps once all this has passed, we might meet again.~
END
  ++ ~You don't have to distance yourself like this.~ + KVEL-FINAL-TALK-8
  ++ ~I'd like that. How would I find you?~ + KVEL-FINAL-TALK-9
  ++ ~Very well. Thank you for your service, then.~ + KVEL-FINAL-TALK-9

CHAIN C02KVELJ KVEL-FINAL-TALK-6
~I am not unaware of that. But the people hope to see you in the moment. It is perhaps preferable if they see less of me.~
EXTERN C02KVELJ KVEL-FINAL-TALK-5

CHAIN C02KVELJ KVEL-FINAL-TALK-7
~No, I intend to leave soon, once the crowd has dispersed.~
EXTERN C02KVELJ KVEL-FINAL-TALK-5

CHAIN C02KVELJ KVEL-FINAL-TALK-8
~It is not a matter of discomfort. This is just my way, and I prefer it such. Do not feel you need to include me in matters that I am only a small part of.~
EXTERN C02KVELJ KVEL-FINAL-TALK-9

CHAIN C02KVELJ KVEL-FINAL-TALK-9
~This has been the first time I have served under a capacity more than a simple contract. It has... not been a poor experience, all things considered. I would not be opposed to working together with you once more, should the need arise.~
DO ~GiveItemCreate("C02KVM01",Player1,1,0,0)~
= ~When that time comes, deliver this coin to any tavern proprietor within the Sword Coast, or even as far as Amn. Its origins are elaborate, and I will spare you the boredom of its story at this moment.~
= ~Should I be within its borders, as I most likely will be, it will reach me in time. And I will know to find you.~
= ~And so, our association reaches its end for now, <CHARNAME>. But I expect we will see each other again sooner than we expect. May you live well, and... aluve.~
DO ~LeaveParty()
EscapeArea()~ EXIT