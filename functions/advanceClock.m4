advanceClock:
		ld	hl,  currentTimeMaybe+2		; hl = ten minutes digit
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		cp	'6'				; check for hour advance
		ret	nz
		ld	(hl), '0'
		dec	hl				; hl = hours digit
		ld	a, (hl)
		cp	'9'
		jp	z, loc_207F
		add	a, 1
		ld	(hl), a
		jp	l_advanceClock_midnightCheck
; ---------------------------------------------------------------------------

loc_207F:
		ld	(hl), '0'
		dec	hl				; hl = ten hours digit
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ret
; ---------------------------------------------------------------------------

l_advanceClock_midnightCheck:
		cp	'4'
		jp	z, loc_208D
		ret
; ---------------------------------------------------------------------------

loc_208D:
		dec	hl
		ld	a, (hl)
		cp	'2'
		ret	nz
		ld	(hl), '0'
		inc	hl
		ld	(hl), '0'
		ld	hl, turnCounterMaybe
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ret
; End of function advanceClock
