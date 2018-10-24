; ---------------------------------------------------------------------------
; Condition: (g_gcs_professorState == 1)
;   Actions: Set g_gcs_professorState to 2
; ---------------------------------------------------------------------------
l_room_gcsLibrary:
		ld	a, (g_gcs_professorState)
		cp	gcsProfessor_met
		jp	nz, l_advanceClock

		ld	a, gcsProfessor_pacing
		ld	(g_gcs_professorState), a
		jp	l_advanceClock
