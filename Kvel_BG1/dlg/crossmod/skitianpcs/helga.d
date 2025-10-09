CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Helga1","GLOBAL",0)~ THEN X3HELGAB C0KvelX3Helga1
~You're a mighty warrior, drow. I could respect that.~
DO ~SetGlobal("C0KvelX3Helga1","GLOBAL",1)~
== BC0KVEL ~'Could'. It would seem you still question whether I am worthy of respect.~
== X3HELGAB ~Bah, I'm not a woman of careful words. If you must find a meaning in every letter, then it be likely we won't get along so well.~
== BC0KVEL ~Whether you like or respect me is of little worth. The only assurance I require is that your shield will not fail during battle.~
== X3HELGAB ~Aye, that you can be assured of tenfold. I have ne'er lost a fight of my choice yet, in all my years of living.~
== BC0KVEL ~Then that is enough.~
EXIT

CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Helga2","GLOBAL",0)~ THEN X3HELGAB C0KvelX3Helga2
~Ye fight well indeed, drow, that be of no doubt. But there is something...~
DO ~SetGlobal("C0KvelX3Helga2","GLOBAL",1)~
== BC0KVEL ~What do you see, dwarf?~
== X3HELGAB ~I be a warrior, but me duties as priestess an' healer be as important as might on the battlefield. I can nae say for certain, but I have me suspicions, if nothing else.~
== BC0KVEL ~I would ask that you say nothing more of it. This is not your affair.~
== X3HELGAB ~Ye value yer warrior's pride above all, eh? Fair enough. I can respect that, so long as yer body will not fail ye.~
== BC0KVEL ~It is not that. But I appreciate your silence.~
EXIT
