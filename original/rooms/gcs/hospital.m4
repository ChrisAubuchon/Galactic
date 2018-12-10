; ---------------------------------------------------------------------------
; Condition: (dyingGirl in inventory) and (dyingGirl.floorMessageIndex == floorMsg_dyingGirl)
;   - Actions:
;     - Set dyingGirl location to location_none
;     - Print hospital messages
;     - Remove dyingGirl object from inventory
;     - Set g_gcs_doctorTrigger to TRUE
; ---------------------------------------------------------------------------
l_room_gcsHospital:
		; `ifItemNotInInventory(item_dyingGirl, l_advanceClock)'
		ld	hl, item_dyingGirl.location
		ld	a, (hl)
		cp	location_inventory
		jp	nz, l_advanceClock

		; `ifItemFloorMessageEq(floorMsg_dyingGirl, l_advanceClock)'
		dec	hl
		dec	hl
		ld	a, (hl)				; object_t.floorMessageIndex
		cp	floorMsg_dyingGirl
		jp	nz, l_advanceClock

		inc	hl
		inc	hl
		ld	(hl), location_none

		printMessage(s_hospitalMessage1)
		printMessage(s_hospitalMessage2)
		decreaseItemCount(1)
		setVariable(g_gcs_doctorTrigger, TRUE)
		jp	l_advanceClock
