CHAIN IF ~InParty("X3mily")
See("X3mily")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Emily1","GLOBAL",0)~ THEN BC0KVEL C0KvelX3Emily1
~I can recognize what you are doing, archer.~
DO ~SetGlobal("C0KvelX3Emily1","GLOBAL",1)~
== X3MILYB ~Pardon? I... don't know what you're talking about.~
== BC0KVEL ~Keeping a distance, but still within your preferred range. Standing from a vantage point, so that I will be at a disadvantage against your bow should the worst comes.~
== X3MILYB ~You're being paranoid. I may not be entirely comfortable with your presence, but that doesn't mean I'm always looking at you as a potential enemy..~
== BC0KVEL ~Yet you seem incapable of preventing yourself regardless, even if only subconsciously.~
== X3MILYB ~If it bothers you so much, I can try to not—~
== BC0KVEL ~It is wise. You may live longer.~
== X3MILYB ~Maybe so, but we'll never make for proper allies if we keep treating each other this way. We surfacers aren't like that.~
EXIT

CHAIN IF ~InParty("X3mily")
See("X3mily")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Emily1","GLOBAL",1)~ THEN X3MILYB C0KvelX3Emily2
~~
DO ~SetGlobal("C0KvelX3Emily1","GLOBAL",2)~
== BC0KVEL ~~
== X3MILYB ~I respect the Darcourt family. They're honest merchants, and plenty of my estate's exports are owed to their business. You're a friend of a Darcourt, and I can trust that more than I would distrust a drow.~
EXIT