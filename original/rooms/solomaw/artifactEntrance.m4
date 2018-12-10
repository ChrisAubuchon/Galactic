; ---------------------------------------------------------------------------
;
; XXX - It is very easy to make your game unwinnable in this section. The
; 	player has one opportunity to enter the correct answer. Any other answer,
;	including just hitting ENTER, exits out of the code. But since the
;	g_solomaw_riddleComplete flag has been set to TRUE, it's not possible
;	to trigger the riddle again.
;
; Condition: (g_solomaw_riddleComplete != TRUE)
;   - Actions:
;     - set g_solomaw_riddleComplete to TRUE
;     - Read a string from the plyaer and return if it is 
;	not p_solomawCrystalAnswer
;     - Add 20 to score
;     - Print correct message
;     - Set roomFlag to roomFlag_verbose
;     - Set north_room and cw_room to room_solomaw_artifact
; ---------------------------------------------------------------------------
l_room_solomawArtifactEntrance:
		ifVariableEq(g_solomaw_riddleComplete, TRUE, l_advanceClock)
		setVariable(g_solomaw_riddleComplete, TRUE)

		call	parseInput
		ld	a, (g_inputWordCount)
		cp	0
		jp	z, l_advanceClock

		cp	2
		jp	z, l_advanceClock

		ld	a, (playerCommand)
		cp	p_solomawCrystalAnswer
		jp	nz, l_advanceClock

		increaseScore(20)
		printMessage(s_youAreCorrect)

		ld	hl, (g_currentRoomData)

		; `addCurrentRoomFlag(roomFlag_verbose)'
		inc	hl				; room_t.roomFlag
		ld	(hl), roomFlag_verbose

		; `setRoomInDirection(north, room_solomaw_artifact)'
		ld	de, 9
		add	hl, de				; room_t.north_room
		ld	(hl), room_solomaw_artifact

		; XXX - This should probably be 0Ch to get
		; hl to room_t.enter_room
		;
		; `setRoomInDirection(cw, room_solomaw_artifact)'
		ld	de, 0Ah				; room_t.cw_room
		add	hl, de
		ld	(hl), room_solomaw_artifact
		jp	l_advanceClock
