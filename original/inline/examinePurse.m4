; ---------------------------------------------------------------------------
; "examine purse"
; ---------------------------------------------------------------------------
loc_1695:
		ld	b, p_examine
		ld	c, p_purse
		call	compareTwoWordInput
		cp	0
		jp	z, loc_16BD
		ld	a, (item_purse.location)
		cp	location_inventory
		jp	z, loc_16B3
		printMessage(s_notCarryingPurse)
		jp	l_mainLoop

loc_16B3:
		printMessage(s_purseMessage)
		jp	l_mainLoop
