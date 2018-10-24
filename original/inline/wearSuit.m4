l_inline_doWearSuit:
		ld	b, 0				; Wear suit
		jp	l_wearSuit_alreadyWearingCheck
; ---------------------------------------------------------------------------

l_inline_doWearPSuit:
		ld	b, 1				; wear p-suit
		jp	l_wearSuit_alreadyWearingCheck
; ---------------------------------------------------------------------------

l_inline_doWearRadSuit:
		ld	b, 2				; wear rad suit

l_wearSuit_alreadyWearingCheck:
		ld	a, (g_wearingSuitFlag)		; Fail if already wearing a suit
		cp	wearingSuit_none
		jp	z, l_wearSuit_selectSuitToWear

		printMessage(s_cantWearTwoSuits)
		jp	l_mainLoop

l_wearSuit_selectSuitToWear:
		ld	a, b
		cp	1				; 1 == called with "wear psuit"
		jp	z, l_wearSuit_wearPSuit
		cp	2				; 2 == called with "wear radsuit"
		jp	z, l_wearSuit_wearRadSuit
							; Called with "wear suit"
		ld	a, (item_pSuit.location)	; if psuit is in inventory wear it.
		cp	location_inventory
		jp	z, l_wearSuit_wearPSuit		; if not, default to rad suit
		jp	l_wearSuit_wearRadSuit

l_wearSuit_wearPSuit:
		ld	hl, item_pSuit.location
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_wearPSuit_okay
		printMessage(s_notCarryingPSuit)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_wearPSuit_okay:
		printMessage(s_okay)
		ld	a, wearingSuit_pSuit
		ld	(g_wearingSuitFlag), a
		dec	hl				; hl = &g_wornSuitFloorMessage
		ld	(hl), invenMsg_pSuit_donned
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_wearSuit_wearRadSuit:
		ld	hl, item_radSuit.location
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_wearRadSuit_okay
		printMessage(s_notCarrying)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_wearRadSuit_okay:
		printMessage(s_okay)
		ld	a, wearingSuit_radSuit
		ld	(g_wearingSuitFlag), a
		dec	hl				; object_t.invenMessageIndex
		ld	(hl), invenMsg_radSuit_donned
		jp	l_mainLoop
