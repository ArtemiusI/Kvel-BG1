BEGIN BC0KVEL

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAjantis1","GLOBAL",0)~ THEN BAJANT C0KvelAjantis1
~Stand in front of me where I can see you at all times, drow.~
DO ~SetGlobal("C0KvelAjantis1","GLOBAL",1)~
== BC0KVEL ~That would prove inconvenient for me to perform my role within this group, knight. I refuse.~
== BAJANT ~This is not a request. I tolerate your presence only because Helm's all-seeing vision has yet to reveal any evil intent directed towards our allies, but I am prepared for that to change.~
== BAJANT ~It would be the preferable outcome if it does not, but until then, I will never lower my vigilance around you. And that means keeping sight of your every action while on the road.~
== BC0KVEL ~Do as you will, but do not expect me to restrain myself or alter my personal practice for your sake. I have cause to observe you as well, and mine is far more practical.~
== BAJANT ~*sigh* Helm preserve me. This responsibility will be particularly difficult...~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAjantis1","GLOBAL",1)~ THEN BAJANT C0KvelAjantis2
~I have told you, drow. Remain where I can see you and be prepared for any unanticipated actions.~
DO ~SetGlobal("C0KvelAjantis1","GLOBAL",2)~
== BC0KVEL ~...*sigh*~
== BC0KVEL ~Indulge me in one curiosity. Is it that you in fact wish for me to betray the group, or perform some other vile act, so that your distrust might be validated?~
== BAJANT ~Do not accuse me of such narrow and self-serving motives. Whatever you think of we 'surfacers', know that there are those who pay more than lip service to honor and virtue.~
== BC0KVEL ~Then what is this?~
== BAJANT ~...~
== BC0KVEL ~Your honor and conviction, I do not doubt. They are your true sword and shield, which I can respect. The direction in which you point them... impulsive and inefficient. Perhaps instead of I, you should be looking within yourself.~
== BAJANT ~I do not need lectures from a sellsword whose ethics were derived from a society in which survival at any personal sacrifice is the only thing to aspire to.~
== BC0KVEL ~Fine. Philosophical debate is far from my interests regardless. Simpler things please me well enough. Eat. Though you seem to aspire to be a sleepless warden, for now you are still merely a mortal body.~
== BAJANT ~This is... is it supposed to be edible?~
== BC0KVEL ~Fearing poison? I'll give you time to think on it. That will likely keep for longer than you.~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAjantis1","GLOBAL",2)~ THEN BC0KVEL C0KvelAjantis3
~I was perhaps wrong, knight.~
DO ~SetGlobal("C0KvelAjantis1","GLOBAL",3)~
== BAJANT ~I am all ears.~
== BC0KVEL ~Since our last debate, I have been reconsidering. It was unfair that called your judgment of me impulsive.~
== BAJANT ~Then you admit you have ulterior motives? If so... I'm disappointed. I was beginning to believe you could be trusted.~
== BC0KVEL ~Perhaps not so unfair. As I said, I reconsidered. You were truthful when you claimed you preferred that I could be trusted. Perhaps it is I have not been giving you the respect you deserve.~
== BC0KVEL ~We do not look it, but I have the advantage of many years of experience and understanding of people. For your youth, you are more rational in your judgment than I had expected. You made your distrust clear to me, rather than hiding on it. That, I appreciate.~
== BC0KVEL ~Despite our differences, Ajantis Ilvastarr, I believe we can co-operate effectively.~
== BAJANT ~And this is what you truly believe?~
== BC0KVEL ~For all I believe your ways are inbound towards struggle and disaster, I find straightforward and candid thinkers the most preferable to associate with.~
== BAJANT ~Then we understand each other. I do not approve of all your methods, but your intent appears benign. By my honor, I will put you under no more scrutiny than any other companion. I hope we may work together to fulfill our roles from here on.~
== BC0KVEL ~Acceptable.~
== BC0KVEL ~I assume that as I have your trust, you ate the dried rothe on rye?~
== BAJANT ~...I did, yes. It was nourishing.~
== BC0KVEL ~Good enough.~
EXIT

// Alora
CHAIN IF ~InParty("Alora")
See("Alora")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAlora1","GLOBAL",0)~ THEN BALORA C0KvelAlora1
~Look, K'Vel, the sky is falling! Watch out!~
DO ~SetGlobal("C0KvelAlora1","GLOBAL",1)~
== BC0KVEL ~...~
== BALORA ~Aw, you didn't look up even for a little bit. I heard that joke always works on drow.~
== BC0KVEL ~Perhaps you have not heard that I *have* lived on the surface for several years now, halfling. I see your mind does not work with half the dexterity of your fingers.~
== BALORA ~I can live with that. My fingers are the fastest in all of the Sword Coast! If my mind is even half as fast, that'd still make me a quick thinker!~
== BC0KVEL ~Yet I have not failed to catch you even once yet.~
== BALORA ~Those times were for charity!~
EXIT

CHAIN IF ~InParty("Alora")
See("Alora")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAlora2","GLOBAL",0)~ THEN BC0KVEL C0KvelAlora2
~Stop following me around.~
DO ~SetGlobal("C0KvelAlora2","GLOBAL",1)~
== BALORA ~No!~
== BC0KVEL ~My position requires stealth and patience. Your ceaseless hopping about only serves to draw attention to me, which is harmful to us both in several ways.~
== BALORA ~But I don't want to stop until I make you laugh!~
== BC0KVEL ~That will never happen.~
== BALORA ~I'll make it happen!~
== BC0KVEL ~For a rogue you are the very inverse of subtlety. What must I do to make you cease, save for a shallow feigning of good humor?~
== BALORA ~Hmm... now you've got me thinking... I got it! Tell me a joke, and if it makes me laugh, I'll leave you alone for as long as you like!~
== BC0KVEL ~Ask something else.~
== BALORA ~Nope! No takebacks here! You're all about that "honoring the contract" stuff, now cough up! One joke, or I keep on annoying you!~
== BC0KVEL ~*sigh*~
== BC0KVEL ~...~
== BC0KVEL ~Did you know that when illithids implant the tadpoles used for reproduction inside of a halfling, the process of ceremorphosis takes merely half the time, making them the devourers' favorite prey?~
== BALORA ~...~
== BC0KVEL ~...~
== BALORA ~...~
== BALORA ~Are we... really?~
== BC0KVEL ~No. But it appears you did believe it. To fool people, that is how 'jokes' work, is it not?~
== BALORA ~NO! Jokes are supposed to be funny, and make everyone laugh, not... that! I'm staying far, far away from you, at least until I stop getting goosebumps!~
== BC0KVEL ~Silence at last.~
EXIT

// Baeloth
CHAIN IF ~InParty("Baeloth")
See("Baeloth")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelBaeloth1","GLOBAL",0)~ THEN BBAELOTH C0KvelBaeloth1
~My, but you're a brilliantly brobdingnagian brute, brother, aren't you? Are you perfectly positive that we are part of the same race?~
DO ~SetGlobal("C0KvelBaeloth1","GLOBAL",1)~
== BC0KVEL ~I wish we were not.~
== BBAELOTH ~Come now, show a little species solidarity! When this miserable mission is made history, would you care to sign another contract? I could use a heavyset hireling for my revival of the Black Pits.~
== BBAELOTH ~It couldn't be any worse than serving under the yoke of the priestesses. I allow three square meals a day. And fine beds.~
== BC0KVEL ~No.~
== BBAELOTH ~*sigh* Oloth. And that settles it, then? Well, diplomacy is a slow, calculated process. I'll make you crack eventually.~
EXIT

// Branwen
CHAIN IF ~InParty("Branwen")
See("Branwen")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelBranwen1","GLOBAL",0)~ THEN BBRANW C0KvelBranwen1
~The greatsword suits you, K'Vel. Few elves that I have met are blessed with a form as well-built as yours.~
DO ~SetGlobal("C0KvelBranwen1","GLOBAL",1)~
== BC0KVEL ~You are not wrong, Tempusite. Most drow are slight, even by the standards of elves. Rare do they have the choice to depend on raw strength as much as finesse.~
== BBRANW ~Indeed. Even the mightiest berserkers of the north could turn red with envy over the your inherent gift. Little wonder you have become such a great warrior—'tis only a pity that you lack direction.~
== BC0KVEL ~Seeking one to add to your flock, priestess? Perhaps I was wrong to appreciate your compliment.~
== BBRANW ~The Lord of Battles judges not by breed nor upbringing, only zeal for warfare, which you have in abundance. Had you the stature of a halfling, I would treat you with equal respect so long as your sword arm is true.~
== BC0KVEL ~And?~
== BBRANW ~Why, no other god could fit your position in life more, no? I can see that you hold no loyalty to the Spider Queen, nor any other god to whom your kin speaks in prayer. What reason have you not to accept your calling?~
== BC0KVEL ~I respect your strength and conviction, much as it is alien to me. But you suffer the same degree of myopia as any other priest I have known—that which spawns the belief that all actions are part of a greater purpose, even for the unwitting.~
== BC0KVEL ~Though only the gods can decide whether you or I are right, I cannot hold the same belief. I trust in my sword and my knowledge, nothing more. And I have never regretted it.~
EXIT

// Coran
CHAIN IF ~InParty("Coran")
See("Coran")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelCoran1","GLOBAL",0)~ THEN BCORAN C0KvelCoran1
~Ah, K'Vel, my dark-hearted cousin. Were I to present your countenance to any elven maiden to whom I share acquaintance, they would assuredly label you as the least pleasing drow to have ever lived.~
DO ~SetGlobal("C0KvelCoran1","GLOBAL",1)~
== BC0KVEL ~Then it is fortunate for me that the affections of darthiir hold little importance in my heart.~
== BCORAN ~I haven't finished! I'll excuse the vulgar diction, as I have understood you well enough to know that it is your way to irritate me into silence, but—~
== BC0KVEL ~Enough... is what I would say if I did not know better. Get it over with.~
== BCORAN ~*But* it is also true that from my long journeys in the human lands, I have known many dames with keen eyes that appreciate a larger, rougher sort of appeal, brimming with masculinity, and you certainly have that.~
== BC0KVEL ~Your point?~
== BCORAN ~All I want to suggest is, why not embrace what you were blessed with? You already have broken the perception many hold towards the drow... do you realize how much farther you could take it, were you to use your rare charms to the potential that they have?~
== BC0KVEL ~And become a promiscuous, hedonistic layabout utterly barren of self-respect, such as yourself?~
== BCORAN ~There's the insults again! Little wonder it is that my kin and all else have so little fondness for the drow, when you yourself are so fond of responding to even a helping hand with an ungrateful slap.~
== BC0KVEL ~I know not what life you must have lived, but I have no doubt it has been an extreme of either gratification of emptiness.~
== BCORAN ~My life certainly has been blessed with plenty of luck and beauty.~
== BC0KVEL ~For the bare minimum of respect I have for your inept efforts at a peace offering, I will simply tell you that my own experience is that laying beside one whose intentions are unknown is a sure path to certain death.~
== BC0KVEL ~Consider that my indifferent advice that may keep you from death one day.~
EXIT

CHAIN IF ~InParty("Coran")
See("Coran")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelCoran1","GLOBAL",1)~ THEN BCORAN C0KvelCoran2
~Come now, K'Vel, smile a little. Surely, you cannot hate me so much that you find it preferable to maintain that irate visage.~
DO ~SetGlobal("C0KvelCoran1","GLOBAL",2)~
== BC0KVEL ~On the contrary, I do not hate you at all. I merely find you personally contemptible.~
== BCORAN ~How is that any different?~
== BC0KVEL ~I can at least appreciate that you appear to be 'attempting' to make peace, clumsy and imbecilic as your attempts are. That is more than I expect from most elves.~
== BCORAN ~You are quite astute. Indeed, I find myself much more apt when it comes to charming the fairer sex, but I also believe in... what is it the humans say, those sedate types, "making love, not war"?~
== BC0KVEL ~Yet you only seem to have mastered that term in the most literal sense. Even considering it 'mastery' is generous, if what I have heard is any indication.~
== BCORAN ~Ah, a strike right where it hurts! I have never said this before, K'Vel, but out of all the enemies I have ever met, you are without a doubt my very favorite.~
EXIT

// Dorn

CHAIN IF ~InParty("Dorn")
See("Dorn")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDorn1","GLOBAL",0)~ THEN BDORN C0KvelDorn1
~You are fighting for a lost cause, drow.~
DO ~SetGlobal("C0KvelDorn1","GLOBAL",1)~
== BC0KVEL ~Tell that to <CHARNAME>.~
== BDORN ~*Your* cause. You believe by holding yourself up to a standard, you make yourself something more. It will not work. The shortsighted fools around you will still judge and persecute you.~
== BC0KVEL ~And?~
== BDORN ~Forget this charade of loyalty. If you seek self-preservation, take what you need by any means. Free yourself of your shackles, and find others of like mind. That is the way to survive.~
== BC0KVEL ~That seemed to work out very well for you.~
== BDORN ~I merely chose the wrong people. But I learned a valuable lesson—no one can ever be fully trusted. This time... I will be patient. Whether you are an ally or an enemy is yet to be seen.~
EXIT

CHAIN IF ~InParty("Dorn")
See("Dorn")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDorn2","GLOBAL",0)~ THEN BC0KVEL C0KvelDorn1
~You are not half as clever as you believe to be, Dorn.~
DO ~SetGlobal("C0KvelDorn2","GLOBAL",1)~
== BDORN ~Measure your next words carefully, drow.~
== BC0KVEL ~It is the ignorance of youth showing, no doubt. Suffer a betrayal, cut a murderous path to life from death, and you believe you have learned. That you have become wise, and you know what it takes to survive. All you have learned is that you will not know when your death comes to you.~
== BDORN ~And you believe yourself properly enlightened, do you? Tell me of your experiences, then, and perhaps I shall decide whether I deem you a worthy teacher. Though I doubt it.~
== BC0KVEL ~I will spare us both the waste of time. Whether you live or die is of no concern to me.~
EXIT

// Dynaheir

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDynaheir1","GLOBAL",0)~ THEN BDYNAH C0KvelDynaheir1
~Thou'rt of the city of Eryndlyn, art thou not?~
DO ~SetGlobal("C0KvelDynaheir1","GLOBAL",1)~
== BC0KVEL ~Indeed. I have made no secret of that.~
== BDYNAH ~I have read lore of thy former home, the merchant city of the drow. The cults of Lolth, Ghaunadaur and Vhaeraun hold equal power, and their hatred for each other is only exceeded by that of the merchant lords who truly rule. Thy city exists in an everlasting power struggle.~
== BC0KVEL ~No longer my city, and power struggles have always been the way of the drow. The only difference is that the banners visibly differ. That is all.~
== BDYNAH ~There is no denying that. But for whose banner didst thou fight under?~
== BC0KVEL ~In other words, my faith? I have none.~
== BDYNAH ~I asked of thy banner, not thy faith. I understand that sometimes one must fight for a cause without faith.~
== BC0KVEL ~...A little of each. Though never under the same name.~
== BDYNAH ~My intial impressions of thee were accurate, then.~
== BC0KVEL ~That was then. If it is my loyalty you doubt, witch, you need only read the contract I signed. I have no better proof to offer you than that.~
EXIT

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDynaheir2","GLOBAL",0)~ THEN BDYNAH C0KvelDynaheir2
~Who taught thee thy mastery of the Art, K'Vel?~
DO ~SetGlobal("C0KvelDynaheir2","GLOBAL",1)~
== BC0KVEL ~I am flattered that you might call my dabbling in the arcane anything resembling mastery.~
== BDYNAH ~Thy knowledge is unrefined, undoubtedly. Save for swordsmanship, thine skills are wielded as though tools of survival. Needed, but without attachment. But magic is not simply learned as one wishes it.~
== BC0KVEL ~Is it not? I have read the scrolls. I remember the incantations. When needed, I can obfuscate my form and debilitate others, and I do so because it is useful. Why should my relationship with the Art go further than that?~
== BDYNAH ~Didst thou always treat that blade in your hands with as much dispassion? Thy act is well-practiced, but I do not believe so. One does not achieve such mastery without cause.~
== BDYNAH ~Once, thou didst dedicate thyself to a true art. Now, thou use things because they are convenient, no more.~
== BC0KVEL ~And you find this concerning.~
== BDYNAH ~I pity thee. Thou lost something within thyself, and thy current act is built from despair in knowing it cannot be reclaimed. I only hope thy views on humanity is no more impassive.~
EXIT

// Edwin

CHAIN IF ~InParty("Edwin")
See("Edwin")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelEdwin1","GLOBAL",0)~ THEN BC0KVEL C0KvelEdwin1
~Mage.~
DO ~SetGlobal("C0KvelEdwin1","GLOBAL",1)~
== BEDWIN ~What! What do you want, drow? I was thinking! (Thinking of how best to deal with you if... yes, maybe... no, wait.)~
== BC0KVEL ~You would do best to keep such thoughts in your head, where they belong. If you continue to assess threats from the wrong direction, you will certainly die from a cause you do not expect.~
== BEDWIN ~So you say, so you say. But I cannot trust a man of unknown origin, especially one whose natural ability is being so impervious to magic. You may consider it paranoia, but for me, it is practical.~
== BC0KVEL ~Think what you will. You should consider it fortunate that my responsibility includes ensuring your survival. Otherwise...~
== BEDWIN ~"Otherwise"? (I knew it! The drow plots against me, most certainly! I must think of a strategy, quickly!)~
== BC0KVEL ~...Forget it. By my observation, there is no more dangerous enemy to you than yourself.~
EXIT

// Eldoth

CHAIN IF ~InParty("Eldoth")
See("Eldoth")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelEldoth1","GLOBAL",0)~ THEN BELDOT C0KvelEldoth
~I believe I feel a song coming up. The muse is upon me, I see the perfect subject.~
DO ~SetGlobal("C0KvelEldoth1","GLOBAL",1)~
== BC0KVEL ~...~
== BELDOT ~"The Ugliest Drow To Have Ever Lived". It will surely be good for a few laughs, the dark elf that defied all expectations of beauty and grace, instead being cursed with the brawn to put a bull to shame...~
== BC0KVEL ~...~ [C0KVSF2]
== BELDOT ~Wh—hang on, where are you going? You are supposed to stand and listen!~
== BELDOT ~Come back, right now! You cannot simply walk out of a conversation without a word! HEY!~
EXIT

CHAIN IF ~InParty("Eldoth")
See("Eldoth")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelEldoth1","GLOBAL",1)~ THEN BELDOT C0KvelEldoth
~As I've always said, life is all about appearance. In that respect, why even live if one is so hideous?~
DO ~SetGlobal("C0KvelEldoth1","GLOBAL",2)~
== BC0KVEL ~Why indeed.~
== BELDOT ~Ah, you are talking to me this time? I had prepared myself to hear the graceless sounds of your distant footsteps once again.~
== BC0KVEL ~I considered it. But against my wishes, your protection is regrettably part of my responsibility as well, and I have no need to make it harder standing from a distance. But that may change should you deem to begin singing any ridiculous songs of me.~
== BELDOT ~You needn't worry on that end. The muse was lost. After the wordless insult you subjected me to, I have little desire to ever sing of your name even in mockery. But what's this about "protection"? The only thing I need protecting from is the kind of poor image you present to others by standing close to me.~
== BC0KVEL ~Then you would prefer that I keep away. That is good. Should a stray arrow catch you deservedly in the throat, there was nothing I could have done.~
== BELDOT ~*sigh* How utterly insufferable.~
EXIT

// Faldorn
CHAIN IF ~InParty("Faldorn")
See("Faldorn")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelFaldorn1","GLOBAL",0)~ THEN BFALDO C0KvelFaldorn1
~I have watched you foraging for mushrooms and other wild growths, drow. Your technique is callous, and utterly uncaring towards the other beasts of the wild.~
DO ~SetGlobal("C0KvelFaldorn1","GLOBAL",1)~
== BC0KVEL ~They will have to make do. I must also eat.~
== BFALDO ~And they, who have lived on the land for far longer than you have, do not deserve their own sustenance?~
== BC0KVEL ~If they required it so desperately, I would not find it. In my experience, the land is more than generous.~
== BFALDO ~If empathy towards the wild will not persuade you, then perhaps practicality will. The method in which you cut is wasteful and an insult towards the Great Mother's bounty. You could gather even more of use with half the effort needed.~
== BC0KVEL ~And you know better? ...But of course you do. Who do I think I'm speaking to?~
== BFALDO ~Watch your tone, or I shall withhold my wisdom. Pass me your knife, and I will show you the proper way.~
EXIT

// Garrick
CHAIN IF ~InParty("Garrick")
See("Garrick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelGarrick1","GLOBAL",0)~ THEN BGARRI C0KvelGarrick1
~"Hmm, hmm-di-de-hm, we fight and then we pray, when we lose we run to fight another day..."~
DO ~SetGlobal("C0KvelGarrick1","GLOBAL",1)~
== BC0KVEL ~Ministrel. Taste this.~
== BGARRI ~Hello, what's this? Some sort of candy? I say, I was feeling rather peckish.~
== BC0KVEL ~A confection made with lemon juice, honey and coldpine sap, then hardened. I can hear the hoarseness of your voice—this will soothe it a little.~
== BGARRI ~Er... can I be sure this is safe to eat? You're being uncharacteristically generous.~
== BC0KVEL ~Much as I hate to say it, your singing is important to boosting morale... but only if it sounds better than a croaking toad.~
== BGARRI ~I knew you weren't as surly as you look, dear K'Vel! This looks absolutely delectible. *chew* And it tastes sublime as well!~
== BGARRI ~Mmh... wait, what'sh... why'sh m'mouth... can't feel m'tongue!~
== BC0KVEL ~Coldpine sap also contains a weak poison that causes numbness in your mouth until one has built up a tolerance for it.~
== BGARRI ~Mmm—mwwmhy?!~
== BC0KVEL ~I did not lie when I claimed it would soothe your throat. I merely ommitted the other potential effects.~
== BGARRI ~Gah! Pfaugh! *spit* *spit*~
== BC0KVEL ~If you must perform, do it with your instrument. The lute is barely tolerable. I could do with less of your voice to accompany it.~
== BGARRI ~M'gods! Y're absh'lutely atroshioush! Mmm! HMM!~
EXIT

CHAIN IF ~InParty("Garrick")
See("Garrick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelGarrick1","GLOBAL",1)~ THEN BC0KVEL C0KvelGarrick2
~How's your tongue, bard?~
DO ~SetGlobal("C0KvelGarrick1","GLOBAL",2)~
== BGARRI ~Terrible, just terrible! I still can't taste things the way I used to! That was an awful prank you played on me!~
== BC0KVEL ~You can enunciate again. That means you're fully recovered. Perhaps I should use a greater dosage of sap instead of honey.~
== BGARRI ~"Fully recovered"? Do you know what kind of torture it is to not be able to enjoy the rich flavors of food? Especially when you, surprising as it is, can so easily make such mouth-watering dishes using only the bounty of the earth!~
== BGARRI ~How is it *you* are not affected by those sweets, by the way? I've seen you munching on the things regularly without a hint of anything wrong.~
== BC0KVEL ~As I said, one can build up a tolerance. And this is one of my favorites.~
== BGARRI ~Well... I can't deny that it's delicious, while you can still taste it...~
== BC0KVEL ~Have another. I could do with the quiet.~
== BGARRI ~Er... no, thank you. I'm tempted, certainly, but my tongue is a valuable asset, and I'd rather not lose the ability to use it again.~
EXIT

// Imoen

CHAIN IF ~InParty("Imoen")
See("Imoen")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelImoen1","GLOBAL",0)~ THEN BIMOEN C0KvelImoen1
~Can you cook me something, K'Vel, I'm hungry!~
DO ~SetGlobal("C0KvelImoen1","GLOBAL",1)~
== BC0KVEL ~Wait for mealtime.~
== BIMOEN ~But I'm hungry right now!~
== BC0KVEL ~That is not my concern.~
== BIMOEN ~But you always do the cooking for the group! Your food is so tasty, I'm always cleaning my bowl nowadays. Besides, you signed a contract with <CHARNAME>, so you have to follow orders.~
== BC0KVEL ~<CHARNAME> is my current employer. I do not remember your name on the parchment.~
== BIMOEN ~What's the difference? I may as well be <CHARNAME>'s sister. If I say something, <PRO_HESHE>'ll back it up, right? Always been like that.~
== BC0KVEL ~You have precious little understanding of contracts. Begone, child.~
== BIMOEN ~I'm dying here!~
== BC0KVEL ~Call me again once you've properly died.~
EXIT

CHAIN IF ~InParty("Imoen")
See("Imoen")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelImoen2","GLOBAL",0)~ THEN BIMOEN C0KvelImoen2
~K'Vel, why don't you ever speak drow?~
DO ~SetGlobal("C0KvelImoen2","GLOBAL",1)~
== BC0KVEL ~Would you understand me if I did?~
== BIMOEN ~No...?~
== BC0KVEL ~Then there is hardly a point.~
== BIMOEN ~But it's such a beautiful-sounding language. Most of the phrases I've heard are awful when they're translated, sure, but I'd like to learn!~
== BC0KVEL ~And do what, even if you mastered the language?~
== BIMOEN ~Speak with other drow who are better talkers than you, for a start.~
== BC0KVEL ~Then I am withholding the knowledge for your own safety.~
EXIT

CHAIN IF ~InParty("Imoen")
See("Imoen")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelImoen3","GLOBAL",0)~ THEN BIMOEN C0KvelImoen3
~Haa! "En garde"!~
DO ~SetGlobal("C0KvelImoen3","GLOBAL",1)~
== BC0KVEL ~...~
== BIMOEN ~Hey, I said, "en garde"! Draw your sword, scallywag, and settle this once and for all!~
== BC0KVEL ~It may be a waste to ask, but what is this?~
== BIMOEN ~I wanna spar, of course! I'm your apprentice in swordsmanship!~
== BC0KVEL ~I do not remember making this arrangement.~
== BIMOEN ~That's because I made the decision! I'm going to Imoen the Blademistress from now on, and you'll teach me how to fight properly!~
== BC0KVEL ~And what became of your usual fascination with magic?~
== BIMOEN ~I can learn how to use a sword and magic at the same time!~
== BC0KVEL ~...~
== BC0KVEL ~*sigh* If you do intend to learn, though I doubt there is a point, start by brandishing a proper sword. That is a tuber you're holding, not even a branch.~
== BIMOEN ~What? It is? Oh... you're right, it's kinda bendy. This is no good, it'd break as soon as it hit something.~
== BC0KVEL ~Wait. Don't toss it.~
== BIMOEN ~Huh?~
== BC0KVEL ~Give it to me—I have use for it. When skinned and boiled, this makes for a nutritious addition to a stew.~
== BIMOEN ~Oh. Right, that's why I got it for you. Definitely the reason all along. Ha ha! Aren't you grateful?~
EXIT

// Jaheira

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelJaheira1","GLOBAL",0)~ THEN BJAHEI C0KvelJaheira1
~How many years have you lived on the surface for, K'Vel?~
DO ~SetGlobal("C0KvelJaheira1","GLOBAL",1)~
== BC0KVEL ~What business is that of yours?~
== BJAHEI ~It is important.~
== BC0KVEL ~...Seven years, if you must know.~
== BJAHEI ~Though a short amount of time for an elf, it is enough to leave some history.~
== BC0KVEL ~You intend to investigate my background?~
== BJAHEI ~One can never be too careful.~
== BC0KVEL ~Then you should not have told me.~
== BKHALI IF ~InParty("KHALID")~ THEN ~D–don't take this p–personally, she does this for everyone. It's not because you're d–d—~
== BJAHEI IF ~InParty("KHALID")~ THEN ~THANK you, Khalid, I was just about to get to that part.~
== BJAHEI ~This is common protocol for those in my line of work. I would like to trust you... that is a foreign concept to a drow, I suspect.~
== BJAHEI ~But if you have lived up here for so long, preferably without incident, you would do well to remember some things are not as they are in the Underdark.~
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelJaheira2","GLOBAL",0)~ THEN BJAHEI C0KvelJaheira2
~Ecthel Darcourt.~
DO ~SetGlobal("C0KvelJaheira2","GLOBAL",1)~
== BC0KVEL ~That is my former employer's name, not mine.~
== BJAHEI ~I had just realized why it sounded familiar. He is a Harper contact. A relatively new one, but I have heard his name before.~
== BC0KVEL ~I may have some recollection.~
== BJAHEI ~You do not know more?~
== BC0KVEL ~His personal affairs were never my concern.~
== BJAHEI ~Fine. At least I know that someone trusted by the Harpers has vouched for you in the past. That is good news for you.~
== BC0KVEL ~I do not need 'good news'. If all it takes to gain your trust is the word of someone under the same label, then you are in for greater disappointments in the future.~
EXIT

// Kagain
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKagain1","GLOBAL",0)~ THEN BKAGAI C0KvelKagain1
~Bah! <CHARNAME>, we hafta make talk on the gold we spend on our provisions ere the next time we resupply! I may be a miser, but I think I cannae stomach the quality o' this bread for another day! Pfaugh! I've tasted dirt that done more to whet me appetite!~
DO ~SetGlobal("C0KvelKagain1","GLOBAL",1)~
== BC0KVEL ~If it is to silence your constant bleating, dwarf, then you may sate your hunger on these. Consider yourself fortunate that I have gathered enough of them to share.~
== BKAGAI ~And what are "these", if ye dinnae mind explainin' to me, drow?~
== BC0KVEL ~Gilded morels. Rare, and deeply flavorful. They are cooked in oil, lightly salted then dried. Add them in a pot with and boil with water, to be consumed with bread or hardtack, or whatever pleases you. Alternatively, you might eat them as they are.~
== BKAGAI ~Ye think I be a fool? I may not know what ye dark-skinned elves call sustenance in the Underdark, but don't think I be stupid enough to eat whatever ye put in front of me! How can I be sure these wrinkly things aren't filled with deadly poison, eh?~
== BC0KVEL ~*sigh*~
== BC0KVEL ~...*munch* *chew*~
== BKAGAI ~Eh?~
== BC0KVEL ~Do you... *swallow*... do you truly believe I enjoy surviving on ancient and stale bread any more than you do, dwarf? I believed you to be practical.~
== BC0KVEL ~I care little for your discomfort, but it would be worse for us both if you were to collapse from hunger while in battle.~
== BKAGAI ~Well...~
== BC0KVEL ~The offer is only good for now. I cannot promise you any will be left for you later.~
== BKAGAI ~Pfeh, to the Nine Hells with it. *grumble* *munch*~
== BKAGAI ~...That ain't bad.~
EXIT

CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKagain1","GLOBAL",1)~ THEN BKAGAI C0KvelKagain2
~Ye... ugh... ye lyin' sack o' donkey dung, drow! *urp*~
DO ~SetGlobal("C0KvelKagain1","GLOBAL",2)~
== BC0KVEL ~What are you blathering on about now, dwarf?~
== BKAGAI ~Them mushrooms... ye have a tolerance fer 'em, don't ye? Admit it!~
== BC0KVEL ~As I told you before, they are not poisonous. Whatever seems to ail you now, it is none of my affair.~
== BKAGAI ~Don't ye play me fer a fool! I found myself cravin' some after we ran out, so I went to the woods an' found one. Cooked it like ye said, an' I've been feelin' me stomach twistin' an' churning fer hours since!~
== BC0KVEL ~Perhaps you are too thickheaded to follow simple instructions. They are simple enough to cook until they are safe to eat, and only a child or a dimwit would do it wrong.~
== BC0KVEL ~Unless...~
== BKAGAI ~What? WHAT?!~
== BC0KVEL ~You picked the type with pink spots on the base, didn't you?~
== BKAGAI ~So what if I did, eh? There be a difference between 'em?~
== BC0KVEL ~*sigh* Perhaps I should have warned you in advance. Fair enough, dwarf, I will provide you with an antidote for mushroom poisoning when I have a chance.~
== BKAGAI ~Ye'll make one fer me now if ye know what's good for ye! I'm half ready to hack me belly open just to put an end to the agony... oohhhh...~
EXIT

// Khalid
CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKhalid1","GLOBAL",0)~ THEN BKHALI C0KvelKhalid1
~You are a c–c–capable swordsman, K'vel.~
DO ~SetGlobal("C0KvelKhalid1","GLOBAL",1)~
== BC0KVEL ~I hardly need you to inform me of that.~
== BKHALI ~Such ability is not ac–cquired without intense training. Why is it that you chose t–to resort to magic and thievery?~
== BC0KVEL ~Do you believe it inefficient?~
== BKHALI ~No, I merely b–believe it to be a waste to squander such t–talent in neglecting focus in a single t–trade.~
== BC0KVEL ~If it sates your curiosity and stills your wavering tongue, then I will simply tell you. I suffered a... physical loss, long ago. The apex of swordsmanship is beyond me now. That is all.~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKhalid1","GLOBAL",1)~ THEN BKHALI C0KvelKhalid2
~K'Vel, you said you c–could not reach the apex of swordsmanship. From what I have ob–b–served, I b–believe that is untrue.~
DO ~SetGlobal("C0KvelKhalid1","GLOBAL",2)~
== BC0KVEL ~Perhaps not entirely true. It would not be impossible. But... too difficult, and a waste of time.~
== BKHALI ~I d–doubt you always b–believed so, or you would n–not attain such skill at all. What changed?~
== BC0KVEL ~I will ask you, Khalid. Suppose a terrible accident claimed your sword arm.~
== BJAHEI IF ~InParty("JAHEIRA")~ THEN ~Do not wish such terrible misfortune upon him!~
== BKHALI IF ~InParty("JAHEIRA")~ THEN ~P–please, Jaheira. He was merely speaking th–th–theoretically.~
== BKHALI ~What if I l–lose my arm?~
== BC0KVEL ~You live a life of danger. Given the choice to retrain with your left, or wield a simpler weapon from then on. What would you do?~
== BKHALI ~Much as I p–prefer the sword, for the sake of d–duty, I should l–l–logically choose another weapon to survive.~
== BC0KVEL ~Then you understand.~
EXIT

// Kivan

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",0)~ THEN BC0KVEL C0KvelKivan1
~...~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",1)~
== BKIVAN ~...~
== BC0KVEL ~If you wish to observe the best way to kill me, you would find more success when I cannot notice you.~
== BKIVAN ~A challenge, dark one?~
== BC0KVEL ~I will not act against you. What you intend with me is your affair, and I will act in my best interest.~
== BKIVAN ~Talking to me will not change anything.~
== BC0KVEL ~Ditto. It will not make what you are considering any easier. Yet you seem content to respond.~
== BKIVAN ~Then I will continue to offer silence, until my decision is made.~
== BC0KVEL ~That suits me well enough.~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",1)~ THEN BKIVAN C0KvelKivan2
~Have you ever hated, drow?~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",2)~
== BC0KVEL ~Hate is the poisonous wine that we imbibe until it destroys us. Drow have killed each other more than your kind have killed us since the beginning of our history. I have tried to abstain for the past decade.~
== BKIVAN ~And you believe this absolves you? You have little arrogance or cruelty, to that I am not blind. But you are no less a killer. What you call survival is a life that has claimed the lives of many, those who deserved it, and those who do not.~
== BC0KVEL ~...~
== BKIVAN ~And you do not even deny it! You may not know hate, like most drow, but your heart is no less black with bile.~
== BC0KVEL ~Will you try to cut it out and check for certain? I do not encourage it, but you are welcome to try.~
== BKIVAN ~...~
== BC0KVEL ~...~
== BKIVAN ~No.~
== BKIVAN ~Not yet.~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",2)~ THEN BC0KVEL C0KvelKivan3
~You have still yet to kill me, elf, after all this time.~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",3)~
== BKIVAN ~Vengeance drives me, but I am no monster. <CHARNAME> has need of you, and so I stay my hand.~
== BC0KVEL ~Vengeance... take a moment to humor me, Kivan of Shilmista. Do you know how many times I have heard that word, 'vharcan'—vengeance, spoken among my own kind?~
== BKIVAN ~Do not dare to insinuate I am anything like you!~
== BC0KVEL ~Me. That is the core of it, is it not? You do not even ask if I believe in 'vengeance'?~
== BC0KVEL ~No, because you do not see me, only a drow, only the face of a horrific sin committed that you can never forgive. And so it does not matter what I say. We will forever be enemies.~
== BKIVAN ~You are correct in that.~
== BC0KVEL ~Then there is nothing more to say.~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",3)~ THEN BKIVAN C0KvelKivan4
~You said you do not believe in vengeance. I do not believe it. By your own words, your kind slay each other more than any other could. Do you think I will believe that you have never been wronged or betrayed?~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",4)~
== BC0KVEL ~I have been betrayed. Most grievously. It cost me everything I once was.~
== BKIVAN ~Then you are a liar, or a fool. No man living could suffer such a wrong and not seek vengeance.~
== BC0KVEL ~A drow who has been slain through betrayal can avenge nobody.~
== BKIVAN ~But you are still alive.~
== BC0KVEL ~I am, indeed, for now. But that will not last. You need not know the reason why, Kivan of Shilmista, but regardless of whether you choose to kill me or not, I will die soon enough. I have not even felt the comfort of reverie for years, and I sleep each night knowing there is a chance I might not awaken.~
== BC0KVEL ~I know, were I not your enemy, your advice would be for me to bring the wretch who cut my life short and send him to the Demonweb Pits before I fall, merely for the slight chance of gratification.~
== BC0KVEL ~But I see little satisfaction in that. It would be tiresome, and a waste of time. I only mean to find my purpose in the remaining years. And so if you wish to end my life when it would torment me the most... put your arrow through my heart right now.~
== BC0KVEL ~No one will stop you.~
== BKIVAN ~...~
== BC0KVEL ~Too cowardly to take the shot? Or...~
== BKIVAN ~...I will consider what you have said.~
EXIT

// Minsc
CHAIN IF ~InParty("Minsc")
See("Minsc")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMinsc1","GLOBAL",0)~ THEN BMINSC C0KvelMinsc1
~K'Vel, my comrade, when you swing that greatsword, Minsc feels he fights not alongside a dark elf, but a fearless berserker of Rashemen!~
DO ~SetGlobal("C0KvelMinsc1","GLOBAL",1)~
== BC0KVEL ~You sense rage in my strikes, ranger?~
== BMINSC ~No, not rage! Valor! The kind of valor that makes evil tremble in their non-too-fitting boots! The only thing that would make it perfect would be a loud battlecry! Like—~
== BC0KVEL ~"Go for the eyes". Yes, I know.~
== BMINSC ~Consider making your own, my friend. It is simple. Simply think of the part of evil you wish to kick the most, then bellow at the top of your lungs! They will cower and protect that which you threaten to strike and quiver in terror!~
== BC0KVEL ~I think not. One shrieking warrior in combat is a valuable asset. Another would only mean chaos.~
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMinsc2","GLOBAL",0)~ THEN BC0KVEL C0KvelMinsc2
~A curious companion you keep at your side, ranger.~
DO ~SetGlobal("C0KvelMinsc2","GLOBAL",1)~
== BMINSC ~You speak of Boo? We are the greatest of companions!~
== BC0KVEL ~I have yet to see his contribution to your might, but perhaps that is his strength. If he has the natural skills of the cats that—~
== BMINSC ~SHH! Do not mention that word... that which begins with 'C', while Boo is within earshot, K'Vel. You will give him the shivers, which causes Minsc to itch awfully while he rests in my armor!~
== BC0KVEL ~...Perhaps I have overestimated you.~
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMontaron1","GLOBAL",0)~ THEN BMONTA C0KvelMontaron1
~Yer pretty covert for such a brutish-lookin' elf.~
DO ~SetGlobal("C0KvelMontaron1","GLOBAL",1)~
== BC0KVEL ~There is worth in remaining unpredictable, unlike yourself.~
== BMONTA ~If the honest life ever gets on yer nerves, like it always does for yer type, I've a few people I wouldn't mind introducin' ye to.~
== BXZAR IF ~InParty("XZAR")~ THEN ~Now, now, Monty, what rules have we set against unauthorized recruitment? Must I remind you again?~
== BMONTA IF ~InParty("XZAR")~ THEN ~*Ye* made the rules. I ne'er said a thing 'bout following 'em.~
== BXZAR IF ~InParty("XZAR")~ THEN ~I wouldn't have saw the need, had the three before I set those rules not all tried killing me in my sleep! Good thing I sleep with my eyes open, hehe... wonderful corpses they made. On second thought, maybe I wouldn't mind so much either.~
== BC0KVEL ~I would mind. Greatly.~
== BMONTA ~Stomach too weak? I'd not have expected that of ye.~
== BC0KVEL ~There is little competence I could imagine from any group that sees present company as a worthwhile investment.~
EXIT

CHAIN IF ~InParty("Montaron")
See("Montaron")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMontaron2","GLOBAL",0)~ THEN BMONTA C0KvelMontaron2
~Ye almost broke me hand, drow. Still achin' since this mornin'.~
DO ~SetGlobal("C0KvelMontaron2","GLOBAL",1)~
== BC0KVEL ~If you attempt to tamper with food mid-preparation again, I will sever it and add it to the pot next time.~
== BMONTA ~All I'm sayin' is that it'd have been juicier with a nice big dollop of lard.~
== BC0KVEL ~I would debate with you, but I doubt you have more appreciation for flavor than a primitive taste for blood.~
== BMONTA ~Don't forget the marrow. I like suckin' it straight from the bone.~
EXIT

// Neera
CHAIN IF ~InParty("Neera")
See("Neera")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelNeera1","GLOBAL",0)~ THEN BNEERA C0KvelNeera1
~Hey, K'Vel, I have a question for you. Is it true that drow are exceptionally resistant to magic?~
DO ~SetGlobal("C0KvelNeera1","GLOBAL",1)~
== BC0KVEL ~You have seen the proof of it yourself.~
== BNEERA ~Yeah. Magic missiles fizzle on your body, and you eat hot fireballs like breakfast. Wicked! I feel so bad for mages that try to kill us sometimes...~
== BNEERA ~Anyways, I'll get right to the point. Can I practice a few spells on you? You know, cause I'd feel really bad if I surged while casting at someone else. You, on the other hand...~
== BC0KVEL ~No.~
== BNEERA ~But...~
== BC0KVEL ~...~
== BNEERA ~Buuuut on second thought, I think it'd spoil the camaraderie we've got going on. Casting spells at friends, what a terrible thing to do, right? Tee-hee!~
EXIT

CHAIN IF ~InParty("Neera")
See("Neera")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelNeera2","GLOBAL",0)~ THEN BNEERA C0KvelNeera2
~Um.~ [CAS_M05]
DO ~SetGlobal("C0KvelNeera2","GLOBAL",1)
ReallyForceSpellRES("C0KVSP02","C0KVEL")~
== BNEERA ~Imsorryiswearthatwasntintentional!~
== BC0KVEL ~...~
== BC0KVEL ~*sigh*~
== BC0KVEL ~Say that again. Slowly, that I might understand.~
== BNEERA ~K'Vel, I SWEAR it wasn't intentional.~
== BC0KVEL ~I have little patience for riddles. Get to the point.~
== BNEERA ~You, uh, might want to look in a mirror.~
== BC0KVEL ~...~
== BC0KVEL ~I assume the effects will dissipate.~
== BNEERA ~U–usually within a day or two... wait, you aren't mad?~
== BC0KVEL ~I've seen the effects your unpredictable surges can cause. Compared to those, this is a blessing.~
== BNEERA ~Hey, you're actually not that bad. *whisper* I'll just leave out the part where sometimes your hair will stay like that for several months...~
EXIT

// Quayle
CHAIN IF ~InParty("Quayle")
See("Quayle")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelQuayle1","GLOBAL",0)~ THEN BQUAYL C0KvelQuayle1
~By golly, you're a brawny elf. How much did growing all that muscle suck out of your brains?~
DO ~SetGlobal("C0KvelQuayle1","GLOBAL",1)~
== BC0KVEL ~If that is your understanding of growth, I have to doubt that you were born with any at all.~
== BQUAYL ~You looking for a fight, big one? O–of wits! I mean a battle of wits, of course.~
== BC0KVEL ~I see little purpose in such. You are the smarter one. I can see that.~
== BQUAYL ~I am? You mean it? Ha! That's right! I knew you had some brains in you after all. You're alright in my book.~
== BC0KVEL ~Such a simple-minded one, so easy to manipulate...~
== BQUAYL ~What's that?~
== BC0KVEL ~Nothing.~
EXIT

// Rasaad
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelRasaad1","GLOBAL",0)~ THEN BC0KVEL C0KvelRasaad1
~Bald-headed one.~
DO ~SetGlobal("C0KvelRasaad1","GLOBAL",1)~
== BRASAAD ~I would prefer to be referred to my name, friend, but what do you need—~
== BRASAAD ~—ngh?!~ [HIT_03C]
== BC0KVEL ~Impressive.~
== BRASAAD ~Are you intending to take my life? Had I not raised my arm in time, that would not have been a light injury.~
== BC0KVEL ~Were that truly the case, I would have used my proper weapon.~
== BRASAAD ~If—gah... if you merely wished to exchange blows, you need only have asked. I would have been more than happy to oblige. The surprise attack was unnecessary.~
== BC0KVEL ~Testing one's instinctive response to an unexpected strike tells its own stories, as well.~
== BRASAAD ~Fair enough. I hope I did not disappoint.~
== BC0KVEL ~Your strength is commendable, if not exceptional. Nor your speed, though it is well above what I expect from humans. What sets you apart is something else, though I cannot put my finger on it...~
== BRASAAD ~If you are truly curious, I would not be opposed to showing you directly. I have no doubt you would learn in little time.~
== BC0KVEL ~I think not. You have your style, and I have mine. Though there is much to be learned from an unknown fighting style. I hope you are prepared for similar exchanges in the future.~
EXIT

// Safana
CHAIN IF ~InParty("Safana")
See("Safana")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSafana1","GLOBAL",0)~ THEN BSAFAN C0KvelSafana1
~I've always said that the high-and-mighty elves fail to appreciate a larger, more masuline form of beauty.~
DO ~SetGlobal("C0KvelSafana1","GLOBAL",1)~
== BC0KVEL ~On the contrary, I find it works to my advantage.~
== BSAFAN ~Yes, yes, to go unnoticed, I understand the value. I'm more than just a pretty face, you know. But what a waste.~
== BC0KVEL ~I can leverage my born strength and stature to overcome foes that are a struggle for my smaller kin. I see no waste.~
== BSAFAN ~Is fighting all you *ever* think about? Never any consideration of what other kinds of advantage your bulk can give you? Pretty elves are a copper a dozen. You are exotic.~
== BC0KVEL ~You are wasting your breath.~
== BSAFAN ~I don't waste anything, dear. I just need time to slip through the cracks in your armor.~
EXIT

// Shar-Teel
CHAIN IF ~InParty("Sharteel")
See("Sharteel")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSharteel1","GLOBAL",0)~ THEN BSHART C0KvelSharteel1
~I see how it is, drow. Your height, and using it to your advantage with a greatsword to overpower your opponents. A pathetic overcompensation.~
DO ~SetGlobal("C0KvelSharteel1","GLOBAL",1)~
== BC0KVEL ~Think of it that way if you will. The fact that you continue to taste defeat will not change—by my account, you are the one compensating.~
== BSHART ~Your arrogance will only make it more appealing to knock your face into the dirt!~
== BC0KVEL ~Then act on it. Strike me when it is unexpected, or use whatever other tricks you please. I doubt there will be any I have not seen.~
== BSHART ~Wretched man! Do you truly think so little of me? Your disgusting overconfidence, as though I cannot surpass you no matter what? This is why I will be sure to kill you personally.~
== BC0KVEL ~Consider your own words meaningful when you have actually beaten me.~
EXIT

CHAIN IF ~InParty("Sharteel")
See("Sharteel")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSharteel1","GLOBAL",0)~ THEN BSHART C0KvelSharteel1
~I *will* defeat you yet, drow.~
DO ~SetGlobal("C0KvelSharteel1","GLOBAL",1)~
== BC0KVEL ~Word alone hold little meaning. I will acknowledge them when they are proven.~
== BSHART ~Do not think that is impossible. When I find your weakness, you will be groveling at my feet in pain.~
== BC0KVEL ~By all means, try. I would be grateful if you discovered a weakness for me to address.~
== BSHART ~And you believe you know all of mine? What do you know, male?~
== BC0KVEL ~Your instinct to let ephemeral feelings dictate your skill is your weakness. If you resolved that which gives you your bloodthirsty spirit, I can see you defeating me.~
== BSHART ~Do not pretend to understand me. I wish to kill you because you offend me. That is all.~
EXIT

// Skie
CHAIN IF ~InParty("Skie")
See("Skie")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSkie1","GLOBAL",0)~ THEN BSKIE C0KvelSkie1
~That pot of fondue we had last night was absolutely wonderful, K'Vel! I never thought anyone could make eating hardtack an enjoyable experience.~
DO ~SetGlobal("C0KvelSkie1","GLOBAL",1)~
== BC0KVEL ~Savor the memory. It will be difficult to find the resources needed to remake that meal.~
== BSKIE ~I don't suppose you might be interested in a job as in my estate? Between you and me, I've gotten tired of our old cook's recipes for years now, and I've just never said it. I'm sure you'd be able to take over his job in less than a minute if you show off your talent!~
== BC0KVEL ~No.~
== BSKIE ~Oh, come now. Isn't this the kind of safe, stable life you've been after? You wouldn't need to worry about having trouble finding work as a drow again. It'd be hard to convince my father... but I think I could do it.~
== BC0KVEL ~And I would receive a warm bed in private quarters, away from the chaos of battle, without need to fear cold or hunger again, so long as a simple service is provided?~
== BSKIE ~Yes, exactly!~
== BC0KVEL ~Then answer me one question and I may consider accepting, Skie Silvershield. Why did you leave, then?~
== BSKIE ~I, um...~
== BSKIE ~Okay, touché.~
== BC0KVEL ~There are more things we live for apart from comfort. I know mine, and I see you have yet to find yours. Figure that out for yourself before you pry into the lives of others.~
EXIT

CHAIN IF ~InParty("Skie")
See("Skie")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSkie1","GLOBAL",1)~ THEN BSKIE C0KvelSkie2
~I've been thinking a little about what you said, K'Vel. You're right. There's more to life than living comfortably.~
DO ~SetGlobal("C0KvelSkie1","GLOBAL",2)~
== BC0KVEL ~Hmm.~
== BSKIE ~What? No praise? I figured out what you were trying to tell me!~
== BC0KVEL ~If I had made it any clearer, I would need to examine you for stunted growth to your mind.~
== BSKIE ~Oh, don't be rude. I'm very grateful, you know. I know I need to figure out what I'm doing out here. Because I want to be here. I just haven't put words to why yet.~
== BC0KVEL ~You will have to learn that for yourself.~
== BSKIE ~Don't worry. I'm a quick learner.~
== BSKIE ~I still want to hire you as my cook though. You've spoiled me!~
== BC0KVEL ~That, I cannot take credit for. I will withhold your portion from our nightly meals, if you find it concerning.~
== BSKIE ~NO! You can't do that to me!~
EXIT

// Tiax

CHAIN IF ~InParty("Tiax")
See("Tiax")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelTiax1","GLOBAL",0)~ THEN BTIAX C0KvelTiax1
~YOU! Drow, Tiax demands that you—~
DO ~SetGlobal("C0KvelTiax1","GLOBAL",1)~
== BC0KVEL ~No. Be silent.~
== BTIAX ~The very impudence! How dare you silence Tiax, whose words carry the weight of the heavens themselves?~
== BC0KVEL ~I have learned over the years that even a fool's words can tell much. You are the exception—less than even a fool. What I need to know of you, you have revealed within your first five words, if even that.~
== BTIAX ~The great Tiax's words are worth every bit of their weight in gold!~
== BC0KVEL ~...~
== BC0KVEL ~...Ponder on what you have just said, you ridiculous imbecile.~
== BTIAX ~Eh... how much do words weigh again? I need to think...~
== BC0KVEL ~Yes. Think more, if you've even the capacity, and speak less. This conversation is over.~
EXIT

// Viconia
CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelViconia1","GLOBAL",0)~ THEN BVICON C0KvelViconia1
~Dos lueth usstan phuul abban, wun nindol ssussun kul'gobsula.~
DO ~SetGlobal("C0KvelViconia1","GLOBAL",1)~
== BC0KVEL ~...~
== BVICON ~Waela jaluk?~
== BC0KVEL ~...~
== BVICON ~Must we communicate in this tongue? It is a rare thing that I may use my original speech, and my partner in conversation is content to play deaf and mute.~
== BC0KVEL ~If you are seeking to indulge in the nostagia of Menzoberranzan's natural hierarchies, I cannot indulge you.~
== BVICON ~I am no priestess of Lolth, nor do I seek comfort in acting my former station. Do you see garments and a snake whip, male? I merely seek to assure an natural alliance between two outcasts of mutual origin.~
== BC0KVEL ~'Natural alliance'? You have truly forgotten what being drow is truly like, Viconia, if you believe what you are saying, and I do not consider you such a fool. You seek an asset to use for your convenience, and are now using a honeyed tongue to do so.~
== BC0KVEL ~It is sickeningly transparent.~
== BVICON ~Your tongue spews nothing but bile. Perhaps 'tis for the best that you have abandoned our native tongue, for the words coming from your mouth would undoubtedly be nothing short of ear-grating.~
== BC0KVEL ~I have no use for words which have no value. You would do best to remember, as well. You are a dark elf, but a 'drow'? I do not see one before me anymore.~
== BVICON ~Mzilna wael! Remove the fetters of a drow male, and they suddenly believe they are above all. Make no mistake, jaluk—you are nothing to these humans, and even less among drow. You are less than nobody now—what a pitiful existence.~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelViconia2","GLOBAL",0)~ THEN BVICON C0KvelViconia2
~So after however many years spent slaving away for surfacers, you have gained the unconditional trust of... what, one human?~
DO ~SetGlobal("C0KvelViconia2","GLOBAL",1)~
== BC0KVEL ~One is enough.~
== BVICON ~Enough? What measure of safety can one short-lived human provide?~
== BC0KVEL ~When you have identified the traits within a surfacer's character which can be trusted, it becomes simpler.~
== BVICON ~You speak of "trust"? Shar, to think that such deluded words can spew from a drow's mouth. You are truly an aberration.~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelViconia3","GLOBAL",0)~ THEN BVICON C0KvelViconia3
~Male, your choice of blackwing mushrooms for our stew was not to my palate. I demand you use cavernstalkers instead from hereon.~
DO ~SetGlobal("C0KvelViconia3","GLOBAL",1)~
== BC0KVEL ~Cavernstalkers only grow in the underground. Were this the Underdark, they would be plentiful, but it is a different story here.~
== BC0KVEL ~Not to mention they are near indistinguishable from orbbwebs, which are fatally toxic. I would rather not risk my life for a slightly enhanced flavor.~
== BVICON ~Toxins can be simply cleansed by a priestess of skill such as myself. The quality of cavernstalkers is infinitely superior to that of common blackwings.~
== BC0KVEL ~The difference in taste between blackwings and cavernstalkers is negligable when sautéed with the right oil. My role is to keep you fed. Your comfort is irrelevant.~
== BVICON ~Taste? Taste is inconsequential. The difference in the textures between the two mushrooms makes the difference between a meal fit for a commoner and a noble.~
== BC0KVEL ~Then it is even more preferable to use blackwings. By surface standards, you can hardly even be considered a commoner.~
== BVICON ~You forget yourself, jaluk!~
== BC0KVEL ~The failing of drow females has always been their shortsightedness, the belief that they will always know better. You are on the surface now. It would behoove you to learn rather than attempt to teach of that which you know nothing.~
EXIT

// Xan
CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelXan1","GLOBAL",0)~ THEN BXANNN C0KvelXan1
~We are now to entrust our group's safety to one of my dark elven cousins. *groan* Now we are certainly doomed.~
DO ~SetGlobal("C0KvelXan1","GLOBAL",1)~
== BC0KVEL ~And what doom do you see befalling you, elf?~
== BXANNN ~I know not. I only know from history that each time one of the People and a drow have deigned to work together, it has always ended in disaster. More often, for the elf.~
== BC0KVEL ~You are a dullard for fearing a death that may never come.~
== BXANNN ~And I would be wiser if were it clear before my eyes, ready to claim me? *sigh* I think I prefer 'dullard'.~
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Kvel")
See("C0Kvel")
AreaType(OUTDOOR)
OR(2)
TimeOfDay(DUSK)
TimeOfDay(NIGHT)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelXan2","GLOBAL",0)~ THEN BXANNN C0KvelXan2
~When I look under the cover of darkness, and squint very hard, I almost see a kinsman, albeit several heads taller and brawnier. How did our kind becomes so different, I wonder?~
DO ~SetGlobal("C0KvelXan2","GLOBAL",1)~
== BC0KVEL ~I'm certain we've both heard all the myths many times. Believe whichever one you prefer.~
== BXANNN ~Yes, yes, the tales of how Araushnee became Lolth, how she enslaved the dark elves who were once her children, or the ones where they followed her willingly. I've heard them all a million times. Whichever one the teller thinks makes their side of the conflict sound more righteous.~
== BC0KVEL ~Oh? You've heard the stories from the mouths of your natural enemy?~
== BXANNN ~As a defender of Tel'Quessir, I believe in... understanding what it is I am truly fighting. Make no mistake—I find the current status of the Ilythiiri truly appalling, but also pitiable. I know your true enemy is no longer the People, but each other.~
== BC0KVEL ~If you are attempting to find common ground, I advise you save your breath. No small amount of elvenkind have died at my hand across my lifetime.~
== BXANNN ~Nor is my moonblade clean of dark elven blood, so I suppose 'tis true that I have no right to pity you. *sigh* K'Velarin, I hold no illusions of heroism or being an enforcer of righteousness. I am but a servant of my People, and I can only do what I must.~
== BXANNN ~It may be that one day it will be my duty to raise this sword against you, and one of our lives will end—and with how cruel fate can be, perhaps both—but I still feel foolishly obligated to say this.~
== BXANNN ~We may not understand each other, but... strangely, I do not dislike you. And I see some hope in that.~
== BC0KVEL IF ~InParty("ELDOTH")~ THEN ~All things considered, I believe we do have one thing in common.~
== BXANNN IF ~InParty("ELDOTH")~ THEN ~I do not think so, but do tell.~
== BC0KVEL IF ~InParty("ELDOTH")~ THEN ~We both hope the charlatan dies.~
== BXANNN IF ~InParty("ELDOTH")~ THEN ~I... *chuckle* well, undeniably true. There is that.~
EXIT

// Xzar
CHAIN IF ~InParty("Xzar")
See("Xzar")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelXzar1","GLOBAL",0)~ THEN BXZAR C0KvelXzar1
~You are a most fascinating specimen, drow, to have such a thickset musculature. Almost human-like. Is it a random mutation? Experimentation from your infamous priestesses? Or...~
DO ~SetGlobal("C0KvelXzar1","GLOBAL",1)~
== BC0KVEL ~Observe as long as you like, you will have no answers.~
== BXZAR ~Correct, of course. The only way to understand more is to *really* get into the skin and bones. I mean that... figuratively, of course. Though I would not object you to spending a little time on the operating table...~
== BC0KVEL ~If you can drag me on top of one by force, then you may cut as you wish. Though I am not optimistic, considering you are practically a walking skeleton yourself.~
== BXZAR IF ~InParty("MONTARON")~ THEN ~Right! First priority would be to sew that mouth shut with some strong thread. Monty! Be a good chap and help our subject on the table, would you?~
== BMONTA IF ~InParty("MONTARON")~ THEN ~Shove yer twisted implements up yer arse and turn 'em, wizard.~
== BXZAR IF ~InParty("MONTARON")~ THEN ~Hmph! Fine, a fleshy construct would do the same work, and with less lip! I'll just have to find some... material.~
== BXZAR IF ~!InParty("MONTARON")~ THEN ~Right! First priority would be to sew that mouth shut with some strong thread. Now I just need to find a potent paralytic agent...~
== BC0KVEL ~Good luck.~
EXIT

// Yeslick

CHAIN IF ~InParty("Yeslick")
See("Yeslick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelYeslick1","GLOBAL",0)~ THEN BYESLI C0KvelYeslick1
~I don't suppose ye fought the the War of the Black River, drow? As I recall, ye claimed yer home city be Eryndlyn.~
DO ~SetGlobal("C0KvelYeslick1","GLOBAL",1)
RealSetGlobalTimer("C0KvelYeslickRestTalkRealTimer","GLOBAL",3600)
SetGlobalTimer("C0KvelYeslickRestTalkTimer","GLOBAL",ONE_WEEK)~
== BC0KVEL ~The battle against the shield dwarves of the Halls of the Hammer and House Xzarthel? No. That was none of my affair.~
== BYESLI ~Ye're certain? I've only some estimate o' the age of elves by face, but ye seem to be the right age. And from yer response, ye seem to have some recollection o' the whole thing.~
== BC0KVEL ~I recall the countless bodies that littered the passage between the High Moor and the Upperdark. I was only relieved that I did not join them by some terrible accident. Both the dwarves and the drow were possessed by madness on that black day.~
== BYESLI ~'Tis good if ye haven't, drow... I've lost my share o' distant relatives in that terrible battle... I'd hate fer knowledge of that to be an obstacle in our path.~
== BC0KVEL ~If the possibility is so concerning to you, then you should not have asked.~
== BYESLI ~Perhaps. But 'tis preferable to act honestly when one has misgivins'. Had ye taken part in the war...~
== BC0KVEL ~You would act against me?~
== BYESLI ~*sigh* I've no quarrel with ye, dark elf. But I be an old dwarf, an' past wounds don't fade away some easily. I haven't forgotten the bloody wars fought between dwarfkin an' the dark ones o'er the centuries, much as I'd like to.~
== BYESLI ~Lookin' upon ye brings up old, dark memories. Ones I had hoped ter never think of again.~
== BC0KVEL ~From my experience, the simplest cure for seeing something you would prefer not to is to look away.~
== BYESLI ~Nay... nay. Perhaps the best path forwards be to look back an' accept what's done is done. Then, I may fairly consider how to deal with the here an' now.~
EXIT

CHAIN IF ~InParty("Yeslick")
See("Yeslick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelYeslickRestTalk1","GLOBAL",1)~ THEN BYESLI C0KvelYeslick1
~*sniff* What's that, now? I may be old, but me nose be keen enough to follow the scent o' grilled whitefish. Where's that comin' from...?~
DO ~SetGlobal("C0KvelYeslickRestTalk1","GLOBAL",2)~
== BC0KVEL ~Here, dwarf.~
== BYESLI ~Oh, it be ye. I was wonderin' who be at work at the fire, cookin' a culinary delight. Mind if I take a seat?~
== BC0KVEL ~Do as you wish. The food will be ready to serve before long.~
== BYESLI ~A fine catch in the pan, I see. Plenty of meat, an' just the right amount o' fat to cook well. I speak only truth, K'Vel, when I say this smell is making me mouth water.~
== BC0KVEL ~The dwarven folk have a fondness for the taste of fish? That is new knowledge for me.~
== BYESLI ~Me old clanhold be situated by a river, in case ye've forgotten. We've our fair share of fisher dwarves, and they be no less adept at it than any drow, I assure ye.~
== BYESLI ~...Had, our fair share.~
== BC0KVEL ~The man who taught me to fish is long gone as well. Were it not for this skill, I am not certain I would have remembered him.~
== BYESLI ~Ye dark-skinned folk be rarely known fer sentimentality.~
== BC0KVEL ~...Perhaps.~
== BYESLI ~Beg pardon. That be soundin' far worse than I meant it.~
== BC0KVEL ~We take much for granted from those that offer us simple things, and we think not of them—not until they are suddenly lost. Drow choose to deny attachment, so that they may show no weakness. For the faults as I see in surfacers, they are more true to their feelings. That much I respect.~
== BYESLI ~An' what else have you lost, if ye don't mind me askin'?~
== BC0KVEL ~Enough for me to consider that I must look at some things differently.~
== BYESLI ~That be good, elf. Best if more of us learn that lesson.~
== BC0KVEL ~...~
== BYESLI ~Oi, ye'd best be turnin' the fillet, else it'll be burned on the side before long.~
== BC0KVEL ~Damn it—you are right.~
== BYESLI ~Don't suppose ye've any dried kerstol leaves? The earthy taste not be fer most, but I be an old-fashioned dwarf, an' the scent reminds me of some good times.~
== BC0KVEL ~You are quite lucky, dwarf.~
== BYESLI ~Thank ye.~
== BYESLI ~*munch* Ah, now that be tasting just right.~
DO ~RestParty()~ EXIT