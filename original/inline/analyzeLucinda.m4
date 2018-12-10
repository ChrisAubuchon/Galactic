; ---------------------------------------------------------------------------
; "analyze lucinda"
; ---------------------------------------------------------------------------
l_inline_analyzeLucinda:
		loadCurrentRoom()
		jumpEq(room_inOrbit, loc_40B3)
		jumpEq(room_inShip, loc_40B3)

l_analyzeLucinda_dontKnowHow:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_40B3:
		ifItemInLocation(item_lucindaObject, location_withPlayer, l_analyzeLucinda_checkAnalyzer)
		loadItemRoomNumber(item_lucindaObject)
		jumpEq(room_inOrbit, l_analyzeLucinda_checkAnalyzer)
		jumpEq(room_inShip, l_analyzeLucinda_checkAnalyzer)
		jp	l_analyzeLucinda_dontKnowHow
; ---------------------------------------------------------------------------

l_analyzeLucinda_checkAnalyzer:
		ifVariableEq(analyzerInstalledFlag, 1, l_analyzeLucinda_success)
		printMessage(s_cantAnalyzeLucinda)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_analyzeLucinda_success:
		printMessage(s_analyzeLucinda)

		setVariable(g_analyzerUsedOnLucinda, 1)
		jp	l_mainLoop
