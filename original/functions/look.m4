lookFunction:
		call	getRoomData
		ld	hl, (g_currentRoomData)	; hl = &room_t.scoreBonus
		inc	hl				; hl = &room_t.roomFlags
		ld	a, (hl)
		ld	(currentRoomFlags), a
		inc	hl				; hl = &room_t.verbose_offset
		rla					; Move high bit to carry
		call	c, printMsgAtHL			; Print verbose offset if high bit set

		; If g_verboseCountdown is zero, set the verboseFlag for the room
		; for the next time the player enters the room.
		;
		push	af
		ld	a, (g_verboseCountdown)
		dec	a
		ld	(g_verboseCountdown), a
		cp	0
		jp	nz, l_look_setTerse
		push	hl
		push	de
		ld	b, 1
		ld	c, 0Ah
		call	pseudoRNG
		pop	de
		pop	hl
		ld	(g_verboseCountdown), a
		ld	a, (currentRoomFlags)
		or	roomFlag_verbose
		and	0BFh
		ld	(currentRoomFlags), a
		jp	loc_1C5A

l_look_setTerse:
		ld	a, (currentRoomFlags)
		and	7Fh				; Clear verbose flag
		or	roomFlag_terse			; Set terse flag
		ld	(currentRoomFlags), a

loc_1C5A:
		pop	af
		inc	hl
		inc	hl				; hl = &room_t.terse_offset
		rla					; c = 0x40 bit
		call	c, printMsgAtHL			; Print terse if roomFlag_terse is set
		inc	hl
		inc	hl				; hl = &room_t.firstMaybe_offset
		rla					; c = 0x20 bit
		call	c, printMsgAtHL			; Print first if roomFlag_first is set
		push	af
		ld	a, (currentRoomFlags)
		and	0DFh				; Clear the roomFlag_first bit
		ld	(currentRoomFlags), a
		pop	af

		inc	hl
		inc	hl				; hl = &room_t.offset_probably
		rla					; c = 0x10 bit
		call	c, printMsgAtHL			; Print first if roomFlag_ambient is set
		rla					; c = 0x08 bit
		call	c, printClockString		; Call printClockString if 
							; roomFlag_clock is set
		rla					; c = 0x04 bit
		call	c, printComputerTerminal	; call printComputerTerminal if
							; roomFlag_terminal is set
		call	printFloorItems
		ld	hl, (g_currentRoomData)		; hl = &room_t.scoreBonus
		inc	hl				; hl = &room_t.roomFlags
		ld	a, (currentRoomFlags)
		ld	(hl), a				; Write updated roomFlags to room_t
		ld	hl, (g_currentRoomData)	; hl = &room_t.scorebonus
		ld	a, (hl)
		cp	0				; Add to score if non-zero
		jp	z, l_look_return
		push	hl
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		pop	hl
		ld	(hl), 0				; Set room_t.scoreBonus to 0

l_look_return:
		ret

