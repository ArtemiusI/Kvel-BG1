CHAIN IF ~IsGabber(Player1)~ THEN C0KVELJ PID
~What is your command?~
END
  ++ ~I have questions to ask you.~ + PID-ASK
  ++ ~Something's wrong with your voice.~ + PID-STRINGFIX
  ++ ~Nothing right now.~ EXIT

CHAIN C0KVELJ PID-ASK
~Ask. I promise no answers.~
END
  + ~Global("C0KvelBG1Background","GLOBAL",1)
    Global("C0KvelBG1Blooding","GLOBAL",0)~ + ~You mentioned the Blooding. What is it?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                            IncrementGlobal("C0KvelBG1Blooding","GLOBAL",1)~ + PID-BLOODING
  + ~Global("C0KvelBG1Background","GLOBAL",1)
     Global("C0KvelBG1Blooding","GLOBAL",1)
     OR(3)
     Global("C0KvelBG1Blooding1","GLOBAL",0)
     Global("C0KvelBG1Blooding1","GLOBAL",0)
     Global("C0KvelBG1Blooding1","GLOBAL",0)~ + ~Tell me more about the Blooding.~ + PID-BLOODING-Q
  + ~Global("C0KvelBG1Background","GLOBAL",1)
     Global("C0KvelBG1Eryndlyn","GLOBAL",0)~ + ~Tell me about Eryndlyn.~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                            IncrementGlobal("C0KvelBG1Eryndlyn","GLOBAL",1)~ + PID-ERYNDLYN
  + ~Global("C0KvelAngeloTorture","GLOBAL",4)~ + ~Why did you let Angelo torture you?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                           SetGlobal("C0KvelAngeloTorture","GLOBAL",5)~ + PID-TORTURE
  + ~Global("C0KvelDrizzt","GLOBAL",1)~ + ~You've met Drizzt. What are your thoughts on him?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                  SetGlobal("C0KvelDrizzt","GLOBAL",2)~ + PID-DRIZZT
  + ~Global("C0KvelPIDDrowLanguage","GLOBAL",0)~ + ~Why is it I almost never hear you speak your language?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                SetGlobal("C0KvelPIDDrowLanguage","GLOBAL",1)~ + PID-LANGUAGE
  + ~Global("C0KvelPIDMuscles","GLOBAL",0)~ + ~I don't see many elves of your physique. You must be around six feet tall, and you have almost the musculature of a dwarf.~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
   SetGlobal("C0KvelPIDMuscles","GLOBAL",1)~ + PID-MUSCLES
  + ~Global("C0KvelPIDCooking","GLOBAL",0)~ + ~I didn't think you were the type to be a gourmet. What's the story behind that?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                   SetGlobal("C0KvelPIDCooking","GLOBAL",1)~ + PID-COOKING
  + ~Global("C0KvelPIDMage","GLOBAL",0)~ + ~How did you learn arcane magic when you're primarily a swordsman?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                   SetGlobal("C0KvelPIDMage","GLOBAL",1)~ + PID-MAGIC
  + ~Global("C0KvelPIDThief","GLOBAL",0)~ + ~You know a lot about poisons. How did you come by this knowledge?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                   SetGlobal("C0KvelPIDThief","GLOBAL",1)~ + PID-THIEF
  + ~Global("C0KvelPIDEcthel","GLOBAL",0)~ + ~How did you and Ecthel start working together?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                  SetGlobal("C0KvelPIDEcthel","GLOBAL",1)~ + PID-ECTHEL
  + ~Global("C0KvelPIDHelmet","GLOBAL",0)~ + ~Why don't you wear a full-face helmet all the time now?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                           SetGlobal("C0KvelPIDHelmet","GLOBAL",1)~ + PID-HELMET
  + ~Global("C0KvelBG1Event","GLOBAL",13) Global("C0KvelPIDAndrosz","GLOBAL",0)~ + ~Tell me about Androsz.~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                SetGlobal("C0KvelPIDAndrosz","GLOBAL",1)~ + PID-ANDROSZ
  + ~GlobalGT("C0KvelBG1TalkOptions","GLOBAL",7) Global("C0KvelBG1Talkative","GLOBAL",0)~ + ~I'm surprised by you, K'Vel. I thought you'd be less forthcoming when it comes to conversation.~ DO ~SetGlobal("C0KvelPIDAndrosz","GLOBAL",1)~ + PID-TALKATIVE
  ++ ~Never mind. I don't have anything to ask.~ EXIT

CHAIN C0KVELJ PID-BLOODING
~The coming of age ritual for an adolescent drow. You are sent into the tunnels of the Underdark along with a captured surfacer, with only one weapon of your choice to protect you.~
= ~There are no rules, whether spoken or otherwise, other than to survive and bring proof of your kill to your matron mother. Fail, and you die one way or the other.~
END
  ++ ~That sounds horribly cruel.~ + PID-BLOODING-1
  ++ ~Which is the intended prey? The drow or the surfacer?~ + PID-BLOODING-2
  ++ ~Sounds reasonable. Kill or be killed. A good lesson to learn early.~ + PID-BLOODING-1

CHAIN C0KVELJ PID-BLOODING-1
~No doubt. Drow accept the Blooding as proof of their ability to survive a cruel society. None would ever consider what it costs them, or whether it is worth it.~
EXTERN C0KVELJ PID-BLOODING-3

CHAIN C0KVELJ PID-BLOODING-2
~That depends on the competence of the drow. Those who lack the drive to kill for survival are not expected to live.~
EXTERN C0KVELJ PID-BLOODING-3

CHAIN C0KVELJ PID-BLOODING-3
~In the end, however, it never matters what emerges from that tunnel. Almost inevitably, two have died within.~
EXIT

CHAIN C0KVELJ PID-BLOODING-Q
~Very well, though you may not like what you learn.~
END
  + ~Global("C0KvelBG1Blooding1","GLOBAL",0)~ + ~Do all drow have to undergo the Blooding?~ DO ~SetGlobal("C0KvelBG1Blooding1","GLOBAL",1)~ + PID-BLOODING-Q1
  + ~Global("C0KvelBG1Blooding2","GLOBAL",0)~ + ~What was your Blooding like?~ DO ~SetGlobal("C0KvelBG1Blooding2","GLOBAL",1)~ + PID-BLOODING-Q2
  + ~Global("C0KvelBG1Blooding3","GLOBAL",0)~ + ~You mentioned you had already killed before your Blooding. Can you tell me about that?~ DO ~SetGlobal("C0KvelBG1Blooding3","GLOBAL",1)~ + PID-BLOODING-Q3

CHAIN C0KVELJ PID-BLOODING-Q1
~It is expected. But some houses with authority may... exempt young drow they see potential in. Certainly not out of compassion, but if they pragmatically value the drow's life enough to stop them from partaking in such a dangerous ritual.~
= ~Failing that, it is much more common for drow who favor certain children to bestow certain... unsanctioned advantages to them before the hunt. Few completely escape the matron mothers' notice, of course, but are overlooked, if they deem the forms of cheating sufficiently competent.~
= ~I, however, was given no such privilege. It was my luck that my house's matron spared my life at all on the birthing table.~
EXIT

CHAIN C0KVELJ PID-BLOODING-Q2
~I had already made my peace with killing before my Blooding, though by circumstance rather than choice. So I felt no dread at what I was forced to do as I entered the Underdark's depths, only my chances of survival.~
= ~My hunt was a dwarf captured from a prior war fought between the Upperdark and the surface plains. Past his prime, and blind in one eye, but still strong and not to be underestimated. We encountered each other near the first day's end. I had already broken the blade I took with me against a hook horror's exoskeleton at that time, and carried naught but what remained with the handle. He held only a rock carved into a sharp tip.~
= ~I was fatigued, demoralized, and most of all, hungry beyond comprehension, and I have no doubt my quarry felt the same. Neither of us felt the drive to battle, nor face potential death in our states, so we fled from each other as though making an unspoken agreement.~
= ~For the next two days, I foraged, hunted, and set up traps before I rested to alert me should the dwarf attempt to strike me while I was unaware. Yet I never saw him until, out of impatience, I explored the caverns to try and end the tiresome hunt.~
= ~Eventually, I found him sitting at one of the nearby rivers, by all appearances completely vulnerable. He held a makeshift rod made from carved bone and spider thread, and was humming while reeling in fish one at a time.~
= ~I wondered if the dwarf was a fool. He was undoubtedly going to die here, regardless of how much food he prepared—did he not know or care? I did not trust it, and so I did not take the seemingly welcome opportunity. Instead, I observed. Soon, I had watched him long enough to remember every part of his technique. He did not move from his position the entire time, and so I turned away and left for my camp, and he did not respond.~
= ~The next day, I returned to his fishing spot, and found him pinned under the jaws of a giant cave fisher, wrestling against its pincers in a futile attempt to save himself. I did not want the creature to take away my prey, and so I attacked it, burying my broken sword in its eye and forcing it to retreat.~
= ~After that, the dwarf and I looked upon each other, and we knew the inevitable had come. We fought. I had no weapon, and he was already wounded and exhausted. Both of us struggled in a desperate, ugly brawl attempting to claw for survival.~
= ~In the end, I was barely victorious. As I began to limp away, I heard him cough, and realized he was still alive. He pointed—using his middle finger as I had severed his pointer as proof of the kill—not at me, but at the dying fire nearby, with skewered fish grilling atop it.~
= ~We could not understand each others' words, but I understood his wish for a final meal. With any sense of threat gone from my opponent, I obliged him. I took one of the fish for myself, and held the other to the dwarf's mouth.~
= ~It was poorly cooked and lacked flavor, but still preferable to anything I had eaten in those few days. And when I watched the dwarf devouring his own share, bones and all, I thought it seemed the most extraordinary delicacy to him. And then, finally, he went silent.~
= ~I left the caverns that day with many questions. Of why the dwarf chose to spend his last days in such a manner, of what he felt towards me, his killer, or what he was thinking while consuming the last meal before his death. And, knowing the other drow only consider these musings a sign of weakness, I kept it toward buried deep within me for the rest of my life.~
= ~That is the story of my Blooding, <CHARNAME>. I do not often tell stories, but such is the nature of drow, and of those who are a victim of their cruel games. What you see of me is merely a fortunate survivor, and for all these years, that has never changed.~
EXIT

CHAIN C0KVELJ PID-BLOODING-Q3
~As you wish, though it is no grand tale.~
= ~You see clearly for yourself that I am larger and stouter than most elves. That has been true ever since my youth, and because of it, I could not find myself comfortable in the training weapons I had at my disposal, as they were meant for children smaller than myself.~
= ~I knew there was one weapon that could suit me, however. My elder brother Tae'lyon's bastard sword, which I had watched him wield in the training field time and again. Though I feared his reprisal, I could not stop myself from breaking into his room while he was absent and taking the sword.~
= ~Despite intending to put it back in its place before anyone realized, I became lost in my affinity with its balance and weight. It suited me perfectly, and I could not bring myself to let it go. Eventually, Tae'lyon found me, and was enraged by the theft.~
= ~He attacked me. It was the first time I had fought a drow that far above my age and experience. Only the sword in my hands could protect me at that time, and after being knocked to the ground several times, I saw no choice but to trust in it.~
= ~I closed my eyes and instinctively took a stance I had long practiced. I do not believe my brother had anticipated it. When I dared to look again, he had in his blind rage charged into his own blade and ran himself through. I had only intended to threaten my brother into pause, but instead, I killed him.~
= ~The matron mother believed that I had slain him in a display of superior skill, and thus forgave my act of fratricide and granted me all of my dead brother's possessions. But at the end of that day, I found the closest pit I could and threw the bloodied sword into its depths. I could not bring myself to look upon it again.~
EXIT

CHAIN C0KVELJ PID-ERYNDLYN
~Eryndlyn is not like other drow cities. We are not dominated by the priestesses of Lolth, and followers of other faiths, Ghaunadaur the Lord of Slime and Vhaeraun the Masked Lord the most prominent, control equal levels of political power.~
= ~However, it is the merchant clans who control the influx of resources, knowledge and items of power within the city, and thus they are the ones who truly rule in a sense. And thus, power within the city is distributed by wealth and business connections, and the matron mothers are closer to merchant lords than priestesses.~
= ~That does not make the city any less dangerous. If anything, quite the contrary. Under the fealty of a single mistress, some semblance of solidarity can be found regardless of its impermanence. In Eryndlyn, you must find your benefactor to protect you, or you die. It is that simple.~
EXIT

CHAIN C0KVELJ PID-TORTURE
~As I recall, he would have killed one of us on the spot if I had not distracted him. Which was only necessary because you allowed us to be captured.~
END
  ++ ~I thought we would be judged fairly.~ + PID-TORTURE-1
  ++ ~What about your own life?~ + PID-TORTURE-2
  ++ ~You're right. It was my mistake.~ + PID-TORTURE-3

CHAIN C0KVELJ PID-TORTURE-1
~I understand the human belief in the fairness of justice, but considering the circumstances, your actions were foolish.~
EXTERN C0KVELJ PID-TORTURE-3

CHAIN C0KVELJ PID-TORTURE-2
~It is not the... first time I have made myself vulnerable as bait to achieve my goal. Though never have I been part of a goal so stupid.~
EXTERN C0KVELJ PID-TORTURE-3

CHAIN C0KVELJ PID-TORTURE-3
~You are my employer, and it is not my place to judge you. But you had best understand the full consequences of your actions, no matter how well-intentioned they may seem.~
EXIT

CHAIN C0KVELJ PID-DRIZZT
~He is a fortunate drow, I cannot deny. But only the later part of his life can truly be considered of his own making.~
END
  ++ ~What do you mean by that?~ + PID-DRIZZT-1

CHAIN C0KVELJ PID-DRIZZT-1
~While I was still a servant of my house in Eryndlyn, I had journeyed to Menzoberranzan on business dealings. The tale of Drizzt Do'Urden is a suppressed bit of history, but I still learned some, and not all drow—male drow in particular—spoke his name in hushed curses.~
= ~He has become recognized as a hero even among surfacers, but few truly understand the truth behind the life he was dealt. He was blessed by circumstance, spared from his mother when meant for death, born to the right father, raised by the right sister, and taught the right things to survive yet not give up his self-identity.~
= ~A slightly fortunate drow may have one, perhaps a few such blessings. But at large, drow who resist the Spider Queen's yoke are rarely dealt such hands. More often, they are dead and forgotten.~
EXIT

CHAIN C0KVELJ PID-LANGUAGE
~I am speaking my language right now. It is also your language.~
END
  ++ ~I meant the drow language.~ + PID-LANGUAGE-1
  ++ ~So you would speak drow if necessary?~ + PID-LANGUAGE-2
  ++ ~Fair enough.~ EXIT

CHAIN C0KVELJ PID-LANGUAGE-1
~Would you gather any meaning from my words if I did?~
END
  ++ ~No, but I find other languages fascinating.~ + PID-LANGUAGE-3
  ++ ~What if you spoke to a drow?~ + PID-LANGUAGE-2
  ++ ~You don't feel the slightest comfort in falling back on your native tongue?~ + PID-LANGUAGE-4

CHAIN C0KVELJ PID-LANGUAGE-2
~If, on a rare day that I am required to negotiate with another drow rather than draw steel, then I see the possibility.~
EXIT

CHAIN C0KVELJ PID-LANGUAGE-3
~Then find a linguist. They will no doubt find conversation more meaningful.~
EXIT

CHAIN C0KVELJ PID-LANGUAGE-4
~I have lived on the surface for seven years. In that time, I have depended on the knowledge of Common for almost all time, while the drow language is but a memory. What sentiment might I hold for it?~
END
  + ~InParty("VICONIA")~ + ~Viconia still seems to depend on it greatly.~ + PID-LANGUAGE-5
  ++ ~So you would speak drow to someone who only understands it?~ + PID-LANGUAGE-2
  ++ ~I believe there's value in learning languages for its own sake.~ + PID-LANGUAGE-3
  ++ ~You have a point. Let's leave it at that.~ EXIT

CHAIN C0KVELJ PID-LANGUAGE-5
~She is continuing to exist in denial.~
EXIT

CHAIN C0KVELJ PID-MUSCLES
~It is uncommon. Almost unheard of, certainly. But possible. And its rarity works to my benefit.~
= ~Few drow have the ability to wield greatswords such as mine with the limitations of their stature. And many have fallen in combat against me by that natural disadvantage.~
EXIT 

CHAIN C0KVELJ PID-COOKING
~When living in a place where anyone might use food as a way to poison their rivals, learning the art is preferable to always keeping bottles of antidotes at hand.~
= ~With that in mind, there is little reason not to treat cookery as a skill. It is no less complex or essential than swordsmanship.~
EXIT 

CHAIN C0KVELJ PID-MAGIC
~All drow are expected to learn the basic understanding of magic. They have a choice on whether to cultivate their knowledge into a deeper craft.~
= ~For some, it need not be immediate, so long as they keep their mind sharp, and study from the correct sources.~
EXIT 

CHAIN C0KVELJ PID-THIEF
~In Eryndlyn, you stand no chance of survival without some knowledge of poison, whether it is to create it, or protect yourself from the various forms of it.~
= ~Otherwise, your death will not only be unavoidable, but excruciatingly painful. Most drow who have been foolish enough to make certain enemies become too afraid to eat. Some, to even freely breathe.~
EXIT 

CHAIN C0KVELJ PID-ECTHEL
~We... owed each other a respective debt. That alone would not be enough to ensure my loyalty, but I could ensure he was trustworthy, a rarity among surfacers for how quickly I gained that understanding.~
= ~The foolishly honest type serve a valuable purpose.~
EXIT 

CHAIN C0KVELJ PID-HELMET
~My previous employer required it. You do not.~
END
  ++ ~My reputation still suffers by your presence, you know.~ + PID-HELMET-1
  ++ ~So it was never for protecting yourself?~ + PID-HELMET-2
  ++ ~What if I give you a new helmet?~ + PID-HELMET-3

CHAIN C0KVELJ PID-HELMET-1
~Yet it does not impede your purpose to the extent that it would a common merchant. You will survive.~
EXIT

CHAIN C0KVELJ PID-HELMET-2
~The helmet was a precaution to extend my service for as long as fate willed it. No matter how many measures I took to ensure none other discovered my identity, I knew it could always happen. And it did.~
EXIT

CHAIN C0KVELJ PID-HELMET-3
~I will wear it for combat, of course. But do not expect me to keep it on always. Do you truly believe that old helmet was remotely comfortable?~
EXIT

CHAIN C0KVELJ PID-ANDROSZ
~Androsz is the secondboy of House Zaer'iyon, sixth house of Eryndlyn... as far as I remember. The status of drow houses shifts as often as the seasons on the surface.~
= ~He is the weapons master now, I believe, which makes him the greatest swordsman of the house's males. And I do not doubt he may be the greatest swordsman in Eryndlyn.~
= ~I suppose by surfacer standards, you could consider him my friend, though he considers our relationship an eternal rivalry. I have no longer any desire to entertain him, however... and so, perhaps there is little friendship left between us.~
EXIT

CHAIN C0KVELJ PID-TALKATIVE
~Do not mistake that to believe I enjoy conversation. I have merely come to understand there is little benefit to withholding information of myself that cannot be used against me.~
END
  ++ ~Not much to be gained, either.~ + PID-TALKATIVE-1
  ++ ~I thought drow would believe anything could be used against them.~ + PID-TALKATIVE-2
  ++ ~Does that mean you trust me?~ + PID-TALKATIVE-3

CHAIN C0KVELJ PID-TALKATIVE-1
~In that you are wrong. Even the most insignificant of sentences can reveal much. Such as that you saw purpose in pointing out my seeming weakness.~
EXIT

CHAIN C0KVELJ PID-TALKATIVE-2
~With all forms self-preservation comes risk. That is where the fools who believe they can only trust themselves falter. When you keep everything close to yourself, you only leave yourself vulnerable to weaknesses others can see in your stead.~
EXIT

CHAIN C0KVELJ PID-TALKATIVE-3
~I trust you enough to deliver information which I believe you may use to benefit rather than harm me. That does not mean I trust you fully.~
EXIT

CHAIN C0KVELJ PID-STRINGFIX
~A coldpine drop will fix that easily enough.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVFIX")~ EXIT