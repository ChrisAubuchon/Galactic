l_inline_pickUpItem:
		ld	(tmpObject), a
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	nc, loc_35CF			; if (currentRoomNumber	< 2)
		ld	a, 0				; then
		ld	(tmpPlanet), a			;   tmpPlanet = 0
		jp	loc_35D5

loc_35CF:
		ld	a, (g_currentPlanetNumber)	; else
		ld	(tmpPlanet), a			;   tmpPlanet = currentPlanetNumber

loc_35D5:
		ld	a, (tmpObject)			; if ((tmpObject >= p_computer) &&
		cp	p_computer			;     (tmpObject < p_pieceOfPaper)
		jp	c, loc_35E5			;   then goto l_pickup_parsonItem
		cp	p_pieceOfPaper
		jp	nc, loc_35E5
		jp	l_pickup_parsonItem
; ---------------------------------------------------------------------------

loc_35E5:
		cp	p_diamond
		jp	z, l_pickUpItem_diamonds
		cp	p_irridium
		jp	z, l_pickUpItem_irridium
		cp	p_boat
		jp	z, l_pickup_beyondYourPower
		cp	p_paper				; if (tmpObject >= p_paper)
		jp	c, loc_3601			;   goto loc_3601
		cp	p_connect			; if (tmpObject < p_connect)
		jp	nc, loc_3601			;   goto loc_3601
		jp	l_pickup_ambiguousItems
; ---------------------------------------------------------------------------

loc_3601:
		cp	p_lucinda			; if (tmpObject < p_lucinda) 
		jp	c, l_pickup_genericItem		;   goto l_pickup_genericItem
		cp	p_lastHiree			; if (tmpObject >= p_lastHiree)
		jp	nc, l_pickup_genericItem	;   goto l_pickup_genericItem
		cp	p_lucinda			; if (tmpObject == p_lucinda)
		jp	z, l_pickup_lucinda		;   goto l_pickup_lucinda
		sub	p_low_hiree
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, g_hireList
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	nz, loc_362C
		ld	a, (tmpObject)
		jp	l_hire_earth
; ---------------------------------------------------------------------------

loc_362C:
		ld	a, (tmpObject)
		cp	p_troch
		jp	z, l_pickup_troch
		ld	a, (tmpPlanet)
		cp	0
		jp	z, loc_3646
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3646:
		ld	a, (tmpObject)
		cp	p_welma				; if (tmpObject == p_welma)
		jp	nz, loc_3658			; then
		printMessage(s_sheDeclinesToCome)	;   Print female decline message
		jp	l_mainLoop

loc_3658:						; else
		printMessage(s_heDeclinesToCome)	;   Print male decline message
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_pickup_genericItem:
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	nz, l_pickup_inventoryRoomCheck

l_pickup_beyondYourPower:
		printMessage(s_beyondYourPower)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_pickup_inventoryRoomCheck:
		call	hasInventoryRoom
		ld	a, b
		cp	0
		jp	nz, l_setLocationToInventory
		printMessage(s_cantCarryMore)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_setLocationToInventory:
		ld	(hl), location_inventory

l_printOkayAndLoop:
		printMessage(s_okay)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

include(`inline/pickup/parsonItem.m4')
include(`inline/pickup/diamonds.m4')
include(`inline/pickup/irridium.m4')
include(`inline/pickup/ambiguous.m4')
include(`inline/pickup/lucinda.m4')
include(`inline/pickup/troch.m4')
