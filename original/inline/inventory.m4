l_inline_inventory:
		ld	hl, g_itemList.location
		ld	de, 6
		ld	c, 23h

l_doInventory_carryingCheckLoop:
		ld	a, (hl)
		cp	location_inventory
		jp	z, l_doInventory_printLoopEntry
		add	hl, de
		dec	c
		jp	nz, l_doInventory_carryingCheckLoop
		printMessage(s_inventoryEmpty)
		jp	l_mainLoop

l_doInventory_printLoopEntry:
		printMessage(s_inventoryCarrying)
		ld	hl, g_itemList.location
		ld	de, 6				; de = sizeof(object_t)
		ld	c, 35				; c = item count

l_doInventory_printLoop:
		ld	a, (hl)				; hl = &g_itemList.location
		cp	location_inventory
		jp	nz, l_doIventory_next
		dec	hl				; hl = &g_itemList.invenMessageIndex
		push	hl
		push	de
		ld	d, 0
		ld	a, (hl)
		sub	1
		rlca
		ld	e, a
		ld	hl, inventoryMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		pop	de
		pop	hl
		inc	hl

l_doIventory_next:
		dec	c
		jp	z, l_mainLoop
		add	hl, de
		jp	l_doInventory_printLoop
