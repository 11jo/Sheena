# Sheena, A Half Dragon Tale

[![Release](https://img.shields.io/github/v/release/The-Gate-Project/Sheena?include_prereleases&color=41788a)](https://github.com/The-Gate-Project/Sheena/releases)
[![Published](https://img.shields.io/github/release-date-pre/The-Gate-Project/Sheena?display_date=published_at&label=published&color=014a69)](https://github.com/The-Gate-Project/Sheena/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/The-Gate-Project/Sheena/total?color=41788a)](https://github.com/The-Gate-Project/Sheena/releases)

[![Language](https://img.shields.io/badge/language-english%20%a0%20french%20%a0%20spanish%20%a0%20czech%20%a0%20russian%20%a0%20schinese-014a69)](https://github.com/The-Gate-Project/Sheena/releases)
[![Games](https://img.shields.io/badge/games-BG2%20%a0%20BG2EE%20%a0%20BGT%20%a0%20EET-41788a)](https://github.com/The-Gate-Project/Sheena/releases)

<!--

![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2FThe-Gate-Project%2FSheena&countColor=41788a&style=flat)

[![Platform](https://img.shields.io/badge/platform-Windows%20%a0%20macOS%20%a0%20Linux%20%a0%20Project%20Infinity-014a69)](https://github.com/The-Gate-Project/Sheena/releases)
-->

**Author** : **Red Knight** 

[Link to original Mod Forum](http://www.blackwyrmlair.net/~sheenaslair/Index.htm)

**EE update** : **Edvin** 

[Link to original Mod Forum](https://forums.beamdog.com/discussion/comment/800949)

---

---

---

---

Version History:

:
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
- Added Sheena's half dragon breath when in half dragon form (10D10 fire damage, save for half)
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
- EE update by 

v.2.6
- Simplified Chinese by MephistoSatanDevil
- Russian translation by ART BERSERKER & Aerie TEAM
- Enable ToB (Expand SHEENAP.dlg with summon dialog and allow Sheena to wait in pocket plane (5 lines of dialog added))
- bat files moved in legacy folder
- Handle Audio / Handle Charset / Autotra / IconV
- WeiduModPackager
- gw_dlg_functions for fate spirit