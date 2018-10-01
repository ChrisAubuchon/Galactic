include(`macros.m4')dnl
include(`messages.m4')dnl
; Input	MD5   :	8214E1D2BEA79A6FE3CC01AB6E1557E0
; Input	CRC32 :	595DC1A0

; File Name   :	C:\Documents and Settings\Chris	Aubuchon\My Documents\Galactic\galactic.com
; Format      :	Binary file
; Base Address:	0000h Range: 0100h - 4D00h Loaded length: 4C00h

; Processor	  : z80	[]
; Target assembler: Zilog Macro	Assembler

; ===========================================================================

; Segment type:	Pure code
		segment	ROM
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
bdos_func:	ds 1
					; sub_2C2D+5p ...
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
		ds 1
; ---------------------------------------------------------------------------
start:		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld	a, 1
		ld	(g_restoredGameFlag), a
		ld	a, 1
		ld	hl, aAGalactic_msg ; "A:GALACTIC.MSG"
		call	openFile
		cp	1
		jp	nz, loc_14A
		ld	a, 1
		ld	hl, aBGalactic_msg ; "B:GALACTIC.MSG"
		call	openFile
		cp	1
		jp	nz, loc_14A
		ld	a, 1
		ld	hl, aCGalactic_msg ; "C:GALACTIC.MSG"
		call	openFile
		cp	1
		jp	nz, loc_14A
		ld	a, 1
		ld	hl, aDGalactic_msg ; "D:GALACTIC.MSG"
		call	openFile
		cp	1
		jp	nz, loc_14A
		ld	hl, s_errorPrefix
		call	outputString
		jp	loc_1C13
; ---------------------------------------------------------------------------

loc_14A:
		ld	hl, byte_4790
		call	outputString
		printMessage(s_copyRight)

loc_157:
		ld	hl, byte_4704
		ld	c, 0
		ld	b, 0

loc_15E:
		call	getc
		cp	8
		jp	z, loc_19E
		cp	7Fh ; ''
		jp	z, loc_1C1
		cp	61h ; 'a'
		jp	c, loc_177
		cp	7Bh ; '{'
		jp	nc, loc_177
		sub	20h ; ' '

loc_177:
		ld	(hl), a
		inc	hl
		inc	c
		inc	b
		cp	0Dh
		jp	nz, loc_15E
		dec	hl
		ld	(hl), 0
		ld	a, c
		cp	2
		jp	c, loc_1E4
		ld	hl, byte_4704
		ld	a, 2
		call	openFile
		jp	nz, loc_227
		printMessage(s_saveHelp)
		jp	loc_157
; ---------------------------------------------------------------------------

loc_19E:
		ld	a, b
		cp	0
		jp	nz, loc_1B1
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1B1:
		dec	b
		dec	hl
		dec	c
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1C1:
		ld	a, b
		cp	0
		jp	nz, loc_1D4
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1D4:
		dec	b
		dec	hl
		dec	c
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1E4:
		ld	a, 0
		ld	(g_restoredGameFlag), a
		ld	hl, aAGalactic_bgn ; "A:GALACTIC.BGN"
		ld	a, 2
		call	openFile
		cp	1
		jp	nz, loc_227
		ld	hl, aBGalactic_bgn ; "B:GALACTIC.BGN"
		ld	a, 2
		call	openFile
		cp	1
		jp	nz, loc_227
		ld	hl, aCGalactic_bgn ; "C:GALACTIC.BGN"
		ld	a, 2
		call	openFile
		cp	1
		jp	nz, loc_227
		ld	hl, aDGalactic_bgn ; "D:GALACTIC.BGN"
		ld	a, 2
		call	openFile
		cp	1
		jp	nz, loc_227
		printMessage(s_galacticBgnBad)
		jp	loc_1C13
; ---------------------------------------------------------------------------

loc_227:
		ld	a, 2				; File number
		ld	bc, 1C00h			; Length
		ld	de, 4944h			; Offset
		call	setDMAAddress
		cp	1
		jp	nz, loc_241
		printMessage(s_gameDataFileBad)
		jp	loc_1C0E
; ---------------------------------------------------------------------------

loc_241:
		ld	a, 2
		call	closeFile
		ld	de, baseTimeMaybe ; "1620"
		ld	hl, currentTimeMaybe
		ld	bc, 4
		call	abbreviateWord
		jp	loc_266
; ---------------------------------------------------------------------------
		db ENTER_GRAPHICS_MODE
		db ENTER_REVERSE_VIDEO_MODE
		db SET_MODE(`1')			; Enable 25th line
		db SET_CURSOR_ADDRESS(25, 1)
		db KEYBOARD_DISABLE
		db ENTER_INSERT_MODE
		db TRANSMIT_PAGE
; ---------------------------------------------------------------------------

loc_266:
		ld	a, (g_restoredGameFlag)
		cp	1
		jp	z, l_mainLoopEntry
		ld	de, 0
		ld	e, 11h
		call	printFromMSGFile
		call	askIfInstructions
		cp	0
		jp	z, l_mainLoopEntry
		printMessage(s_introduction)
		ld	b, 20
		call	subtractFromScore

l_mainLoopEntry:
		call	getBGNRoomAddress
		call	lookFunction

l_mainLoop:
		ld	hl, byte_4A51
		ld	a, 6
		cp	(hl)
		jp	z, loc_306
		ld	a, (g_currentPlanetNumber)
		cp	(hl)
		jp	nz, loc_2A8
		inc	hl
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	z, loc_306

loc_2A8:
		ld	hl, byte_4A51
		ld	a, (byte_4A4B)
		cp	(hl)
		jp	nz, loc_2CB
		inc	hl
		ld	a, (byte_4A4C)
		cp	(hl)
		jp	nz, loc_2CB
		printMessage(s_trochKilledLucinda)

l_forcedGameEnding:
		printMessage(s_endingGame)
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_2CB:
		ld	a, (byte_4A52)
		cp	2Ch ; ','
		jp	z, loc_2D8
		cp	2Dh ; '-'
		jp	nz, loc_2EA

loc_2D8:
		ld	a, (byte_4A3D)
		cp	1Ah
		jp	z, loc_2EA
		printMessage(s_lucindaEscaped)
		jp	l_forcedGameEnding
; ---------------------------------------------------------------------------

loc_2EA:
		ld	hl, byte_4A51
		ld	a, (stru_4A57.location)
		cp	(hl)
		jp	nz, loc_306
		ld	a, (stru_4A57.roomNumber)
		inc	hl
		cp	(hl)
		jp	nz, loc_306
		printMessage(s_lucindaDestroyedDisk)
		jp	l_forcedGameEnding
; ---------------------------------------------------------------------------

loc_306:
		ld	hl, (word_4961)
		inc	hl
		ld	(word_4961), hl
		ld	a, h
		cp	0
		jp	nz, loc_393
		ld	a, l
		cp	4Ch ; 'L'
		jp	nz, loc_344
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 12h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 9
		add	hl, de
		ld	(hl), 0F7h ; '˜'
		ld	de, 3
		add	hl, de
		ld	(hl), 13h
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 13h
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	loc_393
; ---------------------------------------------------------------------------

loc_344:
		cp	52h ; 'R'
		jp	nz, loc_374
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 12h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 9
		add	hl, de
		ld	(hl), 0E2h ; '‚'
		ld	de, 3
		add	hl, de
		ld	(hl), 67h ; 'g'
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 67h ; 'g'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	loc_393
; ---------------------------------------------------------------------------

loc_374:
		cp	65h ; 'e'
		jp	nz, loc_393
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, loc_393
		ld	a, (g_currentRoomNumber)
		cp	0
		jp	z, loc_393
		printMessage(s_launchedLate)
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_393:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, loc_453
		cp	location_isthur
		jp	z, loc_41B
		cp	location_gcs
		jp	z, loc_3DE
		cp	location_navier
		jp	z, loc_3BA
		ld	a, (g_currentRoomNumber)
		cp	9
		jp	z, loc_D43
		cp	33h ; '3'
		jp	z, loc_D8F
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_3BA:
		ld	a, (g_currentRoomNumber)
		cp	room_navier_overlordChamber
		jp	z, loc_C6C
		cp	46
		jp	z, loc_C79
		cp	2Fh ; '/'
		jp	z, loc_C79
		cp	30h ; '0'
		jp	z, loc_CB3
		cp	31h ; '1'
		jp	z, loc_CEB
		cp	32h ; '2'
		jp	z, loc_CF6
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_3DE:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_landingBay
		jp	z, loc_8E7
		cp	room_gcs_airlessPassage
		jp	z, loc_8E7
		cp	room_gcs_bar
		jp	z, l_barHandler
		cp	room_gcs_restaurant
		jp	z, sitWithHolson
		cp	room_gcs_gymnasium
		jp	z, loc_A74
		cp	room_gcs_maintenance
		jp	z, findDyingGirl
		cp	10h
		jp	z, doGCSKO
		cp	room_gcs_engineering
		jp	z, talk2GCSEngineer
		cp	room_gcs_doctor
		jp	z, loc_C12
		cp	room_gcs_hospital
		jp	z, loc_BDF
		cp	room_gcs_library
		jp	z, loc_BCF
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_41B:
		ld	a, (g_currentRoomNumber)
		cp	room_isthur_landingPad
		jp	z, onIstLandingSite
		cp	room_isthur_gammaEntrance
		jp	z, loc_67A
		cp	room_isthur_nsTunnel_4
		jp	z, doIstAirlockCycle
		cp	room_isthur_cmdtFoyer
		jp	z, changeIstCmdtFoyMsg
		cp	room_isthur_cmdtOffice
		jp	z, loc_6CF
		cp	room_isthur_intelHq
		jp	z, changeIntHQMsg
		cp	room_isthur_cafeteria
		jp	z, loc_7B8
		cp	room_isthur_controlTower
		jp	z, loc_805
		cp	room_isthur_gammaControl
		jp	z, loc_83D
		cp	room_isthur_computerCenter
		jp	z, loc_88A
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_453:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_commanderOffice
		jp	z, inPortCmdrOffice
		cp	room_earth_customs
		jp	z, inCustoms_1
		cp	room_earth_supply
		jp	z, inSupply_1
		cp	room_earth_pirate
		jp	z, inPiratesRoom
		cp	27h ; '''
		jp	c, l_incrementClock
		cp	3Ah ; ':'
		jp	nc, l_incrementClock
		jp	loc_616
; ---------------------------------------------------------------------------

inPortCmdrOffice:
		ld	a, (gameWonFlagMaybe)
		cp	1
		jp	z, loc_4C0
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_earth_supply
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 0CFh ; 'œ'
		ld	a, room_earth_parson
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 0C0h	; Change Parson's room to sell gear
		ld	hl, stru_49F7
		ld	de, 6
		ld	(hl), 1
		add	hl, de
		ld	(hl), 1
		add	hl, de
		ld	(hl), 1
		add	hl, de
		ld	(hl), 1
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_4C0:
		ld	a, 24
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		printMessage(s_galaxySalutes)
		ld	a, (stru_4A27.location)
		cp	7
		jp	nz, loc_F1B
		ld	a, 30
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	loc_F1B
; ---------------------------------------------------------------------------

inCustoms_1:
		ld	a, (stru_496A.occupied+27h)
		cp	1
		jp	z, l_incrementClock
		ld	a, (item_analyzer.location)
		cp	0
		jp	nz, loc_502
		printMessage(s_caughtWithAnalyzer)
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_502:
		ld	a, (stru_4A03.location)
		cp	7
		jp	nz, l_incrementClock
		printMessage(s_caughtWithIllusion)
		jp	loc_F16
; ---------------------------------------------------------------------------

inSupply_1:
		ld	a, (stru_49F7.location)
		cp	8
		jp	z, l_incrementClock
		ld	a, (byte_49A4)
		cp	1
		jp	z, l_incrementClock
		ld	a, (byte_49BF)
		cp	0
		jp	z, earthSupplyDepot
		cp	1
		jp	z, gcsSupplyDepot
		cp	2
		jp	z, isthurSupplyDepot
		jp	l_incrementClock
; ---------------------------------------------------------------------------

earthSupplyDepot:
		printMessage(s_supplyQuestion)
		printMessage(s_supplyAnswer)
		printMessage(s_suppliesOnBoard)
		ld	a, 9
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 1
		ld	(byte_49A4), a
		ld	a, 0Ah
		ld	(byte_49BF), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

gcsSupplyDepot:
		ld	a, 1
		ld	(byte_49A4), a
		ld	a, 2
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 0Ah
		ld	(byte_49BF), a
		ld	a, 1
		ld	(navierLandData.canLandFlag), a
		ld	a, 0
		ld	(earthLandData.canLandFlag), a
		ld	(IsthurLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, 0Bh
		ld	(byte_4A53), a
		ld	a, 32h ; '2'
		ld	(stru_4A57.roomNumber), a
		ld	a, 0Dh
		ld	(byte_4A6B), a
		ld	a, 3Ah ; ':'
		ld	(byte_4A70), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

isthurSupplyDepot:
		ld	a, 1
		ld	(byte_49A4), a
		ld	a, 1
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 0Ah
		ld	(byte_49BF), a
		ld	a, 1
		ld	(gcsLandData.canLandFlag), a
		ld	a, 0
		ld	(earthLandData.canLandFlag), a
		ld	(IsthurLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

inPiratesRoom:
		ld	hl, g_itemList
		ld	de, 6
		ld	c, 34

loc_5D8:
		ld	a, (hl)
		cp	7
		call	z, sub_5E6
		add	hl, de
		dec	c
		jp	nz, loc_5D8
		jp	loc_5ED

; =============== S U B	R O U T	I N E =======================================


sub_5E6:
		ld	(hl), 1
		inc	hl
		ld	(hl), 28h ; '('
		dec	hl
		ret
; End of function sub_5E6

; ---------------------------------------------------------------------------

loc_5ED:
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 7
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, earthRoom_t.enter_room
		add	hl, de
		ld	(hl), room_earth_pirate
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_616:
		ld	a, (item_geigerCounter.location)
		cp	ic_carrying
		jp	nz, loc_625
		printMessage(s_geigerClicking)

loc_625:
		ld	a, (item_crystalStatue.field_5)
		cp	22h ; '"'
		jp	z, l_incrementClock
		ld	a, (byte_4960)
		add	a, 5
		ld	(byte_4960), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

onIstLandingSite:
		ld	a, (wearingSuitFlag)
		cp	1
		jp	z, loc_64A

loc_640:
		printMessage(s_didntWearPSuit)
		jp	loc_F16

loc_64A:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 3
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 36h ; '6'
		inc	hl
		ld	(hl), 0EBh ; 'Î'
		ld	de, 3
		add	hl, de
		ld	(hl), 4
		inc	hl
		ld	(hl), 66h ; 'f'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_67A:
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	a, (hl)
		cp	2
		jp	nz, l_incrementClock
		ld	a, (wearingSuitFlag)
		cp	1
		jp	nz, loc_640
		jp	l_incrementClock
; ---------------------------------------------------------------------------

doIstAirlockCycle:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 3
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 37h ; '7'
		inc	hl
		ld	(hl), 62h ; 'b'
		ld	de, 3
		add	hl, de
		ld	(hl), 66h ; 'f'
		inc	hl
		ld	(hl), 2
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

changeIstCmdtFoyMsg:
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	(hl), 39h ; '9'
		inc	hl
		ld	(hl), 68h ; 'h'
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_6CF:
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 6
		add	hl, de
		ld	a, (hl)
		cp	3Bh ; ';'
		jp	nz, loc_6F7
		ld	a, 1
		ld	(gcsLandData.canLandFlag), a
		ld	a, 0
		ld	(earthLandData.canLandFlag), a
		ld	(IsthurLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, 1
		ld	(byte_49A4), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_6F7:
		cp	47h ; 'G'
		jp	nz, loc_73B
		ld	a, 1
		ld	(solomawLandData.canLandFlag), a
		ld	a, 0
		ld	(earthLandData.canLandFlag), a
		ld	(IsthurLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	a, 1
		ld	(byte_49A4), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 0CAh ; ' '
		inc	hl
		ld	(hl), 0
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_73B:
		cp	48h ; 'H'
		jp	nz, l_incrementClock
		ld	a, 1
		ld	(earthLandData.canLandFlag), a
		ld	a, 0
		ld	(IsthurLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, 1
		ld	(byte_49A4), a
		ld	(gameWonFlagMaybe), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 0CAh ; ' '
		inc	hl
		ld	(hl), 0
		ld	a, (g_currentPlanetNumber)
		push	af
		ld	a, location_earth
		ld	(g_currentPlanetNumber), a
		ld	a, 18
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 9
		add	hl, de
		ld	(hl), 0F7h	; Change the commander's door to unlocked.
		ld	de, 3
		add	hl, de
		ld	(hl), 13h	; Add the commander's office as an exit
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 13h
		pop	af
		ld	(g_currentPlanetNumber), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

changeIntHQMsg:
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 0C0h ; '¿'
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_7B8:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 9
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 8
		add	hl, de
		ld	a, (hl)
		cp	3Ch ; '<'
		jp	nz, loc_7DE
		ld	(hl), 3Dh ; '='
		inc	hl
		ld	(hl), 0Bh
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 3
		jp	loc_7FB
; ---------------------------------------------------------------------------

loc_7DE:
		inc	hl
		ld	a, (hl)
		cp	0Bh
		jp	nz, loc_7EF
		ld	(hl), 35h ; '5'
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 2
		jp	loc_7FB
; ---------------------------------------------------------------------------

loc_7EF:
		cp	35h ; '5'
		jp	nz, loc_7FB
		ld	(hl), 58h ; 'X'
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 1

loc_7FB:
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_805:
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	a, (hl)
		cp	0F3h ; 'Û'
		jp	nz, l_incrementClock
		ld	(hl), 0D7h ; '◊'
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_earth_myRoom
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 0Fh
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 3Bh ; ';'
		inc	hl
		ld	(hl), 0Ch
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_83D:
		ld	a, (byte_49C4)
		cp	1
		jp	nz, l_incrementClock
		ld	a, 0
		ld	(byte_49C4), a
		ld	a, (stru_4A57.location)
		cp	7
		jp	nz, l_incrementClock
		ld	a, (byte_4A6F)
		cp	7
		jp	nz, l_incrementClock
		printMessage(s_disksDontWork)
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 0Bh
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 14h
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 47h ; 'G'
		inc	hl
		ld	(hl), 0AEh ; 'Æ'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_88A:
		ld	a, (byte_49C5)
		cp	1
		jp	nz, l_incrementClock
		ld	a, 0
		ld	(byte_49C5), a
		ld	a, (stru_4A57.location)
		cp	7
		jp	nz, l_incrementClock
		ld	a, (byte_4A6F)
		cp	7
		jp	nz, l_incrementClock
		printMessage(s_disksWork)
		ld	a, 8
		ld	(stru_4A57.location), a
		ld	(byte_4A6F), a
		ld	a, (carriedItemCount)
		sub	2
		ld	(carriedItemCount), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 0Bh
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 19h
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 48h ; 'H'
		inc	hl
		ld	(hl), 9Ch ; 'ú'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_8E7:
		ld	a, (wearingSuitFlag)
		cp	1
		jp	z, l_incrementClock
		ld	a, (byte_49B4)
		cp	0
		jp	nz, loc_920
		ld	a, 1
		ld	(byte_49B4), a
		ld	a, 14h
		ld	(g_currentRoomNumber), a
		printMessage(s_bayDoorsClosed)
		printMessage(s_thawSuccessful)
		ld	b, 1Eh
		call	subtractFromScore
		ld	b, 0Ah

loc_916:
		call	incrementClock
		dec	b
		jp	nz, loc_916
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_920:
		printMessage(s_bayDoorsOpen)
		jp	loc_F16

l_barHandler:
		ld	a, (enteredBarFlag)
		cp	0
		jp	nz, loc_9F2
		printMessage(s_barWelcome)

loc_939:
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, singleWordCommand
		cp	2
		jp	z, twoWordCommand

loc_949:
		printMessage(s_pleaseAnswer)
		jp	loc_939
; ---------------------------------------------------------------------------

singleWordCommand:
		ld	a, (playerCommand)
		cp	p_ray_goode
		jp	z, sitWithRayGoode
		cp	p_jack_davies
		jp	z, sitWithJackDavies
		jp	loc_949
; ---------------------------------------------------------------------------

twoWordCommand:
		ld	a, (firstToken)
		cp	p_ray_goode
		jp	z, sitWithRayGoode
		cp	p_jack_davies
		jp	z, sitWithJackDavies
		ld	a, (secondToken)
		cp	p_ray_goode
		jp	z, sitWithRayGoode
		cp	p_jack_davies
		jp	z, sitWithJackDavies
		jp	loc_949
; ---------------------------------------------------------------------------

sitWithRayGoode:
		ld	a, (enteredBarFlag)
		add	a, 1
		ld	(enteredBarFlag), a
		printMessage(s_goodeMessage1)
		printMessage(s_goodeMessage2)
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	l_incrementClock
; ---------------------------------------------------------------------------

sitWithJackDavies:
		ld	a, (enteredBarFlag)
		add	a, 2
		ld	(enteredBarFlag), a
		ld	a, 3
		ld	(byte_4A99), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 21h ; '!'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	(hl), 0Fh
		inc	hl
		inc	hl
		ld	(hl), 0Fh
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		printMessage(s_daviesMessage1)
		printMessage(s_daviesMessage2)
		ld	a, 25h 
		ld	(g_currentRoomNumber), a
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_9F2:
		cp	3
		jp	nz, loc_A01
		printMessage(s_barNoSeats)
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_A01:
		printMessage(s_barSeatAvailable)
		ld	a, (enteredBarFlag)
		cp	1
		jp	z, sitWithJackDavies
		jp	sitWithRayGoode
; ---------------------------------------------------------------------------

sitWithHolson:
		ld	a, (byte_49B8)
		cp	0
		jp	nz, loc_A6A
		printMessage(s_restaurantGreeting)
		printMessage(s_holsonMessage)
		ld	a, 1
		ld	(byte_49B8), a
		ld	(byte_49BE), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 0Eh
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 5
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 99h ; 'ô'
		inc	hl
		ld	(hl), 0BDh ; 'Ω'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 3
		ld	(byte_4AA5), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_A6A:
		printMessage(s_restaurantNoSeats)
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_A74:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 32
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	(hl), 72h ; 'r'
		inc	hl
		inc	hl
		ld	(hl), 72h ; 'r'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

findDyingGirl:
		ld	a, (foundDyingGirlFlag)
		cp	1
		jp	z, l_incrementClock
		printMessage(s_dyingGirlMessage1)
		printMessage(s_dyingGirlMessage2)
		ld	a, 1
		ld	(foundDyingGirlFlag), a
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 3
		ld	(byte_4AAB), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

doGCSKO:
		ld	a, (gottenGCSKOdFlag)
		cp	0
		jp	nz, gotGCSSupplies
		ld	b, 0Fh
		call	subtractFromScore
		ld	a, 1
		ld	(gottenGCSKOdFlag), a
		ld	a, 0
		ld	(wearingSuitFlag), a
		printMessage(s_darkSupplyMessage1)
		printMessage(s_darkSupplyMessage2)
		ld	a, 12h
		ld	(g_currentRoomNumber), a
		ld	hl, g_itemList
		ld	de, 6
		ld	c, 23h ; '#'

loc_AF7:
		ld	a, (hl)
		cp	7
		call	z, sub_B20
		cp	3
		call	z, sub_B20
		add	hl, de
		dec	c
		jp	nz, loc_AF7
		ld	a, 0
		ld	(carriedItemCount), a
		ld	a, 8
		ld	(stru_4A57.location), a
		ld	(byte_4A6F), a
		ld	(byte_4A99), a
		ld	(byte_4AA5), a
		ld	(byte_4AAB), a
		jp	loc_B23

; =============== S U B	R O U T	I N E =======================================


sub_B20:
		ld	(hl), 8
		ret
; End of function sub_B20

; ---------------------------------------------------------------------------

loc_B23:
		printMessage(s_doctorMessage1)
		printMessage(s_doctorMessage2)
		ld	a, 0
		ld	(lockerRentedFlag), a
		ld	a, 1
		ld	(byte_49A8), a
		ld	a, 5
		ld	(keyData.field_2), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

gotGCSSupplies:
		cp	1
		jp	nz, l_incrementClock
		ld	a, 2
		ld	(gottenGCSKOdFlag), a
		printMessage(s_gcsResupplied)
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 1
		ld	(byte_49A4), a
		ld	(byte_49BF), a
		ld	(earthLandData.canLandFlag), a
		ld	a, 0
		ld	(IsthurLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_earth_starlightLounge
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	(hl), 71h ; 'q'
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 71h ; 'q'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	a, 1
		ld	(byte_49BC), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

talk2GCSEngineer:
		ld	a, (byte_49BC)
		cp	0
		jp	z, l_incrementClock
		ld	a, 0
		ld	(byte_49BC), a
		printMessage(s_engineerMessage1)
		printMessage(s_engineerMessage2)
		ld	a, 2
		ld	(byte_49B6), a
		ld	a, 4
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_BCF:
		ld	a, (byte_49BE)
		cp	1
		jp	nz, l_incrementClock
		ld	a, 2
		ld	(byte_49BE), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_BDF:
		ld	hl, byte_4AAB
		ld	a, (hl)
		cp	7
		jp	nz, l_incrementClock
		dec	hl
		dec	hl
		ld	a, (hl)
		cp	32h ; '2'
		jp	nz, l_incrementClock
		inc	hl
		inc	hl
		ld	(hl), 8
		printMessage(s_hospitalMessage1)
		printMessage(s_hospitalMessage2)
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		ld	a, 1
		ld	(byte_49BD), a
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_C12:
		ld	a, (byte_49BD)
		cp	1
		jp	nz, l_incrementClock
		ld	a, 0
		ld	(byte_49BD), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 11h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 4
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 76h ; 'v'
		inc	hl
		ld	(hl), 0AFh ; 'Ø'
		ld	a, 19h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	(hl), 10h
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 10h
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		printMessage(s_doctorMessage2)
		printMessage(s_doctorMessage3)
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_C6C:
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	(hl), 0AEh ; 'Æ'
		inc	hl
		ld	(hl), 15h
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_C79:
		ld	a, (byte_49C1)
		cp	0
		jp	z, l_incrementClock
		ld	b, 0
		ld	hl, g_itemList
		ld	de, 6
		ld	c, 22h ; '"'

loc_C8B:
		ld	a, (hl)
		cp	7
		call	z, sub_C9E
		cp	6
		call	z, sub_C9E
		add	hl, de
		dec	c
		jp	nz, loc_C8B
		jp	loc_CA3

; =============== S U B	R O U T	I N E =======================================


sub_C9E:
		ld	a, b
		add	a, 1
		ld	b, a
		ret
; End of function sub_C9E

; ---------------------------------------------------------------------------

loc_CA3:
		ld	a, b
		cp	2
		jp	c, l_incrementClock
		printMessage(s_boatCapsized)
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_CB3:
		ld	a, (byte_49C6)
		cp	1
		jp	nz, loc_CD8
		ld	a, 31h ; '1'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	(hl), 82h ; 'Ç'
		inc	hl
		ld	(hl), 0C1h ; '¡'
		inc	hl
		ld	(hl), 0EFh ; 'Ô'
		ld	de, 7
		add	hl, de
		ld	(hl), 32h ; '2'
		inc	hl
		ld	(hl), 6Bh ; 'k'

loc_CD8:
		ld	a, (byte_49C0)
		cp	0
		jp	z, loc_3F94
		ld	a, 30h ; '0'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_CEB:
		ld	a, (wearingSuitFlag)
		cp	1
		jp	nz, loc_640
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_CF6:
		ld	a, 8
		ld	(byte_4A5D), a
		ld	a, 1
		ld	(byte_49C6), a
		ld	a, 31h ; '1'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	(hl), 82h ; 'Ç'
		inc	hl
		ld	(hl), 0C2h ; '¬'
		inc	hl
		ld	(hl), 0BAh ; '∫'
		ld	de, 7
		add	hl, de
		ld	(hl), 6Bh ; 'k'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	a, (byte_49C1)
		cp	1
		jp	z, loc_D38
		ld	a, 1
		ld	(byte_49C1), a
		ld	a, 30h ; '0'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	(hl), 22h ; '"'

loc_D38:
		ld	a, 32h ; '2'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_D43:
		ld	a, (byte_49C9)
		cp	1
		jp	z, l_incrementClock
		ld	a, 1
		ld	(byte_49C9), a
		call	parseInput
		ld	a, (numInputWords)
		cp	0
		jp	z, l_incrementClock
		cp	2
		jp	z, l_incrementClock
		ld	a, (playerCommand)
		cp	p_160
		jp	nz, l_incrementClock
		ld	a, 20
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		printMessage(s_youAreCorrect)
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	(hl), 80h ; 'Ä'
		ld	de, 9
		add	hl, de
		ld	(hl), 0Ah
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 0Ah
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_D8F:
		ld	a, 10h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Dh
		add	hl, de
		ld	(hl), 0Fh
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 0Fh
		ld	a, 33h ; '3'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_incrementClock

l_incrementClock:
		call	incrementClock
		ld	a, (byte_4960)
		cp	0
		jp	z, loc_DD0
		sub	1
		ld	(byte_4960), a
		cp	50
		jp	c, loc_DD0
		printMessage(s_diedOfRadiation)
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_DD0:
		call	parseInput
		ld	a, (numInputWords)
		cp	0
		jp	z, l_mainLoop
		cp	2
		jp	z, twoWordCommand_0
		ld	a, (playerCommand)

oneWordCommand:
		cp	p_walk
		jp	nz, loc_DFA
		ld	a, (g_currentRoomNumber)
		cp	0				; Room 0 might be the spaceship
		jp	z, do_launch			; in each world
		printMessage(s_whichWay)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_DFA:
		cp	p_zerozerozero
		jp	nc, do_help

		cp	p_custo
		jp	nc, l_doCustoMaybe

		; This section moves the player (I think)
		call	getBGNRoomAddress
		push	af
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		and	2
		cp	0
		jp	z, loc_E26
		ld	a, (stru_4A03.location)
		cp	7
		jp	z, loc_E26
		pop	af
		ld	b, a
		ld	a, 10h
		sub	b
		add	a, 1
		jp	loc_E27
; ---------------------------------------------------------------------------

loc_E26:
		pop	af

loc_E27:
		nop
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 9
		add	hl, de
		ld	e, a
		add	hl, de
		ld	a, (hl)
		cp	65h ; 'e'
		jp	nc, l_move_badDirection
		ld	(g_currentRoomNumber), a
		call	lookFunction
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_help:
		cp	p_help
		jp	nz, do_look
		printMessage(s_helpMessage)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_look:
		cp	p_look
		jp	nz, loc_E67
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		or	80h ; 'Ä'
		and	0BFh ; 'ø'
		ld	(hl), a
		call	lookFunction
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_E67:
		cp	p_launch
		jp	nz, loc_E6F
		jp	do_launch
; ---------------------------------------------------------------------------

loc_E6F:
		cp	p_land
		jp	nz, loc_E77
		jp	do_land
; ---------------------------------------------------------------------------

loc_E77:
		cp	p_ignite
		jp	nz, do_knock
		jp	do_ignite
; ---------------------------------------------------------------------------

do_knock:
		cp	p_knock
		jp	nz, do_score
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, loc_E96

l_cantKnockHere:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop


loc_E96:
		ld	a, (g_currentRoomNumber)
		cp	3
		jp	c, l_cantKnockHere
		cp	0Ah
		jp	nc, l_cantKnockHere
		sub	3
		ld	d, 0
		ld	e, a
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, stru_496A
		add	hl, de
		ld	a, (hl)
		cp	1
		jp	nz, loc_EC3

knockNoAnswer:
		printMessage(s_noAnswer)
		jp	l_mainLoop


loc_EC3:
		ld	b, 1
		ld	c, 3
		call	pseudoRNG
		cp	3
		jp	nz, knockNoAnswer
		ld	a, (g_currentRoomNumber)
		add	a, 7
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

do_score:
		cp	p_score
		jp	nz, do_quit
		printMessage(s_currentScorePrefix)
		call	convertScoreToString
		printMessage(s_currentScorePostfix)
		call	askIfInstructions
		cp	0
		jp	nz, loc_F16

loc_EF8:
		printMessage(s_okay)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_quit:
		cp	p_quit
		jp	nz, loc_F6C
		printMessage(s_quitQuestion)
		call	askIfInstructions
		cp	0
		jp	z, loc_EF8

loc_F16:
		ld	b, 19h
		call	subtractFromScore

loc_F1B:
		printMessage(s_endScorePrefix)
		call	convertScoreToString
		printMessage(s_endScorePostfix)
		ld	hl, (scoreProbably)
		ld	bc, 50
		ld	de, 0

loc_F35:
		ld	a, l
		sub	c
		ld	l, a
		jp	c, loc_F3F
		inc	e
		jp	loc_F35
; ---------------------------------------------------------------------------

loc_F3F:
		ld	a, h
		cp	0
		jp	z, loc_F4A
		dec	h
		inc	e
		jp	loc_F35
; ---------------------------------------------------------------------------

loc_F4A:
		push	de
		ld	hl, 0
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, rankOffsetList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		pop	de
		ld	a, e
		cp	12h
		jp	nz, loc_F69
		printMessage(s_galaxySalutes)

loc_F69:
		jp	loc_1C0E
; ---------------------------------------------------------------------------

loc_F6C:
		cp	p_login
		jp	z, do_login

		cp	p_hire
		jp	nz, loc_F80

		; Don't understand single-command 'HIRE'
		printMessage(`s_dontUnderstand')
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_F80:
		cp	p_connect
		jp	z, do_login

		cp	p_lift
		jp	nz, loc_F94

		; Don't understand single-command 'LIFT'
		printMessage(`s_dontUnderstand')
		jp	l_mainLoop

loc_F94:
		cp	p_buy
		jp	nz, loc_FA3

		; Don't understand single-command 'BUY'
		printMessage(s_dontUnderstand)
		jp	l_mainLoop

loc_FA3:
		cp	p_inventory
		jp	z, do_inventory
		cp	p_drop
		jp	nz, loc_FB7

		; Don't understand single-command 'DROP'
		printMessage(`s_dontUnderstand')
		jp	l_mainLoop

loc_FB7:
		cp	p_examine
		jp	z, do_examine

		cp	p_read
		jp	z, do_read

		cp	p_hit
		jp	nz, loc_FD0

		printMessage(s_hitQuestion)
		jp	l_mainLoop

loc_FD0:
		cp	p_machine
		jp	nz, loc_FDF

hit_machine:
		printMessage(s_dontUnderstand)
		jp	l_mainLoop

loc_FDF:
		cp	p_save
		jp	z, do_save

loc_FE4:
		cp	p_dolat
		jp	nz, do_sleep
		ld	a, (g_currentPlanetNumber)
		cp	location_navier
		jp	z, loc_FFB

loc_FF1:
		printMessage(s_nothingHappens)
		jp	l_mainLoop

loc_FFB:
		ld	a, (g_currentRoomNumber)
		cp	room_navier_undergroundMain
		jp	nz, loc_FF1
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	a, (hl)
		cp	0AEh ; 'Æ'
		jp	nz, loc_FF1
		dec	hl
		ld	(hl), 80h ; 'Ä'
		inc	hl
		ld	(hl), 0AFh ; 'Ø'
		inc	hl
		ld	(hl), 0C7h ; '«'
		ld	de, 7
		add	hl, de
		ld	(hl), 14h
		printMessage(s_done)
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

do_sleep:
		cp	p_sleep
		jp	nz, do_eat

		; Increment clock by an hour
		printMessage(s_sleep)
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_eat:
		cp	p_eat
		jp	nz, do_drink
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	z, loc_105C

i_dont_know_how:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_105C:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_restaurant
		jp	nz, i_dont_know_how
		ld	a, (gcs_beenPoisoned)
		cp	1
		jp	nz, loc_1076
		printMessage(s_inNoCondition)
		jp	l_mainLoop

loc_1076:
		printMessage(s_steakAndMushrooms)
		printMessage(s_stomachPumped)
		printMessage(s_medicLine)
		ld	a, room_gcs_hospital
		ld	(g_currentRoomNumber), a
		ld	a, 1
		ld	(gcs_beenPoisoned), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

do_drink:
		cp	p_drink
		jp	nz, loc_112F
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, drink_earth
		cp	location_gcs
		jp	z, drink_gcs
		jp	i_dont_know_how
; ---------------------------------------------------------------------------

drink_earth:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_starlightLounge
		jp	nz, i_dont_know_how
		printMessage(s_dontDrink)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

drink_gcs:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_landingBay
		jp	c, loc_10DC
		cp	8
		jp	c, loc_10D4
		cp	0Ch
		jp	nc, loc_10D4
		jp	loc_10F3
; ---------------------------------------------------------------------------

loc_10D4:
		cp	room_gcs_restaurant
		jp	z, loc_10F3
		jp	i_dont_know_how
; ---------------------------------------------------------------------------

loc_10DC:
		ld	a, (byte_49B2)
		cp	1
		jp	z, i_dont_know_how
		printMessage(s_consumeAll)
		ld	a, 1
		ld	(byte_49B2), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_10F3:
		ld	a, (byte_49B3)
		cp	1
		jp	nz, loc_1105
		printMessage(s_waiterNotArrived)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1105:
		ld	a, 1
		ld	(byte_49B3), a
		printMessage(s_strongDrink)
		printMessage(s_sleep)
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		ld	a, 0Ch
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_112F:
		cp	p_198
		jp	nz, loc_1162
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_FF1
		ld	a, (g_currentRoomNumber)
		cp	2Bh ; '+'
		jp	nz, loc_FF1
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		inc	hl
		ld	a, (hl)
		cp	74h ; 't'
		jp	nz, loc_FF1
		ld	(hl), 58h ; 'X'
		ld	de, 7
		add	hl, de
		ld	(hl), 2Ch ; ','
		printMessage(s_done)
		jp	l_incrementClock
; ---------------------------------------------------------------------------

loc_1162:
		cp	p_10652

loc_1164:
		jp	nz, loc_11AC
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_192D
		ld	a, (g_currentRoomNumber)
		cp	2Ch ; ','
		jp	nz, loc_192D
		ld	a, (byte_4A3D)
		cp	19h
		jp	nz, loc_1189

loc_117F:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1189:
		ld	a, (byte_4A2D)
		cp	7
		jp	nz, loc_117F
		printMessage(s_okay)
		ld	a, 19h
		ld	(byte_4A3D), a
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 33h ; '3'
		inc	hl
		ld	(hl), 2Bh ; '+'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_11AC:
		cp	p_9567
		jp	nz, loc_11EC
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_192D
		ld	a, (g_currentRoomNumber)
		cp	2Ch ; ','
		jp	nz, loc_192D
		ld	a, (byte_4A3D)
		cp	1Ah
		jp	z, loc_117F
		ld	a, (byte_4A2D)
		cp	7
		jp	nz, loc_117F
		printMessage(s_okay)
		ld	a, 1Ah
		ld	(byte_4A3D), a
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 6Bh ; 'k'
		inc	hl
		ld	(hl), 6Bh ; 'k'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_11EC:
		cp	p_1085
		jp	nz, loc_1212
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_192D
		ld	a, (g_currentRoomNumber)
		cp	31h ; '1'
		jp	nz, loc_192D
		ld	a, 24h ; '$'
		ld	(stru_4A57.field_4), a
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 32h ; '2'
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_1212:
		cp	p_462
		jp	nz, do_dig
		ld	a, (g_currentPlanetNumber)
		cp	5
		jp	nz, loc_FF1
		ld	a, (g_currentRoomNumber)
		cp	0Ch
		jp	nz, loc_FF1
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	a, (hl)
		cp	32h ; '2'
		jp	nz, loc_FF1
		ld	(hl), 8
		ld	de, 7
		add	hl, de
		ld	(hl), 0Dh
		printMessage(s_done)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_dig:
		cp	p_dig
		jp	nz, do_analog57
		ld	a, (g_itemList.location)
		cp	7
		jp	nz, loc_30EA
		ld	a, (g_currentPlanetNumber)
		cp	1
		jp	nz, didnt_find_anything
		ld	a, (g_currentRoomNumber)
		cp	29h ; ')'
		jp	nz, didnt_find_anything
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 13h
		add	hl, de
		ld	(hl), 2Ah ; '*'
		inc	hl
		ld	(hl), 2Ah ; '*'
		printMessage(s_bombShelterEntrance)
		jp	l_mainLoop

do_analog57:
		cp	p_analog
		jp	nz, loc_129D
		ld	a, (g_currentPlanetNumber)
		cp	2
		jp	nz, i_dont_know_how
		ld	a, (g_currentRoomNumber)
		cp	2Eh ; '.'
		jp	nz, i_dont_know_how
		printMessage(s_printGibberish)
		ld	a, 2
		ld	(stru_4A27.location), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_129D:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_doCustoMaybe:
		push	af
		ld	a, 0
		ld	(byte_47F1), a
		pop	af
		sub	11h
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
		cp	1
		jp	z, loc_12D4
		cp	3
		jp	z, loc_12DA
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_12D4:
		ld	hl, unk_28AB
		jp	loc_12DD
; ---------------------------------------------------------------------------

loc_12DA:
		ld	hl, unk_2991

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
		ld	(byte_47F1), a

loc_12ED:
		dec	c
		jp	nz, loc_12E5
		ld	a, (byte_47F1)
		cp	0
		jp	z, loc_1300
		ld	a, (hl)
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry

loc_1300:
		inc	hl
		dec	b
		jp	nz, loc_12E0
		printMessage(s_dontKnowHowToApply)
		jp	l_mainLoop

l_move_badDirection:				; Handle invalid destinations
		cp	room_arrestedBnE
		jp	nc, loc_1327
		ld	d, 0
		sub	65h
		rlca
		ld	e, a
		ld	hl, g_badMoveMessageList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------
		db wordToBytes(0)

loc_1327:
		ld	d, 0
		sub	room_arrestedBnE
		cp	0Ah					; 0D3h location
		jp	z, l_fifteenDoors
		cp	14h					; 0DDh location
		jp	z, l_marbleGameEntry
		cp	1Eh					; 0E7h location
		jp	z, l_sliderGameEntry
		cp	15h					; 0DEh location
		jp	z, l_storageSpace_carryingKeyCheck
		rlca
		ld	e, a
		ld	hl, g_badEnterMessageList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

l_fifteenDoors:
		printMessage(s_thatDoorIsLocked)
		ld	a, (byte_49C7)
		add	a, 1
		ld	(byte_49C7), a
		cp	0Fh
		jp	c, l_mainLoopEntry
		printMessage(s_triedFifteenthDoor)
		jp	loc_F16
; ---------------------------------------------------------------------------

l_marbleGameEntry:
		printMessage(s_marbleGame)
		jp	loc_4348
; ---------------------------------------------------------------------------

l_storageSpace_carryingKeyCheck:
		ld	a, (keyData.location)
		cp	location_inventory
		jp	nz, l_storageSpace_notCarryingKey
		printMessage(s_mustDepositKey)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

l_storageSpace_notCarryingKey:
		ld	a, room_gcs_innerAirlock
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

l_sliderGameEntry:
		ld	a, (byte_49AF)
		cp	0
		jp	nz, loc_13A2
		printMessage(s_sliderGame)
		jp	loc_40EC
; ---------------------------------------------------------------------------

loc_13A2:
		ld	a, 21h ; '!'
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

twoWordCommand_0:
		ld	a, (firstToken)
		cp	p_walk
		jp	z, loc_13BD
		ld	a, (secondToken)
		cp	p_walk
		jp	z, loc_13C3
		jp	loc_13C9
; ---------------------------------------------------------------------------

loc_13BD:
		ld	a, (secondToken)
		jp	loc_13C6
; ---------------------------------------------------------------------------

loc_13C3:
		ld	a, (firstToken)

loc_13C6:
		jp	oneWordCommand
; ---------------------------------------------------------------------------

loc_13C9:
		cp	p_help
		jp	z, do_help
		ld	a, (firstToken)
		cp	p_help
		jp	z, do_help
		cp	p_look
		jp	z, do_look
		ld	a, (secondToken)
		cp	p_look
		jp	z, do_look
		ld	b, p_lift
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	z, loc_13F2
		jp	do_launch
; ---------------------------------------------------------------------------

loc_13F2:
		ld	b, p_blast
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1401
		jp	do_launch
; ---------------------------------------------------------------------------

loc_1401:
		ld	b, p_orbit
		ld	c, p_planet
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1410
		jp	do_launch
; ---------------------------------------------------------------------------

loc_1410:
		ld	b, p_orbit
		ld	c, p_exit
		call	compareTwoWordInput
		cp	0
		jp	z, loc_141F
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_141F:
		ld	b, p_set
		ld	c, p_course
		call	compareTwoWordInput
		cp	0
		jp	z, loc_142E
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_142E:
		ld	b, p_lay
		ld	c, p_course
		call	compareTwoWordInput
		cp	0
		jp	z, loc_143D
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_143D:
		ld	b, p_computer
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_144C
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_144C:
		ld	b, p_computer
		ld	c, p_on
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1466
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	c, do_setCourse
		jp	do_login
; ---------------------------------------------------------------------------
		db 0C3h	; √
		db 0D0h	; –
		db  30h	; 0
; ---------------------------------------------------------------------------

loc_1466:
		ld	b, p_input
		ld	c, p_coordinate
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1475
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_1475:
		ld	b, p_input
		ld	c, p_ready
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1484
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_1484:
		ld	b, p_warp
		ld	c, p_speed
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1493
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_1493:
		ld	b, p_deep
		ld	c, p_space
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14A2
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_14A2:
		ld	b, p_full
		ld	c, p_accel
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14B1
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_14B1:
		ld	b, p_set
		ld	c, p_down
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14C0
		jp	do_land
; ---------------------------------------------------------------------------

loc_14C0:
		ld	b, p_knock
		ld	c, p_door
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14D1
		ld	a, p_knock
		jp	do_knock
; ---------------------------------------------------------------------------

loc_14D1:
		ld	a, (firstToken)
		cp	p_login
		jp	z, do_login
		ld	a, (secondToken)
		cp	p_login
		jp	z, do_login
		ld	a, (firstToken)
		cp	p_hire
		jp	z, loc_14F4
		ld	a, (secondToken)
		cp	p_hire
		jp	z, loc_14FA
		jp	loc_150A
; ---------------------------------------------------------------------------

loc_14F4:
		ld	a, (secondToken)
		jp	loc_14FD
; ---------------------------------------------------------------------------

loc_14FA:
		ld	a, (firstToken)

loc_14FD:
		cp	p_welma
		jp	c, loc_150A
		cp	p_lastHiree
		jp	nc, loc_150A
		jp	loc_34D8
; ---------------------------------------------------------------------------

loc_150A:
		ld	a, (firstToken)
		cp	p_land
		jp	z, do_land
		ld	a, (secondToken)
		cp	p_land
		jp	z, do_land
		ld	b, p_log
		ld	c, p_on
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1529
		jp	do_login
; ---------------------------------------------------------------------------

loc_1529:
		ld	b, p_log
		ld	c, p_enter
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1538
		jp	do_login
; ---------------------------------------------------------------------------

loc_1538:
		ld	b, p_connect
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1547
		jp	do_login
; ---------------------------------------------------------------------------

loc_1547:
		ld	b, p_log
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1556
		jp	do_login
; ---------------------------------------------------------------------------

loc_1556:
		ld	b, p_lift
		ld	c, p_book
		call	compareTwoWordInput
		cp	0
		jp	z, loc_157C
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, loc_15A2
		ld	a, (g_currentRoomNumber)
		cp	0Eh
		jp	nz, loc_15A2
		printMessage(s_noLibraryCard)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_157C:
		ld	b, p_lift
		ld	c, p_card
		call	compareTwoWordInput
		cp	0
		jp	z, loc_15A2
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_15A2
		ld	a, (g_currentRoomNumber)
		cp	0Eh
		jp	nz, loc_15A2
		printMessage(s_applicationProcessed)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_15A2:
		ld	a, (firstToken)
		cp	p_lift
		jp	z, loc_15B5
		ld	a, (secondToken)
		cp	p_lift
		jp	z, loc_15BB
		jp	loc_15D2
; ---------------------------------------------------------------------------

loc_15B5:
		ld	a, (secondToken)
		jp	loc_15BE
; ---------------------------------------------------------------------------

loc_15BB:
		ld	a, (firstToken)

loc_15BE:
		cp	p_shove
		jp	c, loc_15C8
		cp	p_lastHiree
		jp	c, getItemCode

loc_15C8:
		printMessage(s_dontKnowHowToGet)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_15D2:
		ld	a, (firstToken)
		cp	p_buy
		jp	z, loc_15E5
		ld	a, (secondToken)
		cp	p_buy
		jp	z, loc_15EB
		jp	loc_1602
; ---------------------------------------------------------------------------

loc_15E5:
		ld	a, (secondToken)
		jp	loc_15EE
; ---------------------------------------------------------------------------

loc_15EB:
		ld	a, (firstToken)

loc_15EE:
		cp	p_computer
		jp	c, loc_15F8
		cp	p_piece
		jp	c, loc_3883

loc_15F8:
		printMessage(s_noWayToBuy)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1602:
		ld	a, (firstToken)
		cp	p_inventory
		jp	z, do_inventory
		ld	a, (secondToken)
		cp	p_inventory
		jp	z, do_inventory
		ld	a, (firstToken)
		cp	p_drop
		jp	z, loc_1625
		ld	a, (secondToken)
		cp	p_drop
		jp	z, loc_162B
		jp	loc_1642

loc_1625:
		ld	a, (secondToken)
		jp	loc_162E

loc_162B:
		ld	a, (firstToken)

loc_162E:
		cp	p_shove
		jp	c, loc_1638
		cp	p_lastCarryableItem
		jp	c, dropCode

loc_1638:
		printMessage(s_notCarrying)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1642:
		ld	b, p_examine
		ld	c, p_bag
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1695
		ld	a, (stru_49E5.location)
		cp	location_inventory
		jp	z, loc_1660
		printMessage(s_notCarryingDuffle)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1660:
		ld	a, (g_currentRoomNumber)
		ld	c, a
		cp	2
		jp	c, loc_1670
		ld	a, (g_currentPlanetNumber)
		ld	b, a
		jp	loc_1672
; ---------------------------------------------------------------------------

loc_1670:
		ld	b, 0

loc_1672:
		ld	a, (byte_49CB)
		cp	1
		jp	z, loc_16E3
		ld	a, 1
		ld	(byte_49CB), a
		ld	hl, stru_49EB
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, item_geigerCounter
		ld	(hl), b
		inc	hl
		ld	(hl), c
		printMessage(s_foundLaserAndGeiger)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1695:
		ld	b, p_examine
		ld	c, p_purse
		call	compareTwoWordInput
		cp	0
		jp	z, loc_16BD
		ld	a, (purseData.location)
		cp	7
		jp	z, loc_16B3
		printMessage(s_notCarryingPurse)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_16B3:
		printMessage(s_purseMessage)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_16BD:
		ld	b, p_examine
		ld	c, p_case
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1705
		ld	a, (byte_4A99)
		cp	7
		jp	z, loc_16DB

loc_16D1:
		printMessage(s_notCarrying)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_16DB:
		ld	a, (byte_49C3)
		cp	1
		jp	z, loc_16ED

loc_16E3:
		printMessage(s_didntFindAnything)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_16ED:
		printMessage(s_caseMessage1)
		printMessage(s_caseMessage2)
		printMessage(s_caseMessage3)
		jp	l_mainLoop

loc_1705:
		ld	b, p_examine
		ld	c, p_envelope
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1747
		ld	a, (byte_4AA5)
		cp	7
		jp	nz, loc_16D1
		ld	a, (g_currentRoomNumber)
		ld	c, a
		cp	2
		jp	nc, loc_1727
		ld	b, 0
		jp	loc_172B
; ---------------------------------------------------------------------------

loc_1727:
		ld	a, (g_currentPlanetNumber)
		ld	b, a

loc_172B:
		ld	hl, stru_4A57
		ld	a, (hl)
		cp	8
		jp	nz, loc_16E3
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, byte_4A6F
		ld	(hl), b
		inc	hl
		ld	(hl), c
		printMessage(s_findTwoDisks)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1747:
		ld	a, (firstToken)
		cp	p_examine
		jp	z, do_examine
		ld	a, (secondToken)
		cp	p_yes
		jp	z, do_examine
		ld	b, p_read
		ld	c, p_piece
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_176F
		ld	b, p_read
		ld	c, p_paper
		call	compareTwoWordInput
		cp	0
		jp	z, loc_179D

loc_176F:
		ld	hl, stru_4A0F
		ld	a, (hl)
		cp	7
		jp	z, loc_1782

loc_1778:
		printMessage(s_notCarryingPaper)
		jp	l_mainLoop

loc_1782:
		dec	hl
		ld	a, (hl)
		cp	8
		jp	nz, loc_1793
		printMessage(s_paperIsFolded)
		jp	l_mainLoop

loc_1793:
		printMessage(s_paperMessage)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_179D:
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_1866
		ld	b, 0F0h	; ''
		ld	c, 0EEh	; 'Ó'
		call	compareTwoWordInput
		cp	0
		jp	z, loc_17CD
		ld	a, (g_currentRoomNumber)
		cp	4
		jp	z, loc_17C3

loc_17B9:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_17C3:
		printMessage(s_psuitWarning)
		jp	l_mainLoop

loc_17CD:
		ld	b, p_read
		ld	c, p_sign
		call	compareTwoWordInput
		cp	0
		jp	z, loc_17EB
		ld	a, (g_currentRoomNumber)
		cp	4
		jp	nz, loc_17B9
		printMessage(s_welcomeToGcs)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_17EB:
		ld	b, p_read
		ld	c, p_bulletin
		call	compareTwoWordInput
		cp	0
		jp	z, loc_181B
		ld	a, (g_currentRoomNumber)
		cp	5
		jp	nz, loc_17B9
		ld	a, (byte_49AA)
		cp	1
		jp	z, loc_1811
		printMessage(s_gcsBulletinPre)
		jp	l_mainLoop

loc_1811:
		printMessage(s_gcsBulletinPost)
		jp	l_mainLoop

loc_181B:
		ld	b, p_read
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, loc_183C

loc_1827:
		ld	a, (keyData.location)
		cp	7
		jp	z, loc_1832
		jp	nz, loc_16D1

loc_1832:
		printMessage(s_keyMessage)
		jp	l_mainLoop

loc_183C:
		ld	b, p_read
		ld	c, p_key
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_1827
		ld	b, p_read
		ld	c, p_envelope
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1866
		ld	a, (byte_4AA5)
		cp	7
		jp	nz, loc_16D1
		printMessage(s_envelopeLabel)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1866:
		ld	a, (firstToken)
		cp	p_read
		jp	z, do_read
		ld	a, (secondToken)
		cp	p_read
		jp	z, do_read
		ld	b, p_hit
		ld	c, p_machine
		call	compareTwoWordInput
		cp	0
		jp	nz, hitMachine
		ld	a, (firstToken)
		cp	p_hit
		jp	z, advise_against_that
		cp	p_machine
		jp	z, hit_machine
		ld	a, (secondToken)
		cp	p_hit
		jp	z, advise_against_that
		cp	p_machine
		jp	z, hit_machine
		jp	loc_18A9
; ---------------------------------------------------------------------------

advise_against_that:
		printMessage(s_adviseAgainst)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_18A9:
		ld	b, p_find
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	nz, do_find_locker
		ld	b, p_wear
		ld	c, p_suit
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3D49
		ld	b, p_wear
		ld	c, p_psuit
		call	compareTwoWordInput
		cp	0
		jp	nz, do_wear_psuit
		ld	b, p_wear
		ld	c, p_radsuit
		call	compareTwoWordInput
		cp	0
		jp	nz, do_wear_rad_suit
		ld	b, p_remove
		ld	c, p_suit
		call	compareTwoWordInput
		cp	0
		jp	nz, removeSuitCode
		ld	b, p_remove
		ld	c, p_psuit
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3DCC
		ld	b, p_remove
		ld	c, p_radsuit
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3DD1
		ld	b, p_save
		ld	c, p_game
		call	compareTwoWordInput
		cp	0
		jp	nz, do_save
		ld	a, (firstToken)
		cp	p_dolat
		jp	z, loc_FE4
		ld	a, (secondToken)
		cp	p_dolat
		jp	z, loc_FE4
		ld	b, p_open
		ld	c, p_door
		call	compareTwoWordInput
		cp	0
		jp	z, loc_196A
		ld	a, (g_currentPlanetNumber)
		cp	1
		jp	z, loc_1937

loc_192D:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1937:
		ld	a, (g_currentRoomNumber)
		cp	20h ; ' '
		jp	nz, loc_192D
		ld	a, (stru_4A75.location)
		cp	7
		jp	z, loc_1951

loc_1947:
		printMessage(s_noKey)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1951:
		printMessage(s_okay)
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 26h ; '&'
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 26h ; '&'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_196A:
		ld	b, p_open
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1A00
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_192D
		ld	a, (g_currentRoomNumber)
		cp	6
		jp	nz, loc_192D
		ld	a, (keyData.location)
		cp	7
		jp	nz, loc_1947
		ld	a, (byte_49A6)
		cp	1
		jp	z, loc_19D7
		cp	2
		jp	z, loc_19A5
		printMessage(s_lockerClosedLocked)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_19A5:
		ld	a, (byte_49A8)
		cp	1
		jp	nz, loc_192D
		printMessage(s_locker548)
		printMessage(s_caseMessage1)
		ld	a, 2Fh ; '/'
		ld	(keyData.field_4), a
		ld	a, 3
		ld	(byte_4A99), a
		ld	a, 6
		ld	(byte_4A9A), a
		ld	a, 0
		ld	(byte_49A8), a
		ld	a, 1
		ld	(byte_49C3), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_19D7:
		ld	a, (byte_49A9)
		cp	1
		jp	z, loc_1AC0
		printMessage(s_lockerOpen)
		ld	a, (byte_49A7)
		cp	1
		jp	nz, loc_19F8
		ld	a, 0Eh
		ld	(stru_4A03.field_4), a
		ld	a, 3
		ld	(item_pSuit.location), a

loc_19F8:
		ld	a, 1
		ld	(byte_49A9), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1A00:
		ld	b, p_close
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1A48
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_192D
		ld	a, (g_currentRoomNumber)
		cp	6
		jp	nz, loc_192D
		ld	a, (byte_49A9)
		cp	0
		jp	z, loc_1AC0
		printMessage(s_lockerLocked)
		ld	a, (item_pSuit.location)
		cp	3
		jp	nz, loc_1A40
		ld	a, (item_pSuit.roomNumber)
		cp	6
		jp	nz, loc_1A40
		ld	a, 8
		ld	(item_pSuit.location), a

loc_1A40:
		ld	a, 0
		ld	(byte_49A9), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1A48:
		ld	b, p_deposit
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_1A60
		ld	b, p_deposit
		ld	c, p_key
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1A8F

loc_1A60:
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_192D
		ld	a, (g_currentRoomNumber)
		cp	6
		jp	nz, loc_192D
		ld	a, (keyData.location)
		cp	7
		jp	nz, loc_192D
		ld	a, location_none
		ld	(keyData.location), a
		printMessage(s_machineSwallowKey)
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1A8F:
		ld	a, (firstToken)
		cp	p_sleep
		jp	z, do_sleep
		ld	a, (secondToken)
		cp	p_sleep
		jp	z, do_sleep
		ld	b, p_eat
		ld	c, p_deposit
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1AB0
		ld	a, 0E9h	; 'È'
		jp	do_eat
; ---------------------------------------------------------------------------

loc_1AB0:
		ld	a, (firstToken)
		cp	p_eat
		jp	z, loc_1AC0
		ld	a, (secondToken)
		cp	p_eat
		jp	nz, loc_1ACA

loc_1AC0:
		printMessage(s_ridiculous)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1ACA:
		ld	b, p_drink
		ld	c, p_drink
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1ADB
		ld	a, 0E8h	; 'Ë'
		jp	do_drink
; ---------------------------------------------------------------------------

loc_1ADB:
		ld	b, p_case
		ld	c, p_oar
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3EED
		ld	b, p_close
		ld	c, p_oar
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3EED
		ld	b, p_case
		ld	c, p_rope
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3F38
		ld	b, p_launch
		ld	c, p_boat
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3F6F
		ld	b, p_tie
		ld	c, p_boat
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_3FB1
		ld	b, p_untie
		ld	c, p_boat
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_4002
		ld	b, p_cast
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_4002
		ld	b, p_analyze
		ld	c, p_lucinda
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_409C
		ld	a, (firstToken)

loc_1B3E:
		cp	p_deliver
		jp	z, loc_1B4E
		ld	a, (secondToken)
		cp	p_deliver
		jp	z, loc_1B54
		jp	loc_1BE0
; ---------------------------------------------------------------------------

loc_1B4E:
		ld	a, (secondToken)
		jp	loc_1B57
; ---------------------------------------------------------------------------

loc_1B54:
		ld	a, (firstToken)

loc_1B57:
		push	af
		ld	a, (g_currentRoomNumber)
		cp	5
		jp	nz, loc_17B9
		pop	af
		cp	p_crystal
		jp	nz, loc_1B68
		ld	a, 81h ; 'Å'

loc_1B68:
		cp	p_claw
		jp	c, loc_117F
		cp	p_radsuit
		jp	nc, loc_117F
		sub	65h ; 'e'
		ld	d, 0
		ld	e, a
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		add	hl, hl
		ex	de, hl
		ld	hl, g_itemList
		add	hl, de
		ld	a, (hl)
		cp	7
		jp	nz, loc_39C5
		ld	(hl), 8
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, (byte_49C8)
		add	a, 1
		ld	(byte_49C8), a
		cp	3
		jp	nz, loc_368A
		ld	d, 0D3h	; '”'
		ld	e, 0BCh	; 'º'
		call	printFromMSGFile
		ld	a, 0Eh
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 5
		ld	(stru_4A75.location), a
		ld	a, 1
		ld	(byte_49A4), a
		ld	(earthLandData.canLandFlag), a
		ld	a, 0
		ld	(IsthurLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, 2
		ld	(byte_49BF), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1BE0:
		ld	b, p_unfold
		ld	c, p_paper
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1C04
		ld	hl, stru_4A0F
		ld	a, (hl)
		cp	7
		jp	nz, loc_1778
		dec	hl
		ld	a, (hl)
		cp	8
		jp	nz, beyond_your_power
		ld	(hl), 9
		dec	hl
		ld	(hl), 10h
		jp	loc_368A
; ---------------------------------------------------------------------------

loc_1C04:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR printFromMSGFile

loc_1C0E:
		ld	a, 1
		call	closeFile

loc_1C13:
		ld	a, 1
		call	exit
; END OF FUNCTION CHUNK	FOR printFromMSGFile

; =============== S U B	R O U T	I N E =======================================


lookFunction:

; FUNCTION CHUNK AT 1C96 SIZE 00000017 BYTES

		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		ld	(currentRoomFlags), a
		inc	hl
		rla
		call	c, printMsgAtHL
		push	af
		ld	a, (byte_495A)
		dec	a
		ld	(byte_495A), a
		cp	0
		jp	nz, loc_1C50
		push	hl
		push	de
		ld	b, 1
		ld	c, 0Ah
		call	pseudoRNG
		pop	de
		pop	hl
		ld	(byte_495A), a
		ld	a, (currentRoomFlags)
		or	80h
		and	0BFh
		ld	(currentRoomFlags), a
		jp	loc_1C5A
; ---------------------------------------------------------------------------

loc_1C50:
		ld	a, (currentRoomFlags)
		and	7Fh ; ''
		or	40h ; '@'
		ld	(currentRoomFlags), a

loc_1C5A:
		pop	af
		inc	hl
		inc	hl
		rla
		call	c, printMsgAtHL
		inc	hl
		inc	hl
		rla
		call	c, printMsgAtHL
		push	af
		ld	a, (currentRoomFlags)
		and	0DFh ; 'ﬂ'
		ld	(currentRoomFlags), a
		pop	af
		inc	hl
		inc	hl
		rla
		call	c, printMsgAtHL
		rla
		call	c, sub_209F
		rla
		call	c, printComputerTerminal
		call	sub_1CAD
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (currentRoomFlags)
		ld	(hl), a
		jp	addRoomScore
; End of function lookFunction


; =============== S U B	R O U T	I N E =======================================


printMsgAtHL:
					; lookFunction+46p ...
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		dec	hl
		nop
		call	printFromMSGFile
		ret
; End of function printMsgAtHL

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR lookFunction

addRoomScore:
		ld	hl, (bgnRoomAddressMaybe)
		ld	a, (hl)
		cp	0
		jp	z, locret_1CAC
		push	hl
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		pop	hl
		ld	(hl), 0

locret_1CAC:
		ret
; END OF FUNCTION CHUNK	FOR lookFunction

; =============== S U B	R O U T	I N E =======================================


sub_1CAD:

; FUNCTION CHUNK AT 1D35 SIZE 00000006 BYTES

		ld	hl, byte_4A4B
		ld	de, 6
		ld	b, 6
		ld	c, 2

loc_1CB7:
		ld	a, (hl)
		cp	b
		call	z, sub_1D02
		dec	c
		jp	z, loc_1CC4
		add	hl, de
		jp	loc_1CB7
; ---------------------------------------------------------------------------

loc_1CC4:
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	nc, loc_1CD4
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_1CDA
; ---------------------------------------------------------------------------

loc_1CD4:
		ld	a, (g_currentPlanetNumber)
		ld	(tmpPlanet), a

loc_1CDA:
		ld	hl, g_itemList
		ld	de, 6
		ld	a, (tmpPlanet)
		ld	b, a
		ld	c, 23h ; '#'

loc_1CE6:
		ld	a, (hl)
		cp	b
		jp	nz, loc_1CFC
		cp	0
		jp	z, loc_1D35
		push	bc
		inc	hl
		ld	b, (hl)
		dec	hl
		ld	a, (g_currentRoomNumber)
		cp	b
		call	z, sub_1D02
		pop	bc

loc_1CFC:
		dec	c
		ret	z
		add	hl, de
		jp	loc_1CE6
; End of function sub_1CAD


; =============== S U B	R O U T	I N E =======================================


sub_1D02:
		push	af
		push	hl
		push	de
		push	bc
		dec	hl
		dec	hl
		dec	hl
		dec	hl
		ld	a, (hl)
		cp	0
		jp	z, loc_1D1D
		push	hl
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		pop	hl
		ld	(hl), 0

loc_1D1D:
		inc	hl
		inc	hl
		ld	a, (hl)
		sub	1
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, floorItemMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		pop	bc
		pop	de
		pop	hl
		pop	af
		ret
; End of function sub_1D02

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_1CAD

loc_1D35:
		call	sub_1D02
		jp	loc_1CFC
; END OF FUNCTION CHUNK	FOR sub_1CAD

; =============== S U B	R O U T	I N E =======================================

; This function	returns	the number of words in the input string	in b

getStringMaybe:
					; parseInput+7p ...
		ld	hl, inputBuffer

loc_1D3E:
		ld	a, (hl)
		inc	hl
		cp	0Dh
		jp	z, loc_1D8D
		cp	20h ; ' '
		jp	z, loc_1D3E
		ld	hl, inputBuffer

loc_1D4D:
		ld	a, (hl)
		inc	hl
		cp	20h ; ' '
		jp	z, loc_1D4D
		dec	hl
		push	hl
		ex	de, hl
		pop	hl

loc_1D58:
		inc	hl
		ld	a, (hl)
		cp	0Dh
		jp	nz, loc_1D58

loc_1D5F:
		dec	hl
		ld	a, (hl)
		cp	20h ; ' '
		jp	z, loc_1D5F
		inc	hl
		ld	(hl), 0Dh
		push	de

loc_1D6A:
		inc	de
		ld	a, (de)
		cp	0Dh
		jp	z, loc_1D90
		cp	20h ; ' '
		jp	nz, loc_1D6A

loc_1D76:
		inc	de
		ld	a, (de)
		cp	20h ; ' '
		jp	z, loc_1D76

loc_1D7D:
		inc	de
		ld	a, (de)
		cp	0Dh
		jp	z, loc_1DB7
		cp	20h ; ' '
		jp	nz, loc_1D7D
		ld	b, 3
		pop	de
		ret
; ---------------------------------------------------------------------------

loc_1D8D:
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_1D90:
		pop	de
		ld	b, 5
		ld	hl, 47F4h

loc_1D96:
		ld	a, (de)
		inc	de
		cp	0Dh
		jp	z, loc_1DAA
		ld	(hl), a
		inc	hl
		dec	b
		ld	a, b
		cp	0
		jp	z, loc_1DB4
		jp	loc_1D96
; ---------------------------------------------------------------------------
		db    5
; ---------------------------------------------------------------------------

loc_1DAA:
					; getStringMaybe+76j
		ld	(hl), 20h ; ' '
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, loc_1DAA

loc_1DB4:
		ld	b, 1
		ret
; ---------------------------------------------------------------------------

loc_1DB7:
		pop	de
		ld	b, 5
		ld	hl, 47F4h

loc_1DBD:
		ld	a, (de)
		inc	de
		cp	20h ; ' '
		jp	z, loc_1DD0
		ld	(hl), a
		inc	hl
		dec	b
		ld	a, b
		cp	0
		jp	z, loc_1DDD
		jp	loc_1DBD
; ---------------------------------------------------------------------------

loc_1DD0:
					; getStringMaybe+9Cj
		ld	(hl), 20h ; ' '
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, loc_1DD0
		jp	loc_1DE4
; ---------------------------------------------------------------------------

loc_1DDD:
					; getStringMaybe+A6j
		ld	a, (de)
		inc	de
		cp	20h ; ' '
		jp	nz, loc_1DDD

loc_1DE4:
					; getStringMaybe+ADj
		ld	a, (de)
		inc	de
		cp	20h ; ' '
		jp	z, loc_1DE4
		ld	b, 5
		ld	hl, 47FAh
		dec	de

loc_1DF1:
		ld	a, (de)
		inc	de
		cp	0Dh
		jp	z, loc_1E04
		ld	(hl), a
		inc	hl
		dec	b
		ld	a, b
		cp	0
		jp	z, loc_1E0E
		jp	loc_1DF1
; ---------------------------------------------------------------------------

loc_1E04:
					; getStringMaybe+D0j
		ld	(hl), 20h ; ' '
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, loc_1E04

loc_1E0E:
		ld	b, 2
		ret
; End of function getStringMaybe


; =============== S U B	R O U T	I N E =======================================


sub_1E11:
					; parseInput+44p ...
		ld	hl, 11Ch
		ld	(word_1E8D), hl
		ld	hl, 0
		ld	(word_1E89), hl

loc_1E1D:
		ld	hl, (word_1E8D)
		ex	de, hl
		ld	hl, (word_1E89)
		add	hl, de
		ld	a, h
		rra
		ld	h, a
		ld	a, l
		rra
		ld	l, a
		ld	(word_1E8B), hl
		ld	de, 0FFFFh
		add	hl, de
		ex	de, hl
		ld	hl, 0
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, vocabulary
		add	hl, de
		ex	de, hl
		ld	hl, abbrevCmdBuffer
		call	sub_1E8F
		ld	a, b
		cp	0
		jp	nz, loc_1E52
		ld	a, (de)
		ld	(playerCommand), a
		ret
; ---------------------------------------------------------------------------

loc_1E52:
		ld	hl, (word_1E8D)
		ex	de, hl
		ld	hl, (word_1E89)
		ld	a, e
		sub	l
		ld	e, a
		ld	a, d
		sbc	a, h
		cp	0
		jp	nz, loc_1E6F
		ld	a, e
		cp	2
		jp	nc, loc_1E6F
		ld	a, 0FFh
		ld	(playerCommand), a
		ret
; ---------------------------------------------------------------------------

loc_1E6F:
		ld	a, b
		cp	1
		jp	z, loc_1E7E
		ld	hl, (word_1E8B)
		ld	(word_1E8D), hl
		jp	loc_1E1D
; ---------------------------------------------------------------------------

loc_1E7E:
		ld	hl, (word_1E8B)
		ld	(word_1E89), hl
		jp	loc_1E1D
; End of function sub_1E11

; ---------------------------------------------------------------------------
		db    0
		db    0
word_1E89:	dw 0			; DATA XREF: sub_1E11+9w sub_1E11+10r	...
word_1E8B:	dw 0			; DATA XREF: sub_1E11+1Aw sub_1E11+64r ...
word_1E8D:	dw 0			; DATA XREF: sub_1E11+3w
					; sub_1E11:loc_1E1Dr ...

; =============== S U B	R O U T	I N E =======================================


sub_1E8F:
		ld	c, 5

loc_1E91:
		ld	a, (de)
		sub	6
		cp	(hl)
		jp	nz, loc_1EA1
		inc	de
		inc	hl
		dec	c
		jp	nz, loc_1E91
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_1EA1:
		jp	c, loc_1EA7
		ld	b, 2
		ret
; ---------------------------------------------------------------------------

loc_1EA7:
		ld	b, 1
		ret
; End of function sub_1E8F


; =============== S U B	R O U T	I N E =======================================


getBGNRoomAddress:
		call	sub_2F27

		; This section calculates (g_currentRoomNumber * 26) which happens
		; to be the size of the various room structures.
		;
		ld	a, (g_currentRoomNumber)
		ld	l, a
		ld	h, 0
		ld	d, h
		ld	e, l
		add	hl, de
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, de
		add	hl, hl
		ex	de, hl				; de contains the offset of the
							; current room.

		ld	a, (g_currentPlanetNumber)		; a = base planet data offset
		cp	location_earth
		jp	nz, l_getBGNRoomAddress_isthur
		ld	hl, earthRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

l_getBGNRoomAddress_isthur:
		cp	location_isthur
		jp	nz, l_getBGNRoomAddress_gcs
		ld	hl, isthurRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

l_getBGNRoomAddress_gcs:
		cp	location_gcs
		jp	nz, l_getBGNRoomAddress_navier
		ld	hl, gcsRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

l_getBGNRoomAddress_navier:
		cp	location_navier
		jp	nz, loc_1EEB
		ld	hl, navierRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

loc_1EEB:
		ld	hl, g_solomawRoomData

loc_1EEE:
					; getBGNRoomAddress+28j ...
		add	hl, de
		ld	(bgnRoomAddressMaybe), hl
		pop	af
		pop	bc
		pop	de
		pop	hl
		ret
; End of function getBGNRoomAddress


; =============== S U B	R O U T	I N E =======================================


askIfInstructions:
		call	loc_2119
		call	getStringMaybe
		ld	a, b
		cp	1
		jp	z, loc_1F0D

loc_1F03:
		printMessage(s_pleaseAnswer)
		jp	askIfInstructions
; ---------------------------------------------------------------------------

loc_1F0D:
		ld	de, 47F4h
		ld	hl, 4800h
		ld	bc, 5
		call	abbreviateWord
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FDh ; '˝'
		jp	z, loc_1F2C
		cp	0FEh ; '˛'
		jp	z, loc_1F2F
		jp	loc_1F03
; ---------------------------------------------------------------------------

loc_1F2C:
		ld	a, 1
		ret
; ---------------------------------------------------------------------------

loc_1F2F:
		ld	a, 0
		ret
; End of function askIfInstructions


; =============== S U B	R O U T	I N E =======================================


convertScoreToString:
		ld	hl, (scoreProbably)
		ld	a, l
		ld	c, 0FFh

loc_1F38:
					; convertScoreToString+15j
		inc	c
		sub	100
		jp	nc, loc_1F38
		ld	l, a
		ld	a, h
		cp	0
		jp	z, loc_1F4A
		dec	h
		ld	a, l
		jp	loc_1F38
; ---------------------------------------------------------------------------

loc_1F4A:
		ld	a, c
		add	a, '0'
		cp	'0'
		jp	z, loc_1F55
		call	putc

loc_1F55:
		ld	a, l
		add	a, 100
		ld	c, 0FFh

loc_1F5A:
		inc	c
		sub	0Ah
		jp	nc, loc_1F5A
		add	a, 0Ah
		ld	l, a
		ld	a, c
		add	a, '0'
		call	putc
		ld	a, l
		add	a, '0'
		call	putc
		ret
; End of function convertScoreToString


; =============== S U B	R O U T	I N E =======================================


subtractFromScore:
		ld	hl, (scoreProbably)
		ld	a, l
		sub	b
		ld	l, a
		jp	c, loc_1F7D
		ld	(scoreProbably), hl
		ret
; ---------------------------------------------------------------------------

loc_1F7D:
		ld	a, h
		cp	0
		jp	z, loc_1F88
		dec	h
		ld	(scoreProbably), hl
		ret
; ---------------------------------------------------------------------------

loc_1F88:
		ld	l, 0
		ld	(scoreProbably), hl
		ret
; End of function subtractFromScore


; =============== S U B	R O U T	I N E =======================================


parseInput:
		push	af
		push	bc
		push	de
		push	hl
		call	loc_2119
		call	getStringMaybe
		ld	a, b
		cp	0
		jp	nz, loc_1FAD
		printMessage(s_talkLouder)
		ld	a, 0
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_1FAD:
		cp	3
		jp	c, loc_1FC1
		printMessage(s_tooManyWords)
		ld	a, 0
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_1FC1:
		cp	2
		jp	z, loc_2028
		ld	de, firstCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreviateWord
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FFh
		jp	nz, loc_2020

loc_1FDD:
					; parseInput+C8j
		ld	b, 1
		ld	c, 4
		call	pseudoRNG
		cp	1
		jp	nz, loc_1FF3
		printMessage(s_dontKnowWord)
		jp	loc_2018
; ---------------------------------------------------------------------------

loc_1FF3:
		cp	2
		jp	nz, loc_2002
		printMessage(s_dontUnderstand)
		jp	loc_2018
; ---------------------------------------------------------------------------

loc_2002:
		cp	3
		jp	nz, loc_2011
		printMessage(s_what)
		jp	loc_2018
; ---------------------------------------------------------------------------

loc_2011:
		printMessage(s_usingUnknownWords)

loc_2018:
					; parseInput+71j ...
		ld	a, 0
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_2020:
		ld	a, 1
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_2028:
		ld	de, firstCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreviateWord
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FFh
		jp	z, loc_1FDD
		ld	(firstToken), a
		ld	de, secondCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreviateWord
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FFh
		jp	z, loc_1FDD
		ld	(secondToken), a
		ld	a, 2
		ld	(numInputWords), a

loc_2061:
					; parseInput+30j ...
		pop	hl
		pop	de
		pop	bc
		pop	af
		ret
; End of function parseInput


; =============== S U B	R O U T	I N E =======================================


incrementClock:
		ld	hl,  currentTimeMaybe+2
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		cp	36h ; '6'
		ret	nz
		ld	(hl), 30h ; '0'
		dec	hl
		ld	a, (hl)
		cp	39h ; '9'
		jp	z, loc_207F
		add	a, 1
		ld	(hl), a
		jp	loc_2087
; ---------------------------------------------------------------------------

loc_207F:
		ld	(hl), 30h ; '0'
		dec	hl
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ret
; ---------------------------------------------------------------------------

loc_2087:
		cp	34h ; '4'
		jp	z, loc_208D
		ret
; ---------------------------------------------------------------------------

loc_208D:
		dec	hl
		ld	a, (hl)
		cp	32h ; '2'
		ret	nz
		ld	(hl), 30h ; '0'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	hl, turnCounterMaybe
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ret
; End of function incrementClock


; =============== S U B	R O U T	I N E =======================================


sub_209F:
		push	hl
		push	af
		ld	hl, s_clockString

loc_20A4:
		call	outputString
		pop	af
		pop	hl
		ret
; End of function sub_209F


; =============== S U B	R O U T	I N E =======================================


printComputerTerminal:
		printMessage(s_terminalHere)
		ret
; End of function printComputerTerminal


; =============== S U B	R O U T	I N E =======================================


compareTwoWordInput:
		ld	a, (firstToken)
		cp	b
		jp	z, loc_20C0
		cp	c
		jp	z, loc_20C7

loc_20BD:
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_20C0:
		ld	a, (secondToken)
		cp	c
		jp	z, loc_20D1

loc_20C7:
		ld	a, (secondToken)
		cp	b
		jp	z, loc_20D1
		jp	loc_20BD
; ---------------------------------------------------------------------------

loc_20D1:
					; compareTwoWordInput+19j
		ld	a, 1
		ret
; End of function compareTwoWordInput


; =============== S U B	R O U T	I N E =======================================


isItemInRoom:
					; ROM:loc_3739p ...
		ld	a, (tmpObject)
		sub	p_low_item
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		add	hl, hl
		ex	de, hl
		ld	hl, g_itemList
		add	hl, de
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	z, loc_20F2

loc_20EF:
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_20F2:
		cp	0
		jp	z, loc_2103
		inc	hl
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	z, loc_2102
		jp	loc_20EF
; ---------------------------------------------------------------------------

loc_2102:
		dec	hl

loc_2103:
		ld	b, 1
		ret
; End of function isItemInRoom


; =============== S U B	R O U T	I N E =======================================


isCarryingTooMuch:
		ld	a, (carriedItemCount)
		cp	9
		jp	c, loc_2111
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_2111:
		add	a, 1
		ld	(carriedItemCount), a
		ld	b, 1
		ret
; End of function isCarryingTooMuch

; ---------------------------------------------------------------------------

loc_2119:
					; parseInput+4p ...
		call	sub_2F2C
		dec	c
		add	hl, bc
		jr	nz, loc_2140
		jr	nz, loc_2160+1
		jr	nz, loc_20A4
		ld	hl, inputBuffer
		ld	b, 0

loc_2129:
		call	getc
		cp	8
		jp	z, loc_214B
		cp	7Fh ; ''
		jp	z, loc_216D
		cp	61h ; 'a'
		jp	c, loc_2142
		cp	7Bh ; '{'
		jp	nc, loc_2142

loc_2140:
		sub	20h ; ' '

loc_2142:
		ld	(hl), a
		inc	hl
		inc	b
		cp	0Dh
		jp	nz, loc_2129
		ret
; ---------------------------------------------------------------------------

loc_214B:
		ld	a, b
		cp	0
		jp	nz, loc_215E
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_2129
; ---------------------------------------------------------------------------

loc_215E:
		dec	b
		dec	hl

loc_2160:
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_2129
; ---------------------------------------------------------------------------

loc_216D:
		ld	a, b
		cp	0
		jp	nz, loc_2180
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_2129
; ---------------------------------------------------------------------------

loc_2180:
		dec	b
		dec	hl
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_2129

; =============== S U B	R O U T	I N E =======================================

; b = 1, c = 3

pseudoRNG:
					; lookFunction+23p ...
		ld	a, c		; a = 3
		sub	b		; a = 2
		add	a, 1		; a = 3
		ld	c, a		; c = 3
		push	bc		; b = 1, c = 3
		call	sub_21B8
		pop	bc		; b=1, c=3
		rla
		ld	l, a
		rla
		rla
		rla
		and	0F0h ; ''
		ld	d, a
		push	bc
		push	hl
		call	sub_21B8
		pop	hl
		pop	bc
		rla
		rla
		ld	h, a
		rra
		rra
		and	0Fh
		add	a, d
		add	a, (hl)

loc_21B1:
		sub	c
		jp	nc, loc_21B1
		add	a, c
		add	a, b
		ret
; End of function pseudoRNG


; =============== S U B	R O U T	I N E =======================================


sub_21B8:
					; pseudoRNG+14p
		ld	hl, unk_21DE
		ld	b, 8
		ld	a, (hl)

loc_21BE:
		rlca
		rlca
		rlca
		xor	(hl)
		rla
		rla
		dec	l
		dec	l
		dec	l
		ld	a, (hl)
		rla
		ld	(hl), a
		inc	l
		ld	a, (hl)
		rla
		ld	(hl), a
		inc	l
		ld	a, (hl)
		rla
		ld	(hl), a
		inc	l
		ld	a, (hl)
		rla
		ld	(hl), a
		dec	b
		jp	nz, loc_21BE
		ret
; End of function sub_21B8

; ---------------------------------------------------------------------------
		db  0Dh
		db  49h	; I
		db  7Ah	; z
unk_21DE:	db  2Dh	; -		; DATA XREF: sub_21B8o
g_badMoveMessageList:	db wordToBytes(s_dontKnowHowToApply)	; 65h
			db wordToBytes(s_cantGoDirection)	; 66h
			db wordToBytes(s_unableToDoNow)		; 67h
			db wordToBytes(s_sheriffLocked)		; 68h
			db wordToBytes(s_deepFissure)		; 69h
			db wordToBytes(s_cantSwim)		; 6Ah
			db wordToBytes(s_doorIsLocked)		; 6Bh
			db wordToBytes(s_riddleFailedNoPass)	; 6Ch
			db wordToBytes(s_cantPassUntilAnswer)	; 6Dh
			db wordToBytes(s_whichWay)		; 6Eh
			db wordToBytes(s_dontKnowHowToApply)	; 6Fh
			db wordToBytes(s_multipleExits)		; 70h
			db wordToBytes(s_supplyClosedLocked)	; 71h
			db wordToBytes(s_gymClosedForRepairs)	; 72h
			db wordToBytes(s_maintenanceLocked)	; 73h
g_badEnterMessageList:	db wordToBytes(s_arrestedBnENoLift)
			db wordToBytes(s_severnBrokeArm)
			db wordToBytes(s_shotByPirate)
			db wordToBytes(s_trochKO)
			db wordToBytes(s_thatDoorIsLocked)
			db wordToBytes(s_pleaseLogOn)
vocabulary:	db _dash, _1, _2, _comma, _dash; field_0 ; DATA	XREF: sub_1E11+2Bo
		db p_negative12		; field_5
		db _0, _comma, _0, _comma, _0; field_0
		db p_zerozerozero	; field_5
		db _1, __, __, __, __	; field_0
		db p_1			; field_5
		db _1, _0, _6, _5, _2	; field_0
		db p_10652		; field_5
		db _1, _0, _8, _5, __	; field_0
		db p_1085		; field_5
		db _1, _3, _comma, _dash, _1; field_0
		db p_13			; field_5
		db _1, _6, _0, __, __	; field_0
		db p_160		; field_5
		db _1, _9, _8, __, __	; field_0
		db p_198		; field_5
		db _2, __, __, __, __	; field_0
		db p_2			; field_5
		db _3, __, __, __, __	; field_0
		db p_3			; field_5
		db _4, _6, _2, __, __	; field_0
		db p_462		; field_5
		db _5, _comma, _1, _0, _comma; field_0
		db p_5comma10		; field_5
		db _5, _6, _comma, _1, _1; field_0
		db p_56comma11		; field_5
		db _9, _5, _6, _7, __	; field_0
		db p_9567		; field_5
		db _A, __, __, __, __	; field_0
		db p_a			; field_5
		db _A, _C, _C, _E, _L	; field_0
		db p_accel		; field_5
		db _A, _C, _O, _N, __	; field_0
		db p_acon		; field_5
		db _A, _I, _R, _L, _O	; field_0
		db p_airlock		; field_5
		db _A, _L, _E, _X, __	; field_0
		db p_alex		; field_5
		db _A, _N, _A, _L, _O	; field_0
		db p_analog		; field_5
		db _A, _N, _A, _L, _Y	; field_0
		db p_analyze		; field_5
		db _A, _T, _T, _A, _C	; field_0
		db p_case		; field_5
		db _B, __, __, __, __	; field_0
		db p_b			; field_5
		db _B, _A, _G, __, __	; field_0
		db p_bag		; field_5
		db _B, _A, _N, _G, __	; field_0
		db p_hit		; field_5
		db _B, _A, _R, __, __	; field_0
		db p_bar		; field_5
		db _B, _A, _R, _R, _A	; field_0
		db 20h			; field_5
		db _B, _A, _R, _T, _E	; field_0
		db p_bartender		; field_5
		db _B, _A, _Y, __, __	; field_0
		db 17h			; field_5
		db _B, _L, _A, _S, _T	; field_0
		db p_blast		; field_5
		db _B, _O, _A, _R, _D	; field_0
		db p_enter		; field_5
		db _B, _O, _A, _T, __	; field_0
		db p_boat		; field_5
		db _B, _O, _B, __, __	; field_0
		db p_bob		; field_5
		db _B, _O, _O, _K, __	; field_0
		db p_book		; field_5
		db _B, _O, _O, _K, _S	; field_0
		db p_book		; field_5
		db _B, _O, _T, _T, _L	; field_0
		db p_bottle		; field_5
		db _B, _R, _A, _N, _D	; field_0
		db 0A3h			; field_5
		db _B, _U, _L, _L, _E	; field_0
		db p_bulletin		; field_5
		db _B, _U, _Y, __, __	; field_0
		db p_buy		; field_5
		db _C, _A, _R, _D, __	; field_0
		db p_card		; field_5
		db _C, _A, _S, _E, __	; field_0
		db p_case		; field_5
		db _C, _A, _S, _T, __	; field_0
		db p_cast		; field_5
		db _C, _A, _T, _C, _H	; field_0
		db p_lift		; field_5
		db _C, _C, _W, __, __	; field_0
		db p_ccw		; field_5
		db _C, _E, _N, _T, _R	; field_0
		db p_central		; field_5
		db _C, _L, _A, _W, __	; field_0
		db p_claw		; field_5
		db _C, _L, _O, _S, _E	; field_0
		db p_close		; field_5
		db _C, _O, _I, _L, __	; field_0
		db p_coil		; field_5
		db _C, _O, _M, _M, _U	; field_0
		db p_commu		; field_5
		db _C, _O, _M, _P, _U	; field_0
		db p_computer		; field_5
		db _C, _O, _N, _N, _E	; field_0
		db p_connect		; field_5
		db _C, _O, _O, _R, _D	; field_0
		db p_coordinate		; field_5
		db _C, _O, _R, _R, _I	; field_0
		db p_corridor		; field_5
		db _C, _O, _U, _N, _T	; field_0
		db p_count		; field_5
		db _C, _O, _U, _R, _S	; field_0
		db p_course		; field_5
		db _C, _R, _A, _W, _L	; field_0
		db p_walk		; field_5
		db _C, _R, _Y, _S, _T	; field_0
		db p_crystal		; field_5
		db _C, _U, _S, _T, _O	; field_0
		db p_custo		; field_5
		db _C, _W, __, __, __	; field_0
		db p_cw			; field_5
		db _D, __, __, __, __	; field_0
		db p_down		; field_5
		db _D, _A, _V, _I, _E	; field_0
		db p_jack_davies	; field_5
		db _D, _E, _E, _P, __	; field_0
		db p_deep		; field_5
		db _D, _E, _G, _A, _U	; field_0
		db p_coil		; field_5
		db _D, _E, _L, _I, _V	; field_0
		db p_deliver		; field_5
		db _D, _E, _P, _O, _S	; field_0
		db p_deposit		; field_5
		db _D, _I, _A, _M, _O	; field_0
		db p_diamond		; field_5
		db _D, _I, _G, __, __	; field_0
		db p_dig		; field_5
		db _D, _I, _S, _E, _M	; field_0
		db p_exit		; field_5
		db _D, _I, _S, _K, __	; field_0
		db p_disk		; field_5
		db _D, _I, _S, _K, _S	; field_0
		db p_disk		; field_5
		db _D, _O, _C, _T, _O	; field_0
		db p_jack_davies	; field_5
		db _D, _O, _L, _A, _T	; field_0
		db p_dolat		; field_5
		db _D, _O, _N, __, __	; field_0
		db p_wear		; field_5
		db _D, _O, _O, _R, __	; field_0
		db p_door		; field_5
		db _D, _O, _O, _R, _S	; field_0
		db p_door		; field_5
		db _D, _O, _W, _N, __	; field_0
		db p_down		; field_5
		db _D, _R, __, __, __	; field_0
		db p_jack_davies	; field_5
		db _D, _R, _I, _N, _K	; field_0
		db p_drink		; field_5
		db _D, _R, _O, _P, __	; field_0
		db p_drop		; field_5
		db _D, _U, _F, _F, _L	; field_0
		db p_bag		; field_5
		db _D, _U, _M, _P, __	; field_0
		db p_drop		; field_5
		db _E, __, __, __, __	; field_0
		db p_e			; field_5
		db _E, _A, _R, _T, _H	; field_0
		db 56h			; field_5
		db _E, _A, _S, _T, __	; field_0
		db p_e			; field_5
		db _E, _A, _T, __, __	; field_0
		db p_eat		; field_5
		db _E, _M, _B, _A, _R	; field_0
		db p_enter		; field_5
		db _E, _M, _P, _L, _O	; field_0
		db 50h			; field_5
		db _E, _N, _D, __, __	; field_0
		db p_quit		; field_5
		db _E, _N, _G, _I, _N	; field_0
		db 1Eh			; field_5
		db _E, _N, _T, _E, _R	; field_0
		db p_enter		; field_5
		db _E, _N, _V, _E, _L	; field_0
		db p_envelope		; field_5
		db _E, _X, _A, _M, _I	; field_0
		db p_examine		; field_5
		db _E, _X, _I, _T, __	; field_0
		db p_exit		; field_5
		db _F, _A, _I, _R, _I	; field_0
		db p_welma		; field_5
		db _F, _I, _N, _D, __	; field_0
		db p_find		; field_5
		db _F, _O, _O, _D, __	; field_0
		db p_deposit		; field_5
		db _F, _O, _R, _C, _E	; field_0
		db p_walk		; field_5
		db _F, _O, _Y, _E, _R	; field_0
		db 15h			; field_5
		db _F, _R, _E, _E, __	; field_0
		db p_drop		; field_5
		db _F, _U, _L, _L, __	; field_0
		db p_full		; field_5
		db _G, _A, _M, _E, __	; field_0
		db p_game		; field_5
		db _G, _E, _I, _G, _E	; field_0
		db p_count		; field_5
		db _G, _E, _N, _E, _R	; field_0
		db 51h			; field_5
		db _G, _E, _T, __, __	; field_0
		db p_lift		; field_5
		db _G, _I, _R, _L, __	; field_0
		db 87h			; field_5
		db _G, _O, __, __, __	; field_0
		db p_walk		; field_5
		db _G, _O, _O, _D, _E	; field_0
		db p_ray_goode		; field_5
		db _G, _O, _S, _S, _I	; field_0
		db 52h			; field_5
		db _G, _R, _A, _B, __	; field_0
		db p_lift		; field_5
		db _G, _R, _A, _N, _D	; field_0
		db p_central		; field_5
		db _G, _Y, _M, __, __	; field_0
		db 21h			; field_5
		db _G, _Y, _M, _N, _A	; field_0
		db 21h			; field_5
		db _H, __, __, __, __	; field_0
		db p_ray_goode		; field_5
		db _H, _E, _A, _D, _Q	; field_0
		db 24h			; field_5
		db _H, _E, _L, _P, __	; field_0
		db p_help		; field_5
		db _H, _I, _R, _E, __	; field_0
		db p_hire		; field_5
		db _H, _I, _T, __, __	; field_0
		db p_hit		; field_5
		db _H, _O, _P, __, __	; field_0
		db p_walk		; field_5
		db _H, _O, _S, _P, _I	; field_0
		db 1Dh			; field_5
		db _H, _U, _B, _W, _A	; field_0
		db p_inward		; field_5
		db _I, _G, _N, _I, _T	; field_0
		db p_ignite		; field_5
		db _I, _L, _L, _U, _S	; field_0
		db p_neutralizer	; field_5
		db _I, _N, __, __, __	; field_0
		db p_enter		; field_5
		db _I, _N, _F, _I, _R	; field_0
		db 13h			; field_5
		db _I, _N, _P, _U, _T	; field_0
		db p_input		; field_5
		db _I, _N, _S, _P, _E	; field_0
		db p_examine		; field_5
		db _I, _N, _V, _E, _N	; field_0
		db p_inventory		; field_5
		db _I, _N, _W, _A, _R	; field_0
		db p_inward		; field_5
		db _I, _R, _R, _I, _D	; field_0
		db p_irridium		; field_5
		db _I, _S, _T, _H, _U	; field_0
		db 53h			; field_5
		db _J, _A, _C, _K, __	; field_0
		db p_jack_davies	; field_5
		db _J, _O, _H, _N, __	; field_0
		db p_troch		; field_5
		db _J, _U, _M, _P, __	; field_0
		db p_walk		; field_5
		db _K, _E, _Y, __, __	; field_0
		db p_key		; field_5
		db _K, _E, _Y, _I, _N	; field_0
		db p_card		; field_5
		db _K, _E, _Y, _S, __	; field_0
		db p_key		; field_5
		db _K, _I, _C, _K, __	; field_0
		db p_hit		; field_5
		db _K, _N, _O, _C, _K	; field_0
		db p_knock		; field_5
		db _L, _A, _N, _C, _E	; field_0
		db 80h			; field_5
		db _L, _A, _N, _D, __	; field_0
		db p_land		; field_5
		db _L, _A, _N, _D, _I	; field_0
		db 17h			; field_5
		db _L, _A, _S, _E, _R	; field_0
		db 67h			; field_5
		db _L, _A, _U, _N, _C	; field_0
		db p_launch		; field_5
		db _L, _A, _Y, __, __	; field_0
		db p_lay		; field_5
		db _L, _E, _A, _V, _E	; field_0
		db p_exit		; field_5
		db _L, _I, _B, _R, _A	; field_0
		db 14h			; field_5
		db _L, _I, _F, _T, __	; field_0
		db p_lift		; field_5
		db _L, _L, _Y, _E, __	; field_0
		db p_bob		; field_5
		db _L, _O, _C, _A, _T	; field_0
		db p_find		; field_5
		db _L, _O, _C, _K, __	; field_0
		db p_close		; field_5
		db _L, _O, _C, _K, _E	; field_0
		db p_locker		; field_5
		db _L, _O, _G, __, __	; field_0
		db p_log		; field_5
		db _L, _O, _G, _I, _N	; field_0
		db p_login		; field_5
		db _L, _O, _G, _O, _F	; field_0
		db 4Ah			; field_5
		db _L, _O, _G, _O, _N	; field_0
		db p_login		; field_5
		db _L, _O, _G, _O, _U	; field_0
		db 4Ah			; field_5
		db _L, _O, _O, _K, __	; field_0
		db p_look		; field_5
		db _L, _O, _R, _E, _N	; field_0
		db p_alex		; field_5
		db _L, _O, _U, _N, _G	; field_0
		db 27h			; field_5
		db _L, _U, _C, _I, _N	; field_0
		db p_lucinda		; field_5
		db _M, __, __, __, __	; field_0
		db 4Bh			; field_5
		db _M, _A, _C, _H, _I	; field_0
		db p_machine		; field_5
		db _M, _A, _I, _N, _T	; field_0
		db 22h			; field_5
		db _M, _A, _N, _I, _L	; field_0
		db p_envelope		; field_5
		db _M, _E, _N, _U, __	; field_0
		db 4Bh			; field_5
		db _M, _O, _V, _E, __	; field_0
		db p_walk		; field_5
		db _N, __, __, __, __	; field_0
		db p_n			; field_5
		db _N, _A, _V, _I, _E	; field_0
		db 54h			; field_5
		db _N, _A, _V, _I, _G	; field_0
		db p_computer		; field_5
		db _N, _E, __, __, __	; field_0
		db p_ne			; field_5
		db _N, _E, _U, _R, _A	; field_0
		db p_analyze		; field_5
		db _N, _E, _U, _T, _R	; field_0
		db p_neutralizer	; field_5
		db _N, _I, _G, _E, _R	; field_0
		db 98h			; field_5
		db _N, _O, __, __, __	; field_0
		db 0FEh			; field_5
		db _N, _O, _R, _T, _H	; field_0
		db p_n			; field_5
		db _N, _W, __, __, __	; field_0
		db p_nw			; field_5
		db _O, _A, _R, __, __	; field_0
		db p_oar		; field_5
		db _O, _A, _R, _S, __	; field_0
		db p_oar		; field_5
		db _O, _F, _F, __, __	; field_0
		db p_off		; field_5
		db _O, _F, _F, _I, _C	; field_0
		db 25h			; field_5
		db _O, _N, __, __, __	; field_0
		db p_on			; field_5
		db _O, _N, _E, __, __	; field_0
		db p_1			; field_5
		db _O, _P, _E, _N, __	; field_0
		db p_open		; field_5
		db _O, _R, _B, _I, _T	; field_0
		db p_orbit		; field_5
		db _O, _R, _D, _E, _R	; field_0
		db 0DDh			; field_5
		db _O, _U, _T, __, __	; field_0
		db p_exit		; field_5
		db _O, _U, _T, _E, _R	; field_0
		db p_airlock		; field_5
		db _O, _U, _T, _W, _A	; field_0
		db p_outward		; field_5
		db _P, _dash, _S, _U, _I; field_0
		db p_psuit		; field_5
		db _P, _A, _G, _E, __	; field_0
		db 71h			; field_5
		db _P, _A, _P, _E, _R	; field_0
		db p_paper		; field_5
		db _P, _A, _R, _S, _O	; field_0
		db 98h			; field_5
		db _P, _A, _S, _S, _A	; field_0
		db 18h			; field_5
		db _P, _E, _R, _S, _O	; field_0
		db 4Fh			; field_5
		db _P, _I, _E, _C, _E	; field_0
		db p_piece		; field_5
		db _P, _I, _R, _A, _T	; field_0
		db 9Ah			; field_5
		db _P, _L, _A, _N, _E	; field_0
		db p_planet		; field_5
		db _P, _L, _A, _T, _I	; field_0
		db p_claw		; field_5
		db _P, _L, _A, _Y, _E	; field_0
		db 0DFh			; field_5
		db _P, _L, _O, _T, __	; field_0
		db p_lay		; field_5
		db _P, _R, _A, _C, _T	; field_0
		db 9Ah			; field_5
		db _P, _R, _O, _C, _E	; field_0
		db p_enter		; field_5
		db _P, _U, _B, _L, _I	; field_0
		db 4Ch			; field_5
		db _P, _U, _R, _C, _H	; field_0
		db p_buy		; field_5
		db _P, _U, _R, _S, _E	; field_0
		db p_purse		; field_5
		db _P, _U, _T, __, __	; field_0
		db p_drop		; field_5
		db _Q, _U, _E, _S, _T	; field_0
		db p_analyze		; field_5
		db _Q, _U, _I, _T, __	; field_0
		db p_quit		; field_5
		db _R, _A, _D, _I, _A	; field_0
		db p_radsuit		; field_5
		db _R, _A, _Y, __, __	; field_0
		db p_ray_goode		; field_5
		db _R, _E, _A, _D, __	; field_0
		db p_read		; field_5
		db _R, _E, _A, _D, _Y	; field_0
		db p_ready		; field_5
		db _R, _E, _C, _E, _I	; field_0
		db 0DDh			; field_5
		db _R, _E, _M, _O, _V	; field_0
		db p_remove		; field_5
		db _R, _E, _P, _A, _I	; field_0
		db 6Eh			; field_5
		db _R, _E, _S, _E, _R	; field_0
		db p_wear		; field_5
		db _R, _E, _S, _T, _A	; field_0
		db 1Ch			; field_5
		db _R, _I, _M, _W, _A	; field_0
		db p_outward		; field_5
		db _R, _O, _P, _E, __	; field_0
		db p_rope		; field_5
		db _R, _O, _W, _B, _O	; field_0
		db p_boat		; field_5
		db _R, _U, _N, __, __	; field_0
		db p_walk		; field_5
		db _S, __, __, __, __	; field_0
		db p_s			; field_5
		db _S, _A, _V, _E, __	; field_0
		db p_save		; field_5
		db _S, _C, _O, _R, _E	; field_0
		db p_score		; field_5
		db _S, _C, _O, _T, _C	; field_0
		db p_bottle		; field_5
		db _S, _E, __, __, __	; field_0
		db p_se			; field_5
		db _S, _E, _A, _R, _C	; field_0
		db p_examine		; field_5
		db _S, _E, _C, _R, _E	; field_0
		db 4Dh			; field_5
		db _S, _E, _C, _U, _R	; field_0
		db p_tie		; field_5
		db _S, _E, _T, __, __	; field_0
		db p_set		; field_5
		db _S, _E, _V, _E, _R	; field_0
		db p_acon		; field_5
		db _S, _H, _A, _K, _E	; field_0
		db p_hit		; field_5
		db _S, _H, _I, _P, __	; field_0
		db 26h			; field_5
		db _S, _H, _O, _V, _E	; field_0
		db p_shove		; field_5
		db _S, _I, _G, _N, __	; field_0
		db p_sign		; field_5
		db _S, _I, _L, _V, _E	; field_0
		db 80h			; field_5
		db _S, _K, _E, _L, _E	; field_0
		db 7Eh			; field_5
		db _S, _K, _I, _P, __	; field_0
		db p_walk		; field_5
		db _S, _L, _E, _E, _P	; field_0
		db p_sleep		; field_5
		db _S, _O, _L, _O, _M	; field_0
		db 55h			; field_5
		db _S, _O, _U, _T, _H	; field_0
		db p_s			; field_5
		db _S, _P, _A, _C, _E	; field_0
		db p_space		; field_5
		db _S, _P, _E, _E, _D	; field_0
		db p_speed		; field_5
		db _S, _T, _A, _N, _D	; field_0
		db 0DDh			; field_5
		db _S, _T, _A, _R, _L	; field_0
		db 27h			; field_5
		db _S, _T, _A, _T, _I	; field_0
		db 50h			; field_5
		db _S, _T, _A, _T, _U	; field_0
		db p_statue		; field_5
		db _S, _T, _E, _A, _L	; field_0
		db p_lift		; field_5
		db _S, _T, _E, _P, __	; field_0
		db p_walk		; field_5
		db _S, _T, _O, _P, __	; field_0
		db p_quit		; field_5
		db _S, _T, _O, _R, _A	; field_0
		db 1Ah			; field_5
		db _S, _U, _I, _T, __	; field_0
		db p_suit		; field_5
		db _S, _U, _P, _P, _L	; field_0
		db 23h			; field_5
		db _S, _W, __, __, __	; field_0
		db p_sw			; field_5
		db _T, _A, _K, _E, __	; field_0
		db p_lift		; field_5
		db _T, _A, _P, _E, __	; field_0
		db p_book		; field_5
		db _T, _A, _P, _E, _S	; field_0
		db p_book		; field_5
		db _T, _E, _R, _M, _I	; field_0
		db 12h			; field_5
		db _T, _H, _R, _E, _E	; field_0
		db p_3			; field_5
		db _T, _H, _R, _O, _T	; field_0
		db p_accel		; field_5
		db _T, _H, _R, _O, _W	; field_0
		db p_drop		; field_5
		db _T, _I, _C, _K, _L	; field_0
		db p_hit		; field_5
		db _T, _I, _E, __, __	; field_0
		db p_tie		; field_5
		db _T, _R, _A, _V, _E	; field_0
		db p_walk		; field_5
		db _T, _R, _O, _C, _H	; field_0
		db p_troch		; field_5
		db _T, _W, _O, __, __	; field_0
		db p_2			; field_5
		db _U, __, __, __, __	; field_0
		db p_up			; field_5
		db _U, _N, _F, _O, _L	; field_0
		db p_unfold		; field_5
		db _U, _N, _L, _O, _C	; field_0
		db p_open		; field_5
		db _U, _N, _T, _I, _E	; field_0
		db p_untie		; field_5
		db _U, _P, __, __, __	; field_0
		db p_up			; field_5
		db _V, _E, _N, _D, _I	; field_0
		db p_machine		; field_5
		db _W, __, __, __, __	; field_0
		db p_west		; field_5
		db _W, _A, _L, _K, __	; field_0
		db p_walk		; field_5
		db _W, _A, _R, _N, _I	; field_0
		db 0EEh			; field_5
		db _W, _A, _R, _P, __	; field_0
		db p_warp		; field_5
		db _W, _E, _A, _R, __	; field_0
		db p_wear		; field_5
		db _W, _E, _L, _M, _A	; field_0
		db p_welma		; field_5
		db _W, _E, _S, _T, __	; field_0
		db p_west		; field_5
		db _W, _I, _L, _L, __	; field_0
		db 0A3h			; field_5
		db _Y, __, __, __, __	; field_0
		db p_yes		; field_5
		db _Y, _E, _S, __, __	; field_0
		db p_yes		; field_5
		db _Z, _E, _B, _R, _A	; field_0
		db p_zebra		; field_5
unk_28AB:	db    2			; DATA XREF: ROM:loc_12D4o
		db  11h
		db  12h
		db  14h
		db  15h
		db  16h
		db  18h
		db  19h
		db  1Ah
		db  17h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db  11h
		db  12h
		db  14h
		db  16h
		db  17h
		db  18h
		db  19h
		db  1Ah
		db  15h
		db    2
		db  11h
		db  12h
		db  14h
		db  15h
		db  17h
		db  18h
		db  19h
		db  1Ah
		db  16h
		db    2
		db  11h
		db  12h
		db  15h
		db  16h
		db  17h
		db  18h
		db  19h
		db  1Ah
		db  14h
		db    2
		db  12h
		db  14h
		db  15h
		db  15h
		db  17h
		db  18h
		db  19h
		db  1Ah
		db  11h
		db  11h
		db  12h
		db  14h
		db  15h
		db  16h
		db  17h
		db  18h
		db  19h
		db  1Ah
		db    2
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db  11h
		db  12h
		db  14h
		db  15h
		db  16h
		db  17h
		db  19h
		db  1Ah
		db  18h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db  11h
		db  13h
		db  14h
		db  15h
		db  16h
		db  17h
		db  18h
		db  19h
		db  12h
		db    2
		db  11h
		db  12h
		db  13h
		db  14h
		db  15h
		db  16h
		db  17h
		db    0
		db    1
		db    2
		db  11h
		db  12h
		db  14h
		db  15h
		db  16h
		db  17h
		db  18h
		db  1Ah
		db  19h
unk_2991:	db    0			; DATA XREF: ROM:loc_12DAo
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  16h
		db  17h
		db  18h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  0Eh
		db  0Eh
		db  13h
		db  16h
		db  17h
		db  18h
		db    0
		db    0
		db    0
		db    0
		db    7
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db    3
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    2
		db    2
		db    4
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    3
		db    3
		db    5
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    4
		db    5
		db  1Ch
		db  1Dh
		db  23h	; #
		db  24h	; $
		db  25h	; %
		db    0
		db    0
		db    0
		db    6
		db  1Ch
		db  1Dh
		db  1Eh
		db  24h	; $
		db  25h	; %
		db  26h	; &
		db    0
		db    0
		db    0
		db  0Ah
		db  16h
		db  1Dh
		db  1Eh
		db  1Fh
		db  25h	; %
		db  26h	; &
		db    0
		db    0
		db    0
		db  0Bh
		db  12h
		db  1Bh
		db  23h	; #
		db  24h	; $
		db    0
		db    0
		db    0
		db    0
		db    0
		db  14h
		db  16h
		db  17h
		db  26h	; &
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  15h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  1Eh
		db  1Fh
		db  20h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  0Ch
		db  1Fh
		db  20h
		db  21h	; !
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  0Dh
		db  20h
		db  21h	; !
		db  22h	; "
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  0Fh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  1Ah
		db  1Bh
		db  23h	; #
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  11h
		db  14h
		db  19h
		db  1Ah
		db  1Bh
		db    0
		db    0
		db    0
		db    0
		db    0
		db  12h
		db    2
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
rankOffsetList:	msgOffset <4Eh,	22h>	; 0 ; DATA XREF: ROM:0F51o
		msgOffset <4Eh,	4Ch>	; 1
		msgOffset <4Eh,	6Fh>	; 2
		msgOffset <4Eh,	92h>	; 3
		msgOffset <4Eh,	0B5h>	; 4
		msgOffset <4Eh,	0D8h>	; 5
		msgOffset <4Eh,	0FBh>	; 6
		msgOffset <4Fh,	1Eh>	; 7
		msgOffset <4Fh,	41h>	; 8
		msgOffset <4Fh,	5Dh>	; 9
		msgOffset <4Fh,	79h>	; 10
		msgOffset <4Fh,	95h>	; 11
		msgOffset <4Fh,	0B1h>	; 12
		msgOffset <4Fh,	0CDh>	; 13
		msgOffset <4Fh,	0E9h>	; 14
		msgOffset <50h,	5>	; 15
		msgOffset <50h,	21h>	; 16
		msgOffset <50h,	3Dh>	; 17
inventoryMsgList:msgOffset <32h, 61h>	 ; 0 ; DATA XREF: ROM:390Bo
		msgOffset <0Ch,	0F9h>	; 1
		msgOffset <0Dh,	69h>	; 2
		msgOffset <0Dh,	9Ah>	; 3
		msgOffset <10h,	87h>	; 4
		msgOffset <10h,	0BFh>	; 5
		msgOffset <10h,	0CDh>	; 6
		msgOffset <31h,	42h>	; 7
		msgOffset <32h,	30h>	; 8
		msgOffset <34h,	36h>	; 9
		msgOffset <44h,	89h>	; 10
		msgOffset <44h,	4>	; 11
		msgOffset <47h,	76h>	; 12
		msgOffset <0B4h, 27h>	; 13
		msgOffset <0BFh, 79h>	; 14
		msgOffset <0BFh, 0A3h>	; 15
		msgOffset <0C0h, 0D7h>	; 16
		msgOffset <0BFh, 0F7h>	; 17
		msgOffset <0C0h, 0C9h>	; 18
		msgOffset <0C4h, 0FFh>	; 19
		msgOffset <0C8h, 0FDh>	; 20
		msgOffset <0C9h, 0B3h>	; 21
		msgOffset <0D4h, 0F7h>	; 22
		msgOffset <0DCh, 83h>	; 23
		msgOffset <0E1h, 68h>	; 24
		msgOffset <0E6h, 93h>	; 25
		msgOffset <0EDh, 0CBh>	; 26
		msgOffset <0A5h, 0B7h>	; 27
		msgOffset <9Ch,	72h>	; 28
		msgOffset <0A5h, 0F6h>	; 29
		msgOffset <9Ah,	0B9h>	; 30
		msgOffset <0A5h, 47h>	; 31
		msgOffset <0F2h, 86h>	; 32
		msgOffset <0F2h, 94h>	; 33
floorItemMsgList:msgOffset <32h, 45h>	 ; 0 ; DATA XREF: sub_1D02+24o
		msgOffset <0Ch,	0DDh>	; 1
		msgOffset <0Dh,	4Dh>	; 2
		msgOffset <0Dh,	77h>	; 3
		msgOffset <0Fh,	61h>	; 4
		msgOffset <0F0h, 0FEh>	; 5
		msgOffset <0Fh,	0F4h>	; 6
		msgOffset <0F1h, 21h>	; 7
		msgOffset <0Fh,	92h>	; 8
		msgOffset <10h,	56h>	; 9
		msgOffset <0Fh,	0C3h>	; 10
		msgOffset <10h,	0A3h>	; 11
		msgOffset <58h,	32h>	; 12
		msgOffset <6Ch,	98h>	; 13
		msgOffset <31h,	18h>	; 14
		msgOffset <0EEh, 3>	; 15
		msgOffset <33h,	0FEh>	; 16
		msgOffset <44h,	2Eh>	; 17
		msgOffset <44h,	6Dh>	; 18
		msgOffset <43h,	0E1h>	; 19
		msgOffset <47h,	8Bh>	; 20
		msgOffset <0B4h, 0Bh>	; 21
		msgOffset <0B7h, 1Bh>	; 22
		msgOffset <0BAh, 0E1h>	; 23
		msgOffset <0BCh, 0BDh>	; 24
		msgOffset <0BCh, 0E7h>	; 25
		msgOffset <0BDh, 34h>	; 26
		msgOffset <0BDh, 50h>	; 27
		msgOffset <0BDh, 73h>	; 28
		msgOffset <0BDh, 9Dh>	; 29
		msgOffset <0BFh, 2>	; 30
		msgOffset <0EEh, 26h>	; 31
		msgOffset <0BFh, 0DBh>	; 32
		msgOffset <0C0h, 0A6h>	; 33
		msgOffset <0C2h, 82h>	; 34
		msgOffset <0C2h, 9Eh>	; 35
		msgOffset <0C4h, 0EAh>	; 36
		msgOffset <0C8h, 0E1h>	; 37
		msgOffset <9Ah,	8Fh>	; 38
		msgOffset <0D4h, 0D4h>	; 39
		msgOffset <0DCh, 60h>	; 40
		msgOffset <0E1h, 45h>	; 41
		msgOffset <0E6h, 70h>	; 42
		msgOffset <0EDh, 0E0h>	; 43
		msgOffset <6Ah,	30h>	; 44
		msgOffset <6Dh,	0A9h>	; 45
		msgOffset <9Ch,	87h>	; 46
		msgOffset <9Bh,	0FBh>	; 47
		msgOffset <0A5h, 0CCh>	; 48
		msgOffset <0A6h, 2Eh>	; 49
		msgOffset <0A6h, 58h>	; 50
		msgOffset <9Ah,	0F8h>	; 51
		msgOffset <10h,	25h>	; 52
		msgOffset <10h,	0E2h>	; 53
earthReadMsgList:	wordToBytes(s_doorNumber10)	; 0
			wordToBytes(s_doorNumber11)	; 1
			wordToBytes(s_doorNumber12)	; 2
			wordToBytes(s_doorNumber13)	; 3
			wordToBytes(s_doorNumber14)	; 4
			wordToBytes(s_doorNumber15)	; 5
			wordToBytes(s_doorNumber16)	; 6
gcsExamineMsgList:msgOffset <73h, 8Ah>	; 0
		msgOffset <70h,	65h>	; 1
		msgOffset <6Eh,	0BAh>	; 2
		msgOffset <6Eh,	0BAh>	; 3
		msgOffset <6Eh,	0BAh>	; 4
		msgOffset <6Eh,	0BAh>	; 5
		msgOffset <6Eh,	0BAh>	; 6
		msgOffset <6Eh,	0BAh>	; 7
		msgOffset <6Eh,	0BAh>	; 8
		msgOffset <6Eh,	0BAh>	; 9
		msgOffset <6Eh,	0BAh>	; 10
		msgOffset <6Eh,	0BAh>	; 11
		msgOffset <6Fh,	4Dh>	; 12
		msgOffset <6Fh,	4Dh>	; 13
		msgOffset <6Fh,	4Dh>	; 14
		msgOffset <6Eh,	0BAh>	; 15
		msgOffset <6Eh,	0BAh>	; 16
		msgOffset <70h,	65h>	; 17
		msgOffset <71h,	45h>	; 18
		msgOffset <73h,	8Ah>	; 19
		msgOffset <6Fh,	4Dh>	; 20
		msgOffset <6Fh,	4Dh>	; 21
		msgOffset <6Eh,	0BAh>	; 22
		msgOffset <70h,	65h>	; 23
		msgOffset <73h,	28h>	; 24
		msgOffset <6Fh,	0B6h>	; 25
		msgOffset <71h,	45h>	; 26
		msgOffset <73h,	8Ah>	; 27
		msgOffset <85h,	65h>	; 28
gcsReadMsgList:	msgOffset <0F3h, 0F2h>	; 0 ; DATA XREF: ROM:3C11o
		msgOffset <0F3h, 0F2h>	; 1
		msgOffset <72h,	0DBh>	; 2
		msgOffset <6Fh,	85h>	; 3
		msgOffset <72h,	0DBh>	; 4
		msgOffset <72h,	0DBh>	; 5
		msgOffset <72h,	0DBh>	; 6
		msgOffset <72h,	0DBh>	; 7
		msgOffset <72h,	0DBh>	; 8
		msgOffset <72h,	0DBh>	; 9
		msgOffset <0F3h, 0F2h>	; 10
		msgOffset <72h,	0DBh>	; 11
		msgOffset <72h,	0DBh>	; 12
		msgOffset <72h,	0DBh>	; 13
		msgOffset <72h,	0DBh>	; 14
		msgOffset <72h,	0DBh>	; 15
		msgOffset <72h,	0DBh>	; 16
		msgOffset <72h,	0DBh>	; 17
		msgOffset <6Fh,	3Fh>	; 18
		msgOffset <6Fh,	85h>	; 19
		msgOffset <0F3h, 0E4h>	; 20
		msgOffset <6Fh,	0FCh>	; 21
		msgOffset <70h,	0Ah>	; 22
		msgOffset <70h,	1Fh>	; 23
		msgOffset <70h,	0F1h>	; 24
		msgOffset <71h,	0E6h>	; 25
		msgOffset <72h,	3Ah>	; 26
		msgOffset <72h,	0A3h>	; 27
		msgOffset <72h,	0B1h>	; 28
		msgOffset <72h,	0BFh>	; 29
		msgOffset <71h,	0E6h>	; 30
		msgOffset <72h,	0FEh>	; 31
		msgOffset <70h,	0F1h>	; 32
		msgOffset <71h,	0E6h>	; 33
		msgOffset <72h,	3Ah>	; 34
		msgOffset <71h,	0E6h>	; 35
		msgOffset <0, 0>	; 36
		msgOffset <28h,	31h>	; 37
		msgOffset <28h,	31h>	; 38
		msgOffset <28h,	45h>	; 39
		msgOffset <28h,	45h>	; 40
		msgOffset <28h,	31h>	; 41
		msgOffset <28h,	31h>	; 42
		msgOffset <28h,	31h>	; 43
		msgOffset <28h,	31h>	; 44
		msgOffset <28h,	31h>	; 45
		msgOffset <28h,	45h>	; 46
		msgOffset <28h,	45h>	; 47
		msgOffset <40h,	45h>	; 48
		msgOffset <40h,	45h>	; 49
		msgOffset <40h,	45h>	; 50
		msgOffset <40h,	45h>	; 51
		msgOffset <40h,	45h>	; 52
		msgOffset <28h,	45h>	; 53
		msgOffset <28h,	45h>	; 54
		msgOffset <28h,	45h>	; 55
		msgOffset <40h,	45h>	; 56
		msgOffset <40h,	45h>	; 57
		msgOffset  <0>
		msgOffset  <0>

; =============== S U B	R O U T	I N E =======================================


outputString:
		push	bc
		push	de

loc_2C0E:
		ld	e, (hl)
		ld	a, e
		cp	80h ; 'Ä'
		jp	z, loc_2C2A
		cp	0Ah
		call	z, sub_2C2D
		cp	0Dh
		call	z, sub_2C39
		inc	hl
		push	hl
		ld	c, bdos_c_write
		call	bdos_func
		pop	hl
		jp	loc_2C0E
; ---------------------------------------------------------------------------

loc_2C2A:
		pop	de
		pop	bc
		ret
; End of function outputString


; =============== S U B	R O U T	I N E =======================================


sub_2C2D:
		push	hl
		ld	e, 0Dh
		ld	c, bdos_c_write
		call	bdos_func
		pop	hl
		ld	e, 0Ah
		ret
; End of function sub_2C2D


; =============== S U B	R O U T	I N E =======================================


sub_2C39:
		push	hl
		ld	e, 0Ah
		ld	c, bdos_c_write
		call	bdos_func
		pop	hl
		ld	e, 0Dh
		ret
; End of function sub_2C39


; =============== S U B	R O U T	I N E =======================================


getc:
					; ROM:loc_2129p ...
		push	bc
		push	de
		push	hl
		ld	c, bdos_c_read
		call	bdos_func
		cp	0Dh
		jp	nz, loc_2C5B
		push	af
		ld	e, 0Ah
		ld	c, bdos_c_write
		call	bdos_func
		pop	af

loc_2C5B:
		pop	hl
		pop	de
		pop	bc
		ret
; End of function getc


; =============== S U B	R O U T	I N E =======================================


find_locker_getc:
		push	bc
		push	de
		push	hl

loc_2C62:
		ld	c, bdos_c_rawio
		ld	e, 0FFh
		call	bdos_func
		cp	0
		jp	z, loc_2C62
		pop	hl
		pop	de
		pop	bc
		ret
; End of function find_locker_getc

; ---------------------------------------------------------------------------
		db    0
		db  3Eh	; >
		db    1
		db 0CDh	; Õ
		db  37h	; 7
		db  2Dh	; -

; =============== S U B	R O U T	I N E =======================================


exit:
		ld	c, bdos_p_termcpm
		call	bdos_func
; End of function exit


; =============== S U B	R O U T	I N E =======================================


putc:
		push	bc
		push	de
		push	hl
		ld	c, bdos_c_write
		ld	e, a
		push	af
		call	bdos_func
		pop	af
		cp	0Ah
		jp	nz, loc_2C97
		ld	c, bdos_c_write
		ld	e, 0Dh
		call	bdos_func
		jp	loc_2CA3
; ---------------------------------------------------------------------------

loc_2C97:
		cp	0Dh
		jp	nz, loc_2CA3
		ld	c, bdos_c_write
		ld	e, 0Ah
		call	bdos_func

loc_2CA3:
		pop	hl
		pop	de
		pop	bc
		ret
; End of function putc


; =============== S U B	R O U T	I N E =======================================


sub_2CA7:
		push	af
		call	sub_2E1A
		cp	1
		jp	z, loc_2CDE
		pop	af
		cp	1
		jp	nz, loc_2CBC
		ld	de, unk_2EA8
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CBC:
		cp	2
		jp	nz, loc_2CC7
		ld	de, bgnFCB
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CC7:
		ld	de, msgFCB

loc_2CCA:
		push	de
		ld	c, bdos_f_delete
		call	bdos_func
		pop	de
		ld	c, bdos_f_make
		call	bdos_func
		cp	0FFh
		jp	z, loc_2CDE
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2CDE:
		pop	af
		ld	a, 1
		ret
; End of function sub_2CA7


; =============== S U B	R O U T	I N E =======================================


sub_2CE2:
		ld	(byte_2D36), a
		ld	l, b
		ld	h, 0
		add	hl, hl
		ld	b, h
		ld	c, l
		inc	bc

loc_2CEC:
		dec	bc
		ld	a, b
		or	c
		cp	0
		ret	z
		push	bc
		ld	c, bdos_f_dmaoff
		push	de
		call	bdos_func
		ld	a, (byte_2D36)
		cp	1
		jp	nz, loc_2D07
		ld	de, 2EA8h
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D07:
		cp	2
		jp	nz, loc_2D12
		ld	de, 2ED0h
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D12:
		ld	de, 2EF8h

loc_2D15:
		push	de
		ld	c, bdos_f_writerand
		call	bdos_func
		pop	de
		ld	hl, 21h	; '!'
		add	hl, de
		ld	c, (hl)
		inc	hl
		ld	b, (hl)
		inc	bc
		inc	hl
		ld	(hl), 0
		dec	hl
		ld	(hl), b
		dec	hl
		ld	(hl), c
		pop	de
		ex	de, hl
		ld	de, 80h	; 'Ä'
		add	hl, de
		ex	de, hl
		pop	bc
		jp	loc_2CEC
; End of function sub_2CE2

; ---------------------------------------------------------------------------
byte_2D36:	db 0			; DATA XREF: sub_2CE2w	sub_2CE2+17r

; =============== S U B	R O U T	I N E =======================================


closeFile:
					; printFromMSGFile-133Cp ...
		cp	1
		jp	nz, loc_2D42
		ld	de, unk_2EA8
		jp	loc_2D50
; ---------------------------------------------------------------------------

loc_2D42:
		cp	2
		jp	nz, loc_2D4D
		ld	de, bgnFCB
		jp	loc_2D50
; ---------------------------------------------------------------------------

loc_2D4D:
		ld	de, msgFCB

loc_2D50:
					; closeFile+13j
		ld	c, bdos_f_close
		call	bdos_func
		ret
; End of function closeFile


; =============== S U B	R O U T	I N E =======================================


openFile:
		push	af
		call	sub_2E1A
		cp	1
		jp	z, loc_2D86
		pop	af
		cp	1
		jp	nz, loc_2D6B
		ld	de, unk_2EA8
		jp	loc_2D79
; ---------------------------------------------------------------------------

loc_2D6B:
		cp	2
		jp	nz, loc_2D76
		ld	de, bgnFCB
		jp	loc_2D79
; ---------------------------------------------------------------------------

loc_2D76:
		ld	de, msgFCB

loc_2D79:
		ld	c, bdos_f_open
		call	bdos_func
		cp	0FFh
		jp	z, loc_2D87
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2D86:
		pop	af

loc_2D87:
		ld	a, 1
		ret
; End of function openFile


; =============== S U B	R O U T	I N E =======================================


setDMAAddress:
					; printFromMSGFile+14p	...
		ld	(byte_2DE5), a
		ld	l, b
		ld	h, 0
		add	hl, hl
		ld	b, h
		ld	c, l
		inc	bc

loc_2D94:
		dec	bc
		ld	a, b
		or	c
		cp	0
		jp	z, loc_2DEC
		push	bc
		ld	c, bdos_f_dmaoff
		push	de
		call	bdos_func
		ld	a, (byte_2DE5)
		cp	1
		jp	nz, loc_2DB1
		ld	de, unk_2EA8
		jp	loc_2DBF
; ---------------------------------------------------------------------------

loc_2DB1:
		cp	2
		jp	nz, loc_2DBC
		ld	de, bgnFCB
		jp	loc_2DBF
; ---------------------------------------------------------------------------

loc_2DBC:
		ld	de, msgFCB

loc_2DBF:
					; setDMAAddress+2Fj
		push	de
		ld	c, bdos_f_readrand
		call	bdos_func
		cp	0
		jp	nz, loc_2DE6
		pop	de
		ld	hl, 21h	; '!'
		add	hl, de
		ld	c, (hl)
		inc	hl
		ld	b, (hl)
		inc	bc
		inc	hl
		ld	(hl), 0
		dec	hl
		ld	(hl), b
		dec	hl
		ld	(hl), c
		pop	de
		ex	de, hl
		ld	de, 80h	; 'Ä'
		add	hl, de
		ex	de, hl
		pop	bc
		jp	loc_2D94
; ---------------------------------------------------------------------------
byte_2DE5:	db 0			; DATA XREF: setDMAAddressw
					; setDMAAddress+19r
; ---------------------------------------------------------------------------

loc_2DE6:
		pop	de
		pop	de
		pop	bc
		ld	a, 1
		ret
; ---------------------------------------------------------------------------

loc_2DEC:
		ld	a, 0
		ret
; End of function setDMAAddress


; =============== S U B	R O U T	I N E =======================================


sub_2DEF:
		cp	1
		jp	nz, loc_2DFA
		ld	hl, 2EA8h
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2DFA:
		cp	2
		jp	nz, loc_2E05
		ld	hl, 2ED0h
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2E05:
		ld	hl, msgFCB

loc_2E08:
		ld	de, 41o
		add	hl, de
		or	a
		ld	a, c
		rla
		ld	c, a
		ld	a, b
		rla
		ld	b, a
		ld	(hl), c
		inc	hl
		ld	(hl), b
		inc	hl
		ld	(hl), 0
		ret
; End of function sub_2DEF


; =============== S U B	R O U T	I N E =======================================


sub_2E1A:
		cp	1
		jp	nz, loc_2E25
		ld	de, unk_2EA8
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E25:
		cp	2
		jp	nz, loc_2E30
		ld	de, bgnFCB
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E30:
		ld	de, msgFCB

loc_2E33:
		push	de
		push	hl
		ex	de, hl
		ld	c, 28h ; '('

loc_2E38:
		ld	(hl), 0
		inc	hl
		dec	c
		jp	nz, loc_2E38
		pop	hl
		pop	de
		ld	c, 0Ch
		ex	de, hl
		push	hl

loc_2E45:
		ld	(hl), 20h ; ' '
		inc	hl
		dec	c
		jp	nz, loc_2E45
		pop	hl
		push	hl
		ld	a, (de)
		sub	40h ; '@'
		ld	(hl), a
		inc	de
		ld	a, (de)
		cp	3Ah ; ':'
		jp	z, loc_2E5D
		ld	(hl), 0
		dec	de
		dec	de

loc_2E5D:
		inc	de
		inc	hl
		ld	c, 8

loc_2E61:
		ld	a, (de)
		cp	2Eh ; '.'
		jp	z, loc_2E79
		cp	0
		jp	z, loc_2E93
		ld	(hl), a
		inc	hl
		inc	de
		dec	c
		jp	nz, loc_2E61
		ld	a, (de)
		cp	2Eh ; '.'
		jp	nz, loc_2E93

loc_2E79:
		inc	de
		pop	hl
		push	de
		ld	de, 9
		add	hl, de
		pop	de
		ld	c, 3

loc_2E83:
		ld	a, (de)
		cp	0
		jp	z, loc_2E90
		ld	(hl), a
		inc	hl
		inc	de
		dec	c
		jp	nz, loc_2E83

loc_2E90:
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2E93:
		pop	hl
		ld	a, 0
		ret
; End of function sub_2E1A

; ---------------------------------------------------------------------------
		db  0Dh
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  20h
		db  46h	; F
		db  69h	; i
		db  6Ch	; l
		db  65h	; e
		db  20h
		db  4Eh	; N
		db  61h	; a
		db  6Dh	; m
		db  65h	; e
		db  21h	; !
		db  0Dh
		db  80h	; Ä
unk_2EA8:	db    0			; DATA XREF: sub_2CA7+Fo closeFile+5o	...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
bgnFCB:		cpm_fcb	<0>		; DATA XREF: sub_2CA7+1Ao
					; closeFile+10o ...
		db    0
		db    0
		db    0
		db    0
msgFCB:		cpm_fcb	<0>		; DATA XREF: sub_2CA7:loc_2CC7o
					; closeFile:loc_2D4Do ...
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================


add16bitWords:
		push	de
		ld	e, a
		ld	d, 0
		add	hl, de
		pop	de
		ret
; End of function add16bitWords


; =============== S U B	R O U T	I N E =======================================


sub_2F27:
					; printFromMSGFilep
		ex	(sp), hl
		push	de
		push	bc
		push	af
		jp	(hl)
; End of function sub_2F27


; =============== S U B	R O U T	I N E =======================================


sub_2F2C:
		ex	(sp), hl
		call	sub_2F32
		ex	(sp), hl
		ret
; End of function sub_2F2C


; =============== S U B	R O U T	I N E =======================================


sub_2F32:
		ld	a, (hl)
		cp	80h ; 'Ä'
		ret	z
		push	af
		call	putc
		pop	af
		inc	hl
		jp	sub_2F32
; End of function sub_2F32


; =============== S U B	R O U T	I N E =======================================

; This function	abbreviates an input words to a specified length. (e.g. 'INVENTORY' -> 'INVEN')
; bc is the desired length of the string. 

abbreviateWord:
					; askIfInstructions+1Fp ...
		ld	a, (de)
		ld	(hl), a
		inc	de
		inc	hl
		dec	bc
		ld	a, b
		or	c
		cp	0
		jp	nz, abbreviateWord
		ret
; End of function abbreviateWord


; =============== S U B	R O U T	I N E =======================================


printFromMSGFile:

; FUNCTION CHUNK AT 1C0E SIZE 0000000A BYTES
; FUNCTION CHUNK AT 2FFE SIZE 00000074 BYTES

		call	sub_2F27
		ld	c, d
		ld	b, 0
		push	de
		ld	a, 1
		call	sub_2DEF
		ld	a, 1
		ld	bc, 100h
		ld	de, readDMAAddress
		call	setDMAAddress
		cp	1
		jp	z, loc_1C0E
		pop	de
		ld	hl, readDMAAddress
		ld	a, e
		call	add16bitWords
		ld	b, h
		ld	c, l

loc_2F72:
		ld	hl, decompMaybeBuffer
		ld	d, 7

loc_2F77:
		ld	a, (bc)
		inc	bc
		ld	(hl), a
		inc	hl
		inc	e
		ld	a, e
		cp	0
		call	z, sub_2FD9
		dec	d
		ld	a, d
		cp	0
		jp	z, loc_2F8C
		jp	loc_2F77
; ---------------------------------------------------------------------------

loc_2F8C:
		ld	hl, decompMaybeBuffer
		push	bc
		ld	c, 0

loc_2F92:
		ld	a, c
		cp	0
		jp	z, loc_2FFE
		cp	1
		jp	z, loc_3005
		cp	2
		jp	z, loc_3015
		cp	3
		jp	z, loc_3027
		cp	4
		jp	z, loc_303B
		cp	5
		jp	z, loc_304D
		cp	6
		jp	z, loc_305D
		cp	7
		jp	z, loc_306B

loc_2FBB:
					; printFromMSGFile+C6j	...
		inc	c
		cp	0
		jp	z, loc_2FD3
		call	putc
		jp	loc_2F92
; ---------------------------------------------------------------------------

loc_2FC7:
		pop	bc
		cp	0
		jp	z, loc_2FD4
		call	putc
		jp	loc_2F72
; ---------------------------------------------------------------------------

loc_2FD3:
		pop	bc

loc_2FD4:
		pop	af
		pop	bc
		pop	de
		pop	hl
		ret
; End of function printFromMSGFile


; =============== S U B	R O U T	I N E =======================================


sub_2FD9:
		push	hl
		push	de
		push	bc
		ld	a, 1
		ld	bc, 100h
		ld	de, readDMAAddress
		call	setDMAAddress
		cp	1
		jp	z, loc_2FF3
		pop	bc
		pop	de
		pop	hl
		ld	bc, readDMAAddress
		ret
; ---------------------------------------------------------------------------

loc_2FF3:
		pop	bc
		pop	de
		pop	hl
		ret
; End of function sub_2FD9

; ---------------------------------------------------------------------------
decompMaybeBuffer:db [ 7 ], 0		; DATA XREF: printFromMSGFile:loc_2F72o
					; printFromMSGFile:loc_2F8Co
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR printFromMSGFile

loc_2FFE:
		ld	a, (hl)
		rrca
		and	7Fh ; ''
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3005:
		ld	a, (hl)
		rrca
		rrca
		and	40h ; '@'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rrca
		rrca
		and	3Fh ; '?'
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3015:
		ld	a, (hl)
		rrca
		rrca
		rrca
		and	60h ; '`'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rrca
		rrca
		rrca
		and	1Fh
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3027:
		ld	a, (hl)
		rrca
		rrca
		rrca
		rrca
		and	70h ; 'p'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rrca
		rrca
		rrca
		rrca
		and	0Fh
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_303B:
		ld	a, (hl)
		rlca
		rlca
		rlca
		and	78h ; 'x'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rlca
		rlca
		rlca
		and	7
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_304D:
		ld	a, (hl)
		rlca
		rlca
		and	7Ch ; '|'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rlca
		rlca
		and	3
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_305D:
		ld	a, (hl)
		rlca
		and	7Eh ; '~'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rlca
		and	1
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_306B:
		ld	a, (hl)
		and	7Fh ; ''
		inc	hl
		jp	loc_2FC7
; END OF FUNCTION CHUNK	FOR printFromMSGFile
; ---------------------------------------------------------------------------

do_launch:
		ld	a, (g_currentRoomNumber)
		cp	1
		jp	z, loc_3084
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3084:
		ld	a, (stru_496A.occupied)
		cp	0
		jp	nz, loc_3096

loc_308C:
		printmessage(unableToDoNow)
		jp	l_mainLoop

loc_3096:
		ld	a, (stru_496A.occupied+9)
		cp	0
		jp	z, loc_308C
		ld	a, (stru_496A.occupied+30h)
		cp	0
		jp	z, loc_308C
		ld	hl, 49F7h
		ld	a, (hl)
		cp	0
		jp	nz, loc_308C
		ld	hl, (word_4961)
		ld	a, h
		cp	1
		jp	nc, loc_30C8
		ld	a, l
		cp	5Fh ; '_'
		jp	nc, loc_30C8
		printMessage(s_notDepartureTime)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_30C8:
		ld	a, 0
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

do_setCourse:
		ld	a, (g_currentRoomNumber)
		cp	0
		jp	z, loc_30E2
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop

loc_30E2:
		ld	a, (computerInstalledFlag)
		cp	0
		jp	nz, loc_30F4

loc_30EA:
		printMessage(s_unableToDoNow)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_30F4:
		ld	a, (stru_496A.occupied+0Fh)
		cp	0
		jp	z, loc_30EA
		printMessage(s_enterCoordinates)
		call	loc_2119
		call	getStringMaybe
		ld	a, b
		cp	1
		jp	z, loc_3119

loc_310F:
		printMessage(s_dontUnderstand)
		jp	l_mainLoop

loc_3119:
		ld	de, 47F4h
		ld	hl, 4800h
		ld	bc, 5
		call	abbreviateWord
		ld	b, 5
		ld	hl, 4800h

loc_312A:
		ld	a, (hl)
		inc	hl
		cp	2Ch ; ','
		jp	z, loc_3140
		cp	2Dh ; '-'
		jp	z, loc_3140
		cp	30h ; '0'
		jp	c, loc_310F
		cp	40h ; '@'
		jp	nc, loc_310F

loc_3140:
		dec	b
		ld	a, b
		cp	0
		jp	nz, loc_312A
		call	sub_1E11
		ld	a, (playerCommand)
		sub	27h ; '''
		cp	0
		jp	z, loc_315F
		cp	6
		jp	nc, loc_315F
		ld	(byte_495F), a
		jp	loc_3164
; ---------------------------------------------------------------------------

loc_315F:
		ld	a, 0
		ld	(byte_495F), a

loc_3164:
		printMessage(s_coursePlotted)
		jp	l_mainLoop

do_ignite:
		ld	a, (g_currentRoomNumber)
		cp	0
		jp	z, loc_3180
		printMessage(s_ridiculous)
		jp	l_mainLoop

loc_3180:
		ld	a, (byte_49A4)
		cp	0
		jp	nz, loc_3192
		printMessage(s_outOfSupplies)
		jp	loc_F16

loc_3192:
		ld	a, 0
		ld	(byte_49A4), a
		ld	a, (byte_495F)
		cp	0
		jp	nz, loc_31B0
		printMessage(s_travelMessage1)
		printMessage(s_deepSpace)
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_31B0:
		ld	b, a
		ld	a, (g_currentPlanetNumber)
		cp	b
		jp	nz, loc_31C2
		printMessage(s_courseImpossible)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_31C2:
		ld	a, (byte_495F)
		ld	(g_currentPlanetNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

do_land:
		ld	a, (g_currentRoomNumber)
		cp	0		; currentRoom of 0 == inOrbit
		jp	z, loc_31DD
		printMessage(s_dontKnowHowToApply)
		jp	l_mainLoop

loc_31DD:
		ld	a, (g_currentPlanetNumber)
		sub	1
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, earthLandData
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	nz, loc_3200
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3200:
		ld	a, 1		; currentRoom == 1 is the landing pad of the planet
		ld	(g_currentRoomNumber), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

do_login:
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		and	4
		cp	0
		jp	nz, loc_321E
		printMessage(s_unableToDoNow)
		jp	l_mainLoop

loc_321E:
		printMessage(s_userName)
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_323A

loc_3230:
		printMessage(s_logonAborted)
		jp	l_mainLoopEntry

loc_323A:
		ld	a, (playerCommand)
		cp	4Ch ; 'L'
		jp	z, loc_324A
		cp	0DFh ; 'ﬂ'
		jp	z, loc_33D0
		jp	loc_3230
; ---------------------------------------------------------------------------

loc_324A:
		ld	a, (g_currentPlanetNumber)
		cp	1
		jp	nz, loc_3230
		printMessage(s_password)
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	nz, loc_3230
		ld	a, (playerCommand)
		cp	4Dh ; 'M'
		jp	z, loc_326F
		jp	loc_3230
; ---------------------------------------------------------------------------

loc_326F:
		ld	a, (byte_4969)
		cp	1
		jp	z, loc_3286
		ld	d, 1Ch
		ld	e, 0F1h	; 'Ò'
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_4969), a
		jp	loc_328D
; ---------------------------------------------------------------------------

loc_3286:
		ld	d, 0EFh	; 'Ô'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile

loc_328D:
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_32A0
		cp	2
		jp	z, loc_32EF
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_32A0:
		ld	b, 0
		ld	a, (playerCommand)

loc_32A5:
		cp	4Ah ; 'J'
		jp	z, loc_32FF
		cp	3
		jp	z, loc_32FF
		cp	0Eh
		jp	z, loc_32FF
		cp	91h ; 'ë'
		jp	z, loc_32FF
		cp	31h ; '1'
		jp	z, loc_331E
		cp	4Eh ; 'N'
		jp	z, loc_331E
		cp	8Eh ; 'é'
		jp	z, loc_331E
		cp	4Fh ; 'O'
		jp	z, loc_33BC
		cp	50h ; 'P'

loc_32CF:
		jp	z, loc_33BC
		cp	8Fh ; 'è'
		jp	z, loc_33BC
		cp	51h ; 'Q'
		jp	z, loc_33C6
		cp	52h ; 'R'
		jp	z, loc_33C6
		cp	90h ; 'ê'
		jp	z, loc_33C6
		ld	a, b
		cp	1
		jp	z, loc_32F7
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_32EF:
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_32A5
; ---------------------------------------------------------------------------

loc_32F7:
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_32A5
; ---------------------------------------------------------------------------

loc_32FF:
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_3314
		ld	a, (byte_49B6)
		cp	0
		jp	nz, loc_3314
		ld	a, 1
		ld	(byte_49B6), a

loc_3314:
		ld	d, 0EFh	; 'Ô'
		ld	e, 0FBh	; '˚'
		call	printFromMSGFile
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_331E:
		ld	d, 0EFh	; 'Ô'
		ld	e, 84h ; 'Ñ'
		call	printFromMSGFile
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_333F
		cp	2
		jp	z, loc_337A

loc_3335:
		ld	d, 0EFh	; 'Ô'
		ld	e, 4Ch ; 'L'
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_333F:
		ld	b, 0
		ld	a, (playerCommand)

loc_3344:
		cp	53h ; 'S'
		jp	z, loc_338A
		cp	54h ; 'T'
		jp	z, loc_3394
		cp	55h ; 'U'
		jp	z, loc_339E
		cp	3Dh ; '='
		jp	z, loc_33A8
		cp	58h ; 'X'
		jp	z, loc_33A8
		cp	56h ; 'V'
		jp	z, loc_33A8
		cp	3
		jp	z, loc_33B2
		cp	0Eh
		jp	z, loc_33B2
		cp	4Bh ; 'K'
		jp	z, loc_33B2
		ld	a, b
		cp	1
		jp	z, loc_3382
		jp	loc_3335
; ---------------------------------------------------------------------------

loc_337A:
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_3344
; ---------------------------------------------------------------------------

loc_3382:
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_3344
; ---------------------------------------------------------------------------

loc_338A:
		ld	d, 1Dh
		ld	e, 0F4h	; 'Ù'
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_3394:
		ld	d, 1Fh
		ld	e, 0Ch
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_339E:
		ld	d, 20h ; ' '
		ld	e, 86h ; 'Ü'
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_33A8:
		ld	d, 0F0h	; ''
		ld	e, 48h ; 'H'
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_33B2:
		ld	d, 0F0h	; ''
		ld	e, 72h ; 'r'
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_33BC:
		ld	d, 22h ; '"'
		ld	e, 0BDh	; 'Ω'
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_33C6:
		ld	d, 22h ; '"'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_33D0:
		ld	a, (g_currentPlanetNumber)
		cp	3
		jp	nz, loc_3230
		ld	a, (byte_49B5)
		cp	0
		jp	z, loc_33FD
		ld	d, 0EFh	; 'Ô'
		ld	e, 0Dh
		call	printFromMSGFile
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	nz, loc_3230
		ld	a, (playerCommand)
		cp	0DEh ; 'ﬁ'
		jp	z, loc_3410
		jp	loc_3230
; ---------------------------------------------------------------------------

loc_33FD:
		ld	a, 1
		ld	(byte_49B5), a
		ld	d, 5Fh ; '_'
		ld	e, 55h ; 'U'
		call	printFromMSGFile
		ld	d, 5Fh ; '_'
		ld	e, 0A9h	; '©'
		call	printFromMSGFile

loc_3410:
		ld	d, 0F9h	; '˘'
		ld	e, 47h ; 'G'
		call	printFromMSGFile

loc_3417:
		ld	d, 0F9h	; '˘'
		ld	e, 86h ; 'Ü'
		call	printFromMSGFile
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_3431
		cp	2
		jp	z, loc_345D
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_3431:
		ld	b, 0
		ld	a, (playerCommand)

loc_3436:
		cp	4Ah ; 'J'
		jp	z, loc_32FF
		cp	3
		jp	z, loc_32FF
		cp	0Eh
		jp	z, loc_32FF
		cp	91h ; 'ë'
		jp	z, loc_32FF
		cp	0DDh ; '›'
		jp	z, loc_346D
		cp	8Eh ; 'é'
		jp	z, loc_346D
		ld	a, b
		cp	1
		jp	z, loc_3465
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_345D:
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_3436
; ---------------------------------------------------------------------------

loc_3465:
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_3436
; ---------------------------------------------------------------------------

loc_346D:
		ld	a, (byte_49B6)
		cp	0
		jp	nz, loc_3499
		ld	a, 1
		ld	(byte_49B6), a
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	d, 60h ; '`'
		ld	e, 0D6h	; '÷'
		call	printFromMSGFile
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_348F:
		ld	d, 0F9h	; '˘'
		ld	e, 0BEh	; 'æ'
		call	printFromMSGFile
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_3499:
		cp	1
		jp	z, loc_348F
		ld	d, 63h ; 'c'
		ld	e, 61h ; 'a'
		call	printFromMSGFile
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 11h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 5
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 7Ah ; 'z'
		inc	hl
		ld	(hl), 8Ah ; 'ä'
		ld	a, 1
		ld	(byte_49B6), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	a, 1
		ld	(byte_49AA), a
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_34D8:
		ld	e, a
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, hire_earth
		cp	location_gcs

i_dont_know_how_0:
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

hire_earth:
		ld	a, e
		sub	p_low_hiree
		ld	e, a
		ld	b, e
		ld	a, (g_currentRoomNumber)
		sub	0Ah
		cp	10h
		jp	z, i_dont_know_how_0
		cp	0Fh
		jp	z, loc_35AD

loc_3501:
		cp	e
		jp	nz, i_dont_know_how_0

loc_3505:
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, stru_496A
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	z, loc_3522
		ld	d, 0F2h	; 'Ú'
		ld	e, 63h ; 'c'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3522:
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		ld	a, b
		cp	2
		jp	z, l_mainLoop
		cp	10h
		jp	z, l_mainLoop
		cp	4
		jp	z, l_mainLoop
		dec	hl
		dec	hl
		ld	(hl), 1
		cp	0Fh
		jp	nz, loc_3547
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 1

loc_3547:
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		cp	0Fh
		jp	nz, loc_3559
		ld	(hl), 29h ; ')'
		inc	hl
		ld	(hl), 31h ; '1'
		jp	loc_35AA
; ---------------------------------------------------------------------------

loc_3559:
		cp	0Dh
		jp	nz, loc_3566
		ld	(hl), 27h ; '''
		inc	hl
		ld	(hl), 0CCh ; 'Ã'
		jp	loc_35AA
; ---------------------------------------------------------------------------

loc_3566:
		cp	0Bh
		jp	nz, hireTrochMaybe
		ld	(hl), 25h ; '%'
		inc	hl
		ld	(hl), 2
		jp	loc_35AA
; ---------------------------------------------------------------------------

hireTrochMaybe:
		cp	6
		jp	nz, loc_357F
		push	hl
		ld	hl, byte_4A4B
		ld	(hl), 0
		pop	hl

loc_357F:
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		inc	hl
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		add	a, 3
		ld	b, a
		ld	a, (g_currentRoomNumber)
		ld	c, a
		ld	a, b
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	a, b
		add	a, 7
		ld	(hl), a
		ld	a, c
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress

loc_35AA:
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_35AD:
		push	af
		ld	a, e
		cp	10h
		jp	z, loc_35B8
		pop	af
		jp	loc_3501
; ---------------------------------------------------------------------------

loc_35B8:
		pop	af
		jp	loc_3505
; ---------------------------------------------------------------------------

getItemCode:
		ld	(tmpObject), a
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	nc, loc_35CF
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_35D5
; ---------------------------------------------------------------------------

loc_35CF:
		ld	a, (g_currentPlanetNumber)
		ld	(tmpPlanet), a

loc_35D5:
		ld	a, (tmpObject)
		cp	p_computer
		jp	c, loc_35E5
		cp	p_piece
		jp	nc, loc_35E5
		jp	loc_3694
; ---------------------------------------------------------------------------

loc_35E5:
		cp	p_diamond
		jp	z, loc_3739
		cp	p_irridium
		jp	z, loc_3768
		cp	p_boat
		jp	z, beyond_your_power
		cp	p_paper
		jp	c, loc_3601
		cp	p_connect
		jp	nc, loc_3601
		jp	doPaperDisintegrate
; ---------------------------------------------------------------------------

loc_3601:
		cp	p_lucinda
		jp	c, loc_3662
		cp	p_lastHiree
		jp	nc, loc_3662
		cp	p_lucinda
		jp	z, loc_3840
		sub	96h ; 'ñ'
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		ex	de, hl
		ld	hl, stru_496A
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	nz, loc_362C
		ld	a, (tmpObject)
		jp	loc_34D8
; ---------------------------------------------------------------------------

loc_362C:
		ld	a, (tmpObject)
		cp	9Ch ; 'ú'
		jp	z, loc_3866
		ld	a, (tmpPlanet)
		cp	0
		jp	z, loc_3646
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3646:
		ld	a, (tmpObject)
		cp	96h ; 'ñ'
		jp	nz, loc_3658
		ld	d, 0ECh	; 'Ï'
		ld	e, 0E4h	; '‰'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3658:
		ld	d, 0ECh	; 'Ï'
		ld	e, 0A5h	; '•'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3662:
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	nz, loc_3675

beyond_your_power:
		ld	d, 4Ch ; 'L'
		ld	e, 7Eh ; '~'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3675:
		call	isCarryingTooMuch
		ld	a, b
		cp	0
		jp	nz, loc_3688
		ld	d, 4Ch ; 'L'
		ld	e, 46h ; 'F'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3688:
		ld	(hl), ic_carrying

loc_368A:
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3694:
		push	af
		ld	a, (stru_49F7.location)
		cp	location_none
		jp	z, loc_36C1
		ld	a, (tmpObject)
		cp	p_computer
		jp	z, loc_36AD
		cp	p_analyze
		jp	z, loc_36AD
		jp	loc_36C5
; ---------------------------------------------------------------------------

loc_36AD:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	nz, loc_36C1
		ld	a, (g_currentRoomNumber)
		cp	room_earth_parson
		jp	nz, loc_36C1
		pop	af
		jp	loc_36C5
; ---------------------------------------------------------------------------

loc_36C1:
		pop	af
		jp	beyond_your_power
; ---------------------------------------------------------------------------

loc_36C5:
		sub	p_computer
		ld	e, a
		ld	d, 0
		ld	hl, itemBoughtParson
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	nz, loc_36DE
		ld	d, 0F2h	; 'Ú'
		ld	e, 0B0h	; '∞'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_36DE:
		ld	a, e
		cp	0
		jp	nz, loc_3704
		ld	a, (computerInstalledFlag)
		cp	1
		jp	z, beyond_your_power
		ld	d, 11h
		ld	e, 0Ch
		call	printFromMSGFile
		ld	a, 1
		ld	(computerInstalledFlag), a
		ld	hl, stru_49F7
		ld	(hl), 0
		dec	hl
		dec	hl
		ld	(hl), 35h ; '5'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3704:
		cp	1
		jp	nz, loc_3729
		ld	a, (analyzerInstalledFlag)
		cp	1
		jp	z, beyond_your_power
		ld	d, 11h
		ld	e, 67h ; 'g'
		call	printFromMSGFile
		ld	a, 1
		ld	(analyzerInstalledFlag), a
		ld	hl, item_analyzer
		ld	(hl), 0
		dec	hl
		dec	hl
		ld	(hl), 36h ; '6'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3729:
		cp	2
		jp	nz, loc_3731
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_3731:
		ld	hl, stru_4A03.field_4
		ld	(hl), 0Ch
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_3739:
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	z, beyond_your_power
		ld	(hl), 8
		ld	d, 0B7h	; '∑'
		ld	e, 37h ; '7'
		call	printFromMSGFile
		ld	hl, byte_4A4B
		ld	a, (hl)
		cp	6
		jp	z, loc_375E
		ld	d, 0EDh	; 'Ì'
		ld	e, 9Ah ; 'ö'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_375E:
		ld	d, 0B7h	; '∑'
		ld	e, 0AEh	; 'Æ'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3768:
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	z, beyond_your_power
		ld	(hl), 8
		ld	d, 0BBh	; 'ª'
		ld	e, 4
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

doPaperDisintegrate:
		cp	p_paper
		jp	nz, loc_37B4
		ld	a, (g_currentPlanetNumber)
		cp	1
		jp	nz, loc_37AC
		ld	a, (g_currentRoomNumber)
		cp	36
		jp	nz, loc_37AC
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	a, (hl)
		cp	2Ch ; ','
		jp	nz, loc_37AC
		ld	(hl), 2Dh ; '-'
		inc	hl
		ld	(hl), 0ECh ; 'Ï'
		ld	d, 2Dh ; '-'
		ld	e, 67h ; 'g'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_37AC:
		ld	a, 6Dh ; 'm'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_37B4:
		cp	p_crystal
		jp	nz, loc_37E6
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_37DE
		ld	a, (g_currentRoomNumber)
		cp	2Ah ; '*'
		jp	nz, loc_37DE
		ld	hl, 4A39h
		ld	a, (hl)
		cp	4
		jp	nz, loc_37DE
		ld	(hl), 8
		ld	d, 0BBh	; 'ª'
		ld	e, 4
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_37DE:
		ld	a, 81h ; 'Å'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_37E6:
		cp	p_suit
		jp	nz, loc_3801
		ld	a, 6Ch ; 'l'
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, loc_3662
		ld	a, 82h ; 'Ç'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_3801:
		cp	p_key
		jp	nz, loc_381C
		ld	a, 7Eh ; '~'
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, loc_3662
		ld	a, 83h ; 'É'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_381C:
		ld	a, 79h ; 'y'
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, loc_3662
		ld	a, 7Dh ; '}'
		ld	(tmpObject), a
		call	isItemInRoom
		ld	a, b
		cp	1
		jp	z, loc_3662
		ld	a, 6Eh ; 'n'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_3840:
		ld	hl, stru_49EB
		ld	a, (hl)
		cp	7
		jp	nz, beyond_your_power
		ld	hl, byte_4A51
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	nz, beyond_your_power
		cp	2
		jp	c, loc_3861
		inc	hl
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	nz, beyond_your_power
		dec	hl

loc_3861:
		ld	(hl), 6
		jp	loc_368A
; ---------------------------------------------------------------------------

loc_3866:
		ld	hl, 4A4Bh
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	nz, beyond_your_power
		cp	2
		jp	c, loc_387E
		inc	hl
		ld	a, (g_currentRoomNumber)
		cp	(hl)
		jp	nz, beyond_your_power
		dec	hl

loc_387E:
		ld	(hl), 6
		jp	loc_368A
; ---------------------------------------------------------------------------

loc_3883:
		ld	(tmpObject), a
		ld	a, location_earth
		ld	(tmpPlanet), a
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	nz, loc_389E
		printMessage(s_unableToDoNow)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_389E:
		dec	hl
		dec	hl
		push	hl
		ld	a, (tmpObject)
		sub	69h ; 'i'
		ld	e, a
		ld	d, 0
		ld	hl, 499Fh
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	z, loc_38BE
		printMessage(s_alreadyBought)
		pop	hl
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_38BE:
		ld	(hl), 1
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		pop	hl
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_inventory:
		ld	hl, 49DFh
		ld	de, 6
		ld	c, 23h ; '#'

loc_38D7:
		ld	a, (hl)
		cp	7
		jp	z, loc_38EC
		add	hl, de
		dec	c
		jp	nz, loc_38D7
		ld	d, 4Ch ; 'L'
		ld	e, 0BDh	; 'Ω'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_38EC:
		ld	d, 4Ch ; 'L'
		ld	e, 0FCh	; '¸'
		call	printFromMSGFile
		ld	hl, g_itemList
		ld	de, 6
		ld	c, 23h ; '#'

loc_38FB:
		ld	a, (hl)
		cp	7
		jp	nz, loc_3918
		dec	hl
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

loc_3918:
		dec	c
		jp	z, l_mainLoop
		add	hl, de
		jp	loc_38FB
; ---------------------------------------------------------------------------

dropCode:
		ld	(tmpObject), a
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	nc, loc_3933
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_3939
; ---------------------------------------------------------------------------

loc_3933:
		ld	a, (g_currentPlanetNumber)
		ld	(tmpPlanet), a

loc_3939:
		ld	a, (tmpObject)
		cp	p_lucinda
		jp	nz, loc_3949
		ld	a, 78h ; 'x'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_3949:
		cp	p_troch
		jp	nz, loc_3956
		ld	a, 77h ; 'w'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_3956:
		cp	p_paper
		jp	nz, loc_3963
		ld	a, 6Dh ; 'm'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_3963:
		cp	p_crystal
		jp	nz, loc_398A

loc_3968:
		ld	hl, item_crystalStatue
		ld	a, (hl)
		cp	ic_carrying
		jp	nz, youre_not_carrying
		ld	(hl), location_none
		ld	d, 0E6h	; 'Ê'
		ld	e, 0A8h	; '®'
		call	printFromMSGFile
		ld	b, 15
		call	subtractFromScore
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_398A:
		cp	p_statue
		jp	z, loc_3968
		cp	p_suit
		jp	nz, loc_39AA
		ld	a, 6Ch ; 'l'
		ld	(tmpObject), a
		ld	hl, item_pSuit
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_39EB
		ld	a, 82h ; 'Ç'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_39AA:
		cp	p_key
		jp	nz, loc_39C5
		ld	a, 7Eh ; '~'
		ld	(tmpObject), a
		ld	hl, stru_4A75
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_39EB
		ld	a, 83h ; 'É'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_39C5:
		cp	p_disk
		jp	nz, loc_39EB
		ld	a, 79h ; 'y'
		ld	(tmpObject), a
		ld	hl, stru_4A57
		ld	a, (hl)
		cp	7
		jp	z, loc_39EB
		ld	a, 7Dh ; '}'
		ld	(tmpObject), a
		ld	hl, byte_4A6F
		ld	a, (hl)
		cp	7
		jp	z, loc_39EB
		ld	a, 6Eh ; 'n'
		ld	(tmpObject), a

loc_39EB:
		ld	a, (tmpObject)
		cp	65h ; 'e'
		jp	c, youre_not_carrying
		cp	88h ; 'à'
		jp	nc, youre_not_carrying
		sub	p_low_item
		ld	e, a
		ld	d, 0
		ld	hl, 0
		add	hl, de
		add	hl, de
		add	hl, de
		add	hl, hl
		ex	de, hl
		ld	hl, g_itemList
		add	hl, de
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_3A17
		cp	6
		jp	z, loc_3A17
		jp	youre_not_carrying
; ---------------------------------------------------------------------------

loc_3A17:
		ld	a, (tmpObject)
		cp	6Ch ; 'l'
		jp	z, loc_3A4A
		cp	82h ; 'Ç'
		jp	z, loc_3A4A

loc_3A24:
		ld	a, (tmpPlanet)
		ld	(hl), a
		inc	hl
		ld	a, (g_currentRoomNumber)
		ld	(hl), a
		ld	a, (tmpObject)
		cp	77h ; 'w'
		jp	z, loc_3A47
		cp	78h ; 'x'
		jp	z, loc_3A47
		ld	a, (carriedItemCount)
		cp	0
		jp	z, loc_3A47
		sub	1
		ld	(carriedItemCount), a

loc_3A47:
		jp	loc_3E0D
; ---------------------------------------------------------------------------

loc_3A4A:
		ld	a, (wearingSuitFlag)
		cp	0
		jp	z, loc_3A5F
		jp	loc_30EA
; ---------------------------------------------------------------------------

youre_not_carrying:
		ld	d, 4Dh ; 'M'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3A5F:
		ld	a, (tmpObject)
		cp	6Ch ; 'l'
		jp	z, loc_3A6A
		jp	loc_3A24
; ---------------------------------------------------------------------------

loc_3A6A:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	nz, loc_3A97
		ld	a, (g_currentRoomNumber)
		cp	6
		jp	nz, loc_3A97
		ld	a, (byte_49A6)
		cp	1
		jp	nz, loc_3A97
		ld	a, (byte_49A9)
		cp	1
		jp	nz, loc_3A97
		ld	a, 1
		ld	(byte_49A7), a
		ld	a, 0Eh

loc_3A91:
		ld	(stru_4A03.field_4), a
		jp	loc_3A24
; ---------------------------------------------------------------------------

loc_3A97:
		ld	a, 0Ch
		jp	loc_3A91
; ---------------------------------------------------------------------------

do_examine:
		ld	a, (g_currentPlanetNumber)
		cp	location_isthur
		jp	z, searchBubble39
		cp	4
		jp	z, loc_3AD5
		cp	location_gcs
		jp	z, examine_gcs

didnt_find_anything:
		ld	d, 4Bh ; 'K'
		ld	e, 90h ; 'ê'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

searchBubble39:
		ld	hl, purseData
		ld	a, (hl)
		cp	location_none
		jp	nz, didnt_find_anything
		ld	a, (g_currentRoomNumber)
		cp	room_isthur_bubble39
		jp	nz, didnt_find_anything
		ld	(hl), 2
		ld	d, 44h ; 'D'
		ld	e, 2Eh ; '.'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3AD5:
		ld	a, (g_currentRoomNumber)
		cp	3Ah ; ':'
		jp	nz, loc_3B84
		ld	hl, 4A6Fh
		ld	a, (hl)
		cp	8
		jp	nz, didnt_find_anything
		ld	a, (byte_49A5)
		cp	0
		jp	z, didnt_find_anything
		ld	(hl), 4
		ld	d, 0F1h	; 'Ò'
		ld	e, 0D7h	; '◊'
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49A4), a
		ld	a, 1
		ld	(IsthurLandData.canLandFlag), a
		ld	a, 1
		ld	(byte_49C4), a
		ld	a, 0
		ld	(earthLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		or	20h ; ' '
		ld	(hl), a
		ld	de, 5
		add	hl, de
		ld	(hl), 0CAh ; ' '
		inc	hl
		ld	(hl), 0
		ld	a, (g_currentPlanetNumber)
		push	af
		ld	a, 2
		ld	(g_currentPlanetNumber), a
		ld	a, 2Ch ; ','
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 93h ; 'ì'
		ld	de, 9
		add	hl, de
		ld	(hl), 2Dh ; '-'
		pop	af
		ld	(g_currentPlanetNumber), a
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_mainLoop
; ---------------------------------------------------------------------------

examine_gcs:
		ld	a, (g_currentRoomNumber)
		cp	11
		jp	nc, loc_3B71
		ld	d, 6Eh ; 'n'
		ld	e, 0BAh	; '∫'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3B71:
		sub	0Bh
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, gcsExamineMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3B84:
		cp	32h ; '2'
		jp	nz, didnt_find_anything
		ld	hl, stru_4A57
		ld	a, (hl)
		cp	8
		jp	nz, didnt_find_anything
		ld	a, (byte_4A4B)
		cp	6
		jp	nz, didnt_find_anything
		ld	(hl), 4
		ld	d, 33h ; '3'
		ld	e, 0FEh	; '˛'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_read:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, read_earth_room
		cp	location_gcs
		jp	z, read_gcs_room

nothing_to_read:
		ld	d, 0F0h	; ''
		ld	e, 0DBh	; '€'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

read_earth_room:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_house
		jp	z, read_deserted_house
		cp	room_earth_hallway_low
		jp	c, nothing_to_read
		cp	room_earth_hallway_high
		jp	nc, nothing_to_read
		sub	room_earth_hallway_low
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, earthReadMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

read_deserted_house:
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	a, (hl)
		cp	0F7h
		jp	nz, nothing_to_read
		ld	d, 2Dh ; '-'
		ld	e, 91h ; 'ë'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

read_gcs_room:
		ld	a, (g_currentRoomNumber)
		cp	4
		jp	nc, loc_3C0B
		ld	d, 72h ; 'r'
		ld	e, 0DBh	; '€'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3C0B:
		sub	4
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, gcsReadMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

hitMachine:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	z, loc_3C30

i_dont_see_a_machine:
		ld	d, 0FAh	; '˙'
		ld	e, 2Eh ; '.'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3C30:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, i_dont_see_a_machine
		ld	a, (lockerRentedFlag)
		cp	0
		jp	nz, cannot_rent_locker
		ld	d, 69h ; 'i'
		ld	e, 0FFh
		call	printFromMSGFile
		ld	hl, keyData
		ld	(hl), 3
		ld	a, 1
		ld	(lockerRentedFlag), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

cannot_rent_locker:
		ld	d, 6Ah ; 'j'
		ld	e, 0DFh	; 'ﬂ'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_find_locker:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	z, find_locker_code

i_dont_know_how_1:
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

find_locker_code:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, i_dont_know_how_1
		ld	d, 50h ; 'P'
		ld	e, 0C9h	; '…'
		call	printFromMSGFile
		ld	hl, byte_47E6
		call	outputString

loc_3C85:
		ld	hl, byte_47CA
		call	outputString

loc_3C8B:
		ld	hl, byte_47E8
		ld	b, (hl)
		inc	hl
		ld	c, (hl)

loc_3C91:
		call	find_locker_getc
		cp	32h ; '2'
		jp	nz, loc_3CA2
		push	af
		ld	a, b
		add	a, 1
		ld	b, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CA2:
		cp	34h ; '4'
		jp	nz, loc_3CB0
		push	af
		ld	a, c
		sub	1
		ld	c, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CB0:
		cp	36h ; '6'
		jp	nz, loc_3CBE
		push	af
		ld	a, c
		add	a, 1
		ld	c, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CBE:
		cp	38h ; '8'
		jp	nz, loc_3CCC
		push	af
		ld	a, b
		sub	1
		ld	b, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CCC:
		cp	30h ; '0'
		jp	nz, loc_3C91
		ld	hl, byte_47E8
		ld	a, (hl)
		cp	23h ; '#'
		jp	z, loc_3CDF
		cp	2Ah ; '*'
		jp	z, loc_3CF1

loc_3CDF:
		inc	hl
		ld	a, (hl)
		cp	44h ; 'D'
		jp	z, loc_3CE9
		jp	loc_3D03
; ---------------------------------------------------------------------------

loc_3CE9:
		ld	a, 2
		ld	(byte_49A6), a
		jp	loc_3D08
; ---------------------------------------------------------------------------

loc_3CF1:
		inc	hl
		ld	a, (hl)
		cp	38h ; '8'
		jp	z, loc_3CFB
		jp	loc_3D03
; ---------------------------------------------------------------------------

loc_3CFB:
		ld	a, 1
		ld	(byte_49A6), a
		jp	loc_3D08
; ---------------------------------------------------------------------------

loc_3D03:
		ld	a, 0
		ld	(byte_49A6), a

loc_3D08:
		ld	hl, byte_47DD
		call	outputString
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_3D11:
		ld	a, b
		sub	20h ; ' '
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, 2BDCh
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	z, loc_3C8B
		sub	1
		cp	c
		jp	nc, loc_3C8B
		inc	hl
		ld	a, (hl)
		cp	c
		jp	c, loc_3C8B
		ld	hl, 47E8h
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, byte_47E0
		call	outputString
		ld	hl, byte_47E6
		call	outputString
		ld	hl, 47E2h
		ld	(hl), b
		inc	hl
		ld	(hl), c
		jp	loc_3C85	; End of "find locker" mini game
; ---------------------------------------------------------------------------

loc_3D49:
		ld	b, 0		; Wear suit
		jp	loc_3D55
; ---------------------------------------------------------------------------

do_wear_psuit:
		ld	b, 1		; wear p-suit
		jp	loc_3D55
; ---------------------------------------------------------------------------

do_wear_rad_suit:
		ld	b, 2		; wear rad suit

loc_3D55:
		ld	a, (wearingSuitFlag)
		cp	0
		jp	z, loc_3D67
		ld	d, 0F3h	; 'Û'
		ld	e, 6Dh ; 'm'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3D67:
		ld	a, b
		cp	1
		jp	z, loc_3D7D
		cp	2
		jp	z, loc_3DA2
		ld	a, (item_pSuit.location)
		cp	ic_carrying
		jp	z, loc_3D7D
		jp	loc_3DA2
; ---------------------------------------------------------------------------

loc_3D7D:
		ld	hl, item_pSuit
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_3D90
		ld	d, 6Ch ; 'l'
		ld	e, 0C2h	; '¬'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3D90:
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 1
		ld	(wearingSuitFlag), a
		dec	hl
		ld	(hl), 7
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3DA2:
		ld	hl, item_radSuit
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_3DB5
		ld	d, 4Dh ; 'M'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3DB5:
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 2
		ld	(wearingSuitFlag), a
		dec	hl
		ld	(hl), 22h ; '"'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

removeSuitCode:
		ld	b, 0
		jp	loc_3DD3
; ---------------------------------------------------------------------------

loc_3DCC:
		ld	b, 1
		jp	loc_3DD3
; ---------------------------------------------------------------------------

loc_3DD1:
		ld	b, 2

loc_3DD3:
		ld	a, (wearingSuitFlag)
		cp	0
		jp	nz, loc_3DE5

loc_3DDB:
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3DE5:
		ld	a, b
		cp	0
		jp	nz, loc_3DEF
		ld	a, (wearingSuitFlag)
		ld	b, a

loc_3DEF:
		ld	a, (wearingSuitFlag)
		cp	b
		jp	nz, loc_3DDB
		ld	hl, wearingSuitFlag
		ld	(hl), 0
		cp	2
		jp	z, loc_3E08
		ld	hl, stru_4A03.field_5
		ld	(hl), 6
		jp	loc_3E0D
; ---------------------------------------------------------------------------

loc_3E08:
		ld	hl, item_crystalStatue.field_5
		ld	(hl), 1Bh

loc_3E0D:
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

do_save:
		ld	de, currentTimeMaybe
		ld	hl, baseTimeMaybe ; "1620"
		ld	bc, 4
		call	abbreviateWord
		ld	a, 1
		ld	(g_restoredGameFlag), a
		ld	c, 0Eh
		ld	hl, byte_46F0

loc_3E2D:
		ld	(hl), 0
		inc	hl
		dec	c
		jp	nz, loc_3E2D
		ld	d, 0F6h	; 'ˆ'
		ld	e, 4Ch ; 'L'
		call	printFromMSGFile
		ld	hl, byte_46F0
		ld	b, 0

loc_3E40:
		call	getc
		cp	8
		jp	z, loc_3EA9
		cp	7Fh ; ''
		jp	z, loc_3ECB
		cp	61h ; 'a'
		jp	c, loc_3E59
		cp	7Bh ; '{'
		jp	nc, loc_3E59
		sub	20h ; ' '

loc_3E59:
		ld	(hl), a
		inc	hl
		inc	b
		cp	0Dh
		jp	nz, loc_3E40
		dec	hl
		ld	(hl), 0
		ld	hl, byte_46F0
		ld	a, 2
		call	sub_2CA7
		cp	1
		jp	nz, loc_3E7B
		ld	d, 4Dh ; 'M'
		ld	e, 0EAh	; 'Í'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3E7B:
		ld	a, 2
		ld	bc, 1C00h
		ld	de, 4944h
		call	sub_2CE2
		cp	1
		jp	nz, loc_3E9A
		ld	a, 2
		call	closeFile
		ld	d, 4Dh ; 'M'
		ld	e, 0FFh
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3E9A:
		ld	a, 2
		call	closeFile
		ld	d, 4Eh ; 'N'
		ld	e, 14h
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3EA9:
		ld	a, b
		cp	0
		jp	nz, loc_3EBC
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EBC:
		dec	b
		dec	hl
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3ECB:
		ld	a, b
		cp	0
		jp	nz, loc_3EDE
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EDE:
		dec	b
		dec	hl
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EED:
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	z, loc_3EFF

loc_3EF5:
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3EFF:
		ld	a, (g_currentRoomNumber)
		cp	2Dh ; '-'
		jp	nz, loc_3EF5
		ld	a, (byte_4A45)
		cp	4
		jp	z, loc_3F19

loc_3F0F:
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3F19:
		ld	a, (byte_4A63)
		cp	7
		jp	nz, loc_3F0F
		ld	hl, 4A43h
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ld	a, 8
		ld	(byte_4A63), a
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_3F38:
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (g_currentRoomNumber)
		cp	2Dh ; '-'
		jp	nz, loc_3EF5
		ld	a, (byte_4A45)
		cp	4
		jp	nz, loc_3F0F
		ld	a, (byte_4A69)
		cp	7
		jp	nz, loc_3F0F
		ld	hl, 4A43h
		ld	a, (hl)
		add	a, 2
		ld	(hl), a
		ld	a, 8
		ld	(byte_4A69), a
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_3F6F:
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (g_currentRoomNumber)
		cp	2Dh ; '-'
		jp	nz, loc_3EF5
		ld	a, (byte_4A45)
		cp	4
		jp	nz, loc_3F0F
		ld	a, 8
		ld	(byte_4A45), a
		ld	a, (byte_49C0)
		cp	1
		jp	z, loc_3F9E

loc_3F94:
		ld	d, 0BEh	; 'æ'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile
		jp	l_forcedGameEnding
; ---------------------------------------------------------------------------

loc_3F9E:
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 2Eh ; '.'
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3FB1:
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (g_currentRoomNumber)
		cp	2Dh ; '-'
		jp	c, loc_3EF5
		cp	30h ; '0'
		jp	nc, loc_3EF5
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49C0), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 2Eh ; '.'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 67h ; 'g'
		ld	a, 2Fh ; '/'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 67h ; 'g'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_4002:
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (g_currentRoomNumber)
		cp	2Dh ; '-'
		jp	c, loc_3EF5
		cp	31h ; '1'
		jp	nc, loc_3EF5
		cp	2Eh ; '.'
		jp	c, loc_4024
		cp	30h ; '0'
		jp	nc, loc_4024
		jp	loc_4060
; ---------------------------------------------------------------------------

loc_4024:
		ld	d, 0BEh	; 'æ'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile
		ld	a, 0
		ld	(byte_49C0), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 2Dh ; '-'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 6Ah ; 'j'
		ld	a, 30h ; '0'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 6Ah ; 'j'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_4060:
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 0
		ld	(byte_49C0), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 2Eh ; '.'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 2Fh ; '/'
		ld	a, 2Fh ; '/'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 2Eh ; '.'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_409C:
		ld	a, (g_currentRoomNumber)
		cp	0
		jp	z, loc_40B3
		cp	1
		jp	z, loc_40B3

loc_40A9:
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_40B3:
		ld	a, (byte_4A51)
		cp	6
		jp	z, loc_40CB
		ld	a, (byte_4A52)
		cp	0
		jp	z, loc_40CB
		cp	1
		jp	z, loc_40CB
		jp	loc_40A9
; ---------------------------------------------------------------------------

loc_40CB:
		ld	a, (analyzerInstalledFlag)
		cp	1
		jp	z, loc_40DD
		ld	d, 0C9h	; '…'
		ld	e, 0C1h	; '¡'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_40DD:
		ld	d, 0C9h	; '…'
		ld	e, 0Bh
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49A5), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_40EC:
		ld	hl, byte_42FE
		call	outputString

loc_40F2:
		ld	hl, byte_429C
		call	outputString
		ld	hl, inputBuffer

loc_40FB:
		call	getc
		ld	(hl), a
		inc	hl
		cp	0Dh
		jp	z, loc_4108
		jp	loc_40FB
; ---------------------------------------------------------------------------

loc_4108:
		ld	a, (inputBuffer)
		ld	b, a
		ld	hl, byte_4296
		ld	c, 0

loc_4111:
		ld	a, (hl)
		cp	b
		jp	z, loc_4121
		inc	hl
		inc	c
		ld	a, c
		cp	6
		jp	z, loc_4208
		jp	loc_4111
; ---------------------------------------------------------------------------

loc_4121:
		ld	a, c
		cp	1
		jp	z, loc_4243
		cp	4
		jp	z, loc_4264

loc_412C:
		ld	de, 0
		ld	a, c
		ld	(byte_433B), a
		add	a, 1
		cp	6
		jp	nz, loc_413C
		ld	a, 0

loc_413C:
		ld	e, a
		ld	hl, byte_4296
		add	hl, de
		ld	a, (hl)
		cp	2Dh ; '-'
		jp	z, loc_415F
		ld	a, c
		sub	1
		cp	0FFh
		jp	nz, loc_4151
		ld	a, 5

loc_4151:
		ld	e, a
		ld	hl, byte_4296
		add	hl, de
		ld	a, (hl)
		cp	2Dh ; '-'
		jp	z, loc_415F
		jp	loc_4208
; ---------------------------------------------------------------------------

loc_415F:
		ld	a, e
		ld	(byte_433C), a

loc_4163:
		ld	hl, byte_4296
		ld	a, (byte_433B)
		ld	e, a
		add	hl, de
		ld	a, 2Dh ; '-'
		ld	(hl), a
		ld	hl, byte_4296
		ld	a, (byte_433C)
		ld	e, a
		add	hl, de
		ld	a, (inputBuffer)
		ld	(hl), a
		ld	a, (byte_433B)
		call	sub_4285
		ld	c, 4

loc_4182:
		ld	hl, byte_4303
		call	outputString
		dec	c
		ld	a, c
		cp	0
		jp	z, loc_4198
		ld	hl, byte_430E
		call	outputString
		jp	loc_4182
; ---------------------------------------------------------------------------

loc_4198:
		ld	a, (byte_433C)
		call	sub_4285
		ld	hl, byte_4325
		call	outputString
		ld	hl, byte_430E
		call	outputString
		ld	hl, byte_4334
		call	outputString
		ld	a, (inputBuffer)
		ld	b, a
		ld	hl, 42B8h
		ld	de, 8

loc_41BA:
		ld	a, (hl)
		cp	b
		jp	z, loc_41C3
		add	hl, de
		jp	loc_41BA
; ---------------------------------------------------------------------------

loc_41C3:
		inc	hl
		call	outputString
		ld	hl, byte_4334
		call	outputString
		ld	hl, byte_430E
		call	outputString
		ld	hl, byte_4325
		call	outputString
		ld	hl, byte_430E
		call	outputString
		ld	hl, byte_4325
		call	outputString
		ld	hl, byte_4298
		ld	a, (hl)
		cp	42h ; 'B'
		jp	nz, loc_4208
		inc	hl
		ld	a, (hl)
		cp	52h ; 'R'
		jp	nz, loc_4208
		ld	a, 1
		ld	(byte_49AF), a
		ld	a, 21h ; '!'
		ld	(g_currentRoomNumber), a
		ld	hl, byte_47DD
		call	outputString
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_4208:
		ld	a, (byte_4344)
		cp	30h ; '0'
		jp	z, loc_4218
		sub	1
		ld	(byte_4344), a
		jp	loc_422A
; ---------------------------------------------------------------------------

loc_4218:
		ld	a, 39h ; '9'
		ld	(byte_4344), a
		ld	a, (byte_4343)
		cp	30h ; '0'
		jp	z, loc_4233
		sub	1
		ld	(byte_4343), a

loc_422A:
		ld	hl, 433Dh
		call	outputString
		jp	loc_40F2
; ---------------------------------------------------------------------------

loc_4233:
		ld	hl, byte_47DD
		call	outputString
		ld	d, 0FAh	; '˙'
		ld	e, 4Ah ; 'J'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_4243:
		ld	hl, 429Ah
		ld	a, (hl)
		cp	2Dh ; '-'
		jp	nz, loc_412C
		ld	a, (byte_4297)
		ld	(byte_429A), a
		ld	a, 2Dh ; '-'
		ld	(byte_4297), a
		ld	a, 1
		ld	(byte_433B), a
		ld	a, 4
		ld	(byte_433C), a
		jp	loc_4163
; ---------------------------------------------------------------------------

loc_4264:
		ld	hl, 4297h
		ld	a, (hl)
		cp	2Dh ; '-'
		jp	nz, loc_412C
		ld	a, (byte_429A)
		ld	(byte_4297), a
		ld	a, 2Dh ; '-'
		ld	(byte_429A), a
		ld	a, 4
		ld	(byte_433B), a
		ld	a, 1
		ld	(byte_433C), a
		jp	loc_4163

; =============== S U B	R O U T	I N E =======================================


sub_4285:
		ld	e, a
		ld	hl, 0
		add	hl, de
		add	hl, hl
		add	hl, hl
		add	hl, de
		ex	de, hl
		ld	hl, byte_42E0
		add	hl, de
		call	outputString
		ret
; End of function sub_4285

; ---------------------------------------------------------------------------
byte_4296:	db 'O'
byte_4297:	db 'Y'
byte_4298:	db 'R'
		db 'B'
byte_429A:	db 'G'
		db '-'
byte_429C:	db SET_CURSOR_ADDRESS(20, 17)
		.ascii 'What color?        '
		db SET_CURSOR_ADDRESS(20, 30)
		db STRING_TERM
byte_42B8:	.ascii 'OORANGE'
		db STRING_TERM
		.ascii 'YYELLOW'
		db STRING_TERM
		.ascii 'R RED  '
		db STRING_TERM
		.ascii 'B BLUE '
		db STRING_TERM
		.ascii 'GGREEN '
		db STRING_TERM
byte_42E0:	db SET_CURSOR_ADDRESS(8, 18)
		db STRING_TERM
		db SET_CURSOR_ADDRESS(8, 30)
		db STRING_TERM
		db SET_CURSOR_ADDRESS(8, 42)
		db STRING_TERM
		db SET_CURSOR_ADDRESS(13, 42)
		db STRING_TERM
		db SET_CURSOR_ADDRESS(13, 30)
		db STRING_TERM
		db SET_CURSOR_ADDRESS(13, 18)
		db STRING_TERM
byte_42FE:	db EXIT_GRAPHICS_MODE
		db EXIT_REVERSE_VIDEO_MODE
		db STRING_TERM
byte_4303:	.ascii '          '
		db STRING_TERM
byte_430E:	db CURSOR_DOWN
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db STRING_TERM
byte_4325:	db ENTER_GRAPHICS_MODE
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db EXIT_GRAPHICS_MODE
		db STRING_TERM
byte_4334:	db ENTER_GRAPHICS_MODE
		db key_ELLIPSIS
		db key_ELLIPSIS
		db EXIT_GRAPHICS_MODE
		db STRING_TERM
byte_433B:	db 0
byte_433C:	db 0
byte_433D:	db SET_CURSOR_ADDRESS(18, 27)
		db ENTER_REVERSE_VIDEO_MODE
byte_4343:	db '2'
byte_4344:	db '5'
		db EXIT_REVERSE_VIDEO_MODE
		db STRING_TERM

; ---------------------------------------------------------------------------
loc_4348:
		ld	hl, byte_46D6
		call	outputString
		ld	hl, inputBuffer

loc_4351:
		call	getc
		ld	(hl), a
		inc	hl
		cp	0Dh
		jp	z, loc_435E
		jp	loc_4351
; ---------------------------------------------------------------------------

loc_435E:
		ld	a, (inputBuffer)
		cp	4Ch ; 'L'
		jp	z, loc_4382
		cp	31h ; '1'
		jp	z, loc_4382
		cp	4Dh ; 'M'
		jp	z, loc_43B4
		cp	32h ; '2'
		jp	z, loc_43B4
		cp	52h ; 'R'
		jp	z, loc_43E6
		cp	33h ; '3'
		jp	z, loc_43E6
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_4382:
		ld	hl, byte_469E
		call	outputString
		ld	a, (byte_46E4)
		and	80h ; 'Ä'
		cp	0
		jp	z, loc_43A3
		ld	a, (byte_46E4)
		and	7Fh ; ''
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_447C
; ---------------------------------------------------------------------------

loc_43A3:
		ld	a, (byte_46E4)
		or	80h ; 'Ä'
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_4418
; ---------------------------------------------------------------------------

loc_43B4:
		ld	hl, byte_46A5
		call	outputString
		ld	a, (byte_46E4)
		and	40h ; '@'
		cp	0
		jp	z, loc_43D5
		ld	a, (byte_46E4)
		and	0BFh ; 'ø'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_444A
; ---------------------------------------------------------------------------

loc_43D5:
		ld	a, (byte_46E4)
		or	40h ; '@'
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_4418
; ---------------------------------------------------------------------------

loc_43E6:
		ld	hl, 46ACh
		call	outputString
		ld	a, (byte_46E4)
		and	20h ; ' '
		cp	0
		jp	z, loc_4407
		ld	a, (byte_46E4)
		and	0DFh ; 'ﬂ'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_444A
; ---------------------------------------------------------------------------

loc_4407:
		ld	a, (byte_46E4)
		or	20h ; ' '
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_44E0
; ---------------------------------------------------------------------------

loc_4418:
		ld	hl, 46B3h
		call	outputString
		ld	a, (byte_46E4)
		and	10h
		cp	0
		jp	z, loc_4439
		ld	a, (byte_46E4)
		and	0EFh ; 'Ô'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_44AE
; ---------------------------------------------------------------------------

loc_4439:
		ld	a, (byte_46E4)
		or	10h
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_447C
; ---------------------------------------------------------------------------

loc_444A:
		ld	hl, 46BAh
		call	outputString
		ld	a, (byte_46E4)
		and	8
		cp	0
		jp	z, loc_446B
		ld	a, (byte_46E4)
		and	0F7h ; '˜'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_44E0
; ---------------------------------------------------------------------------

loc_446B:
		ld	a, (byte_46E4)
		or	8
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_44AE
; ---------------------------------------------------------------------------

loc_447C:
		ld	hl, 46C1h
		call	outputString
		ld	a, (byte_46E4)
		and	4
		cp	0
		jp	z, loc_449D
		ld	a, (byte_46E4)
		and	0FBh ; '˚'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_449D:
		ld	a, (byte_46E4)
		or	4
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_44AE:
		ld	hl, 46C8h
		call	outputString
		ld	a, (byte_46E4)
		and	2
		cp	0
		jp	z, loc_44CF
		ld	a, (byte_46E4)
		and	0FDh ; '˝'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_44CF:
		ld	a, (byte_46E4)
		or	2
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_44E0:
		ld	hl, byte_46CF
		call	outputString
		ld	a, (byte_46E4)
		and	1
		cp	0
		jp	z, loc_4501
		ld	a, (byte_46E4)
		and	0FEh ; '˛'
		ld	(byte_46E4), a
		ld	hl, byte_4634
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_4501:
		ld	a, (byte_46E4)
		or	1
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString

loc_450F:
		ld	a, (byte_46E4)
		cp	0FFh
		jp	z, loc_4547
		cp	0

loc_4519:
		jp	z, loc_45FC
		ld	a, (byte_46EC)
		cp	30h ; '0'
		jp	z, loc_452C
		sub	1
		ld	(byte_46EC), a
		jp	loc_453E
; ---------------------------------------------------------------------------

loc_452C:
		ld	a, (byte_46EB)
		cp	30h ; '0'
		jp	z, loc_45FC
		sub	1
		ld	(byte_46EB), a
		ld	a, 39h ; '9'
		ld	(byte_46EC), a

loc_453E:
		ld	hl, byte_46E5
		call	outputString
		jp	loc_4348
; ---------------------------------------------------------------------------

loc_4547:
		ld	a, 5Ah ; 'Z'
		ld	(byte_46E4), a
		ld	hl, byte_46EB
		ld	(hl), 31h ; '1'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	a, (stru_4A57.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, (byte_4A6F)
		cp	7
		jp	nz, loc_45CE
		ld	a, (stru_4A15.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, 1
		ld	(byte_49B0), a
		ld	a, 1
		ld	(byte_49A4), a
		ld	(IsthurLandData.canLandFlag), a
		ld	(byte_49C5), a
		ld	a, 0
		ld	(earthLandData.canLandFlag), a
		ld	(gcsLandData.canLandFlag), a
		ld	(navierLandData.canLandFlag), a
		ld	(solomawLandData.canLandFlag), a
		ld	a, 2
		ld	(g_currentPlanetNumber), a
		ld	a, 2Dh ; '-'
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 2Eh ; '.'
		ld	de, 8
		add	hl, de
		ld	(hl), 2Eh ; '.'
		ld	a, 3
		ld	(g_currentPlanetNumber), a
		ld	a, 13h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	hl, byte_47DD
		call	outputString
		ld	d, 0FBh	; '˚'
		ld	e, 15h
		call	printFromMSGFile
		ld	a, 12
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_45CE:
		ld	hl, byte_47DD
		call	outputString
		ld	d, 0A0h	; '†'
		ld	e, 0Eh
		call	printFromMSGFile
		ld	a, (byte_49BE)
		cp	2
		jp	nz, loc_45F1
		ld	d, 0A0h	; '†'
		ld	e, 93h ; 'ì'
		call	printFromMSGFile
		ld	d, 0A1h	; '°'
		ld	e, 26h ; '&'
		call	printFromMSGFile

loc_45F1:
		ld	a, room_gcs_computerCenter
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_45FC:
		ld	a, 5Ah ; 'Z'
		ld	(byte_46E4), a
		ld	hl, byte_46EB
		ld	(hl), 31h ; '1'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	hl, byte_47DD
		call	outputString
		ld	d, 9Fh ; 'ü'
		ld	e, 3Ch ; '<'
		call	printFromMSGFile
		ld	a, 11h
		ld	(g_currentRoomNumber), a
		call	getBGNRoomAddress
		ld	b, 0Ah
		call	subtractFromScore
		ld	d, 78h ; 'x'
		ld	e, 6Fh ; 'o'
		call	printFromMSGFile
		ld	d, 79h ; 'y'
		ld	e, 56h ; 'V'
		call	printFromMSGFile
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------
byte_4634:	db ENTER_GRAPHICS_MODE
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db CURSOR_DOWN
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db CURSOR_DOWN
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db key_ELLIPSIS
		db EXIT_GRAPHICS_MODE
		db KEYBOARD_ENABLE
		db STRING_TERM
byte_4669:	db ENTER_REVERSE_VIDEO_MODE
		db ' ', ' ', ' ', ' ', ' ', ' '
		db CURSOR_DOWN
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db ' ', ' ', ' ', ' ', ' ', ' '
		db CURSOR_DOWN
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db CURSOR_LEFT
		db ' ', ' ', ' ', ' ', ' ', ' '
		db EXIT_REVERSE_VIDEO_MODE
		db KEYBOARD_ENABLE
		db STRING_TERM
byte_469E:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(7, 21)
		db STRING_TERM
byte_46A5:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(7, 31)
		db STRING_TERM
byte_46AC:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(7, 41)
		db STRING_TERM
byte_46B3:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(12, 26)
		db STRING_TERM
byte_46BA:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(12, 36)
		db STRING_TERM
byte_46C1:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(17, 21)
		db STRING_TERM
byte_46C8:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(17, 31)
		db STRING_TERM
byte_46CF:	db KEYBOARD_DISABLE
		db SET_CURSOR_ADDRESS(17, 41)
		db STRING_TERM
byte_46D6:	db SET_CURSOR_ADDRESS(23, 21)
		db ERASE_EOL
		db SET_CURSOR_ADDRESS(23, 23)
		db '?', ' ', ' '
		db STRING_TERM
byte_46E4:	db 'Z'
byte_46E5:	db SET_CURSOR_ADDRESS(21, 26)
		db ENTER_REVERSE_VIDEO_MODE
byte_46EB:	db '1'
byte_46EC:	db '0'
		db EXIT_REVERSE_VIDEO_MODE
		db STRING_TERM
byte_46F0:	db  2Fh	; /
		db  3Eh	; >
		db  13h
		db  32h	; 2
		db  5Eh	; ^
		db  49h	; I
		db 0CDh	; Õ
		db 0AAh	; ™
		db  1Eh
		db 0C3h	; √
		db  8Ah	; ä
		db    2
		db  3Eh	; >
		db  5Ah	; Z
		db  32h	; 2
		db 0E4h	; ‰
		db  46h	; F
		db  21h	; !
		db 0EBh	; Î
		db  46h	; F
byte_4704:	db  36h	; 6
		db  31h	; 1
		db  23h	; #
		db  36h	; 6
		db  30h	; 0
		db  21h	; !
		db 0DDh	; ›
		db  47h	; G
		db 0CDh	; Õ
		db  0Ch
		db  2Ch	; ,
		db  16h
		db  9Fh	; ü
		db  1Eh
		db  3Ch	; <
		db 0CDh	; Õ
		db  4Ch	; L
		db  2Fh	; /
		db  3Eh	; >
		db  11h
aAGalactic_msg:	.ascii 'A:GALACTIC.MSG',0 ; DATA XREF: ROM:010Fo
aBGalactic_msg:	.ascii 'B:GALACTIC.MSG',0 ; DATA XREF: ROM:011Co
aCGalactic_msg:	.ascii 'C:GALACTIC.MSG',0 ; DATA XREF: ROM:0129o
aDGalactic_msg:	.ascii 'D:GALACTIC.MSG',0 ; DATA XREF: ROM:0136o
aAGalactic_bgn:	.ascii 'A:GALACTIC.BGN',0 ; DATA XREF: ROM:01E9o
aBGalactic_bgn:	.ascii 'B:GALACTIC.BGN',0 ; DATA XREF: ROM:01F6o
aCGalactic_bgn:	.ascii 'C:GALACTIC.BGN',0 ; DATA XREF: ROM:0203o
aDGalactic_bgn:	.ascii 'D:GALACTIC.BGN',0 ; DATA XREF: ROM:0210o
byte_4790:	db CLEAR_DISPLAY
		db STRING_TERM
s_errorPrefix:	.ascii 0Dh,'ERROR',80h
s_clockString:	db  0Dh			; DATA XREF: sub_209F+2o
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  41h	; A
		db  20h
		db  63h	; c
		db  6Ch	; l
		db  6Fh	; o
		db  63h	; c
		db  6Bh	; k
		db  20h
		db  6Fh	; o
		db  6Eh	; n
		db  20h
		db  74h	; t
		db  68h	; h
		db  65h	; e
		db  20h
		db  77h	; w
		db  61h	; a
		db  6Ch	; l
		db  6Ch	; l
		db  20h
		db  72h	; r
		db  65h	; e
		db  61h	; a
		db  64h	; d
		db  73h	; s
		db  20h
currentTimeMaybe:db '1', '6', '2', '0'  ; DATA XREF: ROM:0249o ROM:do_saveo ...
		db  20h
		db  68h	; h
		db  6Fh	; o
		db  75h	; u
		db  72h	; r
		db  73h	; s
		db  2Eh	; .
		db  0Dh
		db  80h	; Ä
byte_47CA:	db SET_CURSOR_ADDRESS(16, 46)
		.ascii '[0 to exit]?  '
		db STRING_TERM
byte_47DD:	db CLEAR_DISPLAY
		db STRING_TERM
byte_47E0:	db SET_CURSOR_ADDRESS(19, 9)
		.ascii ' '
		db STRING_TERM
byte_47E6:	db  key_ESC
		db  'Y'
byte_47E8:	db 32h			; y: 19
		db 28h			; x: 9
		db ENTER_GRAPHICS_MODE
		db key_BLANK
		db EXIT_GRAPHICS_MODE
		db STRING_TERM
turnCounterMaybe:db 0			; DATA XREF: incrementClock+31o
byte_47F1:	db 0			; DATA XREF: ROM:12AAw	ROM:12EAw ...
numInputWords:	db 0			; DATA XREF: ROM:093Cr	ROM:0D53r ...
		db    0
firstCommand:	db [ 5 ], 2Dh		; DATA XREF: parseInput+38o
					; parseInput:loc_2028o
		db 80h
secondCommand:	db [ 5 ], 2Dh		; DATA XREF: parseInput+B4o
		db 80h
abbrevCmdBuffer:db [ 5 ], 2Dh		; DATA XREF: sub_1E11+30o
					; parseInput+3Bo ...
firstToken:	db 0			; DATA XREF: ROM:twoWordCommandr
					; ROM:twoWordCommand_0r ...
secondToken:	db 0			; DATA XREF: ROM:0970r	ROM:13B2r ...
playerCommand:	db 0			; DATA XREF: ROM:singleWordCommandr
					; ROM:0D60r ...
		db    0
		db    8
currentRoomFlags:db 0			; DATA XREF: lookFunction+8w
					; lookFunction+2Br ...
		db    0
		db    0
		db    0
tmpObject:	db 0			; DATA XREF: isItemInRoomr
					; ROM:getItemCodew ...
tmpPlanet:	db 0			; DATA XREF: sub_1CAD+21w sub_1CAD+2Aw ...
inputBuffer:	db 9Fh			; DATA XREF: getStringMaybeo
					; getStringMaybe+Fo ...
		db  1Eh
		db  3Ch	; <
		db 0CDh	; Õ
		db  4Ch	; L
		db  2Fh	; /
		db  3Eh	; >
		db  11h
		db  41h	; A
		db  3Ah	; :
		db  47h	; G
		db  41h	; A
		db  4Ch	; L
		db  41h	; A
		db  43h	; C
		db  54h	; T
		db  49h	; I
		db  43h	; C
		db  2Eh	; .
		db  4Dh	; M
		db  53h	; S
		db  47h	; G
		db    0
		db  42h	; B
		db  3Ah	; :
		db  47h	; G
		db  41h	; A
		db  4Ch	; L
		db  41h	; A
		db  43h	; C
		db  54h	; T
		db  49h	; I
		db  43h	; C
		db  2Eh	; .
		db  4Dh	; M
		db  53h	; S
		db  47h	; G
		db    0
		db  43h	; C
		db  3Ah	; :
		db  47h	; G
		db  41h	; A
		db  4Ch	; L
		db  41h	; A
		db  43h	; C
		db  54h	; T
		db  49h	; I
		db  43h	; C
		db  2Eh	; .
		db  4Dh	; M
		db  53h	; S
		db  47h	; G
readDMAAddress:	db 0, 44h, 3Ah,	47h, 41h, 4Ch, 41h, 43h, 54h, 49h, 43h
					; DATA XREF: printFromMSGFile+11o
					; printFromMSGFile+1Do	...
		db 2Eh,	4Dh, 53h, 47h, 0, 41h, 3Ah, 47h, 41h, 4Ch, 41h
		db 43h,	54h, 49h, 43h, 2Eh, 42h, 47h, 4Eh, 0, 42h, 3Ah
		db 47h,	41h, 4Ch, 41h, 43h, 54h, 49h, 43h, 2Eh,	42h, 47h
		db 4Eh,	0, 43h,	3Ah, 47h, 41h, 4Ch, 41h, 43h, 54h, 49h
		db 43h,	2Eh, 42h, 47h, 4Eh, 0, 44h, 3Ah, 47h, 41h, 4Ch
		db 41h,	43h, 54h, 49h, 43h, 2Eh, 42h, 47h, 4Eh,	0, 1Bh
		db 45h,	80h, 0Dh, 45h
		db [ 2 ], 52h
		db 4Fh,	52h, 80h, 0Dh
		db [ 8 ], 20h
		db 41h,	20h, 63h, 6Ch, 6Fh, 63h, 6Bh, 20h, 6Fh,	6Eh, 20h
		db 74h,	68h, 65h, 20h, 77h, 61h
		db [ 2 ], 6Ch
		db 20h,	72h, 65h, 61h, 64h, 73h, 20h, 31h, 36h,	32h, 30h
		db 20h,	68h, 6Fh, 75h, 72h, 73h, 2Eh, 0Dh, 80h,	1Bh, 59h
		db 2Fh,	4Dh, 5Bh, 30h, 20h, 74h, 6Fh, 20h, 65h,	78h, 69h
		db 74h,	5Dh, 3Fh
		db [ 2 ], 20h
		db 80h,	1Bh, 45h, 80h, 1Bh, 59h, 32h, 28h, 20h,	80h, 1Bh
		db 59h,	32h, 28h, 1Bh, 46h, 5Eh, 1Bh, 47h, 80h
		db [ 4 ], 0
		db [ 5 ], 2Dh
		db 80h
		db [ 5 ], 2Dh
		db 80h,	0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh
baseBGNAddress:	db 1Bh
		db  46h	; F
		db  1Bh
		db  70h	; p
		db  1Bh
		db  78h	; x
		db  31h	; 1
		db  1Bh
		db  59h	; Y
		db  38h	; 8
		db  20h
		db  1Bh
		db  7Dh	; }
		db  1Bh
		db  40h	; @
		db  1Bh
		db  23h	; #
		db    0
		db    0
		db    0
scoreProbably:	dw 40			; DATA XREF: ROM:04C2r	ROM:04C8w ...
byte_495A:	db 0Ah			; DATA XREF: lookFunction+11r
					; lookFunction+15w ...
bgnRoomAddressMaybe:		dw 0		; DATA XREF: ROM:0325r	ROM:0355r ...
g_currentPlanetNumber:		db 1		; DATA XREF: ROM:0299r	ROM:0379r ...
g_currentRoomNumber:		db 11h		; DATA XREF: ROM:02A1r	ROM:0319r ...
byte_495F:	db 1			; DATA XREF: ROM:3159w	ROM:3161w ...
byte_4960:	db 0			; DATA XREF: ROM:062Dr	ROM:0632w ...
word_4961:	dw 0			; DATA XREF: ROM:loc_306r ROM:030Aw ...
g_restoredGameFlag:	db 0			; DATA XREF: ROM:010Aw	ROM:01E6w ...
baseTimeMaybe:	.ascii '1620',0         ; DATA XREF: ROM:0246o ROM:3E1Ao
byte_4969:	db 0			; DATA XREF: ROM:loc_326Fr ROM:3280w
stru_496A:	hire_t <0, 0Ch,	35h>	; 0 ; DATA XREF: ROM:0EAFo
					; ROM:loc_3084r ...
		hire_t <1, 0, 0>	; 1
		hire_t <0, 0F2h, 1Dh>	; 2
		hire_t <0, 12h,	94h>	; 3
		hire_t <0, 4Bh,	0F9h>	; 4
		hire_t <0, 14h,	4Dh>	; 5
		hire_t <0, 15h,	73h>	; 6
		hire_t <0, 0, 0>	; 7
		hire_t <0, 0, 0>	; 8
		hire_t <0, 0, 0>	; 9
		hire_t <0, 0, 0>	; 10
		hire_t <0, 25h,	4Fh>	; 11
		hire_t <0, 0, 0>	; 12
		hire_t <0, 27h,	0E1h>	; 13
		hire_t <0, 0, 0>	; 14
		hire_t <0, 2Ah,	49h>	; 15
		hire_t <0, 0F2h, 32h>	; 16
computerInstalledFlag:db 0		; DATA XREF: ROM:loc_30E2r ROM:36E4r ...
analyzerInstalledFlag:db 0		; DATA XREF: ROM:3709r	ROM:371Aw ...
itemBoughtParson:db [ 4	], 0		 ; 0 ; DATA XREF: ROM:36CAo
carriedItemCount:db 0			; DATA XREF: ROM:08B6r	ROM:08BBw ...
byte_49A4:	db 0			; DATA XREF: ROM:051Cr	ROM:055Bw ...
byte_49A5:	db 0			; DATA XREF: ROM:3AE6r	ROM:40E6w
byte_49A6:	db 0			; DATA XREF: ROM:198Er	ROM:3A7Ar ...
byte_49A7:	db 0			; DATA XREF: ROM:19E6r	ROM:3A8Cw
byte_49A8:	db 0			; DATA XREF: ROM:0B38w	ROM:loc_19A5r ...
byte_49A9:	db 0			; DATA XREF: ROM:loc_19D7r ROM:19FAw ...
byte_49AA:	db 0			; DATA XREF: ROM:17FFr	ROM:34D2w
lockerRentedFlag:db 0			; DATA XREF: ROM:0B33w	ROM:3C38r ...
		db    0
suitTypeMaybe:	db 0			; 7 if wearing p-suit
					; 34 if	wearing	rad suit
wearingSuitFlag:db 0			; DATA XREF: ROM:onIstLandingSiter
					; ROM:0687r ...
byte_49AF:	db 0			; DATA XREF: ROM:l_sliderGameEntryr ROM:41F7w
byte_49B0:	db 0			; DATA XREF: ROM:456Ew
gcs_beenPoisoned:db 0			; DATA XREF: ROM:1064r	ROM:1092w
byte_49B2:	db 0			; DATA XREF: ROM:loc_10DCr ROM:10EDw
byte_49B3:	db 0			; DATA XREF: ROM:loc_10F3r ROM:1107w
byte_49B4:	db 0			; DATA XREF: ROM:08EFr	ROM:08F9w
byte_49B5:	db 0			; DATA XREF: ROM:33D8r	ROM:33FFw
byte_49B6:	db 0			; DATA XREF: ROM:0BBEw	ROM:3307r ...
enteredBarFlag:	db 0			; DATA XREF: ROM:l_barHandlerr
					; ROM:sitWithRayGooder	...
byte_49B8:	db 0			; DATA XREF: ROM:sitWithHolsonr
					; ROM:0A2Bw
foundDyingGirlFlag:db 0			; DATA XREF: ROM:findDyingGirlr
					; ROM:0AAFw
		db    0
gottenGCSKOdFlag:db 0			; DATA XREF: ROM:doGCSKOr ROM:0AD4w ...
byte_49BC:	db 0			; DATA XREF: ROM:0B9Bw
					; ROM:talk2GCSEngineerr ...
byte_49BD:	db 0			; DATA XREF: ROM:0C0Cw	ROM:loc_C12r ...
byte_49BE:	db 0			; DATA XREF: ROM:0A2Ew	ROM:loc_BCFr ...
byte_49BF:	db 0			; DATA XREF: ROM:0524r	ROM:0560w ...
byte_49C0:	db 0			; DATA XREF: ROM:loc_CD8r ROM:3F8Cr ...
byte_49C1:	db 0			; DATA XREF: ROM:loc_C79r ROM:0D1Dr ...
		db    0
byte_49C3:	db 0			; DATA XREF: ROM:loc_16DBr ROM:19D1w
byte_49C4:	db 0			; DATA XREF: ROM:loc_83Dr ROM:0847w ...
byte_49C5:	db 0			; DATA XREF: ROM:loc_88Ar ROM:0894w ...
byte_49C6:	db 0			; DATA XREF: ROM:loc_CB3r ROM:0CFDw
byte_49C7:	db 0			; DATA XREF: ROM:1355r	ROM:135Aw
byte_49C8:	db 0			; DATA XREF: ROM:1B9Er	ROM:1BA3w
byte_49C9:	db 0			; DATA XREF: ROM:loc_D43r ROM:0D4Dw
gameWonFlagMaybe:db 0			; DATA XREF: ROM:inPortCmdrOfficer
					; ROM:0758w
byte_49CB:	db 0			; DATA XREF: ROM:loc_1672r ROM:167Cw
earthLandData:	orbitStruMaybe <1, 0CFh, 8>; 0 ; DATA XREF: ROM:0582w
					; ROM:05C1w ...
IsthurLandData:	orbitStruMaybe <1, 0CFh, 8> ; DATA XREF: ROM:0585w ROM:05C4w ...
gcsLandData:	orbitStruMaybe <0, 0A6h, 0B3h> ; DATA XREF: ROM:0588w
					; ROM:05BCw ...
navierLandData:	orbitStruMaybe <0, 0A8h, 0ABh> ; DATA XREF: ROM:057Dw
					; ROM:05CAw ...
solomawLandData:orbitStruMaybe <0, 0CFh, 8> ; DATA XREF: ROM:058Bw ROM:05C7w ...
		db    6
		db    0
		db    1
		db    1
g_itemList:	object_t <location_earth, room_earth_sheriff,	0, 0, 2, 2>
stru_49E5:	object_t <location_earth, room_earth_myRoom, 2, 0,	3, 3>
stru_49EB:	object_t <location_none, room_earth_myRoom, 2, 0, 4, 4>
item_geigerCounter:	object_t <location_none, room_earth_myRoom, 3, 1, 5, 0>
stru_49F7:	object_t <location_none, room_earth_parson, 3, 1, 7,	0>
item_analyzer:		object_t <location_none, room_earth_parson, 3, 0, 9,	5>
stru_4A03:	object_t <location_none, room_earth_parson, 3, 0, 0Bh, 6>
item_pSuit:		object_t <location_none, room_earth_parson, 5, 0, 0Fh, 8>
stru_4A0F:	object_t <location_earth, room_earth_sheriff,	0Ch, 0,	11h, 0Ah>
stru_4A15:	object_t <location_earth, room_earth_shelter, 4,	0, 13h,	0Bh>
purseData:	object_t <location_none, room_isthur_bubble39, 5, 0, 14h, 0Ch>
		object_t <location_isthur, 20h, 0Dh, 0, 15h, 0Dh>
stru_4A27:	object_t <location_none, room_isthur_computerCenter, 0, 0, 16h, 0Eh>
byte_4A2D:	object_t <location_navier, 1Eh, 0, 1, 17h, 0>
		object_t <location_navier, 24h, 0, 1, 18h, 0>
		db    4
		db  2Ah
		db    0
		db    1
byte_4A3D:	db 19h
		db    0
		object_t <location_navier, 2Ch, 0, 1, 1Bh, 0>
byte_4A45:	object_t <location_navier, 2Dh, 0, 0, 20h, 0Fh>
byte_4A4B:	db 8
byte_4A4C:	db 0
		db    0
		db    0
		db  21h
		db  11h
byte_4A51:	db 4
byte_4A52:	db 32h
byte_4A53:	db 2
		db    0
		db  22h
		db  13h
stru_4A57:	object_t <location_none, 32h,	0, 1, 23h, 0> ;	DATA XREF: ROM:02EDr
					; ROM:084Ar ...
byte_4A5D:	object_t <location_navier, 31h, 0, 0, 25h, 14h>
byte_4A63:	object_t <location_navier, 37h, 0, 0, 26h, 15h>
byte_4A69:	db 4
		db  3Eh
byte_4A6B:	db 2
		db    0
		db  22h
		db  16h
byte_4A6F:	db 8
byte_4A70:	db ':'
		db    7
		db    0
		db  28h
		db  17h
stru_4A75:	object_t <location_none, 5, 0, 0, 29h, 18h> ;	DATA XREF: ROM:193Fr
					; ROM:1BBFw ...
		db    5
		db  0Ah
		db    0
		db    0
		db  2Ah	; *
		db  19h
		db    5
		db  0Dh
		db    0
		db    0
		db  2Bh	; +
		db  1Ah
item_crystalStatue:	object_t <location_solomaw, 33h, 0, 0, 2Ch, 1Bh>
item_radSuit:		object_t <location_isthur, 12h, 0, 0,	2Dh, 1Ch>
keyData:	object_t <location_none, room_gcs_storageSpace, 5,	0, 2Fh,	1Dh>
byte_4A99:	db 8			; DATA XREF: ROM:09AEw	ROM:0B14w ...
byte_4A9A:	db 0Ch			; DATA XREF: ROM:19C7w
		db    0
		db    0
		db  31h	; 1
		db  1Eh
		db    8
		db  12h
		db    6
		db    0
		db  34h	; 4
		db  1Fh
byte_4AA5:	db 8			; DATA XREF: ROM:0A64w	ROM:0B17w ...
		db  0Eh
		db    0
		db    0
		db  32h	; 2
		db  20h
byte_4AAB:	db 8			; DATA XREF: ROM:0ABFw	ROM:0B1Aw ...
		db  0Fh
earthRoomData:	ROOM(room_earth_inOrbit, 0, 40h, 
			s_verbose_earthOrbit, s_terse_earthOrbit, 
			s_none, s_none,
			room_cantApply, room_cantApply, 
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply, 
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply, 
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply, 
			room_cantApply, room_cantApply)
		ROOM(room_earth_inShip, 0, 80h, 
			s_verbose_earthInShip, s_terse_landingPad, 
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_landingPad,
			room_cantApply, room_cantApply)
		ROOM(room_earth_landingPad, 0, 80h,
			s_verbose_landingPad, s_terse_landingPad,
			s_none, s_none,
			30h, 2Bh,
			room_earth_customs, 1,
			34h, 2Dh
			33h, 32h
			2Fh, 2Ch
			room_cantApply, room_cantApply
			room_earth_inShip, room_cantApply
			room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_10, 0, 80h,
			s_verbose_hallway, s_terse_hallway,
			s_none, s_none,
			room_cantApply, room_cantApply
			room_cantApply, room_cantApply
			room_cantApply, room_cantApply
			room_cantApply, room_cantApply
			room_cantApply, room_cantApply
			room_earth_hallway_11, room_cantGo
			room_arrestedBnE, room_cantApply
			room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_11, 0, 80h,
			s_verbose_hallway, s_terse_hallway,
			s_none, s_none,
			db room_cantApply, room_cantApply,
			db room_cantApply, room_cantApply,
			db room_cantApply, room_cantApply,
			db room_cantApply, room_cantApply,
			db room_cantApply, room_cantApply,
			db room_earth_hallway_12, room_earth_hallway_10,
			db room_earth_myRoom, room_cantApply,
			db room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_12, 0, 80h,
			s_verbose_hallway, s_terse_hallway,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_earth_hallway_13, room_earth_hallway_11,
			room_arrestedBnE, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_13, 0, 80h,
			s_verbose_hallway, s_terse_hallway,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_earth_hallway_14, room_earth_hallway_12,
			room_severnBrokeArm, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_14, 0, 0A0h,
			s_verbose_hallEntrance, s_terse_hallway,
			s_earthHallwaySign, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_privateFoyer,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_earth_hallway_15, room_earth_hallway_13,
			room_shotByPirate, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_15, 0, 80h,
			s_verbose_hallway, s_terse_hallway,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_earth_hallway_16, room_earth_hallway_14,
			room_arrestedBnE, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_hallway_16, 0, 80h,
			s_verbose_hallway, s_terse_hallway,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantGo, room_earth_hallway_15,
			room_trochKO, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_welma, 0 80h,
			s_verbose_welmasRoom, s_terse_welmasRoom,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_hallway_10,
			room_cantApply, room_cantApply)
		ROOM(room_earth_myRoom, 0, 08Ch,
			s_verbose_myRoom, s_terse_myRoom,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_hallway_11,
			room_cantApply, room_cantApply)
		ROOM(room_earth_parson, 0, 80h,
			s_verbose_parsonsRoom, s_terse_parsonsRoom,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_hallway_12,
			room_cantApply, room_cantApply)
		ROOM(room_earth_severn, 0, 80h,
			s_verbose_severnsRoom, s_terse_severnsRoom,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, 6,
			room_cantApply, room_cantApply)
		ROOM(room_earth_pirate, 0, 80h,
			s_verbose_piratesRoom s_terse_emptyRoom
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_hallway_14,
			room_cantApply, room_cantApply)
		ROOM(room_earth_lyle, 0, 80h,
			s_verbose_lylesRoom s_terse_lylesRoom,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_hallway_15,
			room_cantApply, room_cantApply)
		ROOM(room_earth_troch, 0, 80h,
			s_verbose_trochsRoom, s_terse_trochsRoom,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_hallway_16,
			room_cantApply, room_cantApply)
		ROOM(room_earth_commCenter, 0, 0A8h,
			s_verbose_commCenter, s_terse_commCenter,
			s_first_commCenter, s_none,
			room_earth_commanderFoyer, room_earth_supply,
			room_earth_privateFoyer, room_earth_customs,
			room_cantGo, room_cantGo,
			room_earth_infirmary, room_earth_library,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo)
		ROOM(room_earth_commanderFoyer, 0, 98h,
			s_verbose_cmdrFoyer, s_terse_cmdrFoyer,
			s_none, s_door_cmdrFoyer,
			room_cantGo, room_earth_commCenter,
			room_unableToDoNow, room_cantGo,
			room_cantGo, room_cantGo,
			room_earth_privateFoyer, room_earth_customs,
			room_cantGo, room_cantGo,
			room_earth_privateFoyer, room_earth_customs,
			room_unableToDoNow, room_cantGo,
			room_cantGo, room_cantGo)
		ROOM(room_earth_commanderOffice, 5, 0A0h,
			s_verbose_cmdrOffice, s_terse_cmdrOffice,
			s_first_cmdrOffice, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_commanderFoyer,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_commanderFoyer,
			room_cantApply, room_cantApply)
		ROOM(room_earth_privateFoyer, 0, 8Ch,
			s_verbose_privFoyer, s_terse_privFoyer,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_earth_hallway_14, room_earth_commCenter,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_earth_infirmary, room_earth_commanderFoyer
			room_earth_hallway_14, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_infirmary, 0, 80h,
			s_verbose_infirmary, s_terse_infirmary,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_earth_library,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_earth_library, room_earth_privateFoyer,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_library, 0, 8Ch,
			s_verbose_library, s_verbose_library,
			s_none, s_none,
			room_cantGo, room_earth_starlightLounge,
			room_earth_infirmary, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_earth_customs, room_earth_infirmary,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_customs, 0, 80h,
			s_verbose_customs, s_terse_customs,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_earth_commCenter, room_earth_landingPad,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_earth_commanderFoyer, room_earth_library,
			room_cantApply, room_earth_landingPad,
			room_cantApply, room_cantApply)
		ROOM(room_earth_supply, 0, 80h, 
			s_verbose_supply, s_terse_supply,
			s_none, s_none,
			room_earth_commCenter, room_earth_starlightLounge,
			room_earth_mainEntrance, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_starlightLounge, 0, 80h,
			s_verbose_starLounge, s_terse_starLounge,
			s_none, s_none,
			room_earth_library, room_earth_mainEntrance,
			room_earth_supply, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_mainEntrance, 0, 80h,
			s_verbose_mainEntr, s_terse_mainEntr,
			s_none, s_none,
			room_cantGo, room_earth_townSquare,
			room_earth_supply, room_earth_starlightLounge,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_townSquare, 0, 80h,
			s_vebose_townSquare, s_terse_townSquare,
			s_none, s_none,
			room_earth_mainEntrance, room_earth_wasteland_2F,
			room_earth_feedFront, room_earth_saloonFront,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_saloonFront, 0, 80h,
			s_verbose_saloonFront, s_terse_dirtRoad,
			s_none, s_none,
			room_earth_saloon, room_earth_wasteland_2E,
			room_earth_townSquare, room_earth_innFront,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_earth_saloon, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_innFront, 0, 80h,
			s_verbose_innFront, s_terse_dirtRoad,
			s_none, s_none,
			room_earth_inn, room_earth_wasteland_2D,
			room_earth_saloonFront, room_earth_houseFront,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_earth_inn, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_houseFront, 0, 80h,
			s_verbose_houseFront, s_terse_dirtRoad,
			s_none, s_none,
			room_earth_house, room_earth_wasteland_2C,
			room_earth_innFront, room_earth_wasteland_2B,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_earth_house, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_feedFront, 0, 80h,
			s_verbose_feedFront, s_terse_dirtRoad,
			s_none, s_none,
			room_earth_feed, room_earth_wasteland_31,
			room_earth_sheriffFront, room_earth_townSquare,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_earth_feed, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_sheriffFront, 0, 80h,
			s_verbose_sheriffFront, s_terse_dirtRoad,
			s_none, s_none,
			room_sheriffLocked, room_wasteland_32,
			room_earth_roadEnd, room_earth_feedFront,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_sheriffLocked, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_roadEnd, 0, 80h,
			s_verbose_roadEnd, s_terse_dirtRoad,
			s_none, s_none,
			room_cantGo, room_earth_wasteland_33,
			room_earth_wasteland_34, room_earth_sheriffFront,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_saloon, 0, 80h,
			s_verbose_saloon, s_terse_saloon,
			s_none, s_none,
			room_cantApply, room_earth_saloonFront,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_saloonFront,
			room_cantApply, room_cantApply)
		ROOM(room_earth_inn, 0, 0A0h,
			s_verbose_inn, s_terse_inn,
			s_first_inn, s_none,
			room_cantApply, room_earth_innFront,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_innFront,
			room_cantApply, room_cantApply)
		ROOM(room_earth_house, 0, 80h,
			s_verbose_house, s_terse_house,
			s_none, s_none,
			room_cantApply, room_earth_houseFront,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_houseFront,
			room_cantApply, room_cantApply)
		ROOM(room_earth_feed, 0, 80h,
			s_verbose_feed, s_terse_feed,
			s_none, s_none,
			room_cantApply, room_earth_feedFront,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_feedFront,
			room_cantApply, room_cantApply)
		ROOM(room_earth_sheriff, 5, 80h,
			s_verbose_sheriff, s_terse_sheriff,
			s_none, s_none,
			room_cantApply, room_earth_sheriffFront,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_sheriffFront,
			room_cantApply, room_cantApply)
		ROOM(room_earth_bridgeEdge, 0, 80h,
			s_verbose_bridgeEdge, s_terse_vastWaste,
			s_none, s_none,
			room_earth_campsite, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_earth_wasteland_35,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_campsite, 0, 80h,
			s_verbose_campsite, s_verbose_campsite,
			s_none, s_none,
			room_earth_bridgeEdge, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_29, 0, 80h,
			s_verbose_vastWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_houseFront, room_deepFissure,
			room_earth_wasteland_2B, room_earth_wasteland_2F,
			room_earth_landingPad, room_earth_wasteland_31,
			room_earth_wasteland_2C, room_earth_wasteland_2E,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_shelter, 5, 80h,
			s_verbose_shelter, s_terse_shelter,
			s_none, s_none,
			room_cantGo, room_deepFissure,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_earth_wasteland_29, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_earth_wasteland_29,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_2B, 0, 80h,
			s_verbose_vastWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_houseFront, room_earth_saloonFront,
			room_earth_landingPad, room_deepFissure,
			room_earth_wasteland_2F, room_earth_wasteland_2B,
			room_earth_wasteland_34, room_earth_wasteland_33,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_2C, 0, 80h,
			s_verbose_vastWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_innFront, room_earth_landingPad,
			room_earth_landingPad, room_deepFissure,
			room_earth_wasteland_31, room_earth_wasteland_2C,
			room_earth_wasteland_34, room_earth_wasteland_34,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_2D, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_saloonFront, room_deepFissure,
			room_earth_houseFront, room_earth_landingPad,
			room_wasteland_32, room_earth_wasteland_2D,
			room_earth_wasteland_33, room_earth_wasteland_34,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_2E, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_townSquare, room_earth_feedFront,
			room_earth_landingPad, room_deepFissure,
			room_earth_wasteland_33, room_earth_wasteland_2E,
			room_wasteland_32, room_earth_wasteland_31,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_2F, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_feedFront, room_earth_landingPad,
			room_deepFissure, room_earth_sheriffFront,
			room_earth_wasteland_34, room_earth_wasteland_2F,
			room_earth_wasteland_31, room_earth_wasteland_2B,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_30, 0, 80h
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_sheriffFront, room_earth_landingPad,
			room_earth_landingPad, room_earth_wasteland_35,
			room_earth_wasteland_34, room_earth_wasteland_31,
			room_deepFissure, room_earth_wasteland_2C,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_31, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_roadEnd, room_earth_wasteland_33,
			room_earth_landingPad, room_earth_landingPad,
			room_earth_wasteland_2F, room_wasteland_32,
			room_earth_wasteland_2E, room_deepFissure,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_3room_earth_landingPad, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_innFront, room_earth_landingPad,
			room_earth_roadEnd, room_earth_landingPad,
			room_deepFissure, room_earth_wasteland_33,
			room_earth_wasteland_2D, room_earth_wasteland_2E,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_33, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_saloonFront, room_earth_townSquare,
			room_earth_landingPad, room_earth_landingPad,
			room_earth_wasteland_2C, room_earth_wasteland_34,
			room_deepFissure, room_earth_wasteland_29,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_34, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_townSquare, room_deepFissure,
			room_earth_saloonFront, room_earth_landingPad,
			room_earth_wasteland_2D, room_earth_wasteland_2E,
			room_earth_wasteland_2B, room_earth_wasteland_31,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_earth_wasteland_35, 0, 80h,
			s_verbose_vasteWaste, s_terse_vastWaste,
			s_none, s_none,
			room_earth_feedFront, room_deepFissure,
			room_earth_landingPad, room_earth_innFront,
			room_earth_wasteland_2E, room_earth_wasteland_31,
			room_earth_bridgeEdge, room_deepFissure,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
isthurRoomData:	ROOM(room_isthur_inOrbit, 0, 80h,
			s_verbose_isthurOrbit, s_terse_isthurOrbit,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_inShip, 0, 80h,
			s_verbose_isthurInShip, s_terse_isthurInShip,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_isthur_landingPad,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_landingPad, 0, 80h,
			s_verbose_isthurPad, s_terse_isthurInShip,
			s_none, s_none,
			room_isthur_gammaEntrance, room_isthur_inShip,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_isthur_inShip, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_gammaEntrance, 0, 80h,
			s_verbose_gammaEntr, s_verbose_gammaEntr,
			s_none, s_none,
			room_isthur_nsTunnel_4, room_isthur_landingPad,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_4, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_nsewInter_5, room_isthur_gammaEntrance,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsewInte_5, 0, 80h,
			s_verbose_nsewInter, s_verbose_nsewInter,
			s_none, s_none,
			room_isthur_nsTunnel_7, room_isthur_nsTunnel_4,
			room_isthur_ewTunnel_8, room_isthur_ewTunnel_6,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_6, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_nsewInter_5, room_isthur_cmdtFoyer,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_7, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_nseInter_C, room_isthur_nsewInter_5,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_8, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_garbageDump, room_isthur_nsewInter_5,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_garbageDump, 0, 90h,
			s_verbose_garbageDump, s_verbose_garbageDump,
			s_none, s_desc_garbageDump,
			room_cantGo, room_cantGo,
			room_cantGo, room_isthur_ewTunnel_8,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_cmdtFoyer, 0, 80h,
			s_verbose_cmdtFoyer, s_terse_cmdtFoyer,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_ewTunnel_6, room_isthur_cmdtOffice,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_isthur_cmdtOffice, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_cmdtOffice, 10, 0A0h,
			s_verbose_cmdtOffice, s_verbose_cmdtOffice,
			s_first_cmdtOffice, s_none,
			room_cantApply, room_cantApply,
			room_isthur_cmdtFoyer, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_isthur_cmdtFoyer,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nseInter_C, 0, 80h,
			s_verbose_nseInter, s_verbose_nseInter,
			s_none, s_none,
			room_isthur_nsTunnel_D, room_isthur_nsTunnel_7,
			room_isthur_ewTunnel_19, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_D, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthuroom_gcs_hospital, room_isthur_nseInter_C,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthure_hospical, 0, 80h,
			s_verbose_istHospital, s_verbose_istHospital,
			s_none, s_none,
			room_isthur_nsTunnel_F, room_isthur_nsTunnel_D,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_F, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_infirmary, room_isthuroom_gcs_hospital,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_infirmary, 0, 80h,
			s_verbose_istInfirm, s_verbose_istInfirm,
			s_none, s_none,
			room_cantGo, room_isthur_nsTunnel_F,
			room_cantGo, room_isthur_ewTunnel_11,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_11, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_infirmary, room_isthur_energyInput,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_energyInput, 0, 80h,
			s_verbose_energyInput, s_terse_energyInput,
			s_none, s_none,
			room_cantGo, room_isthur_nsTunnel_13,
			room_isthur_ewTunnel_11, room_isthur_ewTunnel_15,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_13, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_energyInput, room_isthur_airPlant,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_airPlant, 0, 80h,
			s_verbose_airPlant, s_terse_airPlant,
			s_none, s_none,
			room_isthur_nsTunnel_13, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_15, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_energyInput, room_isthur_fireControl,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_fireControl, 0, 80h,
			s_verbose_fireControl, s_terse_fireControl,
			s_none, s_none,
			room_cantGo, room_isthur_nsTunnel_17,
			room_isthur_ewTunnel_15, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_17, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_fireControl, room_isthur_intelHq,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_intelHq, 10, 80h,
			s_verbose_intelHq, s_terse_intelHq,
			s_none, s_none,
			room_isthur_nsTunnel_17, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_19, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_cafeteria, room_isthur_nseInter_C,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_cafeteria, 0, 80h,
			s_verbose_cafeteria, s_verbose_cafeteria,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_ewTunnel_1B, room_isthur_ewTunnel_19,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_1B, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none,	s_none,
			room_cantGo, room_cantGo,
			room_isthur_machineShop, room_isthur_cafeteria,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_machineShop, 0, 80h,
			s_verbose_machineShop, s_terse_machineShop,
			room_isthur_nsTunnel_1D, room_isthur_nsTunnel_27,
			room_cantGo, room_isthur_ewTunnel_1B,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_1D, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_designCenter, room_isthur_machineShop,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_designCenter, 0, 80h,
			s_verbose_designCenter, s_terse_designCenter,
			s_none, s_none,
			room_isthur_nsTunnel_1F, room_isthur_nsTunnel_1D,
			room_isthur_ewTunnel_21, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_1F, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_wastePlant, room_isthur_designCenter,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_wastePlant, 0, 80h,
			s_verbose_wastePlane, s_terse_wastePlant,
			s_none, s_none,
			room_cantGo, room_isthur_nsTunnel_1F,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_21, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_controlTower, room_isthur_designCenter,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_controlTower, 5, 80h,
			s_verbose_controlTower, s_terse_controlTower,
			room_isthur_nsTunnel_23, room_isthur_nsTunnel_25,
			room_cantGo, room_ewTunnel_21,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_23, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_waterPlant, room_isthur_controlTower,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_waterPlant, 0, 80h
			s_verbose_waterPlant, s_verbose_waterPlant,
			s_none, s_none,
			room_cantGo, room_isthur_nsTunnel_23,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_25, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_controlTower, room_isthur_laundry,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_laundry, 0, 80h,
			s_verbose_laundry, s_verbose_laundry,
			s_none, s_none,
			room_isthur_nsTunnel_25, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_27, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_machineShop, room_isthur_bubble39,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_bubble39, 0, 80h,
			s_verbose_bubble39, s_verbose_bubble39,
			s_none, s_none,
			room_isthur_nsTunnel_27, room_isthur_nsTunnel_29,
			room_isthur_ewTunnel_2B, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_nsTunnel_29, 0, 80h,
			s_verbose_nsTunnel, s_verbose_nsTunnel,
			s_none, s_none,
			room_isthur_bubble39, room_isthur_securityControl,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_securityControl, 0, 80h
			s_verbose_istSecurity, s_terse_istSecurity,
			s_none, s_none,
			room_isthur_nsTunnel_29, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_ewTunnel_2B, 0, 80h,
			s_verbose_ewTunnel, s_verbose_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_isthur_gammaEntrance, room_isthur_bubble39,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_gammaEntrance, 0, 80h,
			s_verbose_gammaEntr, s_terse_gammaEntr,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_unableToDoNow, room_isthur_ewTunnel_2B,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_unableToDoNow, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_gammaControl, 5, 80h
			s_verbose_gammaCtrl, s_verbose_gammaCtrl,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_doorLocked, room_isthur_gammeEntrance,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_doorLocked, room_isthur_gammeEntrance,
			room_cantApply, room_cantApply)
		ROOM(room_isthur_computerCenter, 5, 80h,
			s_verbose_computerCtr, s_verbose_computerCtr,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_isthur_gammaControl,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_isthur_gammaControl,
			room_cantApply, room_cantApply)
gcsRoomData:	ROOM(room_gcs_inOrbit, 0, 80h,
			s_verbose_gcsOrbit, s_verbose_gcsOrbit,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_gcs_inShip, 10, 80h,
			s_verbose_gcsInShip, s_terse_gcsInShip,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_gcs_landingBay,
			room_cantApply, room_cantApply)
		ROOM(room_gcs_landingBay, 0, 0A0h,
			s_verbose_gcsLandBay, s_terse_gcsLandBay,
			s_first_gcsLandBay, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantGo, room_cantGo,
			room_gcs_inShip, room_gcs_airlessPassage,
			room_gcs_airlessPassage, room_cantApply)
		ROOM(room_gcs_airlessPassage, 0, 84h,
			s_verbose_airlessPass, s_verbose_airlessPass,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_outerAirlock, room_whichWay,
			room_gcs_outerAirlock, room_gcs_landingBay)
		ROOM(room_gcs_outerAirlock, 0, 80h,
			s_verbose_outerAirlock, s_terse_outerAirlock,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_gcs_innerAirlock, room_gcs_airlessPassage,
			room_gcs_innerAirlock, room_gcs_airlessPassage)
		ROOM(room_gcs_innerAirlock, 0, 80h,
			s_verbose_innerAirlock, s_terse_innerAirlock,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_gcs_storageSpace, room_gcs_outerAirlock,
			room_gcs_storageSpace, room_gcs_outerAirlock)
		ROOM(room_gcs_storageSpace, 0, 88h,
			s_verbose_storageSpace, s_terse_storageSpace,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantGo, room_mustDepositKey,
			room_cantApply, room_multipleExits,
			room_gcs_innerCorridor_24, room_gcs_outerCorridor_1C)
		ROOM(room_gcs_computerFoyer, 10, 84h,
			s_verbose_computerFoyer, s_verbose_computerFoyer,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_18, room_gcs_innerCorridor_17,
			room_marbleGame, room_gcs_innerCorridor_17,
			room_marbleGame, room_gcs_innerCorridor_17)
		ROOM(room_gcs_rayGoode, 10, 0A0h,
			s_goodeMessage1, s_goodeMessage1,
			s_goodeMessage2, s_none,
			room_cantApply, room_gcs_restaurant,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply_6F, room_multipleExits,
			room_gcs_innerCorridor_25, room_gcs_outerCorridor_1D)
		ROOM(room_gcs_jackDavies, 10, 80h,
			s_daviesMessage1, s_daviesMessage1,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply_6F, room_multipleExits,
			room_gcs_innerCorridor_25, room_gcs_outerCorridor_1D)
		ROOM(room_gcs_bar, 10, 0A0h,
			s_verbose_gcsBar, s_verbose_gcsBar,
			s_firse_gcsBar, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply_6F, room_multipleExits,
			room_gcs_innerCorridor_25, room_gcs_outerCorridor_1D)
		ROOM(room_gcs_restaurantNoSeats, 10, 0A0h,
			s_restaurantNoSeats, s_terse_restaurant,
			s_first_gcsBar, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, 6Eh
			room_gcs_innerCorridor_26, room_gcs_outerCorridor_1E)
		ROOM(room_gcs_barracks, 10, 0A8h,
			s_verbose_barracks, s_verbose_barracks,
			s_first_constructionSounds, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_outerCorridor_16,
			room_cantGo, room_gcs_outerCorridor_16)
		ROOM(room_gcs_gymnasium, 10, 0A8h,
			s_verbose_gymnasium, s_verbose_gymnasium,
			s_first_constructionSounds, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_outerCorridor_20,
			room_cantGo, room_gcs_outerCorridor_20)
		ROOM(room_gcs_library, 0, 88h,
			s_verbose_gcsLibrary, s_terse_gcsLibrary,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_innerCorridor_18,
			room_gcs_innerCorridor_18, room_cantGo)
		ROOM(room_gcs_maintenance, 0, 80h,
			s_verbose_gcsMaintenance, s_terse_gcsMaintenance,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_outerCorridor_21,
			room_cantGo, room_gcs_outerCorridor_21)
		ROOM(room_gcs_supply, 10, 80h,
			s_verbose_gcsSupply, s_verbose_gcsSupply,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_innerCorridor_19,
			room_gcs_innerCorridor_19, room_cantGo)
		ROOM(room_gcs_headquarters, 0, 8Ch,
			s_verbose_gcsHeadquarters, s_terse_gcsHeadquarters,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_innerCorridor_1B,
			room_gcs_innerCorridor_1B, room_cantGo)
		ROOM(room_gcs_doctor, 0, 80h,
			s_verbose_gcsDoctor, s_verbose_gcsDoctor,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_innerCorridor_1A,
			room_cantGo, room_gcs_innerCorridor_1A)
		ROOM(room_gcs_computerCenter, 25, 8Ch,
			s_verbose_gcsComputerCenter, s_verbose_gcsComputerCenter,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_computerFoyer,
			room_cantGo, room_gcs_computerFoyer)
		ROOM(room_gcs_hospital, 0, 0A8h,
			s_verbose_gcsHospital, s_verbose_gcsHospital,
			s_first_gcsHospital, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_innerCorridor_23,
			room_cantGo, room_gcs_innerCorridor_23)
		ROOM(room_gcs_engineering, 10, 88h,
			s_verbose_gcsEngineering, s_terse_gcsEngineering,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_cantApply_6F,
			room_cantApply, room_gcs_innerCorridor_16,
			room_cantGo, room_gcs_innerCorridor_16)
		ROOM(room_gcs_innerCorridor_16, 0, 0A0h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_first_constructionSounds, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_17, room_gcs_innerCorridor_26,
			room_gcs_engineering, room_cantApply,
			room_gcs_engineering, room_cantGo)
		ROOM(room_gcs_innerCorridor_17, 0, 0A0h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_first_constructionSounds, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_18, room_gcs_innerCorridor_16,
			room_gcs_computerFoyer, room_cantApply,
			room_gcs_computerFoyer, room_cantGo)
		ROOM(room_gcs_innerCorridor_18, 0, 080h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_19, room_gcs_innerCorridor_17,
			room_gcs_library, room_cantApply,
			room_cantGo, room_gcs_library)
		ROOM(room_gcs_innerCorridor_19, 0, 0A0h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_first_innerCorridor_19, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_1A, room_gcs_innerCorridor_18,
			room_supplyClosed, room_cantApply,
			room_cantGo, room_supplyClosed)
		ROOM(room_gcs_innerCorridor_1A, 0, 080h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_1B, room_gcs_innerCorridor_19,
			room_gcs_doctor, room_cantApply,
			room_gcs_doctor, room_cantGo)
		ROOM(room_gcs_innerCorridor_1B, 0, 080h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_23, room_gcs_innerCorridor_1A,
			room_gcs_headquarters, room_cantApply,
			room_cantGo, room_gcs_headquarters)
		ROOM(room_gcs_outerCorridor_1C, 0, 0A0h,
			s_verbose_outerCorridor, s_terse_outerCorridor,
			s_first_shipRumblings, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_outerCorridor_1D, room_cantGo,
			room_gcs_storageSpace, room_cantGo,
			room_gcs_storageSpace, room_cantGo)
		ROOM(room_gcs_outerCorridor_1D, 0, 0A0h,
			s_verbose_outerCorridor, s_terse_outerCorridor,
			s_first_gcsBar, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_outerCorridor_1E, room_gcs_outerCorridor_1C,
			room_gcs_bar, room_cantGo,
			room_gcs_bar, room_cantGo)
		ROOM(room_gcs_outerCorridor_1E, 0, 0A0h,
			s_verbose_outerCorridor, s_terse_outerCorridor,
			s_first_gcsBar, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_outerCorridor_16, room_gcs_outerCorridor_1D,
			room_gcs_restaurant, room_cantGo,
			room_gcs_restaurant, room_cantGo)
		ROOM(room_gcs_outerCorridor_1F, 0, 0A0h,
			s_verbose_outerCorridor, s_terse_outerCorridor,
			s_first_constructionSounds, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_outerCorridor_20, room_gcs_outerCorridor_1E,
			room_gcs_barracks, room_cantGo,
			room_gcs_barracks, room_cantGo)
		ROOM(room_gcs_outerCorridor_20, 0, 0A0h,
			s_verbose_outerCorridor, s_terse_outerCorridor,
			s_first_constructionSounds, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_outerCorridor_21, room_gcs_outerCorridor_16,
			room_gcs_gymnasium, room_cantGo,
			room_gcs_gymnasium, room_cantGo)
		ROOM(room_gcs_outerCorridor_21, 0, 080h,
			s_verbose_outerCorridor, s_terse_outerCorridor,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_darkHallway, room_gcs_outerCorridor_20,
			room_maintenanceLocked, room_cantGo,
			room_maintenanceLocked, room_cantGo)
		ROOM(room_gcs_darkHallway, 0, 0A0h,
			s_verbose_gcsDarkHall, s_terse_outerCorridor,
			s_first_shipRumblings, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantGo, room_gcs_outerCorridor_21,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo)
		ROOM(room_gcs_innerCorridor_23, 0, 0A0h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_first_airlockSwish, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_24, room_gcs_innerCorridor_1B,
			room_gcs_hospital, room_cantApply,
			room_gcs_hospital, room_cantGo)
		ROOM(room_gcs_innerCorridor_24, 0, 080h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_25, room_gcs_innerCorridor_23,
			room_gcs_storageSpace, room_cantApply,
			room_cantGo, room_gcs_storageSpace)
		ROOM(room_gcs_innerCorridor_25, 0, 0A0h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_first_gcsBar, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_26, room_gcs_innerCorridor_24,
			room_gcs_bar, room_cantApply,
			room_cantGo, room_gcs_bar)
		ROOM(room_gcs_innerCorridor_26, 0, 0A0h,
			s_verbose_innerCorridor, s_terse_innerCorridor,
			s_first_gcsRestaurant, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_gcs_innerCorridor_16, room_gcs_innerCorridor_25,
			room_gcs_restaurant, room_cantApply,
			room_cantGo, room_gcs_restaurant)
		ROOM(room_gcs_restaurant, 10, 80h,
			s_terse_restaurant, s_terse_restaurant,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply_6F, room_multipleExits,
			room_gcs_innerCorridor_26, room_gcs_outerCorridor_1E)
navierRoomData:	ROOM(room_navier_inOrbit, 0, 80h
			s_verbose_navier_inOrbit, s_terse_navier_inOrbit,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_inShip, 25, 80h,
			s_verbose_navier_inShip, s_terse_navier_onPad,
			s_none, s_none,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_landingField,
			room_cantApply, room_cantApply)
		ROOM(room_navier_landingField, 0, 80h,
			s_verbose_navier_onPad, s_terse_navier_onPad,
			s_none, s_none,
			room_navier_cityEntrance, room_cantGo,
			room_navier_inShip, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_navier_inShip, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_cityEntrance, 0, 80h,
			s_verbose_navier_cityEntrance, s_verbose_navier_cityEntrance,
			s_none, s_none,
			room_navier_nsePassage, room_navier_landingField,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsePassage, 0, 80h,
			s_verbose_navier_nsePassage, s_verbose_navier_nsePassage, 
			s_none, s_none,
			room_navier_nswPassage, room_navier_cityEntrance,
			room_navier_ewCorridor_5, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_ewCorridor_5, 0, 80h,
			s_verbose_navier_ewCorridor, s_verbose_navier_ewCorridor,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_smallRoom_6, room_navier_nsePassage,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_smallRoom_6, 0, 80h,
			s_verbose_navier_smallRoom, s_terse_navier_smallRoom,
			s_none, s_none,
			room_navier_nsPassage_7, room_cantGo,
			room_navier_smallRoom_A, room_navier_ewCorridor_5,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsPassage_7, 0, 80h,
			s_verbose_navier_longNS, s_verbose_navier_longNS,
			s_none, s_none,
			room_navier_nsPassage_8, room_navier_smallRoom_6,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsPassage_8, 0, 80h,
			s_verbose_navier_longNS, s_verbose_navier_longNS,
			s_none, s_none,
			room_navier_deadEnd, room_navier_nsPassage_7,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_deadEnd, 0, 80h,
			s_verbose_navier_deadEnd, s_verbose_navier_deadEnd,
			s_none, s_none,
			room_cantGo, room_navier_nsPassage_8,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_smallRoom_A, 0, 80h,
			room_navier_nsPassage_B, room_cantGo,
			room_cantGo, room_navier_smallRoom_6,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsPassage_B, 0, 80h,
			s_verbose_navier_longNS, s_verbose_navier_longNS,
			s_none, s_none,
			room_navier_nsPassage_C, room_navier_smallRoom_A,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsPassage_C, 0, 80h,
			s_verbose_navier_longNS, s_verbose_navier_longNS,
			s_none, s_none,
			room_navier_psychicControl, room_navier_nsPassage_B,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_psychicControl, 0, 80h,
			s_verbose_navier_psychicCtrl, s_verbose_navier_psychicCtrl,
			s_none, s_none,
			room_cantGo, room_navier_nsPassage_C,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nswPassage, 0, 80h,
			s_verbose_navier_nswPassage, s_verbose_navier_nswPassage,
			s_none, s_none,
			room_navier_nsPassage_12, room_navier_nsePassage,
			room_cantGo, room_navier_ewCorridor_F,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply),
		ROOM(room_navier_ewCorridor_F, 0, 80h,
			s_verbose_navier_ewCorridor, s_verbose_navier_ewCorridor,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_nswPassage, room_navier_overlordEntrance,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_overlordEntrance, 0, 80h,
			s_verbose_navier_overlordEntrance, s_verbose_navier_overlordEntrance,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_ewCorridor_F, room_navier_overlordChamber,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_overlordChamber, 10, 80h,
			s_verbose_navier_overlord, s_terse_navier_overlord,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_overlordEntrance, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsPassage_12, 0, 80h,
			s_verbose_navier_nsPassage, s_verbose_navier_nsPassage,
			s_none, s_none,
			room_navier_undergroundMain, room_navier_nswPassage,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_undergroundMain, 0, 80h,
			s_verbose_navier_underMain, s_terse_navier_underMain,
			s_none, s_none,
			room_unableToDoNow, room_navier_nsPassage_12,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_unableToDoNow,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_slopingTunnel, 30, 82h,
			s_verbose_navier_slopingTunnel, s_verbose_navier_slopingTunnel,
			s_none, s_none,
			room_navier_fivePoints, room_navier_undergroundMain,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_navier_undergroundMain, room_navier_fivePoints,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_fivePoints, 0, 82h,
			s_verbose_navier_fivePoints, s_verbose_navier_fivePoints,
			s_none, s_none,
			room_sliderGame, room_navier_slopingTunnel,
			room_navier_narrowTunnel, room_navier_diningRoom,
			room_navier_gentleSlope_1B, room_cantGo,
			room_cantGo, room_cantGo,
			room_navier_slopingTunnel, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_diningRoom, 0, 82h,
			s_verbose_navier_diningRoom, s_terse_navier_diningRoom,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_fivePoints, room_navier_kitchen,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_servantFoyer,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_servantFoyer, 0, 82h,
			s_verbose_navier_servantFoyer, s_verbose_navier_servantFoyer,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_navier_diningRoom, room_cantGo,
			room_cantGo, room_navier_servantQuarters,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_navier_servantQuarters, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_servantQuarters, 0, 82h,
			s_verbose_navier_servantQuarters, s_terse_navier_servantQuarters,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_navier_servantFoyer, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_servantFoyer,
			room_cantApply, room_cantApply)
		ROOM(room_navier_kitchen, 0, 82h,
			s_verbose_navier_kitchen, s_terse_navier_kitchen,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_diningRoom, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_narrowTunnel, 0, 82h,
			s_verbose_navier_narrowTunnel, s_verbose_navier_narrowTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_fivePoints,
			room_navier_gentleSlope_1C, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_gentleSlope_1B, 0, 82h,
			s_verbose_navier_gentleSlope, s_verbose_navier_gentleSlope,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_gentleSlope_1C, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_fivePoints,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_gentleSlope_1C, 0, 82h,
			s_verbose_navier_gentleSlope, s_verbose_navier_gentleSlope,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_barracksEntrance, room_navier_gentleSlope_1B,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_narrowTunnel,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_barracksEntrance, 0, 82h,
			s_verbose_navier_barracksEntrance, s_terse_navier_barracksEntrance,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_smallBedroom_1F, room_navier_gentleSlope_1C,
			room_navier_smallBedroom_20, room_cantGo,
			room_navier_smallBedroom_1E, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_smallBedroom,_1E 0, 82h,
			s_verbose_navier_smallBedroom, s_terse_navier_smallBedroom,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_barracksEntrance,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_barracksEntrance,
			room_cantApply, room_cantApply)
		ROOM(room_navier_smallBedroom,_1F 0, 82h,
			s_verbose_navier_smallBedroom, s_terse_navier_smallBedroom,
			s_none, s_none,
			room_cantGo, room_cantGo
			room_cantGo, room_navier_barracksEntrance
			room_cantGo, room_cantGo
			room_cantGo, room_cantGo
			room_cantGo, room_cantGo
			room_cantApply, room_cantApply
			room_cantApply, room_navier_barracksEntrance
			room_cantApply, room_cantApply)
		ROOM(room_navier_smallBedroom,_20 0, 82h,
			s_verbose_navier_smallBedroom, s_terse_navier_smallBedroom,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_barracksEntrance,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_barracksEntrance,
			room_cantApply, room_cantApply)
		ROOM(room_navier_levelOneEntrance, 0, 0A2h,
			s_verbose_navier_levelOneEntrance, s_terse_navier_levelOneEntrance,
			s_first_navier_levelOneEntrance, s_none,
			room_navier_nsewIntersection, room_navier_fivePoints,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsewIntersection, 24, 82h,
			s_verbose_navier_nsewIntersection, s_verbose_navier_nsewIntersection,
			s_none, s_none,
			room_navier_curvingCanyon, room_navier_levelOneEntrance,
			room_navier_levelTwoEntrance, room_navier_ewTunnel_23,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_ewTunnel_23, 0, 82h,
			s_verbose_navier_ewTunnel, s_verbose_navier_ewTunnel,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_nsewIntersection, room_navier_volcano,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_volcano, 0, 82h,
			s_verbose_navier_volcano, s_terse_navier_volcano,
			s_none, s_none,
			room_cantGo, room_navier_lavaBed,
			room_navier_ewTunnel_23, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_lavaBed, 0, 82h,
			s_verbose_navier_lavaBed, s_terse_navier_lavaBed,
			s_none, s_none,
			room_navier_volcano, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_curvingCanyon, 0, 82h,
			s_verbose_navier_curvingCanyon, s_terse_navier_curvingCanyon,
			s_none, s_none,
			room_cantGo, room_navier_nsewIntersection,
			room_cantGo, room_navier_besideLakeBed,
			room_cantGo, room_navier_nsCanyon,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_besideLakeBed, 0, 82h,
			s_verbose_navier_besideLakeBed, s_verbose_navier_besideLakeBed,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_curvingCanyon, room_navier_lakeBed,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_lakeBed, 5, 82h,
			s_verbose_navier_lakeBed, s_terse_navier_lakeBed,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_besideLakeBed, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_nsCanyon, 0, 82h,
			s_verbose_navier_nsCanyon, s_verbose_navier_nsCanyon,
			s_none, s_none,
			room_navier_boxCanyon, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_navier_curvingCanyon, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_boxCanyon, 5, 82h,
			s_verbose_navier_boxCanyon, s_boxCanyon,
			s_none, s_none,
			room_cantGo, room_navier_nsCanyon,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_levelTwoEntrance, 5, 82h,
			s_verbose_navier_levelTwoEntrance, s_terse_navier_levelTwoEntrance,
			s_none, s_none,
			room_unableToDoNow, room_cantGo,
			room_cantGo, room_navier_nsewIntersection,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_lockableDoors, 27, 82h,
			s_verbose_navier_lockableDoors, s_terse_navier_lockableDoors,
			s_none, s_none,
			room_navier_lakeEdge, room_cantGo,
			room_navier_longCorridor_33, room_navier_levelTwoEntrance,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_lakeEdge, 0, 82h,
			s_verbose_navier_lakeEdge, s_verbose_navier_lakeEdge,
			s_none, s_none,
			room_cantSwim, room_navier_lockableDoors,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_inRowboatOnLake, 5, 82h,
			s_verbose_inRowboatOnLake, s_terse_inRowboat,
			s_none, s_none,
			room_unableToDoNow, room_navier_lakeEdge,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_lakeEdge,
			room_cantApply, room_cantApply)
		ROOM(room_navier_inRowboatNearShelf, 0, 82h,
			s_verbose_inRowboatNearShelf, s_terse_inRowboat,
			s_none, s_none,
			room_navier_shelf, room_unableToDoNow,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_shelf,
			room_cantApply, room_cantApply)
		ROOM(room_navier_shelf, 0, 82h,
			s_verbose_navier_shelf, s_verbose_navier_shelf,
			s_verbose_navier_shelf, s_none,
			room_navier_airlock, room_navier_inRowboatNearShelf,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_navier_inRowboatNearShelf, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_airlock, 14, 82h,
			s_verbose_navier_airlock, s_terse_navier_airlock,
			s_none, s_none,
			room_doorLocked, room_doorLocked,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_doorLocked, room_doorLocked,
			room_cantApply, room_cantApply)
		ROOM(room_navier_computerCenter, 17, 82h,
			s_verbose_navier_computerCenter, s_terse_navier_computerCenter,
			s_none, s_none,
			room_cantGo, room_navier_airlock,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_airlock,
			room_cantApply, room_cantApply)
		ROOM(room_navier_longCorridor_33, 0, 82h,
			s_verbose_navier_longCorridor, s_verbose_navier_longCorridor,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_longCorridor_34, room_navier_lockableDoors,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_longCorridor_34, 0, 82h,
			s_verbose_navier_longCorridor, s_verbose_navier_longCorridor,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_longCorridor_35, room_navier_longCorridor_33,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_longCorridor_35, 0, 82h,
			s_verbose_navier_longCorridorWInter, s_verbose_navier_longCorridor,
			s_none, s_none,
			room_navier_emptyStoreroom, room_navier_oldStoreroom,
			room_navier_stairBottom, room_navier_longCorridor_34,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_stairBottom,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_emptyStoreroom, 0, 82h,
			s_verbose_navier_emptyStoreroom, s_verbose_navier_emptyStoreroom,
			s_none, s_none,
			room_cantGo, room_navier_longCorridor_35,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_longCorridor_35,
			room_cantApply, room_cantApply)
		ROOM(room_navier_oldStoreroom, 0, 82h,
			s_verbose_navier_oldStoreroom, s_verbose_navier_oldStoreroom,
			s_none, s_none,
			room_navier_longCorridor_35, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_longCorridor_35,
			room_cantApply, room_cantApply)
		ROOM(room_navier_stairBottom, 0, 82h,
			s_verbose_navier_stairBottom, s_terse_navier_stairBottom,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_tomorrowChamber, room_navier_longCorridor_35,
			room_navier_puzzleTesting, room_cantGo,
			room_navier_barrenRoom, room_cantGo,
			room_navier_longCorridor_35, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_puzzleTesting, 0, 82h,
			s_verbose_navier_puzzleTesting, s_terse_navier_puzzleTesting,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_stairBottom,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_stairBottom,
			room_cantApply, room_cantApply)
		ROOM(room_navier_tomorrowChamber, 0, 82h,
			s_verbose_navier_tomorrowChamber, s_terse_navier_tomorrowChamber,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_stairBottom,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_navier_stairBottom,
			room_cantApply, room_cantApply)
		ROOM(room_navier_barrenRoom, 0, 82h,
			s_verbose_navier_barrenRoom, s_terse_navier_barrenRoom,
			room_cantGo, room_navier_pitBottom,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_stairBottom,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_pitBottom, 0, 82h,
			s_verbose_navier_pitBottom, s_verbose_navier_pitBottom,
			s_none, s_none,
			room_navier_barrenRoom, room_cantGo,
			room_cantGo, room_navier_deadEnd_3D,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_navier_pitTop, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_deadEnd_3D, 0, 82h,
			s_verbose_navier_deadEndCap, s_verbose_navier_deadEndCap,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_navier_pitBottom, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
		ROOM(room_navier_pitTop, 0, 82h,
			s_verbose_navier_pitTop, s_verbose_navier_pitTop,
			s_none, s_none,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_cantGo,
			room_cantGo, room_navier_pitBottom,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply,
			room_cantApply, room_cantApply)
g_solomawRoomData:	ROOM(room_solomaw_inOrbit, 12, 80h,	
				s_verbose_solomaw_inOrbit, s_terse_solomaw_inOrbit,
				s_none, s_none,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_inShip, 9, 80h,
				s_verbose_solomaw_inShip, s_terse_solomaw_landingField,
				s_none, s_none,
				room_cantGo, room_cantGo,
				room_cantGo, room_solomaw_landingField,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_solomaw_landingField,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_landingField, 0, 80h
				s_verbose_solomaw_landingField, s_terse_solomaw_landingField,
				s_none, s_none,
				room_cantGo, room_cantGo,
				room_solomaw_inShip, room_solomaw_portAuthority,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_solomaw_inShip, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_portAuthority, 4, 0A0h,
				s_verbose_solomaw_portAuthority, s_terse_solomaw_portAuthority,
				s_first_solomaw_portAuthority, s_none,
				room_solomaw_directions, room_cantGo,
				room_solomaw_landingField, room_solomaw_priestEntrance,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_priestEntrance, 0, 80h,
				s_verbose_solomaw_priestEntrance,s_verbose_solomaw_priestEntrance,
				s_none, s_none,
				room_cantGo, room_cantGo,
				room_solomaw_portAuthority, room_solomaw_highPriest,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_solomaw_highPriest, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_highPriest, 15, 0A0h,
				s_verbose_solomaw_highPriest, s_terse_solomaw_highPriest,
				s_first_solomaw_highPrint, s_none,
				room_cantGo, room_cantGo,
				room_solomaw_priestEntrance, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_solomaw_priestEntrance,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_directions, 0, 80h,
				s_verbose_solomaw_directions, s_terse_solomaw_directions,
				s_none, s_none,
				room_solomaw_nsCorridor, room_solomaw_portAuthority,
				room_solomaw_ewCorridor, room_solomaw_curvingCorridor_7,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_curvingCorridor_7, 0, 80h,
				s_verbose_solomaw_curvingCorridor
				s_verbose_solomaw_curvingCorridor
				s_none, s_none,
				room_cantGo, room_cantGo,
				room_solomaw_directions, room_cantGo,
				room_cantGo, room_solomaw_curvingCorridor_8,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_curvingCorridor_8, 0, 80h,
				s_verbose_solomaw_curvingCorridor
				s_verbose_solomaw_curvingCorridor
				s_none, s_none,
				room_solomaw_artifactEntrance, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_solomaw_curvingCorridor_7, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_artifactEntrance, 0, 90h,
				s_verbose_solomaw_artifactEntrance,s_verbose_solomaw_artifactEntrance,
				s_none, s_door_solomaw_artifactEntrance,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_riddleFailed, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_artifact, 29, 80h,
				s_verbose_solomaw_artifact, s_terse_solomaw_artifact,
				s_none, s_none,
				room_cantGo, room_solomaw_artifactEntrance,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_solomaw_artifactEntrance,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_nsCorridor, 0, 80h,
				s_verbose_solomaw_nsCorridor, s_verbose_solomaw_nsCorridor,
				s_none, s_none,
				room_solomaw_museumEntrance, room_solomaw_directions,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_museumEntrance, 0, 80h,
				s_verbose_solomaw_museumEntrance, s_terse_solomaw_museumEntrance,
				s_none, s_none,
				room_mustAnswer, room_solomaw_nsCorridor,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_mustAnswer, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_museum, 34, 80h,
				s_verbose_solomaw_museum, s_terse_solomaw_museum,
				s_none, s_none,
				room_cantGo, room_solomaw_museumEntrance,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_ewCorridor, 0, 80h,
				s_verbose_solomaw_ewCorridor, s_verbose_solomaw_ewCorridor, 
				s_none, s_none,
				room_cantGo, room_cantGo,
				room_solomaw_mazeEntrance, room_solomaw_directions,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeEntrance, 3, 80h,
				s_verbose_solomaw_mazeEntrance, s_terse_solomaw_mazeEntrance,
				s_none, s_none,
				room_cantGo, room_cantGo,
				room_solomaw_mazeBegin_10, room_solomaw_ewCorridor,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantGo, room_cantGo,
				room_cantApply, room_cantApply,
				room_solomaw_mazeBegin_10, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeBegin_10, 5, 80h,
				s_verbose_solomaw_mazeBeginning
				s_terse_solomaw_mazeBeginning
				s_none, s_none,
				room_solomaw_maze_16, room_cantGo,
				room_solomaw_mazeBegin_11, room_doorLocked,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_doorLocked,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeBegin_11, 0, 80h,
				s_verbose_solomaw_mazeBeginning
				s_terse_solomaw_mazeBeginning
				s_none, s_none,
				room_solomaw_maze_17, room_cantGo,
				room_solomaw_mazeBegin_12, room_solomaw_mazeBegin_10,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeBegin_12, 0, 80h,
				s_verbose_solomaw_mazeBeginning
				s_terse_solomaw_mazeBeginning
				s_none, s_none,
				room_solomaw_maze_18, room_cantGo,
				room_solomaw_mazeBegin_13, room_solomaw_mazeBegin_11,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeBegin_13, 0, 80h,
				s_verbose_solomaw_mazeBeginning
				s_terse_solomaw_mazeBeginning
				s_none, s_none,
				room_solomaw_maze_19, room_cantGo,
				room_solomaw_mazeBegin_14, room_solomaw_mazeBegin_12,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeBegin_14, 0, 80h,
				s_verbose_solomaw_mazeBeginning
				s_terse_solomaw_mazeBeginning
				s_none, s_none,
				room_solomaw_maze_1A, room_cantGo,
				room_solomaw_mazeBegin_15, room_solomaw_mazeBegin_13,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_mazeBegin_15, 0, 80h,
				s_verbose_solomaw_mazeBeginning
				s_terse_solomaw_mazeBeginning
				s_none, s_none,
				room_solomaw_maze_1B, room_cantGo,
				room_cantGo, room_solomaw_mazeBegin_14,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_16, 0, 80h,
				s_verbose_solomaw_nseMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_1C, room_solomaw_mazeBegin_10,
				room_fifteenDoors, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_17, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_1D, room_solomaw_mazeBegin_11,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_18, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_1E, room_solomaw_mazeBegin_12,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_19, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_1F, room_solomaw_mazeBegin_13,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_1A, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_20, room_solomaw_mazeBegin_14,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_1B, 0, 80h,
				s_verbose_solomaw_nswMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_21, room_solomaw_mazeBegin_15,
				room_cantGo, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_1C, 0, 80h,
				s_verbose_solomaw_nseMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_22, room_solomaw_maze_16,
				room_fifteenDoors, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_1D, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_solomaw_maze_17,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_1E, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_solomaw_maze_18,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_1F, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_solomaw_maze_19,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_20, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_26, room_solomaw_maze_1A,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_21, 0, 80h,
				s_verbose_solomaw_nswMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_27, 1B,
				room_cantGo, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_22, 0, 80h,
				s_verbose_solomaw_nseMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_28, room_solomaw_maze_1C,
				room_fifteenDoors, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_23, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_29, room_fifteenDoors,
				room_solomaw_maze_24, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_24, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_fifteenDoors,
				room_solomaw_maze_25, room_solomaw_maze_23,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_25, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_fifteenDoors,
				room_solomaw_maze_26, room_solomaw_maze_24,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_26, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_solomaw_maze_20,
				room_fifteenDoors, room_solomaw_maze_25,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_27, 0, 80h,
				s_verbose_solomaw_nswMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_2D, room_solomaw_maze_21,
				room_cantGo, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_28, 0, 80h,
				s_verbose_solomaw_nseMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_2E, room_solomaw_maze_22,
				room_fifteenDoors, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_29, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_solomaw_maze_23,
				room_solomaw_maze_2A, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_2A, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_fifteenDoors,
				room_solomaw_maze_2B, room_solomaw_maze_29,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_2B, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_maze_solomaw_31, room_fifteenDoors,
				room_fifteenDoors, room_solomaw_maze_2A,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_2C, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_fifteenDoors,
				room_solomaw_maze_2D, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_2D, 0, 80h,
				s_verbose_solomaw_nswMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_solomaw_maze_27,
				room_cantGo, room_solomaw_maze_2C,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_2E, 0, 80h,
				s_verbose_solomaw_nseMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_maze_solomaw_34, room_solomaw_maze_28,
				room_solomaw_maze_2F, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_2F, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_fifteenDoors,
				room_solomaw_maze_30, room_solomaw_maze_2E,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_30, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_maze_solowmaw_36, room_fifteenDoors,
				room_fifteenDoors, room_solomaw_maze_2F,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_31, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_maze_solomaw_37, room_solomaw_maze_2B,
				room_fifteenDoors, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_32, 0, 80h,
				s_verbose_solomaw_nsewMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_solomaw_maze_38, room_fifteenDoors,
				room_solomaw_maze_33, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_33, 39, 80h,
				s_verbose_solomaw_nswMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_fifteenDoors, room_fifteenDoors,
				room_cantGo, room_maze_solomaw_32,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_34, 0, 80h,
				s_verbose_solomaw_seMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_cantGo, room_solomaw_maze_2E,
				room_fifteenDoors, room_cantGo,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_35, 0, 80h,
				s_verbose_solomaw_newMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_cantGo, room_fifteenDoors,
				room_maze_solowmaw_36, room_maze_solomaw_34,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_36, 0, 80h,
				s_verbose_solomaw_newMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_cantGo, room_solomaw_maze_30,
				room_fifteenDoors, room_solomaw_maze_35,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_37, 0, 80h,
				s_verbose_solomaw_newMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_cantGo, room_maze_solomaw_31,
				room_solomaw_maze_38, room_fifteenDoors,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_38, 0, 80h,
				s_verbose_solomaw_newMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_cantGo, room_maze_solomaw_32,
				room_solowmaw_maze_39, room_maze_solomaw_37,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
			ROOM(room_solomaw_maze_39, 0, 80h,
				s_verbose_solomaw_nsMaze
				s_terse_solomaw_maze
				s_none, s_none,
				room_cantGo, room_fifteenDoors,
				room_cantGo,  room_solomaw_maze_38,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply,
				room_cantApply, room_cantApply)
