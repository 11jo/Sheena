BEGIN SHEENA


IF ~Global("SPRITE_IS_DEADFIRKRA02","GLOBAL",0)~ THEN BEGIN Meet1Sheena
SAY @1000 
IF ~~ THEN EXIT
END  


IF ~GlobalGT("SPRITE_IS_DEADFIRKRA02","GLOBAL",0)~ THEN BEGIN MeetSheena
//IF ~True()~ THEN BEGIN MeetSheena//test
SAY @1001 
IF ~~ THEN REPLY @1002  GOTO MeetSheena1
IF ~~ THEN REPLY @1003  GOTO MeetSheena2
IF ~~ THEN REPLY @1004  GOTO MeetSheena3
END  

IF ~~ THEN BEGIN MeetSheena1
SAY @1005
IF ~~ THEN REPLY @1006  GOTO MeetSheena2
IF ~~ THEN REPLY @1007  GOTO MeetSheena2
IF ~~ THEN REPLY @1008  GOTO MeetSheena4
END  

IF ~~ THEN BEGIN MeetSheena2
SAY @1009 
IF ~~ THEN REPLY @1010  GOTO MeetSheena4
IF ~~ THEN REPLY @1011  GOTO MeetSheena3
IF ~~ THEN REPLY @1012  GOTO MeetSheena3
END  

IF ~~ THEN BEGIN MeetSheena3
SAY @1013 
IF ~~ THEN REPLY @1014  GOTO MeetSheena4
IF ~~ THEN REPLY @1015  GOTO MeetSheena4
IF ~~ THEN REPLY @1016  GOTO MeetSheena4
END  

IF ~~ THEN BEGIN MeetSheena4
	SAY @1017
	= @1018
	= @1019
	= @1020
	= @1021
	= @1022
		IF ~~ THEN REPLY @1023  GOTO MeetSheena5
		IF ~~ THEN REPLY @1024  GOTO MeetSheena5
		IF ~~ THEN REPLY @1025  GOTO MeetSheena5
END  

IF ~~ THEN BEGIN MeetSheena5
SAY @1026 
IF ~~ THEN REPLY @1027  GOTO MeetSheena6
IF ~~ THEN REPLY @1028  GOTO MeetSheena6
IF ~~ THEN REPLY @1029  GOTO MeetSheena8
END  

IF ~~ THEN BEGIN MeetSheena6
SAY @1030 = @1031 = @1032 
IF ~~ THEN REPLY @1033  GOTO MeetSheena7
IF ~~ THEN REPLY @1034  GOTO MeetSheena7
IF ~~ THEN REPLY @1035  GOTO MeetSheena7
IF ~~ THEN REPLY @1036  GOTO MeetSheena7
IF ~~ THEN REPLY @1037  GOTO MeetSheena7
END  

IF ~~ THEN BEGIN MeetSheena7
SAY @1038 = @1039
IF ~~ THEN REPLY @1040  GOTO MeetSheena17
IF ~~ THEN REPLY @1041  GOTO MeetSheena17
IF ~~ THEN REPLY @1029  GOTO MeetSheena8
END  


IF ~~ THEN BEGIN MeetSheena8
SAY @1042 
IF ~~ THEN REPLY @1043  DO ~ActionOverride(Player1,Swing()) Kill(Myself)~ EXIT
IF ~~ THEN REPLY @1044  GOTO MeetSheena6
IF ~~ THEN REPLY @1045  DO ~ActionOverride(Player1,Swing()) Kill(Myself)~ EXIT
END  

/*Scrapped - 10-11
IF ~~ THEN BEGIN MeetSheena10
SAY ~I'd be grateful if you could provide me with the shelter of your party on the way out.~ 
IF ~~ THEN REPLY ~You may join me. I will help you find a safe passage out of this place.~ GOTO MeetSheena11
IF ~~ THEN REPLY ~I don't have room for more companion. The way is clear. You have nothing to fear on your way out.~ GOTO MeetSheena12
END  

IF ~~ THEN BEGIN MeetSheena11
SAY ~Then let's move out of here as fast as we can...The place chills my skin.~ 
IF ~~ THEN REPLY ~I should warn you that peril may lay ahead of us. I have sworn to rescue a friend.~ GOTO MeetSheena13
IF ~~ THEN REPLY ~I chase a powerful wizard so you may find yourself in more trouble then you could possibly wish for.~ GOTO MeetSheena14
END  
*/

IF ~~ THEN BEGIN MeetSheena12
SAY @1046 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END  

/* Scrapped 13-14-15
IF ~~ THEN BEGIN MeetSheena13
SAY ~I shall help as best as I can to find your friend.~ 
IF ~~ THEN DO ~JoinParty()~ EXIT
END  


IF ~~ THEN BEGIN MeetSheena14
SAY ~Are you trying to scare me off?~ 
IF ~~ THEN REPLY ~Well, I want you to know what we are heading for. The choice is yours.~ GOTO MeetSheena15
IF ~~ THEN REPLY ~Are you?~ GOTO MeetSheena15
END  

IF ~~ THEN BEGIN MeetSheena15
SAY ~I will help you chase that wizard <CHARNAME>.~ 
IF ~~ THEN DO ~JoinParty() SetGlobal("SheenaJoined","GLOBAL",1)~ EXIT
END  
*/

IF ~~ THEN BEGIN MeetSheena16
SAY @1047 
IF ~~ THEN REPLY @1048 DO ~EscapeArea()~ EXIT
IF ~~ THEN REPLY @1049 GOTO MeetSheena18
END  


IF ~~ THEN BEGIN MeetSheena17
SAY @1050 
IF ~~ THEN REPLY @1051 DO ~EscapeArea()~ EXIT
IF ~~ THEN REPLY @1052 GOTO MeetSheena18
IF ~~ THEN REPLY @1053 GOTO MeetSheena16
END  

IF ~~ THEN BEGIN MeetSheena18
SAY @1054 = @1055 
IF ~~ THEN REPLY @1056 GOTO MeetSheena21
IF ~~ THEN REPLY @1057 GOTO MeetSheena12
IF ~~ THEN REPLY @1058 GOTO MeetSheena19
IF ~~ THEN REPLY @1059 GOTO MeetSheena20
IF ~~ THEN REPLY @1060 GOTO MeetSheena12
IF ~~ THEN REPLY @1061 GOTO MeetSheena21
END  

IF ~~ THEN BEGIN MeetSheena19
SAY @1062 
IF ~~ THEN REPLY @1063 GOTO MeetSheena12
IF ~~ THEN REPLY @1064 GOTO MeetSheena20
IF ~~ THEN REPLY @1065 GOTO MeetSheena12
IF ~~ THEN REPLY @1066 GOTO MeetSheena21
END  

IF ~~ THEN BEGIN MeetSheena20
SAY @1067 = @1068 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END  

IF ~~ THEN BEGIN MeetSheena21
SAY @1069 
IF ~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @1070 GOTO MeetSheena22
IF ~~ THEN REPLY @1071 GOTO MeetSheena23
END  

IF ~~ THEN BEGIN MeetSheena22
SAY @1072 
IF ~~ THEN DO ~ SetGlobal("SheenaJoined","GLOBAL",1) JoinParty()~ EXIT
END  

IF ~~ THEN BEGIN MeetSheena23
SAY @1073 
IF ~~ THEN REPLY @1074 GOTO MeetSheena24
IF ~~ THEN REPLY @1075 GOTO MeetSheena25
END  

IF ~~ THEN BEGIN MeetSheena24
SAY @1076 
IF ~~ THEN DO ~SetGlobal("SheenaJoined","GLOBAL",1) JoinParty()~ EXIT
END  

IF ~~ THEN BEGIN MeetSheena25
SAY @1077 
IF ~~ THEN REPLY @1078 GOTO MeetSheena24
IF ~~ THEN REPLY @1079 GOTO MeetSheena26
END  

IF ~~ THEN BEGIN MeetSheena26
SAY @1080= @1081 = @1082
IF ~~ THEN REPLY @1083 DO ~SetGlobal("SheenaJoined","GLOBAL",1) JoinParty() ~ EXIT
IF ~~ THEN REPLY @1084 GOTO MeetSheena27
END  

IF ~~ THEN BEGIN MeetSheena27
SAY @1085
IF ~~ THEN DO ~EscapeArea()~ EXIT
END  

//END OF JOIN DIALOGS


