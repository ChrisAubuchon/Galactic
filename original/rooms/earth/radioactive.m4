; ---------------------------------------------------------------------------
; Actions:
;  - Print "geiger clicking" message if carrying the Geiger Counter
;  - Add 5 to the radioactive value if not wearing a rad suit
; ---------------------------------------------------------------------------
l_room_earthRadioactive:
		ld	a, (item_geigerCounter.location)
		cp	location_inventory
		jp	nz, loc_625

		printMessage(s_geigerClicking)

loc_625:
		ld	a, (item_radSuit.invenMessageIndex)
		cp	34
		jp	z, l_advanceClock

		ld	a, (g_radioactiveValue)
		add	a, 5
		ld	(g_radioactiveValue), a
		jp	l_advanceClock
