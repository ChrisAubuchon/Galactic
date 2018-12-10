; ---------------------------------------------------------------------------

loc_16BD:
		ld	b, p_examine
		ld	c, p_case
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1705
		ld	a, (item_attacheCase.location)
		cp	location_inventory
		jp	z, loc_16DB

loc_16D1:
		printMessage(s_notCarrying)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_16DB:
		ld	a, (g_caseTrigger)
		cp	1
		jp	z, loc_16ED

loc_16E3:
		printMessage(s_didntFindAnything)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_16ED:
		printMessage(s_caseMessage1)
		printMessage(s_caseMessage2)
		printMessage(s_caseMessage3)
		jp	l_mainLoop
