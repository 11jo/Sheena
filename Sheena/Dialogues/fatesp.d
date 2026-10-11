// FATE SPIRIT

EXTEND_TOP FATESP %fatesp_state% #%fatesp_transition%
+ ~!Dead("K#Sheena") !InMyArea("K#Sheena") Global("K#SHEENASummoned","GLOBAL",0)~ + @9000 // ~Bring me Sheena, the half-dragon fighter/wizard.~
 	DO ~CreateVisualEffect("SPPORTAL",[1891.1287])
	Wait(2)
	CreateCreature("K#Sheena",[1891.1287],1)
	SetGlobal("K#SHEENASummoned","GLOBAL",1)~ GOTO 8
END
