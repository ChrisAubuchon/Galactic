; ---------------------------------------------------------------------------
; Condition: (g_gcs_professorState == gcsProfessor_met)
;   Actions: Set g_gcs_professorState to gcsProfessor_pacing
; ---------------------------------------------------------------------------
l_room_gcsLibrary:
		ifVariableNe(g_gcs_professorState, gcsProfessor_met, l_advanceClock)
		setVariable(g_gcs_professorState, gcsProfessor_pacing)
		jp	l_advanceClock
