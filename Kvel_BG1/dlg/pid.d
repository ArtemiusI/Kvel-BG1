CHAIN IF ~IsGabber(Player1)~ THEN C0KVELJ PID
~What is your command?~
END
  ++ ~I have questions to ask you.~ + PID-ASK
  ++ ~Something's wrong with your voice.~ + PID-STRINGFIX
  ++ ~Nothing right now.~ EXIT

CHAIN C0KVELJ PID-ASK
~Ask. I promise no answers.~
END
  + ~Global("C0KvelAngeloTorture","GLOBAL",4)~ + ~Why did you let Angelo torture you?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelAngeloTorture","GLOBAL",5)~ + PID-TORTURE
  + ~Global("C0KvelDrizzt","GLOBAL",1)~ + ~You've met Drizzt. What are your thoughts on him?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelDrizzt","GLOBAL",2)~ + PID-DRIZZT
  + ~Global("C0KvelPIDDrowLanguage","GLOBAL",0)~ + ~Why is it I almost never hear you speak your language?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelPIDDrowLanguage","GLOBAL",1)~ + PID-LANGUAGE
  + ~Global("C0KvelPIDMuscles","GLOBAL",0)~ + ~I don't see many elves of your physique. You must be around six feet tall, and you have almost the musculature of a dwarf.~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelPIDMuscles","GLOBAL",1)~ + PID-MUSCLES
  + ~Global("C0KvelPIDMage","GLOBAL",0)~ + ~How did you learn arcane magic when you're primarily a swordsman?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelPIDMage","GLOBAL",1)~ + PID-MAGIC
  + ~Global("C0KvelPIDEcthel","GLOBAL",0)~ + ~How did you and Ecthel start working together?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelPIDEcthel","GLOBAL",1)~ + PID-ECTHEL
  + ~Global("C0KvelPIDHelmet","GLOBAL",0)~ + ~Why don't you wear a full-face helmet all the time now?~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelPIDHelmet","GLOBAL",1)~ + PID-HELMET
  + ~Global("C0KvelBG1Event","GLOBAL",13) Global("C0KvelPIDAndrosz","GLOBAL",0)~ + ~Tell me about Antrosz.~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1) SetGlobal("C0KvelPIDAndrosz","GLOBAL",1)~ + PID-ANDROSZ
  + ~GlobalGT("C0KvelBG1TalkOptions","GLOBAL",3) Global("C0KvelBG1Talkative","GLOBAL",0)~ + ~I'm surprised by you, K'Vel. I thought you'd be less forthcoming when it comes to conversation.~ DO ~SetGlobal("C0KvelPIDAndrosz","GLOBAL",1)~ + PID-TALKATIVE
  ++ ~Never mind. I don't have anything to ask.~ EXIT

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
~He is a fortunate drow, I cannot deny. But only the later part of his life can truly be called unique.~
END
  ++ ~What do you mean by that?~ + PID-DRIZZT-1
  ++ ~Are you saying that most drow are like him until they grow up?~ + PID-DRIZZT-1

CHAIN C0KVELJ PID-DRIZZT-1
~...~
= ~Another time, perhaps, if you still care to know by then.~
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
~I have lived on the surface for six years. In that time, I have depended on the knowledge of Common for almost all time, while the drow language is but a memory. What sentiment might I hold for it?~
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

CHAIN C0KVELJ PID-MAGIC
~All drow are expected to learn the basic understanding of magic. They have a choice on whether to cultivate their knowledge into a deeper craft.~
= ~For some, it need not be immediate, so long as they keep their mind sharp, and study from the correct sources.~
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