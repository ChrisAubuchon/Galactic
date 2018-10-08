l_pickUpItem_diamonds:
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	z, beyond_your_power

		ld	(hl), location_none
		printMessage(s_buriedInLava)
		ld	hl, item_trochObject.location
		ld	a, (hl)
		cp	location_withPlayer
		jp	z, l_diamonds_trochSaves

		printMessage(s_tooBadSomeoneNotHere)
		jp	l_inline_playerDied

l_diamonds_trochSaves:
		printMessage(s_trochSavedFromLava)
		jp	l_mainLoop

