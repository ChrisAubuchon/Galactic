; ---------------------------------------------------------------------------
; Condition: (g_gcs_engineeringTrigger == TRUE)
;   - Actions:
;     - Set g_gcs_engineeringTrigger to FALSE
;     - Print engineering messages
;     - Set g_gcsComputerState to gcsTerminal_seeCommandant
;     - Add 4 to score
; ---------------------------------------------------------------------------
l_room_gcsEngineering:
		ld	a, (g_gcs_engineeringTrigger)
		cp	FALSE
		jp	z, l_advanceClock

		ld	a, FALSE
		ld	(g_gcs_engineeringTrigger), a

		printMessage(s_engineerMessage1)
		printMessage(s_engineerMessage2)

		ld	a, gcsTerminal_seeCommandant
		ld	(g_gcsComputerState), a

		IncreaseScore(4)
		jp	l_advanceClock
