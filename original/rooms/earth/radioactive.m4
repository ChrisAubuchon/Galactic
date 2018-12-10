; ---------------------------------------------------------------------------
; Actions:
;  - Print "geiger clicking" message if carrying the Geiger Counter
;  - Add 5 to the radioactive value if not wearing a rad suit
; ---------------------------------------------------------------------------
l_room_earthRadioactive:
		ifItemNotInInventory(item_geigerCounter, loc_625)
		printMessage(s_geigerClicking)

loc_625:
		ifItemInvenMessageEq(item_radSuit, invenMsg_radSuit_donned, l_advanceClock)
		addToVariable(g_radioactiveValue, 5)
		jp	l_advanceClock
