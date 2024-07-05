BEGIN C02KVEL
BEGIN C02KVELJ
BEGIN C0KVNOB1

CHAIN IF WEIGHT #-1 ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ THEN C02KVEL KVEL-BD4700
~There is no turning back this far onto the path!~
DO ~SetGlobal("C0Kvel_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT

EXTEND_TOP BDSCHAEL 40 #1
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0KVEL")~ + ~What about K'Velarin? We still have an ongoing contract.~ EXTERN BDSCHAEL SCHAEL-KVEL-START
END

CHAIN BDSCHAEL SCHAEL-KVEL-START
~Yes, the drow... he signed an agreement with the Dukes to march with the expedition as a sellsword, so you'll see him sooner or later. Don't worry—he hasn't forgotten about you if that's your concern. It seems your presence was one of the conditions for his cooperation.~
= ~If you really want to meet him tonight, you'll find him at the Elfsong Tavern. He's... working there, in a sense. You'll see what I mean.~
COPY_TRANS BDSCHAEL 40

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDStartScene","GLOBAL",0)~ THEN BDPOOL05 KVEL-SOD-START-SCENE
~'Ey, now this is what I call a proper meal! I've forgotten what it's like to have one e'er since this crisis started!~
DO ~SetGlobal("C0KvelSoDStartScene","GLOBAL",1)~
== BDPOOL03 ~Hear, hear! Send my compliments over to the new chef, bartender!~
== BDBART01 ~I'm sure he'll be very pleased to hear your words. Or not. More likely not, given what he's like.~
== C0KVNOB1 ~I don't suppose I could meet this mystery chef you've recently hired? My wife's been cavilling about the one we've hired for a while now, and I'm certain if they're willing to work here, their demand in pay can't be that steep.~
== BDBART01 ~Not sure I appreciate what you're suggesting about how much we pay our workers, sir. And I... wouldn't advise meeting him face to face. He doesn't like guests—just looking at him might scare you.~
== C0KVNOB1 ~Oh, piffle. What sort of person do you think I am? If I were concerned over staining my clothes by getting too close to the riffraff, I wouldn't eat here. Now, let me go and have a look...~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C02KVC01")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDStartScene","GLOBAL",1)~ THEN BDBART01 KVEL-SOD-START-SCENE-2
~*sigh* And off he goes. I did warn him.~
DO ~SetGlobal("C0KvelSoDStartScene","GLOBAL",2)~
== BDBART01 ~Sir ran off without paying his tab either, milady. Should I send one of the men after him?~
== BDALYTH ~Normally I'd say yes... but these are hard times, and it will be difficult to find him in the crowd outside. Let him off this once. He'll be back within the week.~
== BDBART01 ~Understood. I'll write it down as debt in our books... with interest, of course.~
== BDPOOL03 ~What do you think that was all about?~
== BDPOOL05 ~Dunno. Maybe they've got a dragon roasting their potatoes in there. Heh heh. I love seeing those rich folk making fools out of themselves.~
== BDPOOL03 ~You want to have a look too?~
== BDPOOL05 ~Nah. Mind our own business. Come on, come on, food's getting cold.~
DO ~ActionOverride("CUTSPY",DestroySelf())~ EXIT

CHAIN IF WEIGHT #-1 ~!InParty("C0KVEL")
AreaCheck("BD0109")
Global("C0KvelSoDStartScene","GLOBAL",2)~ THEN BDSCHAEL KVEL-SOD-START-SCENE-3
~Well, that was a thing.~
DO ~SetGlobal("C0KvelSoDStartScene","GLOBAL",3)~
== BDSCHAEL IF ~BeenInParty("C0KVEL")~ THEN ~Given the reaction, you can probably guess who it is in the kitchen. Couldn't believe my ears when I heard it myself.~
== BDSCHAEL IF ~BeenInParty("C0KVEL")~ THEN ~I'll wait for you two to catch up. Just don't take too long.~
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("BD0109") Global("C0KvelSoDStart","GLOBAL",0)~ THEN C02KVEL KVEL-SOD-START
~If you are hungry, make an order at the bar. You'll not receive a meal faster by intruding in the kitchen.~
DO ~SetGlobal("C0KvelSoDStart","GLOBAL",1)~
END
  + ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0KVEL")~ + ~Not even for me, K'Vel?~ DO ~SetGlobal("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVEL KVEL-SOD-START-OLD-1
  + ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0KVEL")~ + ~I'm not here to eat, I'm here to ask for your help.~ DO ~SetGlobal("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVEL KVEL-SOD-START-OLD-2
  + ~!BeenInParty("C0KVEL")~ + ~You're... a drow chef?~ EXTERN C02KVEL KVEL-SOD-START-NEW-1
  + ~!BeenInParty("C0KVEL")~ + ~Sorry. I'll get out.~ EXIT

CHAIN C02KVEL KVEL-SOD-START-OLD-1
~I give no special treatment.~
EXTERN C02KVEL KVEL-SOD-START-OLD-3

CHAIN C02KVEL KVEL-SOD-START-OLD-2
~...~
EXTERN C02KVEL KVEL-SOD-START-OLD-3

CHAIN C02KVEL KVEL-SOD-START-OLD-3
~I hear you intend to march against the crusade.~
END
  ++ ~That's right. And I'd like for you to join me.~ + KVEL-SOD-START-NEW-7
  ++ ~I was hoping to catch up, but since you seem to enjoy your current job so much...~ + KVEL-SOD-START-OLD-4

CHAIN C02KVEL KVEL-SOD-START-OLD-4
~No. I am prepared to go. We have a prewritten contract, along with the new one I have signed with the Grand Dukes.~
END
  ++ ~Alright, then. Come with me.~ + KVEL-SOD-START-NEW-7
  ++ ~Just like that? That's refreshing. Let's go.~ + KVEL-SOD-START-NEW-7
  ++ ~Actually, I'm just here to say you can stick around here a while longer if you want. I'll be fine on my own.~ + KVEL-SOD-START-NEW-8

CHAIN C02KVEL KVEL-SOD-START-NEW-1
~I am sanctioned to be working here, if it concerns you.~
= ~Though if you intend to flee the building while screeching at the top of your lungs, like the previous buffoon, you are welcome to.~
END
  ++ ~Nothing so dramatic. I was just surprised.~ + KVEL-SOD-START-NEW-2
  ++ ~You seem more like a mercenary than a servant, though. What are you doing here?~ + KVEL-SOD-START-NEW-3
  ++ ~I won't screech, but I will leave you alone. Excuse me.~ EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-2
~If you are done speaking, leave. This batch of food still requires preparation. I do not appreciate being distracted.~
END
  ++ ~Wait. I'm looking for capable hands to assist me on the march against the crusade. You seem very capable.~ + KVEL-SOD-START-NEW-4
  ++ ~I'll leave you alone to continue with your work.~ EXIT
  ++ ~Your rudeness displeases me, but I'll overlook it this time. I'm leaving now.~ EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-3
~Killing time.~
EXTERN C02KVEL KVEL-SOD-START-NEW-2

CHAIN C02KVEL KVEL-SOD-START-NEW-4
~You are against the crusade?~
= ~I see. Now that I am looking at you, I understand. You must be <CHARNAME>, the slayer of Sarevok.~
END
  ++ ~Even you know of me?~ + KVEL-SOD-START-NEW-5
  ++ ~Does that mean you'd be willing to work together?~ + KVEL-SOD-START-NEW-6

CHAIN C02KVEL KVEL-SOD-START-NEW-5
~Your name is hardly unknown throughout the city. And I had... old foes associated with the Iron Throne. Though they are now dealt with.~
EXTERN C02KVEL KVEL-SOD-START-NEW-6

CHAIN C02KVEL KVEL-SOD-START-NEW-6
~Perhaps we may become allies. I would normally prefer a written agreement, but the contract I have signed with the Grand Dukes will suffice.~
= ~Are you aware of what it means to accept a drow within your group?~
END
  ++ ~It'll affect my reputation, I'm sure. But you seem strong enough to be worth the setback.~ + KVEL-SOD-START-NEW-7
  ++ ~Now that I think of it, maybe it's not such a good idea.~ + KVEL-SOD-START-NEW-8

CHAIN C02KVEL KVEL-SOD-START-NEW-7
~...~
== C02KVEL ~Very well. One moment.~
== C02KVEL ~...~ [C0KVSF5]
== C02KVEL ~... ...~ [C0KVSF6]
== C02KVEL ~... ... ...~ [C0KVSF7]
== C02KVEL ~You. Take care of the rest.~
== BDPOOL12 ~Wh—wait, you're leaving?~
== C02KVEL ~I thought you'd be relieved.~
== BDPOOL12 ~No, I—eh, ah, well—forget what I think, you can't just walk out right now! Am I supposed to take care of this whole house on my own? After they've all raised their expectations?~
== C02KVEL ~You will survive.~
== BDPOOL12 ~Now wait one moment! You can't just go whenever you... I mean, what about all the—AAH! Cripes, the pan's burning! Oooohhh...!~
== C02KVEL ~I have my belongings close at hand. We may leave.~
DO ~SetGlobal("C0KvelSoDJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-8
~Then we have little to talk about. Leave.~
EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-9
~Very well. The conditions for my presence here includes assisting you in whatever purpose is necessary. Lead on.~
DO ~SetGlobal("C0KvelSoDJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDStart","GLOBAL",1) Global("C0KvelSoDJoined","GLOBAL",0)~ THEN C02KVEL KVEL-SOD-START
~What do you want?~
END
  + ~AreaCheck("BD0109")~ + ~I was hoping you'd join me. I need allies at my side when I march against the crusade.~ + KVEL-SOD-START-NEW-7
  + ~!AreaCheck("BD0109")~ + ~I was hoping you'd join me. I need allies at my side when I march against the crusade.~ + KVEL-SOD-START-NEW-9
  ++ ~Nothing. I'll leave you alone.~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)~ THEN C02KVEL KVEL-SOD-PROLOGUE
~If you believe it more efficient to split up, I will do so, even if I do not approve of it.~
END
  ++ ~I know what I'm doing. Just wait here.~ + KVEL-SOD-PROLOGUE-1
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0KVEL")~ + ~Go back to the camp. I'll be fine without you.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + KVEL-SOD-PROLOGUE-1
  ++ ~You're right. Stick around.~ + KVEL-SOD-PROLOGUE-2

CHAIN C02KVEL KVEL-SOD-PROLOGUE-1
~So be it.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02KVEL KVEL-SOD-PROLOGUE-2
~As you wish.~
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDJoined","GLOBAL",1) Global("bd_joined","locals",0)~ THEN C02KVEL KVEL-SOD-PROLOGUE2
~Do you need my service again?~
END
  ++ ~Yes.~ + KVEL-SOD-PROLOGUE-2
  ++ ~Not yet.~ + KVEL-SOD-PROLOGUE-1
