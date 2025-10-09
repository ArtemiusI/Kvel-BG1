CHAIN IF ~InParty("C0Aura")
See("C0Aura")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDrake1","GLOBAL",0)~ THEN BC0AURA C0KvelAura
~K'Vel, the segmented wooden contraption strapped to your back... it's a fishing rod, isn't it?~
DO ~SetGlobal("C0KvelDrake1","GLOBAL",1)~
== BC0KVEL ~You recognize it... that, I did not expect. It was not originally designed as such, but I have adapted it for my own purposes.~
== BC0AURA ~I was raised in a fishing town, you know. I don't eat fish, but I've still learned the technique and the tools for it. Is it something you enjoy doing?~
== BC0KVEL ~You may consider it that way. Fishing is a useful skill, and an agreeable pasttime in itself.~
== BC0AURA ~And to think you even know how to design your own fishing rod! I'd love to see what else you think of, if you had the incentive.~
== BC0KVEL ~Hmph. I dabble in innovation when it seems practical. I do not share your fascination towards the unknown.~
== BC0AURA ~Do you think I could give that rod a try some time? I'd like to see how well it performs compared to the design I'm used to. And maybe I can even improve it a little!~
== BC0KVEL ~That would be inadvisable. You would buckle under its weight. And the game it is suited for would likely pull you undersea instead.~
== BC0AURA ~Oh. It does look a little heavy, come to think of it... I'll just take a look at it while camping instead, then. I wouldn't like to get caught by the fish.~
EXIT