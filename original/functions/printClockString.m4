printClockString:
		push	hl
		push	af
		ld	hl, s_clockString

loc_20A4:
		call	outputString
		pop	af
		pop	hl
		ret
