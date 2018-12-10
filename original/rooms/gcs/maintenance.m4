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
		ifVariableEq(g_gcs_foundDyingGirl, TRUE, l_advanceClock)
		printMessage(s_dyingGirlMessage1)
		printMessage(s_dyingGirlMessage2)
		setVariable(g_gcs_foundDyingGirl, TRUE)
		increaseScore(5)
		setItemLocation(item_dyingGirl, location_gcs)
		jp	l_advanceClock
