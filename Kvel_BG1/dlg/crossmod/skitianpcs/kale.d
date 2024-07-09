CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Kale1","GLOBAL",0)~ THEN X3KALEB C0KvelX3Kale1
~You're a big'un with a big sword. I dunno about anyone else, mate, but you're all right by my standards.~
DO ~SetGlobal("C0KvelX3Kale1","GLOBAL",1)~
== BC0KVEL ~If that is the extent of your standards, I question your odds of survival.~
== X3KALEB ~Mate, this is the reason why everyone and their ma has a problem with drow. Give you a compliment, and your idea of gratitude is to wish death on me.~
== X3KALEB ~Not really the prettiest picture you're paintin' for your folks, you know?~
== BC0KVEL ~Are you done talking yet?~
== X3KALEB ~Heh. I'm just gettin' started. You won't believe it, but I think we'll be good mates before long, you and me.~
== BC0KVEL ~Hmph.~
== X3KALEB ~Oy, where do you think you're going? Don't you just walk away now while we're gettin' to know each other.~
== BC0KVEL ~Watch me.~
== X3KALEB ~You think I can't catch up to you just cause your legs are longer? Think again, mate!~
EXIT

CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Kale2","GLOBAL",0)~ THEN X3KALEB C0KvelX3Kale2
~Soooo, what kinds of Underdark delicacies do you eat to get so much bigger than your folks? I've got to know.~
DO ~SetGlobal("C0KvelX3Kale2","GLOBAL",1)~
== BC0KVEL ~Halfling, you eat the same meals as I do, and just as well. Better, even.~
== X3KALEB ~You callin' me fat, mate? I'll have you know it's halfling manners to clean your first plate, and the second one. And also—~
== BC0KVEL ~You've made your point.~
== X3KALEB ~Anyways, as I was sayin'... you sure there's no secret you're hiding? No special recipe or diet?~
== BC0KVEL ~None.~
== X3KALEB ~Criminy. Some people just hit the jackpot without even trying. World's just not fair sometimes, innit?~
EXIT

CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Kale3","GLOBAL",0)~ THEN X3KALEB C0KvelX3Kale3
~You ain't bad in a fight, Kay-vel. But you've got no flair, mate. You don't even have a proper battlecry to make when you're charging.~
DO ~SetGlobal("C0KvelX3Kale3","GLOBAL",1)~
== BC0KVEL ~There is no purpose to dramatizing battle. Victory is what it is.~
== X3KALEB ~Winning's supposed to be fun. And heroic. Your skulking about all quiet-like is anything but. And the magic stuff is just plain cheating.~
== BC0KVEL ~Having the leisure to turn fighting for survival into a display of bravado is simple privilege. You would not think the same in a place where every move must purposeful if you want to live.~
== X3KALEB ~That's boring. If every part of living has to be like working day and night, then what's even the point?~
== BC0KVEL ~...~
== X3KALEB ~Mate, I think I understand why you left now. Come on, you're not in the Underdark anymore. Up here it won't kill you to live a little.~
== BC0KVEL ~Perhaps you are not entirely wrong. Yet somehow, I suspect living your way would be no less exhausting from what I escaped.~
EXIT