g_badMoveMessageList:	db wordToBytes(s_dontKnowHowToApply)	; 65h
			db wordToBytes(s_cantGoDirection)	; 66h
			db wordToBytes(s_unableToDoNow)		; 67h
			db wordToBytes(s_sheriffLocked)		; 68h
			db wordToBytes(s_deepFissure)		; 69h
			db wordToBytes(s_cantSwim)		; 6Ah
			db wordToBytes(s_doorIsLocked)		; 6Bh
			db wordToBytes(s_riddleFailedNoPass)	; 6Ch
			db wordToBytes(s_cantPassUntilAnswer)	; 6Dh
			db wordToBytes(s_whichWay)		; 6Eh
			db wordToBytes(s_dontKnowHowToApply)	; 6Fh
			db wordToBytes(s_multipleExits)		; 70h
			db wordToBytes(s_supplyClosedLocked)	; 71h
			db wordToBytes(s_gymClosedForRepairs)	; 72h
			db wordToBytes(s_maintenanceLocked)	; 73h

g_badEnterMessageList:	db wordToBytes(s_arrestedBnENoLift)
			db wordToBytes(s_severnBrokeArm)
			db wordToBytes(s_shotByPirate)
			db wordToBytes(s_trochKO)
			db wordToBytes(s_thatDoorIsLocked)
			db wordToBytes(s_pleaseLogOn)
