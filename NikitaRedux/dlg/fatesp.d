// FATE SPIRIT

EXTEND_TOP FATESP %fatesp_state% #%fatesp_transition%
+ ~!Dead("cmnikita") !InMyArea("cmnikita") Global("CM_NikitaSummoned","GLOBAL",0)~ + @1525 /* Bring me Nikita, the good hearted assassin. */ DO ~CreateVisualEffect("SPPORTAL",[1997.1228])
	Wait(2) 
	CreateCreature("CMNIKI25",[1997.1228],0)
	SetGlobal("CM_NikitaSummoned","GLOBAL",1)~ GOTO 8
END
