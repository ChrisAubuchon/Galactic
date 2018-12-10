; ---------------------------------------------------------------------------
; Condition: (g_gcs_supplyState == gcsSupply_unentered)
;   - Actions:
;     - Subtract 15 from score
;     - Set g_gcs_supplyState to gcsSupply_knockedOut
;     - Set g_wearingSuitFlag to wearingSuit_none (Removes any worn suit)
;     - Print dark supply room messages
;     - Move player to room_gcs_doctor
;     - Move all items in the player's inventory to location_none
;     - Move all items on the floor on GCS to location_none
;     - Force largeEnvelope, dyingGirl, attacheCase, cpmDiskA and cpmDiskB
;       to location_none
;     - Print doctor messages
;     - Set g_lockerRentedFlag to FALSE
;     - Set g_gcs_caseInLocker to TRUE
;     - Set scoreBonus of attacheCase to 5
; Condition: (g_gcs_supplyState == gcsSupply_knockedOut)
;   - Actions:
;     - Set g_gcs_supplyState to gcsSupply_resupplied
;     - Add 5 to score
;     - Set g_shipSuppliedFlag to TRUE
;     - Set g_earth_supplyState to TRUE
;     - Set Earth as the only landable destination
;     - Set outward_room and enter_room of room_gcs_innerCorridor_19 to
;       room_supplyClosed
;     - Set g_gcs_engineeringTrigger to TRUE
; ---------------------------------------------------------------------------
l_room_gcsSupply:
		ifVariableNe(g_gcs_supplyState, gcsSupply_unentered, l_gcsSupply_resupplied)
		decreaseScore(15)
		setVariable(g_gcs_supplyState, gcsSupply_knockedOut)
		setVariable(g_wearingSuitFlag, wearingSuit_none)
		printMessage(s_darkSupplyMessage1)
		printMessage(s_darkSupplyMessage2)
		setCurrentRoom(room_gcs_doctor)

		; XXX - This might make the game unwinnable. This loop sets the
		; location of all items on the floor of GCS and all items in
		; the player's inventory to location_none. There might not be
		; a way to get the items back. The only safe spot is in the
		; player's ship.
		;
		ld	hl, g_itemList.location
		ld	de, 6					; sizeof(object_t)
		ld	c, 35
loc_AF7:
		ld	a, (hl)
		cp	location_inventory
		call	z, gcs_removeItem

		cp	location_gcs
		call	z, gcs_removeItem

		add	hl, de
		dec	c
		jp	nz, loc_AF7

		ld	a, 0
		ld	(carriedItemCount), a

		ld	a, location_none
		ld	(item_cpmDiskA.location), a
		ld	(item_cpmDiskB.location), a
		ld	(item_attacheCase.location), a
		ld	(item_largeEnvelope.location), a
		ld	(item_dyingGirl.location), a
		jp	loc_B23

; =============== S U B	R O U T	I N E =======================================

; XXX - Why is this a function? It's a single line of code.
;
gcs_removeItem:
		ld	(hl), location_none
		ret
; End of function gcs_removeItem

; ---------------------------------------------------------------------------

loc_B23:
		printMessage(s_doctorMessage1)
		printMessage(s_doctorMessage2)
		setVariable(g_lockerRentedFlag, FALSE)
		setVariable(g_gcs_caseInLocker, TRUE)
		setItemScoreBonus(item_attacheCase, 5)
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

l_gcsSupply_resupplied:
		cp	gcsSupply_knockedOut
		jp	nz, l_advanceClock

		setVariable(g_gcs_supplyState, gcsSupply_resupplied)
		printMessage(s_gcsResupplied)
		increaseScore(5)

		; `setVariable(g_shipSuppliedFlag, TRUE)'
		; `setVariable(g_earth_supplyState, earthSupply_enableNavier)'
		; `setLanding(g_landing_earth'
		; `setVariable(g_landing_earth.canLandFlag, canLand)'
		ld	a, TRUE
		ld	(g_shipSuppliedFlag), a
		ld	(g_earth_supplyState), a		; earthSupply_enableNavier
		ld	(g_landing_earth.canLandFlag), a

		ld	a, FALSE
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a

		ld	a, (g_currentRoomNumber)
		push	af

		setCurrentRoom(room_gcs_innerCorridor_19)
		call	getRoomData
		ld	hl, (g_currentRoomData)

		; `setRoomInDirection(enter, room_supplyClosed)'
		ld	de, 16h
		add	hl, de					; room_t.enter_room
		ld	(hl), room_supplyClosed

		; `setRoomInDirection(outward, room_supplyClosed)'
		inc	hl
		inc	hl
		inc	hl					; room_t.outward_room
		ld	(hl), room_supplyClosed

		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData

		setVariable(g_gcs_engineeringTrigger, TRUE)
		jp	l_advanceClock
