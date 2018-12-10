; ---------------------------------------------------------------------------
; Condtion: (g_isthur_computerCenterTrigger == 1)
;   Actions:
;    - Remove diskA and diskB from inventory
;    - Set scoreBonus of cmdtOffice to 25
;    - Add roomFlag_first to cmdtOffice cmdtOffice.roomFlag
;    - Set first_offset to s_isthur_cmdtMessage_goodJob
; ---------------------------------------------------------------------------
l_room_isthurComputerCenter:
		ifVariableNe(g_isthur_computerCenterTrigger, TRUE, l_advanceClock)

		; Makes the game unwinnable if you don't have all of the
		; disks in your inventory.
		;
		; Check should be after both disk checks
		;
		setVariable(g_isthur_computerCenterTrigger, FALSE)
		ifItemNotInInventory(item_cpmDiskA, l_advanceClock)
		ifItemNotInInventory(item_cpmDiskB, l_advanceClock)
		printMessage(s_disksWork)

		; `setItemLocation(item_cpmDiskA, location_none)'
		; `setItemLocation(item_cpmDiskB, location_none)'
		ld	a, location_none
		ld	(item_cpmDiskA.location), a
		ld	(item_cpmDiskB.location), a

		decreaseItemCount(2)

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_isthur_cmdtOffice)
		call	getRoomData

		; `setCurrentRoomScore(25)'
		ld	hl, (g_currentRoomData)
		ld	(hl), 25				; room_t.scoreBonus

		; `addCurrentRoomFlag(roomFlag_first)'
		inc	hl
		ld	a, (hl)					; room_t.roomFlag
		or	roomFlag_first

		; `setCurrentRoomFirstMessage(s_isthur_cmdtMessage_goodJob)'
		ld	(hl), a
		ld	de, 5
		add	hl, de					; room_t.first_offset
		ld	(hl), HI_BYTE(s_isthur_cmdtMessage_goodJob)
		inc	hl
		ld	(hl), LO_BYTE(s_isthur_cmdtMessage_goodJob)

		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
