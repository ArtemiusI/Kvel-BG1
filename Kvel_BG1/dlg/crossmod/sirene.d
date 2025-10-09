CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSirene1","GLOBAL",0)~ THEN BC0SIREN C0KvelSirene
~Your scars are many, K'Vel. Your battles must have been harsh... and with much pain.~
DO ~SetGlobal("C0KvelSirene1","GLOBAL",1)~
== BC0KVEL ~Drow are no strangers to pain and suffering. I merely lack the vanity to disguise the markings on my skin.~
== BC0SIREN ~Would that things were different. Though you have escaped that life now. Does that not give hope?~
== BC0KVEL ~I am not so free as you believe. Neither are you, with the burden that your faith has led you to bear.~
== BC0SIREN ~That, I cannot deny. Though as my companion, you should know that whatever your own struggles may be, it need not be carried alone.~
== BC0KVEL ~Some burdens are not so simply shared. You will come to understand one day, there are cruel truths that one must face. And however many that stand beside you will not matter.~
== BC0SIREN ~...I know.~
== BC0KVEL ~Do not weigh yourself further with sympathy. I have no use for it, and it will not benefit you. I will not fall victim to your wavering conviction in battle.~
EXIT