CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Recorder1","GLOBAL",0)~ THEN X3RECB C0KvelX3Recorder1
~Would you tell me something of Eryndlyn, K'Vel?~
DO ~SetGlobal("C0KvelX3Recorder1","GLOBAL",1)~
== BC0KVEL ~There is nothing you would like to know.~
== X3RECB ~I disagree. I am aware of your distaste for your former home's power struggles, religious strife, and endless betrayals. But one should be aware of history of all sorts, even if it is only so one may not repeat it.~
== BC0KVEL ~And you wish to write an extensive record of the drow's decadence and malevolence, to assuage others that they will never sink to the same depths?~
== X3RECB ~Please do not make such ill-mannered assumptions, K'Vel. I only wish to record the truth. The nature of it is not up to me to interpret.~
== BC0KVEL ~I do not doubt that. Find a proper historian to exchange tales with, scholar. You will not find the accurate account that you seek from me.~
EXIT

CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Recorder2","GLOBAL",0)~ THEN X3RECB C0KvelX3Recorder2
~You have a wealth of culinary skill and an refined palate, K'Vel. Have you never considered writing a cookbook?~
DO ~SetGlobal("C0KvelX3Recorder2","GLOBAL",1)~
== BC0KVEL ~My knowledge serves me well enough in my memory.~
== X3RECB ~But what about the future? It might seem trivial, but even such knowledge can lead to more joy in the world. There is much you could teach others.~
== BC0KVEL ~One day, perhaps. Once the days of carrying this blade are behind me.~
== X3RECB ~Oh? I wasn't sure you'd actually consider it. Your skills must mean even more to you than I thought.~
== BC0KVEL ~We shall see if I am afforded that time. But you were accurate on one account. This aspect of my life has been one of my sole few comforts.~
== X3RECB ~Then that is more reason others should also know of it. And, in the process, they could see that you are deserving of more than fear. I won't demand anything of you. Just think about it once in a while.~
EXIT