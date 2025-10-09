CHAIN IF ~IsGabber(Player1)~ THEN C02KVELJ PID
~Speak, but make it meaningful.~
END
  ++ ~Can I ask you some questions?~ + PID-ASK
  ++ ~Something's wrong with your voice.~ + PID-STRINGFIX
  ++ ~Nothing right now.~ EXIT

CHAIN C02KVELJ PID-ASK
~As you wish.~
END
  + ~Global("C0KvelSoDTrainedRecruits","GLOBAL",1)
     Global("C0KvelSoDInstructor","GLOBAL",0)~ + ~You're a capable instructor. I presume you had a similar role in Eryndlyn.~ DO ~IncrementGlobal("C0KvelSoDInstructor","GLOBAL",1)~ + PID-SOD-INSTRUCTOR
  + ~Global("C0KvelSoDChef","GLOBAL",0)~ + ~How did you come to work as the Elfsong Tavern's chef?~ DO ~IncrementGlobal("C0KvelSoDChef","GLOBAL",1)~ + PID-SOD-CHEF
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)
     Global("C0KvelSoDAndroszAgain","GLOBAL",0)~ + ~Have you seen Androsz since the encounter at the Undercity?~ DO ~IncrementGlobal("C0KvelSoDAndroszAgain","GLOBAL",1)~ + PID-SOD-ANDROSZAGAIN
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)
     Global("C0KvelSoDEcthel","GLOBAL",0)~ + ~Have you been in contact with Ecthel?~ DO ~IncrementGlobal("C0KvelSoDEcthel","GLOBAL",1)~ + PID-SOD-ECTHEL
  + ~Global("C0KvelSoDAndroszAlly","GLOBAL",1)
     Global("C0KvelSoDAndroszTalk","GLOBAL",0)~ + ~What do you think of fighting alongside Androsz again?~ DO ~IncrementGlobal("C0KvelSoDAndroszTalk","GLOBAL",1)~ + PID-SOD-ANDROSZ
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDHealing","GLOBAL",0)~ + ~Your condition must be difficult to deal with. How often do you feel pain?~ DO ~IncrementGlobal("C0KvelSoDRevenge","GLOBAL",1)~ + PID-SOD-HEALING
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDRevenge","GLOBAL",0)~ + ~So you see no hope for a cure to your condition. Have you considered revenge?~ DO ~IncrementGlobal("C0KvelSoDRevenge","GLOBAL",1)~ + PID-SOD-REVENGE
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDKnowsTear","GLOBAL",4)~ + ~How have you been feeling ever since you drank the Tear of Elysium?~ DO ~IncrementGlobal("C0KvelSoDKnowsTear","GLOBAL",5)~ + PID-SOD-TEAR
  ++ ~Never mind. I don't have anything to ask.~ EXIT

CHAIN C02KVELJ PID-SOD-INSTRUCTOR
~In a sense. It was not so simple as it is here. Drow have greater incentive to act in their own interests over others. To make them believe in risking their lives for a greater purpose, even for pragmatism, is a challenge.~
= ~Compared to those days, this was a mere matter of ascertaining personal shortcomings. Many of those I instructed in the past did not live to reach that point.~
EXIT

CHAIN C02KVELJ PID-SOD-CHEF
~It should not be truly so surprising. The tavern's proprietor is an acquaintance of my former employer. Despite everything, she values her own connections enough to offer me shelter as a favor.~
= ~I simply could not accept holding such a debt with no manner of repayment. There was little else I could offer. The position of cook is one I have some experience in, and one where I could receive minimal attention as well.~
END
  ++ ~You also seemed to be quite comfortable with it.~ + PID-SOD-CHEF-1

CHAIN C02KVELJ PID-SOD-CHEF-1
~That—and this blade—are my few true talents of note. It would be a waste not to find some measure of comfort in perfecting them.~
EXIT

CHAIN C02KVELJ PID-SOD-ANDROSZAGAIN
~I have not. It is... somewhat concerning, considering his foolish interest in continuing our rivalry. But he lacks the freedom I now have, and it would not be surprising if he has returned to Eryndlyn by now, if he has not already reappeared.~
= ~Still... one cannot ever fully predict Androsz. And now my concern is not only for myself, but also for you. I believe you have also caught his interest, given all that has occurred. Should I no longer serve as an adequate target, his attention may be turned upon you next.~
= ~You should hope that does not come to pass.~
EXIT

CHAIN C02KVELJ PID-SOD-ECTHEL
~Tch. He has certainly made an effort to ensure that I could not forget him if I tried. Ecthel was summoned back to Waterdeep not long after your battle in the Undercity. Since the news of the crusade reached him, his letters of correspondence have been relentless and predictable. They make for suitable kindling for the oven.~
= ~He has insisted that I hold to the revised contract that was signed under your name. Though it is hardly necessary. I would not have made it to today had I not been true to my word when it mattered.~
EXIT

CHAIN C02KVELJ PID-SOD-ANDROSZ
~It was a prudent decision. Androsz will make a difference when the opposing forces meet each other.~
END
  ++ ~Yes, but what do you think? He's your old rival.~ + PID-SOD-ANDROSZ-1
  ++ ~Fair enough.~ + PID-SOD-ANDROSZ-2

CHAIN C02KVELJ PID-SOD-ANDROSZ-1
~The rivalry was always a means to an end. Androsz will not admit it, but I have always had more to gain from our former bond. For him, I was a merely means of sharpening his blade, while I saw him as my benefactor in surviving in a dangerous realm.~
= ~Androsz has beauty and talent, which makes him privileged. I was gifted with nothing but my innate strength. Had I no one with incentive to see me alive, I would never have lived long in Eryndlyn.~
= ~Now, relying on him is no longer necessary. He may pursue me for his own desire for challenge, but I have neither the power nor the desire to indulge him.~
EXTERN C02KVELJ PID-SOD-ANDROSZ-2

CHAIN C02KVELJ PID-SOD-ANDROSZ-2
~Still, persuading Androsz to fight for another's cause is impressive enough. He has always acted purely on his own whim. Perhaps it is something within you that he finds fascinating.~
EXIT

CHAIN C02KVELJ PID-SOD-HEALING
~Every day. Increasingly more frequent, as of late.~
END
  ++ ~How can you just live with that?~ + PID-SOD-HEALING-1
  ++ ~There's no chance of curing you?~ + PID-SOD-HEALING-1
  ++ ~I see. Let me ask something else.~ + PID-ASK

CHAIN C02KVELJ PID-SOD-HEALING-1
~There are more important matters.~
END
  ++ ~More important than preserving your own life?~ + PID-SOD-HEALING-2
  ++ ~Fair enough. It's your life to live.~ + PID-ASK

CHAIN C02KVELJ PID-SOD-HEALING-2
~Allow me to ask you a question, <CHARNAME>, to enlighten us both. Should you be afflicted by an incurable illness, one which would spell the end of your life, the time of which is but a gamble... and you chose to pursue any hope of curing it... willing to resort to any means necessary, no matter how foul. And in the end, your efforts are naught but failure, and death takes you in the end regardless.~
= ~Would you consider that a life well lived? Would it not be one of despair and desperation? Would you be satisfied, or wish that you had spent the remaining time in a way that brought you peace?~
END
  ++ ~I would still try.~ + PID-SOD-HEALING-3
  ++ ~I'm willing to help you.~ + PID-SOD-HEALING-3
  ++ ~I'm not sure.~ + PID-SOD-HEALING-3

CHAIN C02KVELJ PID-SOD-HEALING-3
~I will not presume to judge whether your choice would be right. That is for you to decide. But a choice is all it is—I merely chose mine, knowing I will prefer it to the alternative.~
= ~You may not understand. From birth, I have struggled for survival, yet never seen the true value in living. When what I had taken for granted was stolen, I believed it was time to find my own value, and live out what time I have left as I would prefer it.~
= ~Perhaps you believe it is giving up. But I consider it a manner of defiance. Someone chose this fate for me, and for my end to be one filled with suffering and agony. I refuse it. I will continue to live as I wish, even if the time is meager.~
EXIT

CHAIN C02KVELJ PID-SOD-REVENGE
~And who do you think I should take my revenge on?~
= ~The person who prepared the poison died by another's hand. Should I avenge myself on a suspicion that Matron Zaer'iyon gave the order? My own mother, matron of House Au'dayrr?~
= ~Perhaps they could have both been responsible, for all I know. And perhaps Eryndlyn and the world would be better without them. I may even be able to accomplish the absurd task of killing them both, had I the time and resources to plan. I have the knowledge of them, their homes, and their weaknesses. It would be not impossible.~
= ~Even then, what really could I hope to do? Can I save anyone? Can I slay the perennial cycle of hatred and madness of the drow that inflicted this poison upon me? There are thousands of drow like myself, <CHARNAME>. The only difference was that I was blessed with the ability to live.~
= ~And I intend to make however much use of that gift as I can. Let the drow continue as they are, until one, or two, or a hundred even, with the will and the way to change them arrives upon this realm one day. That is their part to play. Not mine.~
EXIT

CHAIN C02KVELJ PID-SOD-TEAR
~Does it matter? It has earned me perhaps a few years, if even that much.~
END
  ++ ~Just tell me.~ + PID-SOD-TEAR-1
  ++ ~As long as it's reduced your pain, it was worth it.~ + PID-SOD-TEAR-1
  ++ ~I guess not.~ + PID-SOD-TEAR-1

CHAIN C02KVELJ PID-SOD-TEAR-1
~If it's of any consolation, I rest more easily now. I may even awaken regularly without feeling the need to expunge my own blood.~
= ~Whether it was worth it... I personally care little. It is no small relief that I feel less pain, of course, but I refuse to treat it as some sort of false hope.~
= ~At the very least, I may perform to a greater extent. I may not have the strength that I once did, but experience will more than make up for it.~
END

CHAIN C02KVELJ PID-STRINGFIX
~A coldpine drop will fix that easily enough.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVFIX")~ EXIT