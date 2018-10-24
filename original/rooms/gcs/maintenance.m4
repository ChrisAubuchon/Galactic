; ---------------------------------------------------------------------------
; Condition: (g_gcs_foundDyingGirl == TRUE)
;   Action: Return
; Condition: (g_gcs_foundDyingGirl == FALSE)
;   Actions:
;     - Print dying girl messages
;     - Set g_gcs_foundDyingGirl to TRUE
;     - Add 5 to score
;     - Set dyingGirl.location to location_gcs
; ---------------------------------------------------------------------------
l_room_gcsMaintenance:
		ld	a, (g_gcs_foundDyingGirl)
		cp	TRUE
		jp	z, l_advanceClock

		printMessage(s_dyingGirlMessage1)
		printMessage(s_dyingGirlMessage2)

		ld	a, TRUE
		ld	(g_gcs_foundDyingGirl), a

		IncreaseScore(5)

		ld	a, location_gcs
		ld	(item_dyingGirl.location), a
		jp	l_advanceClock
