; ---------------------------------------------------------------------------
; Condition: (g_navier_computerCenterTrigger == TRUE)
;   This code counts the number of items in the players' inventory. The 
; boat capsizes if the player is carrying more than one item
; ---------------------------------------------------------------------------
l_room_navierInRowboat:
		ifVariableEq(g_navier_computerCenterTrigger, FALSE, l_advanceClock)

		ld	b, 0
		ld	hl, g_itemList.location
		ld	de, 6				; sizeof(object_t)
		ld	c, 34

loc_C8B:
		ld	a, (hl)
		cp	location_inventory
		call	z, sub_C9E

		cp	location_withPlayer
		call	z, sub_C9E

		add	hl, de
		dec	c
		jp	nz, loc_C8B
		jp	loc_CA3

; =============== S U B	R O U T	I N E =======================================


sub_C9E:
		ld	a, b
		add	a, 1
		ld	b, a
		ret
; End of function sub_C9E

; ---------------------------------------------------------------------------

loc_CA3:
		ld	a, b
		cp	2
		jp	c, l_advanceClock
		printMessage(s_boatCapsized)
		jp	l_inline_playerDied
