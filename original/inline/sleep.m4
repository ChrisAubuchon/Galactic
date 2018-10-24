; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_sleep:
		cp	p_sleep
		jp	nz, l_inline_eat

		; Increment clock by an hour
		printMessage(s_sleep)
		call	advanceClock
		call	advanceClock
		call	advanceClock
		call	advanceClock
		call	advanceClock
		jp	l_mainLoop
