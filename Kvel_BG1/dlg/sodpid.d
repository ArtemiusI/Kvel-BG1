CHAIN IF ~IsGabber(Player1)~ THEN C02KVELJ PID
~Speak, but make it meaningful.~
END
  ++ ~Can I ask you some questions?~ + PID-ASK
  ++ ~Something's wrong with your voice.~ + PID-STRINGFIX
  ++ ~Nothing right now.~ EXIT

CHAIN C02KVELJ PID-ASK
~As you wish.~
END
  + ~Global("C0KvelSoDAndroszAlly","GLOBAL",1)
     Global("C0KvelSoDAndroszTalk","GLOBAL",0)~ + ~What do you think of fighting alongside Androsz again?~ DO ~IncrementGlobal("C0KvelSoDAndroszTalk","GLOBAL",1)~ + PID-SOD-ANDROSZ
//  + ~Global("C0KvelSoDAndroszSpar","GLOBAL",4)
//     Global("C0KvelSoDAndroszSparTalk","GLOBAL",0)~ + ~What did you think of my duel with Androsz?~ DO ~IncrementGlobal("C0KvelSoDAndroszSparTalk","GLOBAL",1)~ + PID-SOD-ANDROSZ-SPAR
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDRevenge","GLOBAL",0)~ + ~So you see no hope for a cure to your condition. Have you considered revenge?~ DO ~IncrementGlobal("C0KvelSoDRevenge","GLOBAL",1)~ + PID-SOD-REVENGE
  ++ ~Never mind. I don't have anything to ask.~ EXIT

CHAIN C02KVELJ PID-SOD-ANDROSZ
~It was a prudent decision. Androsz will make a difference when the opposing forces meet each other.~
END
  ++ ~Yes, but what do you think? He's your old rival.~ + PID-SOD-ANDROSZ-1
  ++ ~Fair enough.~ + PID-SOD-ANDROSZ-2

CHAIN C02KVELJ PID-SOD-ANDROSZ-1
~The rivalry was always a means to an end. Androsz will not admit it, but I have always stood to gain from our former bond. For him, I was a means of sharpening his blade, while I saw him as my benefactor in surviving in a dangerous realm.~
= ~Androsz has beauty and talent, which makes him privileged. I was gifted with nothing but my innate strength. Had I no one with incentive to see me alive, I would never have lived long in Eryndlyn.~
= ~Now, relying on him is no longer necessary. He may pursue me for his own desire for challenge, but I have neither the power nor the desire to indulge him.~
EXTERN C02KVELJ PID-SOD-ANDROSZ-2

CHAIN C02KVELJ PID-SOD-ANDROSZ-2
~Still, persuading Androsz to fight for another's cause is impressive enough. He has always acted purely on his own whim. Perhaps it is something within you that he finds fascinating.~
EXIT

CHAIN C02KVELJ PID-SOD-REVENGE
~And who do you think I should take my revenge on?~
= ~The person who prepared the poison died by another's hand. Should I avenge myself on a suspicion that Matron Zaer'iyon gave the order? My own mother, matron of House Au'dayrr?~
= ~Perhaps they could have both been responsible, for all I know. And perhaps Eryndlyn and the world would be better without them. I may even be able to accomplish the absurd task of killing them both, had I the time and resources to plan. I have the knowledge of them, their homes, and their weaknesses. It would be not impossible.~
= ~Even then, what really could I hope to do? Can I save anyone? Can I slay the perennial cycle of hatred and madness of the drow that inflicted this poison upon me? There are thousands of drow like myself, <CHARNAME>. The only difference was that I was blessed with the ability to live.~
= ~And I intend to make however much use of that gift as I can. Let the drow continue as they are, until one, or two, or a hundred even, with the will and the way to change them arrives upon this realm one day. That is their part to play. Not mine.~
EXIT

CHAIN C02KVELJ PID-STRINGFIX
~A coldpine drop will fix that easily enough.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVFIX")~ EXIT