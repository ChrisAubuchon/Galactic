; ---------------------------------------------------------------------------
; Condtion: (g_isthur_computerCenterTrigger == 1)
;   Actions:
;    - Remove diskA and diskB from inventory
;    - Set scoreBonus of cmdtOffice to 25
;    - Add roomFlag_first to cmdtOffice cmdtOffice.roomFlag
;    - Set first_offset to s_isthur_cmdtMessage_goodJob
; ---------------------------------------------------------------------------
l_room_isthurComputerCenter:
		ld	a, (g_isthur_computerCenterTrigger)
		cp	1
		jp	nz, l_advanceClock

		; Makes the game unwinnable if you don't have all of the
		; disks in your inventory.
		;
		; Check should be after both disk checks
		;
		ld	a, 0
		ld	(g_isthur_computerCenterTrigger), a

		ld	a, (item_cpmDiskA.location)
		cp	location_inventory
		jp	nz, l_advanceClock

		ld	a, (item_cpmDiskB.location)
		cp	location_inventory
		jp	nz, l_advanceClock

		printMessage(s_disksWork)
		ld	a, location_none
		ld	(item_cpmDiskA.location), a
		ld	(item_cpmDiskB.location), a
		ld	a, (carriedItemCount)
		sub	2
		ld	(carriedItemCount), a

		ld	a, (g_currentRoomNumber)
		push	af

		ld	a, room_isthur_cmdtOffice
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	(hl), 25				; room_t.scoreBonus

		inc	hl
		ld	a, (hl)					; room_t.roomFlag
		or	roomFlag_first

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
