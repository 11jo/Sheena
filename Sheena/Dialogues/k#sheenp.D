BEGIN SHEENAP

//
//IF ~Global("SheenaJoined","GLOBAL",1) !InParty(Myself)~ THEN BEGIN SheenaOut1
//SAY ~What happened?.~
//++ @1501 DO ~JoinParty()~ EXIT
//END


//After the heart ritual in the romance
IF ~Global("SheenaJoined","GLOBAL",1) Global("SHEENAPCAREONE","GLOBAL",1)~ THEN BEGIN SheenaOut1
  SAY @1500
  ++ @1501 DO ~SetGlobal("K#SheenaOut","GLOBAL",0) JoinParty()~ EXIT
 END

//Before the heart ritual in the romance
IF ~Global("SheenaJoined","GLOBAL",1) Global("SHEENAPCAREONE","GLOBAL",0)~ THEN BEGIN SheenaOut
  SAY @1502
  ++ @1503 DO ~SetGlobal("K#SheenaOut","GLOBAL",0) JoinParty()~ EXIT
  ++ @1504 GOTO SheenaOut1a
  ++ @1505 GOTO SheenaOut2a
END

IF ~~ THEN BEGIN SheenaOut1a
  SAY @1506
  =
  @1507
  IF ~~ THEN DO ~SetGlobal("SheenaJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SheenaOut2a
  SAY @1508
  IF ~~ THEN DO ~SetGlobal("SheenaJoined","GLOBAL",0) EscapeArea()~ EXIT
END

