; ---------------------------------------------------------------------------
; Condition: (g_gcs_restaurantEntered == 0)
;   - Actions:
;     - Set g_gcs_restaurantEntered to 1
;     - Set g_gcs_professorState to 1
;     - Set scoreBonus of room_gcs_library to 5
;     - Add roomFlag_first to room_gcs_library.roomFlag
;     - Set first_offset of room_gcs_library to s_first_gcsLibrary
;     - Add 5 to score
;     - Set location of large envelope to location_gcs
; Condition: (g_gcs_restaurantEntered == 1)
;   - Actions:
;     - Print no seats
; ---------------------------------------------------------------------------
l_room_gcsRestaurant:
		ifVariableNe(g_gcs_restaurantEntered, FALSE, l_gcsRestaurant_noSeats)
		printMessage(s_restaurantGreeting)
		printMessage(s_holsonMessage)

		; `setVariable(g_gcs_restaurantEntered, TRUE)'
		; `setVariable(g_gcs_professorState, gcsProfessor_met)'
		ld	a, 1
		ld	(g_gcs_restaurantEntered), a
		ld	(g_gcs_professorState), a

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_gcs_library)
		call	getRoomData

		; `setCurrentRoomScore(5)'
		ld	hl, (g_currentRoomData)			; room_t.scoreBonus
		ld	(hl), 5

		; `addCurrentRoomFlag(roomFlag_first)'
		inc	hl					; room_t.roomFlag
		ld	a, (hl)
		or	roomFlag_first
		ld	(hl), a

		; `setCurrentRoomFirstMessage(s_first_gcsLibrary)'
		ld	de, 5
		add	hl, de					; room_t.first_offset (HI)
		ld	(hl), HI_BYTE(s_first_gcsLibrary)
		inc	hl
		ld	(hl), LO_BYTE(s_first_gcsLibrary)
		pop	af

		ld	(g_currentRoomNumber), a
		call	getRoomData

		increaseScore(5)
		setItemLocation(item_largeEnvelope, location_gcs)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_gcsRestaurant_noSeats:
		printMessage(s_restaurantNoSeats)
		jp	l_advanceClock
