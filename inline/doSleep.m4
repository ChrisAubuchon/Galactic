; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_doSleep:
		cp	p_sleep
		jp	nz, l_inline_doEat

		; Increment clock by an hour
		printMessage(s_sleep)
		call	advanceClock
		call	advanceClock
		call	advanceClock
		call	advanceClock
		call	advanceClock
		jp	l_mainLoop
