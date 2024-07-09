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