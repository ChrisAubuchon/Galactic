; ---------------------------------------------------------------------------
; Condition: (g_gcs_barState == gcsBar_unentered)
;   - Actions:
;     - Print Welcome message
;     - Ask user which person they'd like to sit with
;     - Sit with appropriate person
; Condition: (g_gcs_barState == gcsBar_noSeats)
;   - Actions:
;     - Return
; Condition: (g_gcs_barState == gcsBar_satWithGoode)
;   - Action:
;     - Sit with Davies
; Condition: (g_gcs_barState == gcsBar_satWithDavies)
;   - Action:
;     - Sit with Goode
;
; "Sit with Goode" Actions:
;   - Add gcsBar_satWithGoode to g_gcs_barState
;   - Print Goode messages
;   - Add 5 to score
;
; "Sit with Davies" Actions:
;   - Add gcsBar_satWithDavies to g_gcs_barState
;   - Set location of attache case to location_gcs
;   - Set enter_room and inward_room of room_gcs_outerCorridor_21 to room_gcs_maintenance
;   - Print Davies messages
;   - Move player to room_gcs_innerCorridor_25
;   - Add 5 to score
;
; ---------------------------------------------------------------------------
l_room_gcsBar:
		ld	a, (g_gcs_barState)
		cp	gcsBar_unentered
		jp	nz, loc_9F2

		printMessage(s_barWelcome)

loc_939:
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	1
		jp	z, l_gcsBar_oneWord
		cp	2
		jp	z, l_gcsBar_twoWord

l_gcsBar_pleaseAnswer:
		printMessage(s_pleaseAnswer)
		jp	loc_939
; ---------------------------------------------------------------------------

l_gcsBar_oneWord:
		ld	a, (playerCommand)
		cp	p_ray_goode
		jp	z, l_gcsBar_sitWithGoode
		cp	p_jack_davies
		jp	z, l_gcsBar_sitWithDavies
		jp	l_gcsBar_pleaseAnswer
; ---------------------------------------------------------------------------

l_gcsBar_twoWord:
		ld	a, (firstToken)
		cp	p_ray_goode
		jp	z, l_gcsBar_sitWithGoode
		cp	p_jack_davies
		jp	z, l_gcsBar_sitWithDavies
		ld	a, (secondToken)
		cp	p_ray_goode
		jp	z, l_gcsBar_sitWithGoode
		cp	p_jack_davies
		jp	z, l_gcsBar_sitWithDavies
		jp	l_gcsBar_pleaseAnswer
; ---------------------------------------------------------------------------

l_gcsBar_sitWithGoode:
		ld	a, (g_gcs_barState)
		add	a, gcsBar_satWithGoode
		ld	(g_gcs_barState), a

		printMessage(s_goodeMessage1)
		printMessage(s_goodeMessage2)

		IncreaseScore(5)

		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_gcsBar_sitWithDavies:
		ld	a, (g_gcs_barState)
		add	a, gcsBar_satWithDavies
		ld	(g_gcs_barState), a

		ld	a, location_gcs
		ld	(item_attacheCase.location), a

		ld	a, (g_currentRoomNumber)
		push	af

		ld	a, room_gcs_outerCorridor_21
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de					; room_t.enter_room
		ld	(hl), room_gcs_maintenance
		inc	hl
		inc	hl					; room_t.inward_room
		ld	(hl), room_gcs_maintenance

		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData

		printMessage(s_daviesMessage1)
		printMessage(s_daviesMessage2)

		ld	a, room_gcs_innerCorridor_25 
		ld	(g_currentRoomNumber), a

		IncreaseScore(5)

		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_9F2:
		cp	gcsBar_noSeats
		jp	nz, loc_A01
		printMessage(s_barNoSeats)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_A01:
		printMessage(s_barSeatAvailable)
		ld	a, (g_gcs_barState)
		cp	gcsBar_satWithGoode
		jp	z, l_gcsBar_sitWithDavies
		jp	l_gcsBar_sitWithGoode
