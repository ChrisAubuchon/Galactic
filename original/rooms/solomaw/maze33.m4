; ---------------------------------------------------------------------------
; Actions:
;   - Set west_room of room_solomaw_mazeBegin_10 to room_solomaw_mazeEntrance
;   - Set exit_room of room_solomaw_mazeBegin_10 to room_solomaw_mazeEntrance
; ---------------------------------------------------------------------------
l_room_solomawMaze33:
		setCurrentRoom(room_solomaw_mazeBegin_10)
		call	getRoomData

		; `setRoomInDirection(west, room_solomaw_mazeEntrance)'
		ld	hl, (g_currentRoomData)
		ld	de, 0Dh
		add	hl, de					; room_t.west_room
		ld	(hl), room_solomaw_mazeEntrance

		; `setRoomInDirection(exit, room_solomaw_mazeEntrance)'
		ld	de, 0Ah
		add	hl, de					; room_t.exit_room
		ld	(hl), room_solomaw_mazeEntrance

		setCurrentRoom(room_solomaw_maze_33)
		call	getRoomData
		jp	l_advanceClock
