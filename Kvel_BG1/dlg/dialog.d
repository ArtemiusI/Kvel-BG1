BEGIN C0KVDR01
BEGIN C0KVDR02
BEGIN C0KVDR03

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",1)~ THEN C0KVDR02 KVEL-EVENT
~And so the iblith finally sees fit to drag his carcass to meet his betters.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",2)~
== C0KVDR03 ~I am surprised that he chose to come at all.~
DO ~StartCutSceneMode()
ActionOverride("C0KVDR01",MoveToPoint([1108.2930])
ActionOverride("C0KVDR01",Wait(1))
ActionOverride("C0KVDR01",MoveToPoint([1124.2930])
ActionOverride("C0KVDR03",Face(E))
ActionOverride("C0KVDR01",Face(W))
ActionOverride("C0KVDR01",Wait(4))
ActionOverride("C0KVDR01",StartDialogNoSet(Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",2)~ THEN C0KVDR01 KVEL-EVENT-2
~Androsz. J–Jhan...~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",3)~
== C0KVDR02 ~Finally finished licking your wounds after your humiliating failure, Musaj?~
== C0KVDR03 ~Being struck by K'Velarin and living to tell the tale is hardly a source of shame.~
== C0KVDR02 ~He is no longer K'Velarin. He is... whatever the surface dogs prefer to call him now. He is barely worthy of a drow name.~
== C0KVDR03 ~Perhaps, perhaps not. What do you think, Musaj, after facing him?~
== C0KVDR01 ~...! H... he....~
== C0KVDR02 ~Speak, or I will presume you have no use for your tongue.~
== C0KVDR01 ~He is... strong, still. But different. Enough so that I almost mistook him. I could sense little killing intent as he fought against me.~
== C0KVDR03 ~Yet you returned with a near-fatal injury, the scars of which I can still clearly see. Did he feel his life was threatened?~
== C0KVDR01 ~No, not his life. I was curious. I made an attempt for the human he protects, and he took the blow. It shattered half of his helmet. Only then did he strike back with ferocity.~
== C0KVDR02 ~Risking his life for a surfacer? He has fallen far from what he once was, if so.~
== C0KVDR03 ~Hmm... has he truly...?~
== C0KVDR03 ~You said you shattered his helmet, Musaj? In front of other surfacers?~
== C0KVDR01 ~Y–yes, Androsz. Though only a portion of his face was exposed, some of the humans must have seen it. I believe he has associated with the one whom the Iron Throne seeks to eliminate as a result, to ensure his own safety.~
== C0KVDR03 ~Then the pieces have been set on the board. His path will intertwine with ours, whether or not he wishes it.~
== C0KVDR03 ~You have played your part well, Musaj. Go and treat your wounds properly.~
== C0KVDR01 ~I... I can?~
== C0KVDR03 ~You do not trust me?~
== C0KVDR01 ~...~
== C0KVDR01 ~I—I will go now.~
== C0KVDR02 ~Musaj.~
== C0KVDR01 ~Jhan? What are you...~
DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutScene("C0KVC07")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",3)~ THEN C0KVDR03 KVEL-EVENT-3
~For what purpose did that serve? He was still of more use alive than dead.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",4)~
== C0KVDR02 ~He is weak and a failure. None shall mourn his loss.~
== C0KVDR03 ~Nor will anyone celebrate his death, perhaps save for you, with your simple mind and its bestial craving for slaughter! Do you think of nothing else?~
== C0KVDR02 ~Watch your words, Androsz. Your position allows you many privileges, but you should still know your place. Do you not begrudge him for what he did to your previous rival? His poison, which forever damned K'Velarin Au'dayrr to become a broken man? This pitiful wretch is at fault, in case you have forgotten.~
== C0KVDR03 ~And this gives you the right to kill him?~
== C0KVDR02 ~This weapon in my hand gives me the right to kill him. As would yours—you were merely too slow to strike.~
== C0KVDR03 ~...~
== C0KVDR03 ~Sometimes I wonder if K'Velarin had the right of it.~
== C0KVDR02 ~The priestesses would have your tongue for that, if not worse.~
== C0KVDR03 ~And who would claim that I said such words? I see only one drow before me, though within the next few minutes, it may be none.~
== C0KVDR02 ~You threaten me, Androsz?!~
== C0KVDR03 ~Perhaps. Shall we test my blades against your beloved halberd and see who comes out the better, the secondboy or the elderboy? The wager is life—the gamble yours to take.~
== C0KVDR02 ~...~
== C0KVDR02 ~The matron mother will not look kindly to the survivor, no matter who it may be. You... are still the favored weapons master, for now.~
== C0KVDR02 ~Consider your life spared—though K'Velarin and those he calls allies will not receive the same mercy.~
== C0KVDR03 ~If you intend to face K'Velarin and the Bhaalspawn <CHARNAME>, brother, then I truly to the bottom of my heart pity you.~
== C0KVDR02 ~Years ago, I would have feared him. Now, he is less than nothing. He is barely worthy of being slain by this hand, but it will take his life regardless.~
== C0KVDR02 ~As for the godchild, <PRO_HESHE> is a footnote, no more worthy of recognition than a common <PRO_RACE>.~
== C0KVDR03 ~So be it. Go, then. Sate your thirst for traitors' blood.~
DO ~StartCutSceneMode()
Wait(2)
ActionOverride("C0KVDR02",EscapeArea())
Wait(5)
Face(SW)
Wait(2)
StartDialogNoSet(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",4)~ THEN C0KVDR03 KVEL-EVENT-4
~Ah, K'Vel... I dare not hope that you might spare my fool of a brother. Perhaps, if he were better able to restrain his vices, but if so he would not be Jhan Zaer'iyon.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",5)~
== C0KVDR03 ~If Jhan succeeds, and both you and <CHARNAME> lose your lives in the end... well, that will be the end of it. Otherwise... I hope we will meet soon, so that my blades might finally meet their match again.~
== C0KVDR03 ~The possibility is slight, but... I have precious little to anticipate these days. May you live, my old friend, if only for a little longer.~
DO ~StartCutSceneMode()
StartCutScene("C0KVC08")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",6)~ THEN C0KVDR02 KVEL-EVENT-6
~So we finally meet, <CHARNAME> the godchild. And... K'Velarin. It's been a long time.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",7)~
== C0KVELJ ~Jhan.~
== C0KVDR02 ~Quite. I see your eyes have recovered, though your body is still weak.~
== C0KVELJ ~Hmph. The surfacers have always considered me stouter than they expect. To be regarded as 'weak' is oddly refreshing.~
== C0KVDR02 ~You never could change, K'Velarin. With my prestige as the Butcher of Zaer'iyon, I inspired terror by my existence, in all drow who opposed our noble house, male and female... except you and Androsz. No matter what I did, I could never command your fear, nor your respect.~
== C0KVELJ ~It must be terribly grating upon your pride. Even now, when I am undoubtedly no match for you, physically, I still do not fear you.~
== C0KVDR02 ~Your arrogance has always been your most despisable element, K'Velarin! The houseless, graceless drow with no ambition... were it not for Androsz, you would have died long before anyone knew your name.~
== C0KVELJ ~This is true. You know this. That does not make you special. The matron mothers knew. Perhaps all drow of Eryndlyn knew. And yet, I survived all those years. Until I died.~
== C0KVDR02 ~A pity Musaj's poison did not kill you fully.~
== C0KVELJ ~And here you are to end the tale, by claiming my head. You have not changed, Jhan. No doubt once I am dead, you—drunk on your glory—will challenge Androsz, and you will meet your end at his hands.~
== C0KVELJ ~Except you will not defeat me. Nor will my allies fall before you.~
== C0KVDR02 ~This weak <PRO_RACE> is your backbone now? Then it will make it even more pleasing to crush it before ending you.~
== C0KVELJ ~You underestimate the strength of surfacers. Perhaps you should turn away and live here for a few years, as I have. It may change you.~
== C0KVELJ ~Though you have grown in one respect. The matron mother of House Zaer'iyon is pragmatic, but you have always had the typical drow pride. I never thought you would deign to work with surfacers for any cause.~
== C0KVDR02 ~The Iron Throne was a useful tool to obfuscate our presence on the surface, but we cared little for their greedy merchants' goals. Sarevok is more fascinating, but ultimately, I have come for one purpose. To take the life of K'Velarin, though the blood of a godspawn will also please me.~
END
  ++ ~Are you done talking already, drow?~ EXTERN C0KVELJ KVEL-EVENT-6-1
  ++ ~It'll be your blood that spills.~ EXTERN C0KVDR02 KVEL-EVENT-6-2
  ++ ~I don't suppose we can talk this out?~ EXTERN C0KVELJ KVEL-EVENT-6-3
  ++ ~K'Vel, are you ready to fight?~ EXTERN C0KVELJ KVEL-EVENT-6-4

CHAIN C0KVELJ KVEL-EVENT-6-1
~Which one? I do hope you mean the loudmouth before us.~
== C0KVDR02 ~Ah, your former wit. I had missed it, briefly. And immediately killed the feeling.~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVDR02 KVEL-EVENT-6-2
~A challenge. Good. This impending slaughter may be a worthy one yet.~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVELJ KVEL-EVENT-6-3
~Ask him. Truth be told, I was merely responding to his rage out of obligation.~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVELJ KVEL-EVENT-6-4
~I am prepared, but not out of hatred of my opponent. Truth be told, I see this coming battle as tiresome and unnecessary.~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVDR02 KVEL-EVENT-6-5
~You are wrong in one respect, K'Velarin. In your pitiful state, a victory here will be of no glory. But by breaking you, I will also have my victory against Androsz.~
== C0KVDR02 ~Ultimately, however, I will still savor the chance to make sure you drown in your own blood.~
DO ~ActionOverride("C0KVDR04",Enemy())
ActionOverride("C0KVDR05",Enemy())
Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",8)~ THEN C0KVELJ KVEL-EVENT
~His gluttony for blood was always his flaw. And he has died an arrogant fool, too confident in his superiority to see it.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",9)~
= ~That was Jhan Zaer'iyon. He was the elderboy of House Zaer'iyon, of which the assassin we encountered previously, Musaj, also served.~
END
  ++ ~Your brothers?~ + KVEL-EVENT-1
  ++ ~I assume that settles your own matters, then.~ + KVEL-EVENT-2
  ++ ~Are there any others where he came from?~ + KVEL-EVENT-3
  ++ ~And?~ + KVEL-EVENT-4

CHAIN C0KVELJ KVEL-EVENT-1
~An easy mistake to make, but no. My house was Au'dayrr. House Zaer'iyon is that of my rival, though not the one we just slew.~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-2
~No, not yet. Jhan is nothing compared to the true threat. The threat closer than you might think.~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-3
~Yes.~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-4
~And... he has another brother. The most dangerous one of all.~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-5
~...Show yourself, Androsz. I know you were watching.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC10")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",9)~ THEN C0KVDR03 KVEL-EVENT-9
~K'Velarin, my old friend. Well fought. Splendidly, even. I see the years have taken much of your strength, but little of your skill.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",10)~
== C0KVELJ ~Splendid, Androsz? The one who lies dead before you is your elder brother.~
== C0KVDR03 ~Come now, K'Vel. Since when has any drow allowed something so trivial as blood relation have a place in our decisions?~
== C0KVELJ ~Of other drow, I may believe that. But not you. You do not enjoy seeing drow blood being needlessly shed, not like your elder brother. Unless you are no longer the Androsz Zaer'iyon I knew.~
== C0KVDR03 ~You know Androsz Zaer'iyon well. Your words ring true, naturally.~
== C0KVDR03 ~...Musaj is dead. At his hand. Even if I had any regrets, Jhan brought his fate upon himself.~
== C0KVELJ ~I see.~
== C0KVDR03 ~No celebration or resentment? It was by his poisonous hand that you lost your former vigour. I would not even blame you if you sought revenge.~
== C0KVELJ ~You should also know me better than that.~
== C0KVDR03 ~Well, you may be right. But the years do change a man, even the only drow I call my worthy rival. From one of the greatest swordsman of Eryndlyn to a scavenger, using whatever skills he can learn to survive, ultimately becoming a sellsword to surface merchants...~
== C0KVELJ ~My present situation must be disappointing to you, or a ripe subject for mockery.~
== C0KVDR03 ~Not at all. I am relieved you have survived, no matter the means. My only disappointment is that survival is the only purpose you have embraced for these past few years.~
== C0KVDR03 ~Unless I am wrong. Perhaps you are still the K'Velarin Au'dayrr who could match blades with me? Show me, old friend. Dance with me once more.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC11")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",10)~ THEN C0KVDR03 KVEL-EVENT-10
~Excellent, abbil, very good indeed... 'twould be even better if you still wielded your old sword, but this is more than I could've hoped for.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",11)~
== C0KVELJ ~I do not fight to please you, Androsz, not anymore. You had best prepare for my next assault, lest you lose your swordarm or your head.~
== C0KVDR03 ~Very well. Again, my friend!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC12")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",11)~ THEN C0KVDR03 KVEL-EVENT-11
~A mutual wound, I see. My blade cut deeper, yet your endurance has always been greater. I suppose that makes us even.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",12)~
== C0KVELJ ~You have already defeated me once, Androsz. You cannot have forgotten.~
== C0KVDR03 ~No... no, that was no victory. I will never accept that farce as your skill at its apex.~
== C0KVELJ ~It will be the closest to a fair fight I can ever offer you henceforth.~
== C0KVDR03 ~...Tell me, K'Velarin. Why do you now care so little for our rivalry?~
== C0KVELJ ~Because it no longer matters. I will never become what you hope to see again.~
== C0KVELJ ~I have spent the past years merely trying to survive, while you have continued your efforts to hone your skills to the opus. There is no denying that I am no match for you as I am now, Androsz. The way I see it, if we are to continue this duel, we both lose.~
== C0KVDR03 ~"Both"? What do you...~
== C0KVDR03 ~...ah. You poisoned your blade? Played upon my expectations of who you once were? Ne'kalsa, K'Vel. Very devious.~
== C0KVELJ ~'Devious' is an overstatement. I am not Musaj. I cannot do to you what was done to me.~
== C0KVELJ ~If you seek treatment, there will be no lasting harm. Should you continue to exert yourself in battle... I would not be optimistic about your chances of indulging in any more battles in the future.~
== C0KVDR03 ~Hahaha... very well. I concede this time, though I hope neither of us consider this a true defeat.~
== C0KVDR03 ~To be truthful, I am satisfied, K'Vel. I thought the years would have eroded away the man you were, and my respect with it... but while your blade is tainted with rust, in other respects, you have become most 'interesting'.~
== C0KVELJ ~I fear I will still disappoint you regardless... this rust will not clear away easily, nor do I still have the desire to indulge your need for competition. The old days are over.~
== C0KVDR03 ~Are they truly? I am not so certain. In any case, though, I will depart for now, and give you time. Ah, and I should take the body of my foolish brother as well.~
== C0KVDR03 ~Insignificant though he may be, the matron mother will still be displeased if the whereabouts of the house's elderboy is unaccounted for.~
== C0KVDR03 ~As for you, <CHARNAME> the Bhaalspawn... I think you know where the path ahead of you leads. Truth be told, Sarevok extended an inviting arm towards me, giving me a chance to properly square off against you and K'Velarin both.~
== C0KVDR03 ~It was a tempting offer, but I think I ultimately have no interest in these petty struggles for power, nor of what your half-brother desires. Though for the sake of my rival, I... do not hope that you lose.~
== C0KVDR03 ~Xundus ultrinnan, abbil. Androsz Zaer'iyon bids you farewell.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC13")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",12)~ THEN C0KVELJ KVEL-EVENT-12
~Don't worry. He won't come back.~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",13)~
END
  ++ ~Are you sure? If Sarevok truly invited him...~ EXTERN C0KVELJ KVEL-EVENT-12-1
  ++ ~Why did we just let him go?~ EXTERN C0KVELJ KVEL-EVENT-12-2
  ++ ~Did you really poison him?~ EXTERN C0KVELJ KVEL-EVENT-12-2
  ++ ~Your relationship doesn't seem all that bad.~ EXTERN C0KVELJ KVEL-EVENT-12-3
  ++ ~Right. Let's go.~ EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-12-1
~Androsz has not changed much as I knew him. If he says he has washed his hand of this affair, then he has. Consider us both fortunate that he chose this and not the alternative.~
EXTERN C0KVELJ KVEL-EVENT-12-4

CHAIN C0KVELJ KVEL-EVENT-12-2
~If you need to hear the truth, my words were half a bluff. If Androsz had any true killing intent, we would both be dead long before my poison even had a chance to act.~
EXTERN C0KVELJ KVEL-EVENT-12-4

CHAIN C0KVELJ KVEL-EVENT-12-3
~We were... only ever half enemies, if at that. In the Underdark, you must ultimately depend on yourself, but one whom you can fully trust to hope you continue to live, whatever the reason, is an invaluable asset.~
EXTERN C0KVELJ KVEL-EVENT-12-5

CHAIN C0KVELJ KVEL-EVENT-12-4
~I could tell just from briefly trading blows that his swordsmanship has improved extraordinarily from the days we called each other rivals. To say he may even be on par with Drizzt Do'Urden at the same age, if not better, would not be inconceivable.~
== C0KVELJ ~Perhaps he knew that. And he willingly conceded to spare me, under some hope I might properly challenge him again one day. Or perhaps it is you he now considers his rival now. Regardless...~
EXTERN C0KVELJ KVEL-EVENT-12-5

CHAIN C0KVELJ KVEL-EVENT-12-5
~Your true enemy awaits you, <CHARNAME>. Take what you wish of these dead drow, though remember that they will not last once they see the sun. If you see a use for them, it will be in the battle ahead.~
EXIT