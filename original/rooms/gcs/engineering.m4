; ---------------------------------------------------------------------------
; Condition: (g_gcs_engineeringTrigger == TRUE)
;   - Actions:
;     - Set g_gcs_engineeringTrigger to FALSE
;     - Print engineering messages
;     - Set g_gcsComputerState to gcsTerminal_seeCommandant
;     - Add 4 to score
; ---------------------------------------------------------------------------
l_room_gcsEngineering:
		ifVariableEq(g_gcs_engineeringTrigger, FALSE, l_advanceClock)
		setVariable(g_gcs_engineeringTrigger, FALSE)
		printMessage(s_engineerMessage1)
		printMessage(s_engineerMessage2)
		setVariable(g_gcsComputerState, gcsTerminal_seeCommandant)
		increaseScore(4)
		jp	l_advanceClock
