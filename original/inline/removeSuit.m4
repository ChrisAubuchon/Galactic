l_inline_doRemoveSuit:
		ld	b, 0
		jp	l_removeSuit_notWearingSuitCheck

l_inline_doRemovePSuit:
		ld	b, 1
		jp	l_removeSuit_notWearingSuitCheck

l_inline_doRemoveRadSuit:
		ld	b, 2

l_removeSuit_notWearingSuitCheck:
		ld	a, (g_wearingSuitFlag)
		cp	wearingSuit_none
		jp	nz, l_removeSuit_handleGeneric

l_inline_dontUnderstandAndLoop:
		printMessage(s_dontUnderstand)
		jp	l_mainLoop

l_removeSuit_handleGeneric:
		; If called with the generic "remove suit", remove the currently
		; worn suit
		ld	a, b
		cp	0
		jp	nz, l_removeSuit_doRemove
		ld	a, (g_wearingSuitFlag)
		ld	b, a

l_removeSuit_doRemove:
		ld	a, (g_wearingSuitFlag)
		cp	b
		jp	nz, l_inline_dontUnderstandAndLoop

		ld	hl, g_wearingSuitFlag
		ld	(hl), wearingSuit_none
		cp	wearingSuit_radSuit
		jp	z, l_removeSuit_setRadSuitMessage

		ld	hl, item_pSuit.invenMessageIndex
		ld	(hl), invenMsg_pSuit
		jp	l_removeSuit_okayAndLoop

l_removeSuit_setRadSuitMessage:
		ld	hl, item_radSuit.invenMessageIndex
		ld	(hl), invenMsg_radSuit

l_removeSuit_okayAndLoop:
		printMessage(s_okay)
		jp	l_mainLoop
