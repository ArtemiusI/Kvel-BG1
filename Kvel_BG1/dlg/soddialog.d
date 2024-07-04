BEGIN C02KVM01

CHAIN IF WEIGHT #-1 ~!Gender(Player1,FEMALE)
Global("C0KvelSoDQuest","GLOBAL",1)~ THEN C02KVM01 QUEST
~You there! Excuse me, young man. Do you perhaps know if this is the camp of the coalition army?~
DO ~SetGlobal("C0KvelSoDQuest","GLOBAL",2)~ EXTERN C02KVM01 QUEST-1

CHAIN IF WEIGHT #-1 ~Gender(Player1,FEMALE)
Global("C0KvelSoDQuest","GLOBAL",1)~ THEN C02KVM01 QUEST
~You there! Excuse me, young lady. Do you perhaps know if this is the camp of the coalition army?~
DO ~SetGlobal("C0KvelSoDQuest","GLOBAL",2)~ EXTERN C02KVM01 QUEST-1

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KvelSoDQuest","GLOBAL",1)~ THEN C02KVM01 QUEST
~Forgive me, but as you can see, the conditions of these soldiers is truly terrible. Unless you are of even worse health, I cannot spare anything for you right now.~
END
IF ~InParty("C0Kvel")
See("C0Kvel")
!GlobalGT("C0KvelSoDQuest","GLOBAL",2)~ + QUEST-6
IF ~OR(3)
!InParty("C0Kvel")
!See("C0Kvel")
GlobalGT("C0KvelSoDQuest","GLOBAL",2)~ EXIT

CHAIN C02KVM01 QUEST-1
~I've ridden all the way from Waterdeep, and I'm afraid I've gotten quite turned around. Old age does that to a person, you see.~
END
  ++ ~Yes, this is the place. Who might you be?~ + QUEST-2
  ++ ~Who is asking? I can't allow just anyone to enter the camp.~ + QUEST-3
  ++ ~What other war camp do you expect to find out here?~ + QUEST-4

CHAIN C02KVM01 QUEST-2
~Ablemarle, humble servant of Oghma, here to serve as a healer for the impending war. This is my identification, co-signed by the Open Lord and Most High Loremaster of the Font of Knowledge, if you'd care to see it.~
END
  ++ ~This looks right, but you should seek out the leaders of the coalition and show them too.~ + QUEST-5
  ++ ~I'm not in charge of this sort of thing. You should go and find the commanders instead.~ + QUEST-5
  ++ ~Don't shake those papers at me, old man, it's not my job to check visitors to this place.~ + QUEST-4

CHAIN C02KVM01 QUEST-3
~A fair query, of course. Let me see, hm, where did I put my documents...~
EXTERN C02KVM01 QUEST-2

CHAIN C02KVM01 QUEST-4
~Hmph! The attitude of youngsters these days. Well, from your response I'd assume I'm in the right place, so I will spare you the lecture this time and be on my way. I am sure this place has great need of a healer, and it will only become moreso as the war rages on.~
END
IF ~InParty("C0Kvel")~ EXTERN C02KVM01 QUEST-6
IF ~OR(2)
!InParty("C0Kvel")
!See("C0Kvel")~ DO ~MoveToPoint([621.1647])~ EXIT

CHAIN C02KVM01 QUEST-5
~Yes of course. Fie, that old men like me who should be spending my twilight years reading books by the fire must still find ourselves involved in conflict. Thank you for your assistance. I should be able to find my own way from here.~
END
IF ~InParty("C0Kvel")
See("C0Kvel")~ EXTERN C02KVM01 QUEST-6
IF ~OR(2)
!InParty("C0Kvel")
!See("C0Kvel")~ DO ~MoveToPoint([621.1647])~ EXIT

CHAIN C02KVM01 QUEST-6
~Wait a minute. Wait just one solitary minute. Your companion in the back, I think he looks familiar.~
DO ~SetGlobal("C0KvelSoDQuest","GLOBAL",3)~
== C02KVELJ ~*sigh* I was hoping this would not happen.~
== C02KVM01 ~A—aaaahh! You, you're...~
END
  ++ ~Don't be alarmed, sir. He may be drow, but he's on our side.~ EXTERN C02KVELJ QUEST-7
  ++ ~I suppose that's the expected response to seeing a drow walking freely in the camp.~ EXTERN C02KVELJ QUEST-7
  ++ ~Can you just get out of our way now, old man?~ EXTERN C02KVELJ QUEST-7

CHAIN C02KVELJ QUEST-7
~Forget it, <CHARNAME>. Let this old man say his piece.~
== C02KVM01 ~You're that drow from years ago... K... K-V... blast it, what was the name again?~
== C02KVELJ ~...K'Velarin.~
== C02KVM01 ~That's it, that's the one! Ecthel's bodyguard. I heard you weren't following him anymore. So this is where you are now!~
END
  ++ ~The two of you know each other?~ EXTERN C02KVM01 QUEST-8

CHAIN C02KVM01 QUEST-8
~I am the grand-uncle of this one's friend, Ecthel Darcourt. I may have given up my family name when I first entered the church of Oghma, but the boy has always been dear to me. And... he was the one who brought this drow to me, five years ago.~
== C02KVELJ ~This was... soon after my first meeting with Ecthel, my previous employer. I was in a poor state then, and was in no position to resist.~
== C02KVM01 ~Hmph! 'At death's door' might be a more accurate way to say it. Poison, one most terrible and never before seen, ran through this man's blood. You would not recognize him as he was then, horribly emaciated and pale as he was. As a matter of fact, I would not have blamed anyone for thinking he was already dead.~
== C02KVM01 ~Ecthel pleaded with me to save his life if I could. The silly, compassionate boy... well, I suppose I am little different. I did not need much convincing when seeing a life in need, and so I brought the library's most rare and valuable Rejuvenescence Roborant from our deepest vault. The compensation the Most Holy demanded for that, let me tell you! I will be carrying that debt for my remaining lifetime!~
== C02KVELJ ~Get to the point. I know better than to stop you with any method save for an excessive force to the head, but we have little time to waste.~
== C02KVM01 ~That terrible attitude you hold still has not changed, I see. He was like this when he finally awakened, going on about how he had no wish to be indebted, and so on... it took Ecthel negotiating a contract with this drow before he finally agreed to stay instead of wandering off in a half-restored state.~
== C02KVM01 ~Of course, the two left the monastery sooner than I wished it. I always knew K'Velarin here still suffered the remnants of whatever poison nearly killed him within his body. The restorative was given far too late, and by that point every vital organ in his body had been affected. I insisted that he stay and undergo further treatment, but the High Loremaster refused. And so did the drow himself.~
== C02KVM01 ~*sigh* I can see as well from your current state that you've made little effort to try and seek a proper cure over the years. The discoloration of your veins is visible even on your dark skin, your schlera are an unnatural hue, and the scars on your face have clearly not healed as they should. Do you seek death that badly, you foolish man?~
== C02KVELJ ~If there is no cure, then I see little purpose in wasting my time in what few years I have left.~
== C02KVM01 ~And who said there is no cure?~
== C02KVELJ ~You have never found one. And I can see from your expression that it holds true to this day.~
== C02KVM01 ~...~
== C02KVELJ ~I believe my point is made.~
== C02KVM01 ~...My shame is endless.~
== C02KVM01 ~I have tried. The prospect of an unsolved problem eats away at this aged mind. But it may, indeed, be impossible to fully cure such a long-suffered poison. You are correct, you do not have many years left, K'Velarin, and I hope you spend what is left most wisely.~
== C02KVELJ ~I do not need you to tell me that.~
== C02KVM01 ~Very well, then. I believe I should go now and focus my efforts on men who still have some hope, and less indifference. Excuse me.~
END
  ++ ~Please wait. Are you certain there is no cure?~ EXTERN C02KVELJ QUEST-9
  ++ ~I'll let you go, then.~ EXTERN C02KVM01 QUEST-10

CHAIN C02KVELJ QUEST-9
~Stop, <CHARNAME>. You do not want him to start considering it, or he will do it to no end.~
== C02KVM01 ~I am old, I may do as I please! Truly, I have considered every possibility. Even the nature of his poison itself is not fully clear, which makes the prospect of a true antidote, especially one administered so late, difficult if not impossible...~
== C02KVM01 ~Well, I can only think of one potential option. The Tear of Elysium, a rare elixir rumored to be made of sap harvested from Yggdrasil, the World Tree itself, in the Outer Planes...~
== C02KVM01 ~Only three have ever been known to be in the Prime, one of which was used to cure King Azoun III of Cormyr from a fatal ailment... but even then, unless every myth told of its properties is true and not embellished, it may be a gamble at best.~
== C02KVM01 ~The location of the first remaining one is not recorded even in all the tomes in the Font of Knowledge... the second one, however, rumor has it... where was it...~
== C02KVELJ ~This is a waste of time.~
== C02KVM01 ~Where was it again... the land of the elves, perhaps...? No, not Evereska... it should have been closer... AH!~
END
  ++ ~What? What is the surprise?~ EXTERN C02KVM01 QUEST-11
  ++ ~Hurry up and tell me already!~ EXTERN C02KVM01 QUEST-11

CHAIN C02KVM01 QUEST-10
~Well, you'll have to excuse me in any case. There is much work to do, while these hands may work still.~
DO ~MoveToPoint([621.1647])~ EXIT

CHAIN C02KVM01 QUEST-11
~You would not believe this. Unless my memory is hopelessly muddled, it was last seen in Dragonspear Castle itself!~
DO ~SetGlobal("C0KvelSoDKnowsTear","GLOBAL",1)~
== C02KVELJ ~That is ridiculous.~
== C02KVM01 ~Ridiculous, or the hands of fate at work? Indeed, it was remembered to be a priceless artifact kept by Daeros Dragonspear, and kept with his most valued treasures.~
END
  ++ ~You're certain of this?~ EXTERN C02KVM01 QUEST-12
  ++ ~Well, looks like there's hope for you after all, K'Vel.~ EXTERN C02KVELJ QUEST-13

CHAIN C02KVM01 QUEST-12
~Yes, positively. I may be old, but I can count on my years spent as a loremaster for the monastery to say, what I remember is exactly as it was written. Whether it is true, of its presence and its potency, is still up for debate. But it is very possible.~
EXTERN C02KVELJ QUEST-13

CHAIN C02KVELJ QUEST-13
~I doubt it. Legends always make their contents seem more impressive than they truly are.~
== C02KVM01 ~That, I cannot deny. Whether it saves your life in the long run even should you find it cannot be said for certain. But there can be no doubt that it is a powerful item of healing, and thus you should not give up hope regardless, no?~
== C02KVELJ ~Even if that were the case, Dragonspear Castle is currently held by the crusade. We would not find it easily, assuming it has not already been found and used by the enemy.~
== C02KVM01 ~That, too, is certainly true. But I have given the knowledge to you, and what you choose to do with it is your decision.~
EXTERN C02KVM01 QUEST-10
