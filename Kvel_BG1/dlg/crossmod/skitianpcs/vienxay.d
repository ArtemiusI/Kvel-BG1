CHAIN IF ~InParty("X3Vien")
See("X3Vien")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Vienxay1","GLOBAL",0)~ THEN X3VIENB C0KvelX3Vienxay1
~I must truly be cursed. My safety must be ensured by a drow, and one without even the slight comeliness expected of an elf. At least he is quiet.~
DO ~SetGlobal("C0KvelX3Vienxay1","GLOBAL",1)~
== BC0KVEL ~Hmph.~
== X3VIENB ~Is that a scoff I hear? I was searching for suitable praise, difficult as it was.~
== BC0KVEL ~Perhaps it would be appropriate for you to learn silence as well, if you desire this alliance to be free of strife.~
== X3VIENB ~My role is to advise with my knowledge and experience. Yours is to stand in the front and be a suitable shield. Preferably while standing away from me.~
== BC0KVEL ~Your sense of superiority from your heritage does you no favors. It is hardly even appropriate, given what I have learned of your standing among others of your kind.~
== X3VIENB ~And what would you presume to know of me, dark elf? Your understanding of us is tainted by years of indoctrination and delusions of what your kind are owed. Do you think it beneath you to defend a true elf?~
== BC0KVEL ~No. What distaste you receive is earned. It has little to do with the differences of our skin.~
== X3VIENB ~Likewise. I preferred it when you were silent. For every moment that you speak, I like you less.~
EXIT

CHAIN IF ~InParty("X3Vien")
See("X3Vien")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Vienxay2","GLOBAL",0)~ THEN X3VIENB C0KvelX3Vienxay2
~I see you poring over those books during resting hours, drow. Color me surprised. I did not expect one of such brutish countenance to be a connoisseur of human academia.~
DO ~SetGlobal("C0KvelX3Vienxay2","GLOBAL",1)~
== BC0KVEL ~It is equally surprising to me that you, mage, appear to have failed to see the value in doing the same.~
== X3VIENB ~Please. A tome of magical secrets, that I can understand the value in. But history of human lands, historical figures, cuisine? What use have I for such things?~
== BC0KVEL ~You think such knowledge beneath you, yet in your position of exile in these lands, you may yet come to depend on it.~
== X3VIENB ~Such foolishness. You believe I will fall into acceptance of my current state? Evermeet is my home, and I *will* return to where I belong.~
== BC0KVEL ~Then we are worlds apart in more than background. Unlike you, I have come to peace with my position. Continue to struggle as you will. It will bring you no peace.~
== X3VIENB ~And who are you to judge me? All I see is an abandoned stray with no backbone. Return to your juvenile studies. You would not understand the mind of one with greater ambitions.~
EXIT