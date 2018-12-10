; ---------------------------------------------------------------------------
; ---------------------------------------------------------------------------
l_inline_move:
		cp	p_commands_low
		jp	nc, l_inline_help

		cp	p_directWalk_low
		jp	nc, l_inline_directWalk

		; This section moves the player (I think)
		call	getRoomData
		push	af
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	a, (hl)
		and	roomFlag_illusion
		cp	0
		jp	z, loc_E26

		ifItemInInventory(item_neutralizer, loc_E26)

		pop	af
		ld	b, a
		ld	a, 10h
		sub	b
		add	a, 1
		jp	loc_E27
; ---------------------------------------------------------------------------

loc_E26:
		pop	af

loc_E27:
		nop
		ld	hl, (g_currentRoomData)
		ld	de, 9
		add	hl, de
		ld	e, a
		add	hl, de
		ld	a, (hl)
		cp	65h ; 'e'
		jp	nc, l_move_badDirection

		ld	(g_currentRoomNumber), a
		call	lookFunction
		jp	l_mainLoop
