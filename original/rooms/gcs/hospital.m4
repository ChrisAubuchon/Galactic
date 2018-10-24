; ---------------------------------------------------------------------------
; Condition: (dyingGirl in inventory) and (dyingGirl.floorMessageIndex == floorMsg_dyingGirl)
;   - Actions:
;     - Set dyingGirl location to location_none
;     - Print hospital messages
;     - Remove dyingGirl object from inventory
;     - Set l_gcs_doctorTrigger to TRUE
; ---------------------------------------------------------------------------
l_room_gcsHospital:
		ld	hl, item_dyingGirl.location
		ld	a, (hl)
		cp	location_inventory
		jp	nz, l_advanceClock

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

		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a

		ld	a, TRUE
		ld	(l_gcs_doctorTrigger), a
		jp	l_advanceClock
