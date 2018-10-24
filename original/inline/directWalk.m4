; ---------------------------------------------------------------------------
; The player can go to a specific room by naming it
;
; eg:
; ? customs
; ? supply
; ---------------------------------------------------------------------------
l_inline_directWalk:
		push	af
		ld	a, 0
		ld	(g_directWalk_walkOkay), a
		pop	af
		sub	p_directWalk_low
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, hl
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, l_directWalk_earth
		cp	location_gcs
		jp	z, l_directWalk_gcs
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

l_directWalk_earth:
		ld	hl, g_directWalk_earth
		jp	loc_12DD
; ---------------------------------------------------------------------------

l_directWalk_gcs:
		ld	hl, g_directWalk_gcs

loc_12DD:
		add	hl, de
		ld	b, 1

loc_12E0:
		ld	a, (g_currentRoomNumber)
		ld	c, 9

loc_12E5:
		cp	(hl)
		inc	hl
		jp	nz, loc_12ED
		ld	(g_directWalk_walkOkay), a

loc_12ED:
		dec	c
		jp	nz, loc_12E5
		ld	a, (g_directWalk_walkOkay)
		cp	0
		jp	z, loc_1300
		ld	a, (hl)				; hl is pointing to the last DIRECTWALK entry
		ld	(g_currentRoomNumber), a	; which is the destination room number
		jp	l_mainLoopEntry

loc_1300:
		inc	hl
		dec	b
		jp	nz, loc_12E0
		printMessage(s_dontKnowHowToApply)
		jp	l_mainLoop
