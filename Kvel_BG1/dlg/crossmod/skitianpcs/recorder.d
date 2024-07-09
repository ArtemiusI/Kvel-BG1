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