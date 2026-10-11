-------------------------------------------------------------------------------------------
Sheena, A Half Dragon Tale - version 1.7  (SOA only - TOB compatible)

Author: Red Knight - j_f_kalban@caramail.com
Website: http://www.blackwyrmlair.net/~sheenaslair/Index.htm
Forum: http://forums.blackwyrmlair.net/index.php?s=18d3367ae2ea6557057391b075afd2dc&showforum=98
-------------------------------------------------------------------------------------------

Foreword:
I very much liked the half red dragon BAM in IWD2, but wondered if writing a half dragon 
NPC for BG2 was ever possible simply because the race did not exist, and such creature
would inherently be overly powerful. I took on the challenge without much thought other
than Sheena would be the fruit of a union between a female human and Lord Jierdan Firkraag.
Hopefully, you will both find an interesting story and a balanced NPC, enjoyable, which 
remains true to the original Bioware game.

General:
- Sheena's story begins in Firkraag's lair at level 8-10 in a prison cell next to Garren's child. 
  NB: OPEN HER CELL FIRST, OR ELSE THE KEY DISAPPEARS.
  NB: SHEENA CANNOT TALK BEFORE FIRKRAAG DIES
  NB: USE PREFERABLY A SAVED GAME PRIOR THE ORC AMBUSH IN 
  FIRKRAAG'S LAIR
- Sheena is a neutral good half red dragon multiclass fighter / wizard. Her half dragon form is 
  hidden most of the time (cities, forests...) to balance the game. 
- Sheena's strength and constitution can not be raised by any item (potions and spells do work). 
- Sheena is limited to two handed swords, quarterstaffs, halberds and darts (an animation limitation). 
- Sheena has extensive banters with all Bioware NPCs, numerous interjections and a 
  friendship path available to both male and female PCs.
- Sheena's flirts are available to male PCs of good and neutral alignment.
- Sheena has a small romance path (TOB like), which triggers if Mazzy is in the party , 
  other romances are not active, you are through with the friendship talks and your
  character is of neutral or good alignment.
- Sheena leaves for good if kicked out from your party.
- Sheena has a half dragon breath ability useable once per day.
- Press S to fix Sheena when reinstalling your NPCs in a different order.
- Sheena gains 10% less experience (ECL 1)

Stats:
Human: STR: 16 DEX:12 CON: 16 INT: 15 WIS: 10 CHA: 15, 50% fire resistance
Half red dragon: + 4 STR, +2 CON, +4 AC (lizard scale bonus), 100% fire resistance 
, immune to paralysis as any large creature would and immune to mind spells (charm,
confusion and stun). This is the standard half dragon template. 
She also gains infravision.
She also moves slightly faster in human form to speed up the half dragon animation.

Special item: +3 two handed sword with +2 fire bonus and a 10% chance to stun an 
opponent

Anything new?
Sheena does not add anything revolutionary in terms of coding, graphics or dialogs. Though, and
to those interested in writing an NPC that has polymorph abilites without losing the ability to cast 
spells, she is worth taking a look at.
I've also introduced RemoveSpellRES in the ACTION.IDS. It's faster than an entry into Spell.ids
when removing custom spells or abilities.

------------------------------------Credit-----------------------------------------------
I'd like to thank Wes Weimer for Weidu.

I've copied shamelessly the hotkey and blank music features from Keto. My thanks to the 
Keto team at PPG for introducing these nice features into the game.

My heartfelt thanks to Baronious at BWL for first giving Sheena a website, and his continued
support and guidance.

I'd like to thank everyone for their continued support on the forum.

------------------------------------Grammar-------------------------------------------
I've been very rakish in my use of English grammar or so some might think. Here are some
of the common rules that I followed:
- the relative pronoun "that" can be ommitted between two sentences when it is not followed
by a verb, like I wish I knew. I've used extensively that rule. Perhaps ignoring the following
exceptions when it was convenient to do so:
When a time element intervenes between the verb and the clause
When the verb of the dependent clause is long delayed
When a second that can clear up who said or did what

- I've also ommited some prepositions in known verbs as it is considered improper when
used in formal or academic prose. E.g:
"I met up with Sheena" was replaced with "I met Sheena"
"I can match up to your blows" was replaced with "I can match your blows"
and so forth.
"face up to the long walk up" replaced with "face the long walk..."

My thanks to Grim Squeaker at G3 for revising about 50 lines.

------------------------------------Copyright-------------------------------------------
The NPC is not endorsed by Bioware nor Interplay.

One line in the second Korgan dialog is from the Lord Of The Ring II. (winks)
Two lines with Cernd  are originally used with Valygar. I slightly adapted them.

The story of Tiamat is adapted from an existing story.

Except graphic, sound, and the above all other material is genuinely mine.

------------------------------------Version History--------------------------------------
In order, the revision took place:
V.1.0 Alpha version freshly coded
- First run (Jaheira-Imoen/Yoshimo-Mazzy-Keto-Sheena-PC (sorcerer))
- Removed some bugs in the polymorph script that altered Sheena's stats (fire resistance 
  inconsistency)
- Coded 'Players look like drow' to disable the half dragon ability during the drow illusion
- Revised some triggering for the .j file (SheenRHD problem, Saemon bug, Udsilver and many
  more...).
- Revised some scripts for the romance (never triggered) and friendship talks (stopped at T15)
- Edited all dialogs using a spellchecker. Sheena is at least free of typos, though some grammar
  mistakes can still be found occasionally.
- Added and revised some code for specific creature interjections. I am left to code YuanTis 
  and vampires
- Added a small fighting script if Sheena sides with Adalon.
- Tested all flirts
- Removed protection from stun, confusion, web, entangle from Sheena's cre file.
- Added custom audio files
- Tested the following dialogs with non lasting party members using CTRL-I: Haer-Dalis, Minsc, 
   Nalia,Valygar and corrected some bugs.

V.1.1 First playable Beta version 
- Second run (Korgan-Viconia-Mazzy-Edwin-Sheena-PC (Assassin/mage))
- Placed Mazzy banters on top as well as other scripted banters to avoid regular banters triggering
- Added a script to trigger a Local variable after SheenaTalk = 1 variable did mysteriously fail to appear
- Fixed a bug in the script to avoid multiple polymorph abilities after resting (RemoveSpellRES)
- Fixed some triggers for the banters (Viconia 3rd dialog...)
- Added some debug scripts for specific creatures in the file 
- Debugged some interjections upon arrival in specific places (variable fix)
- Scripted triggers for Korgan and Aerie banter
- Coded the Can't use item in the cre. Sheena is restricted to two handed swords and staffs only.
- Changed the polymorph spells yet again as her constitution did go as high as 22.

V.1.2 Public Release 1
- Needs BugFixV1.zip for TP2

V.1.3 Public Release 2
- Third run (Cernd-Keldorn-Jan-Aerie-Sheena-PC)
- Removed a bug with the shade lord
- Added TP2 forward compatibility for SOA only players (IDS copy)
- Added RemoveSpellRES in the TP2 using append rather than copy
- Revised the Readme and added a troubleshooting file

V.1.4 Personal edition
- Installed Tactics, UB, Battles and several other mods for compatibility testing
*The Firkraag component in the Battles MOD and Sheena shoud be compatible but untested*
- Removed a bug with Captain Cernick
- Added a Saemon interjection (before the waco)
- Fixed some grammar mistakes
- Added one more interjection with Solaufein and Imrae
- Changed Poly1s - portrait fix when Sheena dies in half dragon form
- Added infravision to Sheena
- Fixed *hopefully* a bug linked to imprisonment (rejoin pb) and added
  SetLeavePartyDialog() to correct her dialogs after she is freed
- Added the red scales and Red Armor interjection 
- Fixed all interjections when Sheena is in dragon form
- Wrote and coded three more lovetalks (10-12-14) 
- Added a romance interjection at the tree of life
- Added seven new flirts for the romance
- Added a romance interjection past slept with Phaere
- Fixed the triggering of Mazzy's talks using BMAZZY instead of
  MAZZYJ on Interact
- Fixed Love Talk 14
- Added Sheena's half dragon breath when in half dragon form
  (10D10 fire damage, save for half)
- Added an interjection in area 1203 (Firkraag lair)
- More debugging on Sheena's join script after all these new additions

V.1.5.5 Beta Public Release 3
- Fixed some small issues reported on the forum.
- My own grammar revision

v.1.6 Beta public release 4
- Added English edit by Kaeloree
- Added French translation (Stargazer & Red Knight)

v.1.7 Supported release (14 June 2009)
- Added Spanish translation (Roendal y Lyra para RPG-Bardo.com)
- Corrected ECHO OFF commands in batch-files
- Added VERSION-flag
- Updated to WeiDU 

v.2.5
- EE update by Edvin
