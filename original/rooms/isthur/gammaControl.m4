; ---------------------------------------------------------------------------
; Condition: (g_isthurGammaControlTrigger == 1)
;   Actions:
;     - Reset g_isthurGammaControlTrigger to 0
;     - Return if both item_cpmDiskA and item_cmpDiskB aren't in inventory
;     - Set scoreBonus of room_isthur_cmdtOffice to 20
;     - Add roomFlag_first to cmdtOffice.roomFlag
;     - Set first_offset to cmdtOffice to s_isthur_cmdtMessage_disks
; ---------------------------------------------------------------------------
l_room_isthurGammaControl:
		ifVariableNe(g_isthurGammaControlTrigger, TRUE, l_advanceClock)

		; XXX - If both disks aren't in the players inventory when
		; entering the room with the trigger set, then the game becomes
		; silently unwinnable when g_isthurGammaControlTrigger is reset
		; to zero. It's not possible to get the trigger set to one again.
		; This code should be after the disk checks
		;
		setVariable(g_isthurGammaControlTrigger, FALSE)
		ifItemNotInInventory(item_cpmDiskA, l_advanceClock)
		ifItemNotInInventory(item_cpmDiskB, l_advanceClock)
		printMessage(s_disksDontWork)

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_isthur_cmdtOffice)
		call	getRoomData

		; `setCurrentRoomScore(20)'
		ld	hl, (g_currentRoomData)			; room_t.scoreBonus
		ld	(hl), 20

		; `addCurrentRoomFlag(roomFlag_first)'
		inc	hl					; room_t.roomFlag
		ld	a, (hl)
		or	roomFlag_first

		; `setCurrentRoomFirstMessage(s_isthur_cmdtMessage_disks)'
		ld	(hl), a
		ld	de, 5
		add	hl, de					; room_t.first_offset (HI)
		ld	(hl), HI_BYTE(s_isthur_cmdtMessage_disks)
		inc	hl
		ld	(hl), LO_BYTE(s_isthur_cmdtMessage_disks)

		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
