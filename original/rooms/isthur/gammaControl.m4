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
		ld	a, (g_isthurGammaControlTrigger)
		cp	1
		jp	nz, l_advanceClock

		; XXX - If both disks aren't in the players inventory when
		; entering the room with the trigger set, then the game becomes
		; silently unwinnable when g_isthurGammaControlTrigger is reset
		; to zero. It's not possible to get the trigger set to one again.
		; This code should be after the disk checks
		;
		ld	a, 0
		ld	(g_isthurGammaControlTrigger), a

		ld	a, (item_cpmDiskA.location)
		cp	location_inventory
		jp	nz, l_advanceClock

		ld	a, (item_cpmDiskB.location)
		cp	location_inventory
		jp	nz, l_advanceClock

		printMessage(s_disksDontWork)

		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_isthur_cmdtOffice
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)			; room_t.scoreBonus
		ld	(hl), 20

		inc	hl					; room_t.roomFlag
		ld	a, (hl)
		or	roomFlag_first

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
