/*J dialog version 1.6 with french translation included*/
BEGIN SHEENAJ
/////////////////////////////////////////////////////////////////////////////
//Interject upon seeing specific monsters

//Umber Hulks, Trolls, Orcs, Orbs, Illithid, Yuan-ti, Vampire, Lich
IF ~Global("K#SeeOrbs","GLOBAL",1)~ THEN BEGIN SheenaOrbs1
SAY @8000 
= @8001
IF ~~ THEN DO ~SetGlobal("K#SeeOrbs","GLOBAL",2)~ EXIT
END

/* Scrapped until better
IF ~Global("K#SeeVampire","GLOBAL",1)~ THEN BEGIN SheenaVampire1
SAY ~I truly hate vampires. I'm scared I'd turn into one of them if bitten.~ = ~But tell me, do you believe that *garlic thing* around the neck can truly protect one from their bite?~
IF ~Or(2) CheckStatGT(Myself,0,SCRIPTINGSTATE3) HasItemEquiped("amul21",Myself)~ THEN REPLY ~Protection from negative energy is far more useful.~ DO ~SetGlobal("K#SeeVampire","GLOBAL",2)~ GOTO SheenaVampire2
IF ~CheckStat(Myself,0,SCRIPTINGSTATE3) !HasItemEquiped("amul21",Myself)~ THEN REPLY ~Protection from negative energy is far more useful.~ DO ~SetGlobal("K#SeeVampire","GLOBAL",2)~ GOTO SheenaVampire3
IF ~~ THEN REPLY ~If you have something more sensible to say right now, just say it or else, shut up!~ DO ~SetGlobal("K#SeeVampire","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY ~If your next question entails whether I carry some garlic or not, the answer is no!~ DO ~SetGlobal("K#SeeVampire","GLOBAL",2)~ GOTO SheenaVampire4
END

//Protected from negative energy
IF ~Global("K#SeeVampire","GLOBAL",2)~ THEN BEGIN SheenaVampire2
SAY ~This is a reassuring thought, especially when being protected.~
IF ~~ THEN DO ~SetGlobal("K#SeeVampire","GLOBAL",3)~ EXIT
END

//Not protected from negative energy
IF ~Global("K#SeeVampire","GLOBAL",2)~ THEN BEGIN SheenaVampire3
SAY ~Then, why I am not protected by it?!~
IF ~~ THEN DO ~SetGlobal("K#SeeVampire","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeVampire","GLOBAL",2)~ THEN BEGIN SheenaVampire4
SAY ~Remind me to buy some when we stop at the next vegetable market, it could be useful to spice our food and also to protect us from these vampires. If we survive a next time, that is...~
IF ~~ THEN DO ~SetGlobal("K#SeeVampire","GLOBAL",3)~ EXIT
END
*/


IF ~Global("K#SeeShadows","GLOBAL",1)~ THEN BEGIN SheenaShadows1
SAY @8002
IF ~!Class(Player1,CLERIC_ALL)~ THEN REPLY @8003 DO ~SetGlobal("K#SeeShadows","GLOBAL",2)~ GOTO SheenaShadows2
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY @8004 DO ~SetGlobal("K#SeeShadows","GLOBAL",2)~ GOTO SheenaShadows2a
IF ~~ THEN REPLY @8005 DO ~SetGlobal("K#SeeShadows","GLOBAL",2)~ GOTO SheenaShadows3
IF ~InParty("Anomen") !Dead("Anomen")~ THEN REPLY @8006 DO ~SetGlobal("K#SeeShadows","GLOBAL",2)~ GOTO SheenaShadows4
IF ~Inparty("Aerie") !Dead("Aerie")~ THEN REPLY @8007 DO ~SetGlobal("K#SeeShadows","GLOBAL",2)~ GOTO SheenaShadows4a
IF ~InParty("Viconia") !Dead("Viconia")~ THEN REPLY @8008 DO ~SetGlobal("K#SeeShadows","GLOBAL",2)~ GOTO SheenaShadows4b
END

IF ~Global("K#SeeShadows","GLOBAL",2)~ THEN BEGIN SheenaShadows2
SAY @8009
IF ~~ THEN DO ~SetGlobal("K#SeeShadows","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeShadows","GLOBAL",2)~ THEN BEGIN SheenaShadows2a
SAY @8010
IF ~~ THEN DO ~SetGlobal("K#SeeShadows","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeShadows","GLOBAL",2)~ THEN BEGIN SheenaShadows3
SAY @8011
IF ~~ THEN DO ~SetGlobal("K#SeeShadows","GLOBAL",3) ReallyForceSpell(NearestEnemyOf(Myself),WIZARD_FIREBALL)~ EXIT
END

IF ~Global("K#SeeShadows","GLOBAL",2)~ THEN BEGIN SheenaShadows4
SAY @8012
IF ~~ THEN DO ~SetGlobal("K#SeeShadows","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeShadows","GLOBAL",2)~ THEN BEGIN SheenaShadows4a
SAY @8013
IF ~~ THEN DO ~SetGlobal("K#SeeShadows","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeShadows","GLOBAL",2)~ THEN BEGIN SheenaShadows4b
SAY @8014
IF ~~ THEN DO ~SetGlobal("K#SeeShadows","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeYuanTi","GLOBAL",1)~ THEN BEGIN SheenaYuanTi1
SAY @8015
IF ~~ THEN REPLY @8016 DO ~SetGlobal("K#SeeYuanTi","GLOBAL",2)~ GOTO SheenaYuanti2
IF ~~ THEN REPLY @8017 DO ~SetGlobal("K#SeeYuanTi","GLOBAL",2)~ GOTO SheenaYuanTi3
END

IF ~Global("K#SeeYuanTi","GLOBAL",2)~ THEN BEGIN SheenaYuanti2
SAY @8018 = @8019
IF ~~ THEN DO ~SetGlobal("K#SeeYuanTi","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeYuanTi","GLOBAL",2)~ THEN BEGIN SheenaYuanTi3
SAY @8020
IF ~~ THEN DO ~SetGlobal("K#SeeYuanTi","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeAdamantineGolem","GLOBAL",1)~ THEN BEGIN SheenaAdamantineGolem1
SAY @8021
IF ~~ THEN REPLY @8022 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem1
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @8023 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem2
IF ~Class(Player1,THIEF_ALL)~ THEN REPLY @8023 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem2a
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY @8023 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem2b
IF ~Class(Player1,FIGHTER_ALL)~ THEN REPLY @8023 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem2c
IF ~Class(Player1,PALADIN_ALL)~ THEN REPLY @8023 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem2c
IF ~Class(Player1,RANGER_ALL)~ THEN REPLY @8023 DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",2)~ GOTO SheenaPCGolem2c
END

IF ~Global("K#SeeAdamantineGolem","GLOBAL",2)~ THEN BEGIN SheenaPCGolem1
SAY @8024
IF ~~ THEN DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeAdamantineGolem","GLOBAL",2)~ THEN BEGIN SheenaPCGolem2
SAY @8025 = @8026
IF ~~ THEN DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeAdamantineGolem","GLOBAL",2)~ THEN BEGIN SheenaPCGolem2a
SAY @8027
IF ~~ THEN DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeAdamantineGolem","GLOBAL",2)~ THEN BEGIN SheenaPCGolem2b
SAY @8028
IF ~~ THEN DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeAdamantineGolem","GLOBAL",2)~ THEN BEGIN SheenaPCGolem2c
SAY @8029
IF ~~ THEN DO ~SetGlobal("K#SeeAdamantineGolem","GLOBAL",3)~ EXIT
END


IF ~Global("K#SeeLich","GLOBAL",1)~ THEN BEGIN SheenaLich1 //Script based
SAY @8030 = @8031
IF ~~ THEN REPLY @8032 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich2
IF ~~ THEN REPLY @8033 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich3
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @8034 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich4
IF ~Class(Player1,THIEF_ALL)~ THEN REPLY @8034 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich4a
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY @8034 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich4b
IF ~Class(Player1,FIGHTER_ALL)~ THEN REPLY @8034 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich4c
IF ~Class(Player1,PALADIN_ALL)~ THEN REPLY @8034 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich4c
IF ~Class(Player1,RANGER_ALL)~ THEN REPLY @8034 DO ~SetGlobal("K#SeeLich","GLOBAL",2)~ GOTO SheenaPCLich4c
END

IF ~Global("K#SeeLich","GLOBAL",2)~ THEN BEGIN SheenaPCLich2 //Script based
SAY @8035
IF ~~ THEN DO ~SetGlobal("K#SeeLich","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeLich","GLOBAL",2)~ THEN BEGIN SheenaPCLich3 //Script based
SAY @8036
IF ~~ THEN DO ~SetGlobal("K#SeeLich","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeLich","GLOBAL",2)~ THEN BEGIN SheenaPCLich4 //Script based
SAY @8037
IF ~~ THEN DO ~SetGlobal("K#SeeLich","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeLich","GLOBAL",2)~ THEN BEGIN SheenaPCLich4a //Script based
SAY @8038
IF ~~ THEN DO ~SetGlobal("K#SeeLich","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeLich","GLOBAL",2)~ THEN BEGIN SheenaPCLich4b //Script based
SAY @8039
IF ~~ THEN DO ~SetGlobal("K#SeeLich","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeeLich","GLOBAL",2)~ THEN BEGIN SheenaPCLich4c //Script based
SAY @8040
IF ~~ THEN DO ~SetGlobal("K#SeeLich","GLOBAL",3)~ EXIT
END


IF ~Global("K#SeeUmberHulk","GLOBAL",1)~ THEN BEGIN SheenaUmberHulk1
SAY @8041
IF ~~ THEN DO ~SetGlobal("K#SeeUmberHulk","GLOBAL",2)~ EXIT
END

IF ~Global("K#SeeIllithids","GLOBAL",1)~ THEN BEGIN SheenaIllitids1
SAY @8042
IF ~~ THEN DO ~SetGlobal("K#SeeIllithids","GLOBAL",2)~ EXIT
END

///////////////////////////////////////////////////////////////////////////
//Interject in specific places: Underdark, Pirate city, Amn, Planar hell,
//Radiant heart, Ranger Cabin
//Amn
IF ~Global("K#SeeAmn","GLOBAL",1)~ THEN BEGIN SheenaAmn1 //Script based
SAY @8043
IF ~~ THEN REPLY @8044 DO ~SetGlobal("K#SeeAmn","GLOBAL",2)~ GOTO SheenaAmn2
IF ~~ THEN REPLY @8045 DO ~SetGlobal("K#SeeAmn","GLOBAL",2)~ GOTO SheenaAmn3
END

IF ~Global("K#SeeAmn","GLOBAL",2)~ THEN BEGIN SheenaAmn2
SAY @8046
IF ~~ THEN DO ~SetGlobal("K#SeeAmn","GLOBAL",4)~ EXIT
END

IF ~Global("K#SeeAmn","GLOBAL",2)~ THEN BEGIN SheenaAmn3
SAY @8047
IF ~~ THEN REPLY @8048 DO ~SetGlobal("K#SeeAmn","GLOBAL",3)~ GOTO SheenaAmn5
IF ~~ THEN REPLY @8049 DO ~SetGlobal("K#SeeAmn","GLOBAL",3)~ GOTO SheenaAmn6
END

IF ~Global("K#SeeAmn","GLOBAL",3)~ THEN BEGIN SheenaAmn5
SAY @8050
IF ~~ THEN DO ~SetGlobal("K#SeeAmn","GLOBAL",4)~ EXIT
END

IF ~Global("K#SeeAmn","GLOBAL",3)~ THEN BEGIN SheenaAmn6
SAY @8051 = @8052
IF ~~ THEN DO ~SetGlobal("K#SeeAmn","GLOBAL",4)~ EXIT
END

//Brynnlaw
IF ~Global("K#SeeBrynn","GLOBAL",1)~ THEN BEGIN SheenaBrynn1 //Script based
SAY @8053
IF ~~ THEN REPLY @8054 DO ~SetGlobal("K#SeeBrynn","GLOBAL",2)~ GOTO SheenaBrynn2
IF ~~ THEN REPLY @8055 DO ~SetGlobal("K#SeeBrynn","GLOBAL",2)~ EXTERN SHEENAJ SheenaBrynn2
END

IF ~Global("K#SeeBrynn","GLOBAL",2)~ THEN BEGIN SheenaBrynn2
SAY @8056
IF ~~ THEN REPLY @8057 DO ~SetGlobal("K#SeeBrynn","GLOBAL",3)~ GOTO SheenaBrynn3
IF ~~ THEN REPLY @8058 DO ~SetGlobal("K#SeeBrynn","GLOBAL",3)~ GOTO SheenaBrynn4
IF ~~ THEN REPLY @8059 DO ~SetGlobal("K#SeeBrynn","GLOBAL",3)~ GOTO SheenaBrynn5
END

IF ~Global("K#SeeBrynn","GLOBAL",3)~ THEN BEGIN SheenaBrynn3
SAY @8060
IF ~~ THEN DO ~SetGlobal("K#SeeBrynn","GLOBAL",4)~ EXIT
END

IF ~Global("K#SeeBrynn","GLOBAL",3)~ THEN BEGIN SheenaBrynn4
SAY @8061
IF ~~ THEN REPLY @8062 DO ~SetGlobal("K#SeeBrynn","GLOBAL",4)~ EXIT
IF ~~ THEN REPLY @8063 DO ~SetGlobal("K#SeeBrynn","GLOBAL",4)~ EXIT
END

IF ~Global("K#SeeBrynn","GLOBAL",3)~ THEN BEGIN SheenaBrynn5
SAY @8064
IF ~~ THEN DO ~SetGlobal("K#SeeBrynn","GLOBAL",4)~ EXIT
END


//Underdark - more dialogs if Viconia is in the party at the bottom
IF ~Global("K#SeeUnderdark","GLOBAL",1)~ THEN BEGIN SheenaUnderdark1 //Script based
SAY @8065
IF ~!IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("K#SeeUnderdark","GLOBAL",2)~ GOTO SheenaUnderdark2
IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("K#SeeUnderdark","GLOBAL",2)~ EXTERN VICONIJ VicSheenaUnderdark2
END

IF ~Global("K#SeeUnderdark","GLOBAL",2)~ THEN BEGIN SheenaUnderdark2 
SAY @8066
IF ~~ THEN REPLY @8067 DO ~SetGlobal("K#SeeUnderdark","GLOBAL",3)~ GOTO SheenaPCUnderdark3
IF ~~ THEN REPLY @8068 DO ~SetGlobal("K#SeeUnderdark","GLOBAL",3)~ GOTO SheenaPCUnderdark3
END

IF ~Global("K#SeeUnderdark","GLOBAL",3)~ THEN BEGIN SheenaPCUnderdark3
SAY @8069 = @8070
IF ~~ THEN DO ~SetGlobal("K#SeeUnderdark","GLOBAL",5)~ EXIT
END

//Needs scripting
//Planar hell - AR0414
IF ~Global("K#SeePlanarHell","GLOBAL",1)~ THEN BEGIN SheenaPCPlanarHell1
SAY @8071 = @8072
IF ~~ THEN REPLY @8073 DO ~SetGlobal("K#SeePlanarHell","GLOBAL",2)~ GOTO SheenaPCPlanarHell2
IF ~~ THEN REPLY @8074 DO ~SetGlobal("K#SeePlanarHell","GLOBAL",2)~ GOTO SheenaPCPlanarHell3
END

IF ~Global("K#SeePlanarHell","GLOBAL",2)~ THEN BEGIN SheenaPCPlanarHell2
SAY @8075
IF ~~ THEN DO ~SetGlobal("K#SeePlanarHell","GLOBAL",3)~ EXIT
END

IF ~Global("K#SeePlanarHell","GLOBAL",2)~ THEN BEGIN SheenaPCPlanarHell3
SAY @8076
IF ~~ THEN DO ~SetGlobal("K#SeePlanarHell","GLOBAL",3)~ EXIT
END

//Harpers hold - AR0308
//I feel uneasy in this place. 
//
//
//
//
//
//
//CIRCUS - SHEENA WOULD SAY ITS HER FIRST TIME SEEING A CIRCUS

//NOBLE ORDER - AR0903
IF ~Global("K#SeeOrderRadiant","GLOBAL",1)~ THEN BEGIN SheenaPCRadiantHeart1
SAY @8077
IF ~~ THEN REPLY @8078 DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",2)~ GOTO SheenaPCRadiantHeart2
IF ~~ THEN REPLY @8079 DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",2)~ GOTO SheenaPCRadiantHeart2
END

IF ~Global("K#SeeOrderRadiant","GLOBAL",2)~ THEN BEGIN SheenaPCRadiantHeart2
SAY @8080
IF ~~ THEN REPLY @8081 DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",3)~ EXTERN SHEENAJ SheenaPCRadiantHeart3
IF ~~ THEN REPLY @8082 DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",3)~ GOTO SheenaPCRadiantHeart4
END

//Moved at the bottom with also a Keldorn reply
//IF ~Global("K#SeeOrderRadiant","GLOBAL",3)~ THEN BEGIN SheenaPCRadiantHeart3
//SAY ~Yes, but you are no half red dragon in disguise.~ = ~The best course of action dictates I remain as discreet as //possible, so please don't push me forward.~
//IF ~~ THEN DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",5)~ EXIT
//END

IF ~Global("K#SeeOrderRadiant","GLOBAL",3)~ THEN BEGIN SheenaPCRadiantHeart4
SAY @8083
IF ~~ THEN DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",5)~ EXIT
END

//Sheena sees her late father
IF ~Global("K#SeeFirkraag","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR1203")~
THEN BEGIN SheenaSeeFirkraagDead1
SAY @8084
= @8085
IF ~~ THEN DO ~SetGlobal("K#SeeFirkraag","GLOBAL",2)~ EXIT
END

//Sheena carries the red scales
IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("K#HasRedScales","GLOBAL",1)~
THEN BEGIN SheenaRedScales1
SAY @8086 
IF ~~ THEN DO ~SetGlobal("K#HasRedScales","GLOBAL",0)~ EXIT
END

//Sheena carries the red scales
IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("K#HasRedArmor","GLOBAL",1)~
THEN BEGIN SheenaRedScales1
  SAY @8087 
IF ~~ THEN DO ~SetGlobal("K#HasRedArmor","GLOBAL",0)~ EXIT
END

//SLEPT WITH PHAERE - NO ROMANCE
IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!Global("SheenaRomanceActive","GLOBAL",2)
Global("PastPhaere","LOCALS",1)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)~ THEN BEGIN SheenaPhaere1
  SAY @8088 
  IF ~~ THEN REPLY @8089 DO ~SetGlobal("PastPhaere","LOCALS",5)~ EXIT
  IF ~~ THEN REPLY @8090 DO ~SetGlobal("PastPhaere","LOCALS",2)~ GOTO SheenaPhaere2
IF ~~ THEN REPLY @8091 DO ~SetGlobal("PastPhaere","LOCALS",2)~ GOTO SheenaPhaere3
END

IF ~Global("PastPhaere","LOCALS",2)~ THEN BEGIN SheenaPhaere2
SAY @8092 = @8093 
IF ~~ THEN DO ~SetGlobal("PastPhaere","LOCALS",5)~ EXIT
END

IF ~Global("PastPhaere","LOCALS",2)~ THEN BEGIN SheenaPhaere3
SAY @8094 
IF ~~ THEN REPLY @8095 DO ~setGlobal("PastPhaere","LOCALS",5)~ EXIT
IF ~Gender(Player1,MALE)~ THEN REPLY @8096 DO ~SetGlobal("PastPhaere","LOCALS",3)~ GOTO SheenaPhaere4
END

IF ~Global("PastPhaere","LOCALS",3)~ THEN BEGIN SheenaPhaere4
SAY @8097 
IF ~~ THEN REPLY @8098 DO ~setGlobal("PastPhaere","LOCALS",5)~ EXIT
IF ~~ THEN REPLY @8099 DO ~SetGlobal("PastPhaere","LOCALS",4)~ GOTO SheenaPhaere5
END

IF ~Global("PastPhaere","LOCALS",4)~ THEN BEGIN SheenaPhaere5
SAY @8100 
IF ~~ THEN DO ~SetGlobal("PastPhaere","LOCALS",5)~ EXIT
END

//SLEPT WITH PHAERE - ROMANCE
IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!Global("SheenaRomanceActive","GLOBAL",2)
Global("PastRPhaere","LOCALS",1)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)~ THEN BEGIN SheenaRPhaere1
  SAY @8101 
  IF ~GlobalGT("SheenaLoveTalk","LOCALS",8)~ THEN REPLY @8089 DO ~SetGlobal("PastRPhaere","LOCALS",2)~ GOTO SheenaRPhaere2
  IF ~GlobalLT("SheenaLoveTalk","LOCALS",8)~ THEN REPLY @8089 DO ~SetGlobal("PastRPhaere","LOCALS",2)~ GOTO SheenaRPhaere2a
  IF ~~ THEN REPLY @8090 DO ~SetGlobal("PastRPhaere","LOCALS",2)~ GOTO SheenaRPhaere3
IF ~~ THEN REPLY @8102 DO ~SetGlobal("PastRPhaere","LOCALS",2)~ GOTO SheenaRPhaere3
END

IF ~Global("PastRPhaere","LOCALS",2)~ THEN BEGIN SheenaRPhaere2a
SAY @8103
= @8104
IF ~~ THEN DO ~SetGlobal("SheenaMatch","GLOBAL",3) SetGlobal("SheenaLoveTak","LOCALS",99) SetGlobal("PastRPhaere","LOCALS",5)~ EXIT
END

IF ~Global("PastRPhaere","LOCALS",2)~ THEN BEGIN SheenaRPhaere2
SAY @8105= @8106
= @8107
IF ~~ THEN DO ~SetGlobal("SheenaLoveTak","LOCALS",99) SetGlobal("PastRPhaere","LOCALS",5)~ EXIT
END

IF ~Global("PastRPhaere","LOCALS",2)~ THEN BEGIN SheenaRPhaere3
SAY @8108
IF ~~ THEN REPLY @8109 DO ~SetGlobal("PastRPhaere","LOCALS",3)~ GOTO SheenaRPhaere4
IF ~~ THEN REPLY @8110 DO ~SetGlobal("PastRPhaere","LOCALS",3)~ GOTO SheenaRPhaere4
END

IF ~Global("PastRPhaere","LOCALS",3)~ THEN BEGIN SheenaRPhaere4
SAY @8111
IF ~~ THEN DO ~SetGlobal("PastRPhaere","LOCALS",5)~ EXIT
END


//Talk about the slayer with Sheena
IF ~InParty("K#Sheena") Global("SlayerTalkReady","LOCALS",2)~ THEN BEGIN SheenaSlayer2
SAY @8112 
IF ~~ THEN REPLY @8113 DO ~SetGlobal("SlayerTalkReady","LOCALS",3)~ GOTO SheenaSlayer3
IF ~~ THEN REPLY @8114 DO ~SetGlobal("SlayerTalkReady","LOCALS",3)~ GOTO SheenaSlayer4
END

IF ~Global("SlayerTalkReady","LOCALS",3)~ THEN BEGIN SheenaSlayer3
SAY @8115 
IF ~~ THEN REPLY @8116 DO ~SetGlobal("SlayerTalkReady","LOCALS",6)~ EXIT
IF ~~ THEN REPLY @8114 DO ~SetGlobal("SlayerTalkReady","LOCALS",4)~ GOTO SheenaSlayer4
IF ~~ THEN REPLY @8117 DO ~SetGlobal("SlayerTalkReady","LOCALS",6)~ EXIT
END

IF ~Global("SlayerTalkReady","LOCALS",4)~ THEN BEGIN SheenaSlayer4
SAY @8118 
IF ~~ THEN REPLY @8119 DO ~SetGlobal("SlayerTalkReady","LOCALS",3)~ GOTO SheenaSlayer3
IF ~~ THEN REPLY @8120 DO ~SetGlobal("SlayerTalkReady","LOCALS",5)~ GOTO SheenaSlayer5
END

IF ~Global("SlayerTalkReady","LOCALS",5)~ THEN BEGIN SheenaSlayer5
SAY @8121 
IF ~~ THEN DO ~SetGlobal("SlayerTalkReady","LOCALS",6)~ EXIT
END

//IF UDSILVER IS ENEMY
IF ~Global("SHEENAUDSILV","GLOBAL",1)~ THEN BEGIN SheenaPissed1
SAY @8122 = @8123
IF ~Global("K#SHEENRHD","GLOBAL",1)~ THEN DO ~SetGlobal("SHEENAUDSILV","GLOBAL",2)  LeaveParty() Enemy()~ EXIT
IF ~Global("K#SHEENRHD","GLOBAL",0)~ THEN DO ~SetGlobal("SHEENAUDSILV","GLOBAL",2) LeaveParty() ApplySpellRES("K#POLYS",Myself) Enemy()~ EXIT
END

//TANNER
IF ~Global("SheenaEnterTanner","GLOBAL",1) InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN BEGIN SheenaTanner1
SAY @8124 = @8125
  IF ~~ THEN REPLY @8126 DO ~SetGlobal("SheenaEnterTanner","GLOBAL",2) ~ GOTO SheenaTanner2
END

IF ~Global("SheenaEnterTanner","GLOBAL",2) InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN BEGIN SheenaTanner2
SAY @8127
  IF ~~ THEN DO ~SetGlobal("SheenaEnterTanner","GLOBAL",3) ~ EXIT
END

//////////////////////////////////////////////////////////////////////////////
//FORTUNE TELLER IN TRADEMEET
IF ~~ THEN BEGIN SheenaFortuneTold3
SAY @8128 
IF ~~ THEN DO ~SetGlobal("SheenaToldFuture","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN SheenaFortuneTold1
SAY @8129 
IF ~~ THEN DO ~SetGlobal("SheenaToldFuture","LOCALS",1)~ EXTERN TRGYP02 SheenaFortuneTold2
END

//ADD FLIRTS HERE LATER
/////////////////////////////////////////////////////////////////////////
//FLIRTS
/////////////////////////////////////////////////////////////////////////
IF ~IsGabber(Player1)
Gender(Player1,MALE)
CombatCounter(0)
!AreaType(DUNGEON)
!Alignment(Player1,MASK_EVIL)
Global("K#SheenaFlirtsOff","GLOBAL",0)~ THEN BEGIN SheenaFlirtAttempts
SAY @8130
+ ~RandomNum(4,1) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8131 + SheenaFlirt11
+ ~RandomNum(4,2) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8131 + SheenaFlirt12
+ ~RandomNum(4,3) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8131 + SheenaFlirt13
+ ~RandomNum(4,4) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8131 + SheenaFlirt14

+ ~RandomNum(4,1)~ + @8132 + SheenaFlirt21
+ ~RandomNum(4,2)~ + @8132 + SheenaFlirt22
+ ~RandomNum(4,3)~ + @8132 + SheenaFlirt23
+ ~RandomNum(4,4)~ + @8132 + SheenaFlirt24

+ ~RandomNum(4,1) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8133 + SheenaFlirt31
+ ~RandomNum(4,2) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8133 + SheenaFlirt32
+ ~RandomNum(4,3) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8133 + SheenaFlirt33
+ ~RandomNum(4,4) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8133 + SheenaFlirt34

+ ~RandomNum(4,1) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8134 + SheenaFlirt41
+ ~RandomNum(4,2) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8134 + SheenaFlirt42
+ ~RandomNum(4,3) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8134 + SheenaFlirt43
+ ~RandomNum(4,4) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8134 + SheenaFlirt44

+ ~RandomNum(4,1)~ + @8135 + SheenaFlirt51
+ ~RandomNum(4,2)~ + @8135 + SheenaFlirt52
+ ~RandomNum(4,3)~ + @8135 + SheenaFlirt53
+ ~RandomNum(4,4)~ + @8135 + SheenaFlirt54

+ ~RandomNum(4,1) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8136 + SheenaFlirt61
+ ~RandomNum(4,2) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8136 + SheenaFlirt62
+ ~RandomNum(4,3) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8136 + SheenaFlirt63
+ ~RandomNum(4,4) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8136 + SheenaFlirt64

+ ~RandomNum(4,1) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8137 + SheenaFlirt71
+ ~RandomNum(4,2) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8137 + SheenaFlirt72
+ ~RandomNum(4,3) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8137 + SheenaFlirt73
+ ~RandomNum(4,4) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",1)~ + @8137 + SheenaFlirt74

+ ~RandomNum(4,1) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt81
+ ~RandomNum(4,2) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt82
+ ~RandomNum(4,3) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt83
+ ~RandomNum(4,4) !Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt84
/* Only 1 written
+ ~RandomNum(4,1)~ + ~Tell me of your past adventures, Sheena.~ + SheenaFlirt91
+ ~RandomNum(4,2)~ + ~Tell me of your past adventures, Sheena.~ + SheenaFlirt92
+ ~RandomNum(4,3)~ + ~Tell me of your past adventures, Sheena.~ + SheenaFlirt93
+ ~RandomNum(4,4)~ + ~Tell me of your past adventures, Sheena.~ + SheenaFlirt94
*/
//Romance flirts start here
+ ~RandomNum(4,1) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8138 + SheenaFlirt101
+ ~RandomNum(4,2) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8138 + SheenaFlirt102
+ ~RandomNum(4,3) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8138 + SheenaFlirt103
+ ~RandomNum(4,4) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8138 + SheenaFlirt104


+ ~RandomNum(3,1) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8139 + SheenaFlirt111
+ ~RandomNum(3,2) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8139 + SheenaFlirt112
+ ~RandomNum(3,3) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8139 + SheenaFlirt113
/* Not written
+ ~RandomNum(4,4) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8139 + SheenaFlirt114

+ ~RandomNum(4,1) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt121
+ ~RandomNum(4,2) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt122
+ ~RandomNum(4,3) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt123
+ ~RandomNum(4,4) Global("SheenaRomanceActive","GLOBAL",2) Global("SheenRHD","GLOBAL",0)~ + @8137 + SheenaFlirt124
*/
++ @8140 EXIT
END

//Kissing Sheena
IF ~~ THEN BEGIN SheenaFlirt11
 SAY @8141 
 =
 @8142
 =
 @8143
 IF ~~ THEN REPLY @8144 GOTO SheenaFlirt11a
 IF ~~ THEN REPLY @8145 EXIT
END

IF ~~ THEN BEGIN SheenaFlirt12
 SAY @8146 
  IF ~~ THEN REPLY @8147 GOTO SheenaFlirt11a
  IF ~~ THEN REPLY @8148 EXIT
  IF ~~ THEN REPLY @8149 GOTO SheenaFlirt11c
END

IF ~~ THEN BEGIN SheenaFlirt13
 SAY @8150 = @8151
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt14
 SAY @8152 = @8153
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt11a
 SAY @8154 
 IF ~~ THEN REPLY @8155 EXIT
 IF ~~ THEN REPLY @8156 EXIT
END

IF ~~ THEN BEGIN SheenaFlirt11c
 SAY @8157 
  IF ~~ THEN EXIT
END

//I married a monster! A bit of fun but plainly ridiculous
//I wrote it after reading How to be an adventurer in IWD-II
IF ~~ THEN BEGIN SheenaFlirt21
 SAY @8158 = @8159 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt22
 SAY @8158 = @8160 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt23
 SAY @8158 = @8161 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt24
 SAY @8158 = @8162 
  IF ~~ THEN EXIT
END

//Sheena wings
IF ~~ THEN BEGIN SheenaFlirt31
 SAY @8163 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt32
 SAY @8164 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt33
 SAY @8165 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt34
 SAY @8166 = @8167
  IF ~~ THEN REPLY @8168 GOTO SheenaFlirt34a
  IF ~~ THEN REPLY @8169 GOTO SheenaFlirt34b
END

IF ~~ THEN BEGIN SheenaFlirt34a
 SAY @8170 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt34b
 SAY @8171 
  IF ~~ THEN EXIT
END

//Sheena's tail
IF ~~ THEN BEGIN SheenaFlirt41
 SAY @8172 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt42
 SAY @8173 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt43
 SAY @8174 
  IF ~~ THEN DO ~IncrementGlobal("SheenaFlirtAngry","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SheenaFlirt44
 SAY @8175 
  IF ~~ THEN DO ~IncrementGlobal("SheenaFlirtAngry","GLOBAL",1)~ EXIT
END

//Sheena's childhood
IF ~~ THEN BEGIN SheenaFlirt51
 SAY @8176 = @8177 = @8178 = @8179
  IF ~Or(2) PartyHasItem("FAMPSD") PartyHasItem("FAMFAIR")~ THEN REPLY @8180 GOTO SheenaFlirt51a
  IF ~~ THEN REPLY @8181 GOTO SheenaFlirt51b
  IF ~~ THEN REPLY @8182 GOTO SheenaFlirt51c
END

IF ~~ THEN BEGIN SheenaFlirt51a
 SAY @8183 
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SheenaFlirt51b
 SAY @8184 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt51c
 SAY @8185 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt52
 SAY @8186 = @8187 = @8188 = @8189 = @8190 = @8191 = @8192 = @8193
  IF ~~ THEN REPLY @8194 GOTO SheenaFlirt52a
  IF ~~ THEN REPLY @8195 GOTO SheenaFlirt52b
END

IF ~~ THEN BEGIN SheenaFlirt52a
 SAY @8196 = @8197 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt52b
 SAY @8198 
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SheenaFlirt53
 SAY @8199 = @8200 = @8201 = @8202 = @8203 = @8204
  IF ~Global("SheenaRibald","LOCALS",1)~ THEN REPLY @8205 GOTO SheenaFlirt53a
  IF ~!Global("SheenaRibald","LOCALS",1)~ THEN REPLY @8206 GOTO SheenaFlirt53b
END

IF ~~ THEN BEGIN SheenaFlirt53a
 SAY @8207 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt53b
 SAY @8208  
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SheenaFlirt54
 SAY @8209 = @8210 = @8211 = @8212
IF ~~ THEN REPLY @8213 GOTO SheenaFlirt54a
IF ~~ THEN REPLY @8214 GOTO SheenaFlirt54b
IF ~~ THEN REPLY @8215 GOTO SheenaFlirt54c
END

IF ~~ THEN BEGIN SheenaFlirt54a
 SAY @8216 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt54b
 SAY @8217 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt54c
 SAY @8218 = @8219
  IF ~~ THEN EXIT
END

//Sheena hair
IF ~~ THEN BEGIN SheenaFlirt61
 SAY @8220
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt62
 SAY @8221
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt63
 SAY @8222 = @8223
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt64
 SAY @8224
  IF ~~ THEN EXIT
END

//Sheena hand (dragon form)
IF ~~ THEN BEGIN SheenaFlirt71
 SAY @8225
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt72
 SAY @8226 
= 
@8227
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt73
 SAY @8228 
  IF ~~ THEN REPLY @8229 GOTO SheenaFlirt73a
  IF ~~ THEN REPLY @8230 GOTO SheenaFlirt73b
END

IF ~~ THEN BEGIN SheenaFlirt73a
 SAY @8231 = @8232
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt73b
 SAY @8233
  IF ~~ THEN REPLY @8229 GOTO SheenaFlirt73a
  IF ~~ THEN REPLY @8234 GOTO SheenaFlirt73c
END

IF ~~ THEN BEGIN SheenaFlirt73c
 SAY @8235 
= 
@8236 = @8237
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SheenaFlirt74
 SAY @8238
  IF ~~ THEN EXIT
END

//Sheena hand (human form)
IF ~~ THEN BEGIN SheenaFlirt81
 SAY @8239 = @8240
  IF ~~ THEN REPLY @8241 GOTO SheenaFlirt81a
  IF ~~ THEN REPLY @8242 GOTO SheenaFlirt81b
  IF ~~ THEN REPLY @8243 GOTO SheenaFlirt81c
END

IF ~~ THEN BEGIN SheenaFlirt81a
 SAY @8244
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt81b
 SAY @8245
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt81c
 SAY @8246
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt82
 SAY @8247 = @8248
  IF ~~ THEN REPLY @8249 GOTO SheenaFlirt82a
IF ~~ THEN REPLY @8250 GOTO SheenaFlirt82b
IF ~~ THEN REPLY @8251 GOTO SheenaFlirt82c
END

IF ~~ THEN BEGIN SheenaFlirt82a
 SAY @8252
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt82b
 SAY @8253
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt82c
 SAY @8254
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt83
 SAY @8255 = @8256
  IF ~~ THEN REPLY @8257 GOTO SheenaFlirt83a
  IF ~~ THEN REPLY @8258 EXIT
  IF ~~ THEN REPLY @8259 GOTO SheenaFlirt83c
END

IF ~~ THEN BEGIN SheenaFlirt83a
 SAY @8260
  IF ~~ THEN REPLY @8261 GOTO SheenaFlirt83a1
  IF ~~ THEN REPLY @8262 GOTO SheenaFlirt83a2
  IF ~~ THEN REPLY @8263 GOTO SheenaFlirt83a3
END

IF ~~ THEN BEGIN SheenaFlirt83a1
 SAY @8264
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt83a2
 SAY @8265
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt83a3
 SAY @8266
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SheenaFlirt83c
 SAY @8267
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SheenaFlirt84
 SAY @8268
  IF ~~ THEN EXIT
END

//Sheena adventures
IF ~~ THEN BEGIN SheenaFlirt91
 SAY @8269 = @8270 = @8271 = @8272 = @8273
  IF ~~ THEN REPLY @8274 GOTO SheenaFlirt91a
  IF ~~ THEN REPLY @8275 GOTO SheenaFlirt91a
  IF ~~ THEN REPLY @8276 GOTO SheenaFlirt91a
END

IF ~~ THEN BEGIN SheenaFlirt91a
 SAY @8277 = @8278 = @8279
  IF ~~ THEN EXIT
END
/* 
IF ~~ THEN BEGIN SheenaFlirt92
 SAY ~~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt93
 SAY ~.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt94
 SAY ~.~
  IF ~~ THEN EXIT
END
*/
//Romance flirts start here
//Kiss Sheena
IF ~~ THEN BEGIN SheenaFlirt101
 SAY @8280
=  
@8281
= 
@8282
= 
@8283
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt102
 SAY @8284 
=  
@8285
= 
@8286
= 
@8287
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt103
 SAY @8288
= 
@8289
= 
@8290
= 
@8291
=
@8292
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt104
 SAY @8141 
 =
 @8142
 =
 @8293
=
@8294
  IF ~~ THEN EXIT
END


//Hug Sheena - romance part
IF ~~ THEN BEGIN SheenaFlirt111
 SAY @8295
= 
@8296
  IF ~~ THEN REPLY @8297 GOTO SheenaFlirt111a
  IF ~~ THEN REPLY @8298 GOTO SheenaFlirt111b
END

IF ~~ THEN BEGIN SheenaFlirt111a
 SAY @8299
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt111b
 SAY @8300
  IF ~~ THEN REPLY @8301 EXIT
  IF ~~ THEN REPLY @8302 GOTO SheenaFlirt111c
  IF ~~ THEN REPLY @8297 GOTO SheenaFlirt111a
END

IF ~~ THEN BEGIN SheenaFlirt111c
 SAY @8303
  IF ~~ THEN DO ~RealSetGlobalTimer("K#SheenaFlirtOFF","GLOBAL",900) SetGlobal("K#SheenaFlirtsOff","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN SheenaFlirt112
 SAY @8304
=
@8305
= 
@8306 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaFlirt113
 SAY @8307
= 
@8308
  IF ~~ THEN EXIT
END

/////////////////////////////////////////////////////////////////////////////
//Salvanas - unlikely to happen and dialogs are not very good
/* Scrapped = not really good or worth publishing
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("sheenasalvanas","LOCALS",0)
Global("SheenRHD","GLOBAL",1)~ THEN SALVANAS sheenasal
~My eyes never gazed upon more mysterious, wondrous and...and (enormous)... creature. I would lay my kingdom at your feet just to spend a night in your embrace, lulled by the sweet alcove of your wings.~ DO ~SetGlobal("sheenasalvanas","LOCALS",1)~
== SHEENAJ
~What an odd suggestion! You wouldn't fit my size.~//bad
== SALVANAS 
~May I point out that this would --my Lady-- be a slight misconception, size does not matter in bed.~//Worse
== SHEENAJ
~I found you amusing thus far, but you clearly outstretch my magnanimity and patience.~
== SALVANAS 
~Hum...You're right. I'd be far too small...tiny...ridicule.~
== SHEENAJ
~Ridicule you were already but alive you remain, so don't bother me again. Ever!~
EXIT
*/
// Second attempt
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("sheenasalvanas","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN SALVANAS sheenasal
@8309 DO ~SetGlobal("sheenasalvanas","LOCALS",1)~
== SHEENAJ
@8310
== SALVANAS 
@8311
EXIT



/////////////////////////////////////////////////////////////////////////////
//COHRVALE AND BREGG - SLUM DISTRICT - MR. F.? Yeah! Good question
APPEND COHRVALE
IF ~~ THEN BEGIN SheenaCorh2
 SAY @8312 
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END

APPEND BREGG
IF ~~ THEN BEGIN SheenaBregg2
 SAY @8313 
 IF ~~ THEN DO ~EscapeArea()~ EXTERN COHRVALE SheenaCorh2  
END
END

INTERJECT COHRVALE 2 Sheena== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SheenRHD","GLOBAL",0)~ THEN 
@8314 DO ~ApplySpellRES("K#POLYS",Myself)~ 
== BREGG
@8315 
== COHRVALE
@8316 
END BREGG SheenaBregg2

/////////////////////////////////////////////////////////////////////////////
//DRAGON SERIES
//Shadow dragon at 0- How amusing that you petty fleshlings would dare disturb the slumber of the Shadow Dragon?  Are you //daft? Blind? Whatever, I shall tear your bodies apart and feast on your innards while you whimper and cry for mercy.
INTERJECT_COPY_TRANS SHADRA01 0 SheenaShadowDragon1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SHEENRHD","GLOBAL",0)~ THEN //NOT DRAGON
@8317 DO ~ApplySpellRES("K#POLYS",Myself)~ 
== SHADRA01
@8318
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN //NOT DRAGON
@8319 
== SHADRA01
@8320 DO ~Enemy()~
END

INTERJECT_COPY_TRANS SHADRA01 0 SheenaShadowDragon2
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SHEENRHD","GLOBAL",1)~ THEN //DRAGON
@8317
== SHADRA01
@8318
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN //NOT DRAGON
@8319 
== SHADRA01
@8320 DO ~Enemy()~
END


//Black dragon and the goblet of life-I *did* promise to protect the Goblet. Irenicus is offering me a great fortune. You //can do no less if your truly wish to have the Goblet.

EXTEND_BOTTOM DRAGBLAC 6
IF ~InParty("K#SHEENA") !Dead("K#SHEENA") Global("SheenRHD","GLOBAL",1)~  THEN EXTERN SHEENAJ SheenaBlackDrag1
END

CHAIN
IF ~Global("SheenaDragBlack","LOCALS",0) See("Dragblac")~ THEN SHEENAJ SheenaBlackDrag1
@8321 DO ~SetGlobal("SheenaDragBlack","LOCALS",1)~
== DRAGBLAC
@8322
== SHEENAJ
@8323
== DRAGBLAC
@8324 DO ~Enemy()~
EXIT

EXTEND_BOTTOM DRAGBLAC 6
IF ~InParty("K#SHEENA") !Dead("K#SHEENA") Global("SheenRHD","GLOBAL",0)~  THEN EXTERN SHEENAJ SheenaBlackDrag2
END

CHAIN
IF ~Global("SheenaDragBlack","LOCALS",0) See("Dragblac")~ THEN SHEENAJ SheenaBlackDrag2
@8321 DO ~SetGlobal("SheenaDragBlack","LOCALS",1) ApplySpellRES("K#POLYS",Myself)~
== DRAGBLAC
@8322
== SHEENAJ
@8323
== DRAGBLAC
@8324 DO ~Enemy()~
EXIT

/////////////////////////////////////////////////////////////////////////////
//UDSILVER DRAGON - NEEDS SCRIPTING
CHAIN IF WEIGHT #-99 ~InParty("K#Sheena")
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("UDSTalkSheena","GLOBAL",1)
Global("SheenRHD","GLOBAL",1)~ THEN UDSILVER sheenaudsilverl
@8325 DO ~SetGlobal("UDSTalkSheena","GLOBAL",2)~
== SHEENAJ
@8326
== UDSILVER 
@8327
== SHEENAJ
@8328
== UDSILVER 
@8329
== SHEENAJ
@8330 DO ~SetGlobal("StartsSoon","GLOBAL",1) ApplySpellRES("K#POLYB",Myself)~
== UDSILVER
@8331 
EXTERN UDSILVER 0

/////////////////////////////////////////////////////////////////////////////
//Lieutenant Aegisfield
INTERJECT_COPY_TRANS INSPECT 13 SheenaInsp1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8332 
END
/////////////////////////////////////////////////////////////////////////////
//ELHAN - We cannot march on human territory.  As great as our problems are, they would only get worse if we appeared to be //sending agents into the cities of Amn. 
INTERJECT C6ELHAN2 45 SheenaElhan1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8333 
END C6ELHAN2 46

/////////////////////////////////////////////////////////////////////////////
//bhoisig - Our resources are thin at the moment, but an ally of Helm and servant of Torm is awaiting you in the sewers //now. Seek Keldorn to serve with you. Faith guide you both.
INTERJECT_COPY_TRANS BHOISIG 19 SheenaBhoisig1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8334
//But I do hope that despite their thin resources they can still provide us with adequate boots on this quest. 
END
/////////////////////////////////////////////////////////////////////////////
//BORINALL SLUMS - I am afraid I must add injury to insult. You are obviously not who you claim to be, and I cannot let you //leave and return strengthened. You will not leave here. You cannot..
INTERJECT_COPY_TRANS BORINALL 14 SheenaBorinal1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8335 
END
/////////////////////////////////////////////////////////////////////////////
//ELGEA RANSOM LADY
INTERJECT ELGEA 6 SheenaBorinal1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8336 
END ELGEA 14 

I_C_T ELGEA 14 SheenaBorinal1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8337 
END 
/////////////////////////////////////////////////////////////////////////////
//NEEBER IN TRADEMEET - People say I ask too many questions.  Do you think so, too?
APPEND NEEBER
IF ~~ THEN BEGIN SheenaNeeber2
 SAY @8338 
 IF ~~ THEN DO ~AddXPObject(Player1,1000)
AddXPObject(Player2,1000)
AddXPObject(Player3,1000)
AddXPObject(Player4,1000)
AddXPObject(Player5,1000)
AddXPObject(Player6,1000)
EscapeArea()~ EXIT  
END
END

INTERJECT NEEBER 7 SheenaNeeber1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8339 
END NEEBER SheenaNeeber2
/////////////////////////////////////////////////////////////////////////////
//MADULF - Always Madulf and fellows be chased and hated 'cause me an ogre!  We just wants to be left alone.  We come here //one moon ago, tries to settle for a while, yes
INTERJECT_COPY_TRANS UHOGRE01 5 SheenaMadulf1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8340 
END


/////////////////////////////////////////////////////////////////////////////
//VALYGAR - Lavok disappeared with the sphere over five centuries ago. It has not been seen again until now
INTERJECT_COPY_TRANS VALYGAR 5 SheenaValygar1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8341 
END
/////////////////////////////////////////////////////////////////////////////
//LAVOK - I was the scourge of the living before I left this plane...I terrorized my own blood and tampered with the laws //of life and death.  Evil and arrogant was I, indeed.
INTERJECT_COPY_TRANS LAVOK 22 SheenaLavok1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena") !InParty("Valygar")~ THEN 
@8342 
END

INTERJECT_COPY_TRANS LAVOK 22 SheenaLavok2
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena") InParty("Valygar") !Dead("Valygar")~ THEN 
@8343
== VALYGARJ IF ~InParty("k#Sheena") !Dead("K#Sheena") InParty("Valygar") !Dead("Valygar")~ THEN 
@8344
END

/////////////////////////////////////////////////////////////////////////////
//TIRIS Trademeet - Mentions Riejek the skinflayer exposed of bridge district
INTERJECT_COPY_TRANS TRSKIN02 16 SheenaValygar1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8345 
END
/////////////////////////////////////////////////////////////////////////////
//CALAHA BRYNLAW AFTER GINIA AND ASON QUEST
INTERJECT_COPY_TRANS CALAHA 17 SheenaCalaha1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8346 
END
/////////////////////////////////////////////////////////////////////////////
//BECKY IS OFFERED TO JOIN CHARNAME IN DEFIANCE TO HER MOTHER
//Oh great, I'll just run and grab my things!  Mother did you hear...
INTERJECT BECKY 5 SheenaCalaha1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8347 
END DIANE 1
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
//CORNEIL AFTER THE BRIBE FOR CASTING MAGIC IN ATHKLATA
INTERJECT_COPY_TRANS CORNEIL 11 SheenaCorneil1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8348 
END

CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("Sheenacorneil1","LOCALS",0)
Global("SheenRHD","GLOBAL",1)~ THEN CORNEIL sheenacorneil
@8349 DO ~SetGlobal("Sheenacorneil1","LOCALS",1) Enemy() Shout(99)~
EXIT
/////////////////////////////////////////////////////////////////////////////
//LOST CHILD IN THE DOCKS WHO DOES NOT STOP CRYING
INTERJECT DLOST 3 SheenaDlost1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8350 
END DLOST 2
/////////////////////////////////////////////////////////////////////////////
//SAEMON - offers to help
INTERJECT_COPY_TRANS PPSAEM2 19 SheenaDlost1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8351 
END

/////////////////////////////////////////////////////////////////////////////
//MAZZYJ & GORF - You shall rue your acts of dishonour.
INTERJECT MAZZYJ 41 SheenaGorfl1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8352 
== MAZZYJ  
@8353
END GORF1 6

INTERJECT_COPY_TRANS BUNKIN 10 SheenaBorinall1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8354 
END
/////////////////////////////////////////////////////////////////////////////
//MAD CLERIC DOCKS - YOU!  Bow, worm, and pray that Cyric allows you to become one of His holy worshippers!  Cast aside //whatever false god you pray to and embrace the Prince of Lies in all His majesty!
APPEND DCLERIC
IF ~~ THEN BEGIN SheenaMadCleric2
 SAY @8355 
 IF ~~ THEN DO ~SetGlobal("K#SheenaQuestOn","GLOBAL",1) EscapeArea()~ EXIT  
END
END

INTERJECT DCLERIC 0 SheenaMadcleric1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8356 DO ~ApplySpellRES("K#POLYS",Myself)~ 
== DCLERIC 
@8357 
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8358 
== DCLERIC 
@8359 
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8360
== DCLERIC 
@8361 
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8362 
END DCLERIC SheenaMadCleric2
/////////////////////////////////////////////////////////////////////////////
// DELCIA
INTERJECT DELCIA 1 SheenaDelcia1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8363
END DELCIA 48
/////////////////////////////////////////////////////////////////////////////
// DELON
INTERJECT_COPY_TRANS DELON 15 SheenaDelon1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8364
END
/////////////////////////////////////////////////////////////////////////////
//DALESON WARNS TO USE FIRE ON THE TROLLS - 
INTERJECT_COPY_TRANS DALESON 43 SheenaDaleson1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8365
END
/////////////////////////////////////////////////////////////////////////////
//MAEVAR - STEAL FROM TALOS
INTERJECT_COPY_TRANS MAEVAR 17 SheenaMae1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8366
END
/////////////////////////////////////////////////////////////////////////////
//MAEVAR - KILL EMBARL
INTERJECT_COPY_TRANS MAEVAR 31 SheenaMae2
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8367
END
/////////////////////////////////////////////////////////////////////////////
//RENAL - FIND OUT TREACHERY
INTERJECT_COPY_TRANS RENAL 30 SheenaRenal1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8368
END
/////////////////////////////////////////////////////////////////////////////
//PSEUDO DRAGON FAMILIAR - BACK TO BACKPACK
INTERJECT_COPY_TRANS FAMIL1 1 SheenaFamil1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8369
END
/////////////////////////////////////////////////////////////////////////////
//FETCH - ONE OF BODHI SERVANT
/* Fun but scrapped
INTERJECT_COPY_TRANS FETCH 1 SheenaFetch1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
~Bodhi sure has a dark humor calling one of her servant Fetch. I wonder where *Carry* might be?~
END
*/
/////////////////////////////////////////////////////////////////////////////
//GPHIL - Philosopher in Trademeet
INTERJECT_COPY_TRANS GPHIL01 3 SheenaGphil1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8370
END
/////////////////////////////////////////////////////////////////////////////
//CUSTOMER AT THE FIVE FLAGONS
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaDEltow1","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN FFCUST01 sheenaFcust1
@8371
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8372
== FFCUST01
@8373
EXIT
/////////////////////////////////////////////////////////////////////////////
//TOWN FOLK 2 - 2ND SLUM TAVERN 
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaDEltow1","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN DELTOW02 sheenaBurch1
@8374
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8375
== DELTOW02
@8376
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8377
== DELTOW02 IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8378 DO ~TakePartyGold(10)~
EXIT
/////////////////////////////////////////////////////////////////////////////
// BURCH1
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaNobleM1","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN NOBLEM1 sheenaBurch1
@8379 DO ~SetGlobal("SheenaNobleM1","LOCALS",1)~
== SHEENAJ
@8380
EXIT
/////////////////////////////////////////////////////////////////////////////
// BODHI - WORKING FOR HER You may be concerned about why we must meet here. There are a number of reasons, only a few of //which you need worry about. First, I shall introduce myself. I am Bodhi.
INTERJECT BODHI 1 SheenaBodhi1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8381
END BODHI 2

/////////////////////////////////////////////////////////////////////////////
// Lonk
APPEND PPWORKER
IF ~~ THEN BEGIN SheenaLonk1
 SAY @8382 
 IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",53) EscapeArea()~ EXIT  
END
END

INTERJECT PPWORKER 17 Sheena
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SheenRHD","GLOBAL",0)~ THEN 
@8383 DO ~ApplySpellRES("K#POLYS",Myself)~ 
END PPWORKER SheenaLonk1

INTERJECT PPWORKER 17 Sheena
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SheenRHD","GLOBAL",1)~ THEN 
@8383
END PPWORKER SheenaLonk1

/////////////////////////////////////////////////////////////////////////////
APPEND TARNOR
IF ~~ THEN BEGIN SheenaTarnor3
 SAY @8384 
 IF ~~ THEN DO ~Shout(99)~ EXIT  
END
END
//TARNOR IN THE SEWERS
INTERJECT TARNOR 1 SheenaTARNOR1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SheenRHD","GLOBAL",0)~ THEN 
@8385 DO ~ApplySpellRES("K#POLYS",Myself)~ 
== TARNOR IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN
@8386 
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8387 
END TARNOR SheenaTarnor3

INTERJECT TARNOR 1 SheenaTARNOR2
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena") Global("SheenRHD","GLOBAL",1)~ THEN 
@8385
== TARNOR IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN
@8386 
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8387 
END TARNOR SheenaTarnor3

/////////////////////////////////////////////////////////////////////////////
//NOBLEM1 
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaNobleM1","LOCALS",0)
Global("SheenRHD","GLOBAL",1)~ THEN NOBLEM1 sheena1
@8388 DO ~SetGlobal("SheenaNobleM1","LOCALS",1)~
== SHEENAJ
@8389
EXIT
/////////////////////////////////////////////////////////////////////////////
/* Not written yet
//NOBLEW2 - CALLS MAZZY A CHILD
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaNobleW2","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN NOBLEW2 sheena1
~?~ DO ~SetGlobal("SheenaNobleW2","LOCALS",1)~
== SHEENAJ
~.~
EXIT
*/
/////////////////////////////////////////////////////////////////////////////
//SAILOR1
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaSail1","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN BSAILOR1 sheena1
@8390 DO ~SetGlobal("SheenaSail1","LOCALS",1)~
== SHEENAJ
@8391
EXIT

//TRKID01 - PARENT KILLED BY WOLVES I wonder what the orphanage will be like... maybe somebody nice will come and take me //away.  Maybe.
I_C_T TRKID01 7 SheenaTRKID1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8392 
END

//UHKID01 0- Er...<PRO_SIRMAAM>?  My name is Dirbert and me an' my friends here want to be adventurers like you.  Real //strong an' powerful, like.
INTERJECT UHKID01 0 SheenaTRKID1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8393 = @8394 
END UHKID02 0

//Dont forget the ale
INTERJECT UHKID02 1 SheenaTRKID1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8395 
END UHKID03 2

/////////////////////////////////////////////////////////////////////////////
//PROSTITUTE You have to be carefull if you t'work the streets, ye does.
I_C_T BPROST2 3 SheenaBProst2
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8396 
END
/////////////////////////////////////////////////////////////////////////////
//MUGGER IN THE BRIDGE DISTRICT
APPEND BMUGG1
IF ~~ THEN BEGIN SheenaMug1
 SAY @8397 
 IF ~~ THEN DO ~EscapeArea()~ EXIT  
END
END

INTERJECT BMUGG1 0 SheenaBMUGG1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8398 DO ~ApplySpellRES("K#POLYS",Myself)~ 
END BMUGG1 SheenaMug1 
/////////////////////////////////////////////////////////////////////////////
//ARAN LINVAIL
INTERJECT ARAN 69 SheenaAran1 //Says doesnt know what happened to the shadow thieves
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8399
END ARAN 70 
/////////////////////////////////////////////////////////////////////////////
//RIBALD
CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaRibald","LOCALS",0)
Global("SheenRHD","GLOBAL",0)~ THEN RIBALD sheenaribald
@8400 DO ~SetGlobal("SheenaRibald","LOCALS",1)~
== SHEENAJ
@8401
== RIBALD 
@8402 = @8403
== SHEENAJ
@8404
== RIBALD 
@8405
== SHEENAJ
@8406
== RIBALD 
@8407
EXIT
/////////////////////////////////////////////////////////////////////////////
//Cromwell
INTERJECT WSMITH01 0 SheenaCromwell1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8408 
== WSMITH01 IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8409
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8410
== WSMITH01 IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8411
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8412
== WSMITH01 IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8413
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8414
END WSMITH01 13	
/////////////////////////////////////////////////////////////////////////////
//GAAL (SEWERS TEMPLE)
INTERJECT Gaal 7 SheenaGaal1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8415 
//Mutilation to gain membership! <CHARNAME>, I'll never surrender my eyes to those insane worshippers
END Gaal 27

//Interject in the temple area below -  Unseeing eye quest
//riftco1 - There's nothing in there. Hasn't been for years. Don't tease me with your stories... We all got over the hurt //long long ago, like when a cut scabs over but doesn't heal.
I_C_T RIFTC01 5 SheennaRiftC014
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8416
END

//Temple guardian after slaying the monster with heal spell - I am I. The Temple is I, though it is not safe for even I. //The beast does kill my form repeatedly. You have slain it for but a small time. It comes again and again.
I_C_T RIFTG03 1 SheennaRiftG031
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8417 
//Sisyph myth- Condemned by the gods to roll a stone uphill and once he did, the stone rolled back down and he had to start //all over again, for all eternity. Albert Camus - An essay on the human condition
//Sheena is not F. Nietchze's Zarathoustra so forget a line like: God just died
END

I_C_T RIFTG03 3 SheennaRiftG031 //Same text as above
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8417
END

I_C_T RIFTG03 2 SheennaRiftG031 //Same text as above
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8417
END

/////////////////////////////////////////////////////////////////////////////
//Sir sarles and the Ilithium quest
INTERJECT_COPY_TRANS SCSARLES 10 SheenaSarles1
== SHEENAJ IF ~InParty("K#Sheena") !Dead("K#Sheena")~ THEN 
@8418 = @8419 
END
/////////////////////////////////////////////////////////////////////////////
//RYAN TRAWL - RADIANT ORDER
INTERJECT_COPY_TRANS KAYL2 14 SheenaKayl1
== SHEENAJ IF ~InParty("K#Sheena") !Dead("K#Sheena")~ THEN 
@8420 = @8421
END 

CHAIN IF WEIGHT #-1 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaKayl","LOCALS",0)
Global("SheenRHD","GLOBAL",1)
!InParty("Keldorn")~ THEN KAYL2 sheenakayl
@8422 DO ~SetGlobal("SheenaKayl","LOCALS",1) Enemy() Shout(99)~
EXIT

CHAIN IF WEIGHT #-2 ~InParty("K#Sheena")
See("K#Sheena")
GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("SheenaKayl","LOCALS",0)
Global("SheenRHD","GLOBAL",1)
InParty("Keldorn")~ THEN KAYL2 sheenakayl
@8423 DO ~SetGlobal("SheenaKayl","LOCALS",1)~
== KELDORJ
@8424 
== KAYL2
@8425 
== KELDORJ
@8426 = @8427  
EXIT

/////////////////////////////////////////////////////////////////////////////
//PA'NAI
INTERJECT_COPY_TRANS SPPAIN 16 SheenaPanai1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("k#Sheena")~ THEN 
@8428 
END
/////////////////////////////////////////////////////////////////////////////
//RAELIS - AFTER ACEEPTING THE QUEST
INTERJECT_COPY_TRANS RAELIS 53 SheenaRaelis1
== SHEENAJ IF ~InParty("K#Sheena") !Dead("K#Sheena")~ THEN 
@8429 
END
/////////////////////////////////////////////////////////////////////////////
//TIRDIR - AFTER RELEASING HIM FROM THE GRAVE
INTERJECT_COPY_TRANS TIRDIR 2 SheenaTirdir1
== SHEENAJ IF ~InParty("K#Sheena") !Dead("k#Sheena")~ THEN 
@8430
END

//KAMIR -Yes, I am.  I miss him very much.  I think he would approve, however, of me taking care of you.  That is...if you //are willing.
INTERJECT KAMIR 22 Sheenakamir1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8431 
END MOURNER7 7

//WELLYNI've...I've gone to him...  (sob!)  ...I've tried to tell him that I just want my bear, please, but he just gets //too frightened of me.  (sob!)  Oh, please get it from him!
INTERJECT_COPY_TRANS WELLYN 8 SheenaWellyn1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8432
END

//LLynis - Give...give that to the little bloody bastard and tell him to stay away from me!
INTERJECT_COPY_TRANS LLYNIS 7 SheenaLlynis1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA") Global("SheenRHD","GLOBAL",0)~ THEN 
@8433 DO ~ApplySpellRES("K#POLYS",Myself)~ 
== LLYNIS
@8434
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8435 
== LLYNIS
@8436 DO ~Enemy()~ 
END

INTERJECT_COPY_TRANS LLYNIS 7 SheenaLlynis2
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA") Global("SheenRHD","GLOBAL",1)~ THEN 
@8433 
== LLYNIS
@8434
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8435 
== LLYNIS
@8436 DO ~Enemy()~ 
END

//Tiana and her infidel husband - Rumar!  Lord Rumar!  You know who I'm talking about!  EVERYONE here knows who I'm talking //about!  He's meeting HER here again!
INTERJECT_COPY_TRANS TIANA 1 SheenaTiana1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8437
END

/* Scrapped for obvious reasons - not Sheena
//RUMARS GIRLFRIEND PRISS - (giggle!)  Uh-huh...  (giggle!)
INTERJECT_COPY_TRANS PRISS 1 SheenaPriss1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
~(giggle!)  huh-uh... aren't you a smart one?~
== PRISS
~Leave us, Parrot!~
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
~Ah! Very interesting. Your intellect can actually add three comprehensible words together.~
END
*/

/////////////////////////////////////////////////////////////////////////////
//LOGAN (BEFORE ENTERING CRYPT IN TRADEMEET)
//This can end only in bloodshed.  I cannot offer the gold that the nobles have, 
//but in the name of peace I ask that you bring the mantle to me once it is found.
INTERJECT Celogan 86 SheenaLogan1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8438
END Celogan 87

//I don't know how much longer I can keep him safe. Many of the merchants have 
//called for a burning, and have challenged my attempts to stop them. 
//LOGAN ON LETTING YOU SPEAK TO CERND
INTERJECT Celogan 44 SheenaLogan2
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8439
END Celogan 21

//Male prostitute in Brynnlaw. 'Allo, darling.  Sure you wouldn't fancy joinin' me in me chambers for a bit of fun an' all //that? The ladies say I've hands that will melt away yer worries!
//  Male prostitue... in Brynnlaw.  Heh.
I_C_T pircor03 0 SheenaPro1
== SheenaJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8440
END

// Assassin in the Vulgar Monkey: Hello Sanik! The Lady Galvena sends her greeting. She dislikes being crossed.
I_C_T pirmur02 2 SheenaAssBrynn1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8441
//The redundancy dead/corpse is on purpose
END

/////////////////////////////////////////////////////////////////////////////
//Shark city
//You are fortunate, surface dwellers.  In the normal course of things, 
//creatures captured from the sun lands would be dinner for our plate.
INTERJECT_COPY_TRANS SAHPR1 11 SheenaSharks1
== SHEENAJ IF ~InParty("K#SHEENA")~ THEN
@8442
END

//King: It seems most... most strange!  They have no scales!  Look how small 
//and puny their teeth are!
EXTEND_BOTTOM SAHKNG01 1
IF ~InParty("K#SHEENA") !Dead("K#SHEENA") Global("SheenRHD","GLOBAL",0)~  THEN EXTERN SHEENAJ SheenaSharkKing1
END

CHAIN
IF ~~ THEN SHEENAJ SheenaSharkKing1
@8443 DO ~ApplySpellRES("K#POLYS",Myself)~
== SAHKNG01
@8444
EXTERN SAHBAR03 0

//UNDERDARK INTERJECTIONS

//GOLDANDER -We tunnelled too deep recently, and unearthed a monstrosity. A strange cavern that yielded death, a monster we //have not seen outside of dreaming.
INTERJECT UDSVIR03 9 SheenaGoldander1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8445
== UDSVIR03
@8446
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8447 
END UDSVIR03 10

//Simyaz - And to think we would suffer the same fate as you; you who should have died in our ambush upon the sea. 
INTERJECT UDSIMYAZ 1 SheenaSimyaz1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8448
END UDSIMYAZ 2

//SIMYAZ - We harbor a special hatred for the illithid, and we will see them dead before we are done. Or we die ourselves. 
INTERJECT UDSIMYAZ 5 SheenaSimyaz2
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8449
END UDSIMYAZ 6

//VITHAL- It will be worth it in the end, I promise. I would not venture into this place if I did not think it warrented //the risk. If you can help, please do.
I_C_T UDVITH 22 SheenaVithal1
== SHEENAJ IF ~PartyGoldGT(9999) InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8450
END

I_C_T UDVITH 22 SheenaVithal1
== SHEENAJ IF ~PartyGoldLT(9999) InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8451
END

//MATRON ARDULACE- Silence, girl!  I'll not swallow your lies!  Speak again and I'll send you into the pits of Lolth... //would you like to deal with the drider again so soon, girl?
INTERJECT UDARDUL 6 SheenaVithal1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8452
END UDARDUL 7

//SOLAUFEIN - And just because there are females with you, do not think to challenge me.  You are foreigners... no better //than slaves until the Matron Mothers say otherwise.
INTERJECT UDSOLA01 4 SheenaSolaufein1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8453
END UDSOLA01 6

//SOLA- I see.  It was only a matter of time before she acted, I suppose.  No alliance of mine to any House could prevent //the unseen dagger from plunging into my back.
INTERJECT UDSOLA01 122 SheenaSolaufein2
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8454 = @8455 = @8456
END UDSOLA01 123

//SOLA - The Matron Mother has no desire to see her eldest daughter become a snack for the devourers, so we must not fail!  //Do you understand, Veldrin?  
//REPLY 49 - I am to meet you at the entrance to the illithid caverns and ambush some illithid who have a Matron Mother's //daughter captive.
/* See part above
INTERJECT UDSOLA01 34 SheenaSolaufein3
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
~.~
END UDSOLA01 35

*/
/////////////////////////////////////////////////////////////////////////////
//SHEENA WITNESSING THE SLAYER
INTERJECT PLAYER1 5 SheenaSlayer1
== SHEENAJ IF ~InParty("K#Sheena") !Dead("k#Sheena")~ THEN
@8457 
=
@8458
END
++ @8459 EXIT
++ @8460 EXIT
++ @8461 EXTERN SHEENAJ SheenaSlayer1a
++ @8462 EXTERN SHEENAJ SheenaSlayer2a

APPEND SHEENAJ
IF ~~ THEN BEGIN SheenaSlayer1a
SAY @8463
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaSlayer2a
SAY @8464
IF ~~ THEN DO ~SetGlobal("SlayerTalkReady","LOCALS",1) RealSetGlobalTimer("SheTalkSlayer","LOCALS",300)~ EXIT
END
END

//Player1 step falters
INTERJECT PLAYER1 3 SheenaPCFalter1
==SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8465
END
++ @8466 DO ~SetGlobal("SheenaPCFalter","GLOBAL",1)~ EXTERN SHEENAJ SheenaPCFalter1a
++ @8467 DO ~SetGlobal("SheenaPCFalter","GLOBAL",1)~ EXTERN SHEENAJ SheenaPCFalter1b

APPEND SHEENAJ
IF ~~ THEN BEGIN SheenaPCFalter1a
SAY @8468
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaPCFalter1b
SAY @8469
IF ~~ THEN EXIT
END
END

//No romance at the tree of life
INTERJECT PLAYER1 33 SheenaTreeofLifeNoRomance
== PLAYER1 IF ~InParty("K#SHEENA") !Dead("K#SHEENA")
!Global("SheenaRomanceActive","GLOBAL",2)~ THEN
@8470 = @8471
END
++ @8472 EXTERN SHEENAJ SheenaTreeofLife1a
++ @8473 EXTERN SHEENAJ SheenaTreeofLife2a
//++ ~Sheena, I only ask of you to join me one last time in a fight.~ EXTERN SHEENAJ SheenaTreeofLife3a

APPEND SHEENAJ
IF ~~ THEN BEGIN SheenaTreeofLife1a
SAY @8474 = @8475
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN SheenaTreeofLife2a
SAY @8476 = @8477 = @8475
COPY_TRANS PLAYER1 33
END

//IF ~~ THEN BEGIN SheeenaTreeofLife3a
//SAY ~You did not have to ask. My sword, my spellbook and my life are all at your command.~ = ~I owe you this much //friend.~
//COPY_TRANS PLAYER1 33
//END
END

//If in romance at the tree of life
INTERJECT PLAYER1 33 SheenaTreeofLifeRomance
== PLAYER1 IF ~InParty("K#SHEENA") !Dead("K#SHEENA")
Global("SheenaRomanceActive","GLOBAL",2)~ THEN
@8478
END
++ @8479 EXTERN SHEENAJ SheenaTreeofLife1a
++ @8480 EXTERN SHEENAJ SheenaRTreeofLife1a
//++ ~Sheena, I only ask of you to join me one last time in a fight.~ EXTERN SHEENAJ SheenaRTreeofLife3a

APPEND SHEENAJ
IF ~~ THEN BEGIN SheenaRTreeofLife1a
SAY @8481
COPY_TRANS PLAYER1 33
END
END
/////////////////////////////////////////////////////////////////////////////
//JON IN HELL
I_C_T HellJon 10 SheenaHellJon2
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN 
@8482
END

I_C_T HellJon 9 SheenaHellJon3
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8482
END

I_C_T HellJon 8 SheennaHellJon4
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8482
END


/////////////////////////////////////////////////////////////////////////////
//Interject NPCs upon joining
//Viconia - townfolk - Done nothing?!  You are a drow elf, are you not?!  That is as good a reason as any!
INTERJECT VICG2 1 SheenaVicjoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8483
END VICG1 3

//Mazzy The Shade Lord commands a Shadow Dragon... a most deadly foe.  We were struck down as he laughed, and I am unsure //of how to defeat such a creature.
INTERJECT_COPY_TRANS MAZZY 20 SheenaMazzyjoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8484
END

/*
//I would gladly have sold my life with my friends but the Shade Lord would not let the dragon kill me. He wants me to be //what he calls 'his consort'. 
INTERJECT_COPY_TRANS MAZZY 22 SheenaMazzyjoin2
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
~.~
END
*/

//Keldorn - The evil of which I spoke, its presence is quite strong and, unsurprisingly, it emanates from somewhere deep //below us.
INTERJECT_COPY_TRANS KELDOR 19 SheenaKeldornjoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8485
END

//JAN - What I'm getting at, o-so-friendly one, is that I've items to sell you that are especially created, by yours truly, //to aid one on the dangerous path to heroism. They're known as Jan Jansen's (that's me) Flasher Master Bruiser Mate. 
INTERJECT_COPY_TRANS JAN 7 Sheenajanjoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8486
END

//AERIE - I don't know exactly what happened, but everything changed a few days ago...everything became chaos and turned //into what you see here.  Although it all isn't real, it's an illusion...Mate. 
INTERJECT_COPY_TRANS AERIE 32 SheenaAeriejoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#Sheena")~ THEN
@8487
END

//CERND- It is doubtful she will leave the sanctity of the druid grove, and if she has surrounded herself with its //protective magics she will be nearly invulnerable.
INTERJECT_COPY_TRANS CERND 88 SheenaCerndjoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
@8488
END

/* Until I find much better
//HAER-DA - My captor lies dead...I can feel it!...and the sparrow spies his glorious saviors!  Oh, what grand joy!  Poetry //o'erwhelms this sparrow's heart!
INTERJECT_COPY_TRANS HAERDA 110 SheenaHaerdajoin1
== SHEENAJ IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN
~This Haer Dalis seems truly happy and is definitely not acting in some kind of play.~
END
*/
I_C_T UDDEMON 9 SheenaDemon1
== SHEENAJ IF ~IsValidForPartyDialog("K#SHEENA")~ THEN 
@8489 DO ~LeaveParty() Enemy()~
END

I_C_T UDDEMON 11 SheenaDemon1
== SHEENAJ IF ~IsValidForPartyDialog("K#SHEENA")~ THEN 
@8489 DO ~LeaveParty() Enemy()~
END

/////////////////////////////////////////////////////////////////////////////
//FORTUNE TELLER
INTERJECT TRGYP02 2 SheenaFortuneTold
== TRGYP02 IF ~!InPartySlot(LastTalkedToBy,0)
Name("K#Sheena",LastTalkedToBy)~ THEN
@8490
DO ~SetGlobal("SheenaToldFuture","LOCALS",1)~ EXTERN SHEENAJ SheenaFortuneTold1

APPEND TRGYP02
IF ~~ THEN BEGIN SheenaFortuneTold2
SAY @8491
IF ~~ THEN EXTERN SHEENAJ SheenaFortuneTold3
END
END


EXTEND_TOP UDSOLA01 34
IF ~InParty("K#SHEENA") !Dead("K#SHEENA")~ THEN DO ~SetGlobal("SheenaSola","LOCALS",1)~ EXTERN SHEENAJ SheenaUDSOLA1
END

APPEND SHEENAJ
IF ~Global("SheenaSola","LOCALS",1)~ THEN BEGIN SheenaUDSOLA1
SAY @8492 = @8493
//Sarcastic: virtue for vice and delicacy for vile
IF ~~ THEN DO ~SetGlobal("SheenaSola","LOCALS",2)~ EXTERN UDSOLA01 35
END
END
/////////////////////////////////////////////////////////////////////////////
//SAEMON - BEFORE IRENICUS
/* BUGGED-SHEENA LEAVES - replaced below
INTERJECT_COPY_TRANS PPSAEM2 8 SheenaDlost1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8494 
END
*/
EXTEND_BOTTOM PPSAEM2 8
IF ~IsValidForPartyDialog("K#SHEENA")~ DO ~SetGlobal("WackoArmy","GLOBAL",1)
OpenDoor("DOOR12")
EscapeArea()~ EXTERN SHEENAJ SheenaDlost2
END

APPEND SHEENAJ 
IF ~~ THEN BEGIN SheenaDlost2
SAY @8494
IF ~~ THEN EXIT
END
END
//ROENAL ATTACKS THE LAND
//Oh great, I'll just run and grab my things!  Mother did you hear...
//A tad nasty from Sheena
/* Bugged
INTERJECT_COPY_TRANS KPCAPT02 23 SheenaKPCapt1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8495 
END
*/
EXTEND_BOTTOM KPCAPT02 23
IF ~IsValidForPartyDialog("K#SHEENA")~ DO ~SetGlobal("KeepPlot","GLOBAL",11)
ActionOverride("kpsold03",MoveToPoint([1549.1192])
ActionOverride("kpsold04",MoveToPoint([1480.1235])
ActionOverride("kpsold03",EscapeArea())
ActionOverride("kpsold04",EscapeArea())
MoveToPoint([1499.1196])
EscapeArea()~ EXTERN SHEENAJ SheenaKPCapt1
END

APPEND SHEENAJ 
IF ~~ THEN BEGIN SheenaKPCapt1
SAY @8495
IF ~~ THEN EXIT
END
END


//BODHI -You look confused, but I will not clarify; I will take no risks with so dedicated a thief.  If we meet again it //will likely be in battle.  I will explain no more.  Leave.
//BUG SQUASH
EXTEND_BOTTOM BODHI 21
IF ~IsValidForPartyDialog("K#SHEENA")~ THEN DO ~EraseJournalEntry(6601)
EraseJournalEntry(6605)
EraseJournalEntry(6606)
EraseJournalEntry(34188)
EraseJournalEntry(34189)
SetGlobal("BodhiAppear","GLOBAL",3)
EscapeArea()~ EXTERN SHEENAJ SheenaBodhi2
END

APPEND SHEENAJ 
IF ~~ THEN BEGIN SheenaBodhi2
SAY @8496
IF ~~ THEN EXIT
END
END
/////////////////////////////////////////////////////////////////////////////
//SHADE LORD - But you shall, mortal. This body that I inhabit grows tired. You shall make an excellent replacement. 
//Come my shades! Open the portal! This brash fool has some strength.
EXTEND_BOTTOM SHADEL 7
IF ~IsValidForPartyDialog("K#SHEENA")~ THEN DO ~ActionOverride("rngsha02",Enemy())
Enemy()~ EXTERN SHEENAJ SheenaShadel2
END

APPEND SHEENAJ 
IF ~~ THEN BEGIN SheenaShadel2
SAY @8497
IF ~~ THEN EXIT
END
END

/* Interject bugged
INTERJECT_COPY_TRANS SHADEL 7 SheenaShadel1
== SHEENAJ IF ~InParty("k#Sheena") !Dead("K#Sheena")~ THEN 
@8497 
END
*/

/////////////////////////////////////////////////////////////////////////////
//EMBARL -  MAEVAR REQUEST TO KILL HIM BUT PC CHOOSES TO LET HIM LIVE
EXTEND_BOTTOM EMBARL 6
IF ~IsValidForPartyDialog("K#SHEENA")~ THEN DO ~GiveItem("MISC4U",LastTalkedToBy)
EscapeArea()~ EXTERN SHEENAJ SheenaEmbarl1
END

APPEND SHEENAJ
IF ~~ THEN BEGIN SheenaEmbarl1
SAY @8498
IF ~~ THEN EXIT
END
END


//Radiant heart interjections Part 2
APPEND SHEENAJ
IF ~Global("K#SeeOrderRadiant","GLOBAL",3)~ THEN BEGIN SheenaPCRadiantHeart3
SAY @8499
IF ~!IsvalidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",5)~ EXIT
IF ~IsvalidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",4)~ EXTERN KELDORJ SheenaKeldornOrder1
END
END

APPEND KELDORJ 
IF ~Global("K#SeeOrderRadiant","GLOBAL",4)~ THEN BEGIN SheenaKeldornOrder1
SAY @8500 
IF ~~ THEN DO ~SetGlobal("K#SeeOrderRadiant","GLOBAL",5)~ EXIT
END
END

//Underdark interjections Part 2
APPEND VICONIJ 
IF ~Global("K#SeeUnderdark","GLOBAL",4)~ THEN BEGIN VicSheenaUnderdark4
SAY @8501 
IF ~~ THEN DO ~SetGlobal("K#SeeUnderdark","GLOBAL",5)~ EXIT
END
END

APPEND VICONIJ 
IF ~Global("K#SeeUnderdark","GLOBAL",2)~ THEN BEGIN VicSheenaUnderdark2
SAY @8502 
IF ~~ THEN DO ~SetGlobal("K#SeeUnderdark","GLOBAL",3)~ EXTERN SHEENAJ VicSheenaUnderDark3
END
END

APPEND SHEENAJ
IF ~Global("K#SeeUnderdark","GLOBAL",3)~ THEN BEGIN VicSheenaUnderDark3
SAY @8503 
IF ~~ THEN DO ~SetGlobal("K#SeeUnderdark","GLOBAL",4)~ EXTERN VICONIJ VicSheenaUnderdark4
END
END





