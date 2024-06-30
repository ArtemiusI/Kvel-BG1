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
== C02ANDRO ~Please, take this. I believe it is a symbol of identification for these crusaders. I have no use for it, but if you wish to infiltrate their ranks, it will no doubt prove useful.~
DO ~GiveItemCreate("BDMISC04",Player1,1,0,0)~ 
== C02ANDRO ~Now then, I must be gone. Best of luck to you in this war that is to come.~
END
  + ~InParty("C0Kvel")~ + ~Wait, Androsz. Would you be interested in helping us?~ EXTERN C02KVELJ KVEL-ANDROSZ3-JOIN

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
~Ha! For most drow, courtesy would only make you less trustworthy. Still, I understand honest exchange of it is expected on the surface.~
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
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~Oh, come now. It's an ugly thing certainly, none too comfortable, and not suitable for my fighting style. I respect you for enduring it for as long as you undoubtedly did. Still, I can see the benefits. Even the glare of the sun is not as blinding.~
== C02ANDRO ~Finding my way into the camp was none too difficult. Even with my features hidden, it merely took some knowledge of you, the Hero of Baldur's Gate, to allow me a tentative amount of freedom. I have no doubt I am still under watch, of course, but as long as I do not make my intentions suspicious, I should have no cause for concern.~
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
ApplySpellRES("C02KVSP3",Player3)
ApplySpellRES("C02KVSP4",Player4)
ApplySpellRES("C02KVSP5",Player5)
ApplySpellRES("C02KVSP6",Player6)
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
~I look forward to our opportunity to fight together, abbil.~
EXIT

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

// HESTER

EXTEND_TOP BDHESTER 6 #3
+ ~InParty("C0Kvel")~ + ~K'Vel, it seems like you have a thought on this.~ EXTERN C02KVELJ KVEL-HESTER
END

EXTEND_TOP BDHESTER 7 #3
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

// TRISTIAN

EXTEND_BOTTOM BDTRISTI 14
+ ~InParty("C0Kvel")~ + ~K'Vel.~ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)~ EXTERN C02KVELJ KVEL-TRISTIAN
END

CHAIN C02KVELJ KVEL-TRISTIAN
~So be it. I will treat this as a typical game of sava.~
EXTERN BDTRISTI 15