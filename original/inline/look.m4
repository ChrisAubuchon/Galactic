l_inline_look:
		cp	p_look
		jp	nz, loc_E67

		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl			; room_t.roomFlag
		ld	a, (hl)
		or	roomFlag_verbose
		and	0BFh			; Clear roomFlag_terse
		ld	(hl), a
		call	lookFunction
		jp	l_mainLoop
