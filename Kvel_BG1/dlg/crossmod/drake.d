CHAIN IF ~InParty("C0Drake")
See("C0Drake")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDrake1","GLOBAL",0)~ THEN BC0KVEL C0KvelDrake
~You did not distrust me for as long as I predicted, priest. I believed you, with your pragmatism, to be more cautious.~
DO ~SetGlobal("C0KvelDrake1","GLOBAL",1)~
== BC0DRAKE ~Were you even slightly different, perhaps I would have. But I know a soldier when I see one, and my years of experience in the army have made it difficult to distrust those I march besides. Consider it a degree of sentiment, if you will.~
== BC0KVEL ~We are like that in that regard, at least.~
== BC0DRAKE ~Oh, I would not be so presumptuous to call us all that similar. You are no virtuous man, insofar as I can tell. But you have the spirit of a commander within you, that of a man who would risk their life for those in their service, and expect such in turn. That much, I can respect.~
== BC0KVEL ~Perhaps. Do not expect too much of me, however. My motives are not so selfless to throw my life away for the foolishness of others.~
== BC0DRAKE ~Heh. Nor would I expect you to. I have seen too many foolishly noble martyrs in my life as it is. Gods willing, none standing my side today will find themselves among that list.~
EXIT