include(`messages.m4')dnl
include(`constants.m4')dnl
include(`macros.m4')dnl
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
		ld	a, fh_msg
		ld	hl, aAGalactic_msg
		call	fileOpen
		cp	1
		jp	nz, loc_14A
		ld	a, fh_msg
		ld	hl, aBGalactic_msg
		call	fileOpen
		cp	1
		jp	nz, loc_14A
		ld	a, fh_msg
		ld	hl, aCGalactic_msg
		call	fileOpen
		cp	1
		jp	nz, loc_14A
		ld	a, fh_msg
		ld	hl, aDGalactic_msg
		call	fileOpen
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
		ld	a, fh_bgn
		call	fileOpen
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
		ld	hl, aAGalactic_bgn
		ld	a, fh_bgn
		call	fileOpen
		cp	1
		jp	nz, loc_227
		ld	hl, aBGalactic_bgn
		ld	a, fh_bgn
		call	fileOpen
		cp	1
		jp	nz, loc_227
		ld	hl, aCGalactic_bgn
		ld	a, fh_bgn
		call	fileOpen
		cp	1
		jp	nz, loc_227
		ld	hl, aDGalactic_bgn
		ld	a, fh_bgn
		call	fileOpen
		cp	1
		jp	nz, loc_227
		printMessage(s_galacticBgnBad)
		jp	loc_1C13
; ---------------------------------------------------------------------------

loc_227:
		ld	a, fh_bgn			; File number
		ld	bc, 1C00h			; Length
		ld	de, baseBGNAddress
		call	fileRead
		cp	1
		jp	nz, loc_241
		printMessage(s_gameDataFileBad)
		jp	loc_1C0E
; ---------------------------------------------------------------------------

loc_241:
		ld	a, fh_bgn
		call	fileClose
		ld	de, baseTimeMaybe
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
		call	getYesNo
		cp	0
		jp	z, l_mainLoopEntry
		printMessage(s_introduction)
		ld	b, 20
		call	subtractFromScore

l_mainLoopEntry:
		call	getRoomData
		call	lookFunction

l_mainLoop:
		ld	hl, item_lucindaObject.location
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
		ld	hl, item_lucindaObject.location
		ld	a, (item_trochObject.location)
		cp	(hl)
		jp	nz, loc_2CB
		inc	hl
		ld	a, (item_trochObject.roomNumber)
		cp	(hl)
		jp	nz, loc_2CB
		printMessage(s_trochKilledLucinda)

l_forcedGameEnding:
		printMessage(s_endingGame)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

loc_2CB:
		ld	a, (item_lucindaObject.roomNumber)
		cp	2Ch ; ','
		jp	z, loc_2D8
		cp	2Dh ; '-'
		jp	nz, loc_2EA

loc_2D8:
		ld	a, (item_lockingDoors.floorMessageIndex)
		cp	1Ah
		jp	z, loc_2EA
		printMessage(s_lucindaEscaped)
		jp	l_forcedGameEnding
; ---------------------------------------------------------------------------

loc_2EA:
		ld	hl, item_lucindaObject.location
		ld	a, (item_cpmDiskA.location)
		cp	(hl)
		jp	nz, loc_306
		ld	a, (item_cpmDiskA.roomNumber)
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	loc_393
; ---------------------------------------------------------------------------

loc_344:
		cp	52h ; 'R'
		jp	nz, loc_374
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 12h
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
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
		jp	l_inline_playerDied
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
		jp	l_advanceClock
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
		jp	l_advanceClock
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
		jp	l_advanceClock
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
		jp	l_advanceClock
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
		jp	c, l_advanceClock
		cp	3Ah ; ':'
		jp	nc, l_advanceClock
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de
		ld	(hl), 0CFh ; 'œ'
		ld	a, room_earth_parson
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de
		ld	(hl), 0C0h	; Change Parson's room to sell gear
		ld	hl, item_navComputer.location
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_4C0:
		ld	a, 24
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		printMessage(s_galaxySalutes)
		ld	a, (item_computerPage.location)
		cp	7
		jp	nz, loc_F1B
		ld	a, 30
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		jp	loc_F1B
; ---------------------------------------------------------------------------

inCustoms_1:
		ld	a, (stru_4991.hiredFlag)
		cp	1
		jp	z, l_advanceClock
		ld	a, (item_analyzer.location)
		cp	0
		jp	nz, loc_502
		printMessage(s_caughtWithAnalyzer)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

loc_502:
		ld	a, (item_neutralizer.location)
		cp	7
		jp	nz, l_advanceClock
		printMessage(s_caughtWithIllusion)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

inSupply_1:
		ld	a, (item_navComputer.location)
		cp	8
		jp	z, l_advanceClock
		ld	a, (g_shipSuppliedFlag)
		cp	1
		jp	z, l_advanceClock
		ld	a, (byte_49BF)
		cp	0
		jp	z, earthSupplyDepot
		cp	1
		jp	z, gcsSupplyDepot
		cp	2
		jp	z, isthurSupplyDepot
		jp	l_advanceClock
; ---------------------------------------------------------------------------

earthSupplyDepot:
		printMessage(s_supplyQuestion)
		printMessage(s_supplyAnswer)
		printMessage(s_suppliesOnBoard)
		ld	a, 9
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	a, 0Ah
		ld	(byte_49BF), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

gcsSupplyDepot:
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	a, 2
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 0Ah
		ld	(byte_49BF), a
		ld	a, 1
		ld	(g_landing_navier.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 0Bh
		ld	(item_cpmDiskA.scoreBonus), a
		ld	a, 32h ; '2'
		ld	(item_cpmDiskA.roomNumber), a
		ld	a, 0Dh
		ld	(item_cpmDiskB.scoreBonus), a
		ld	a, 3Ah ; ':'
		ld	(item_cpmDiskB.roomNumber), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

isthurSupplyDepot:
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	a, 1
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 0Ah
		ld	(byte_49BF), a
		ld	a, 1
		ld	(g_landing_gcs.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

inPiratesRoom:
		ld	hl, g_itemList.location
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
		ld	(hl), location_earth 
		inc	hl
		ld	(hl), room_earth_campsite
		dec	hl
		ret
; End of function sub_5E6

; ---------------------------------------------------------------------------

loc_5ED:
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 7
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, earthRoom_t.enter_room
		add	hl, de
		ld	(hl), room_earth_pirate
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_616:
		ld	a, (item_geigerCounter.location)
		cp	location_inventory
		jp	nz, loc_625
		printMessage(s_geigerClicking)

loc_625:
		ld	a, (item_radSuit.field_3)
		cp	22h ; '"'
		jp	z, l_advanceClock
		ld	a, (byte_4960)
		add	a, 5
		ld	(byte_4960), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

onIstLandingSite:
		ld	a, (g_wearingSuitFlag)
		cp	1
		jp	z, loc_64A

loc_640:
		printMessage(s_didntWearPSuit)
		jp	l_inline_playerDied

loc_64A:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 3
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_67A:
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de
		ld	a, (hl)
		cp	2
		jp	nz, l_advanceClock
		ld	a, (g_wearingSuitFlag)
		cp	1
		jp	nz, loc_640
		jp	l_advanceClock
; ---------------------------------------------------------------------------

doIstAirlockCycle:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 3
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

changeIstCmdtFoyMsg:
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl
		ld	(hl), 39h ; '9'
		inc	hl
		ld	(hl), 68h ; 'h'
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_6CF:
		ld	hl, (g_currentRoomData)
		ld	de, 6
		add	hl, de
		ld	a, (hl)
		cp	3Bh ; ';'
		jp	nz, loc_6F7
		ld	a, 1
		ld	(g_landing_gcs.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_6F7:
		cp	47h ; 'G'
		jp	nz, loc_73B
		ld	a, 1
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_73B:
		cp	48h ; 'H'
		jp	nz, l_advanceClock
		ld	a, 1
		ld	(g_landing_earth.canLandFlag), a
		ld	a, 0
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(gameWonFlagMaybe), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 1
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

changeIntHQMsg:
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de
		ld	(hl), 0C0h ; '¿'
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_7B8:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 9
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 8
		add	hl, de
		ld	a, (hl)
		cp	3Ch ; '<'
		jp	nz, loc_7DE
		ld	(hl), 3Dh ; '='
		inc	hl
		ld	(hl), 0Bh
		ld	hl, (g_currentRoomData)
		ld	(hl), 3
		jp	loc_7FB
; ---------------------------------------------------------------------------

loc_7DE:
		inc	hl
		ld	a, (hl)
		cp	0Bh
		jp	nz, loc_7EF
		ld	(hl), 35h ; '5'
		ld	hl, (g_currentRoomData)
		ld	(hl), 2
		jp	loc_7FB
; ---------------------------------------------------------------------------

loc_7EF:
		cp	35h ; '5'
		jp	nz, loc_7FB
		ld	(hl), 58h ; 'X'
		ld	hl, (g_currentRoomData)
		ld	(hl), 1

loc_7FB:
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_805:
		ld	hl, (g_currentRoomData)
		ld	de, 3
		add	hl, de
		ld	a, (hl)
		cp	0F3h ; 'Û'
		jp	nz, l_advanceClock
		ld	(hl), 0D7h ; '◊'
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_earth_myRoom
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_83D:
		ld	a, (byte_49C4)
		cp	1
		jp	nz, l_advanceClock
		ld	a, 0
		ld	(byte_49C4), a
		ld	a, (item_cpmDiskA.location)
		cp	7
		jp	nz, l_advanceClock
		ld	a, (item_cpmDiskB.location)
		cp	7
		jp	nz, l_advanceClock
		printMessage(s_disksDontWork)
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 0Bh
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_88A:
		ld	a, (byte_49C5)
		cp	1
		jp	nz, l_advanceClock
		ld	a, 0
		ld	(byte_49C5), a
		ld	a, (item_cpmDiskA.location)
		cp	7
		jp	nz, l_advanceClock
		ld	a, (item_cpmDiskB.location)
		cp	7
		jp	nz, l_advanceClock
		printMessage(s_disksWork)
		ld	a, 8
		ld	(item_cpmDiskA.location), a
		ld	(item_cpmDiskB.location), a
		ld	a, (carriedItemCount)
		sub	2
		ld	(carriedItemCount), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 0Bh
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_8E7:
		ld	a, (g_wearingSuitFlag)
		cp	1
		jp	z, l_advanceClock
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
		call	advanceClock
		dec	b
		jp	nz, loc_916
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_920:
		printMessage(s_bayDoorsOpen)
		jp	l_inline_playerDied

l_barHandler:
		ld	a, (enteredBarFlag)
		cp	0
		jp	nz, loc_9F2
		printMessage(s_barWelcome)

loc_939:
		call	parseInput
		ld	a, (g_inputWordCount)
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
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		jp	l_advanceClock
; ---------------------------------------------------------------------------

sitWithJackDavies:
		ld	a, (enteredBarFlag)
		add	a, 2
		ld	(enteredBarFlag), a
		ld	a, 3
		ld	(item_attacheCase.location), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 21h ; '!'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de
		ld	(hl), 0Fh
		inc	hl
		inc	hl
		ld	(hl), 0Fh
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		printMessage(s_daviesMessage1)
		printMessage(s_daviesMessage2)
		ld	a, 25h 
		ld	(g_currentRoomNumber), a
		ld	a, 5
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

loc_9F2:
		cp	3
		jp	nz, loc_A01
		printMessage(s_barNoSeats)
		jp	l_advanceClock
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	a, 5
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 3
		ld	(item_largeEnvelope.location), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_A6A:
		printMessage(s_restaurantNoSeats)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_A74:
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 32
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de
		ld	(hl), 72h ; 'r'
		inc	hl
		inc	hl
		ld	(hl), 72h ; 'r'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

findDyingGirl:
		ld	a, (foundDyingGirlFlag)
		cp	1
		jp	z, l_advanceClock
		printMessage(s_dyingGirlMessage1)
		printMessage(s_dyingGirlMessage2)
		ld	a, 1
		ld	(foundDyingGirlFlag), a
		ld	a, 5
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 3
		ld	(item_dyingGirl.location), a
		jp	l_advanceClock
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
		ld	(g_wearingSuitFlag), a
		printMessage(s_darkSupplyMessage1)
		printMessage(s_darkSupplyMessage2)
		ld	a, 12h
		ld	(g_currentRoomNumber), a
		ld	hl, g_itemList.location
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
		ld	(item_cpmDiskA.location), a
		ld	(item_cpmDiskB.location), a
		ld	(item_attacheCase.location), a
		ld	(item_largeEnvelope.location), a
		ld	(item_dyingGirl.location), a
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
		ld	(g_lockerRentedFlag), a
		ld	a, 1
		ld	(byte_49A8), a
		ld	a, 5
		ld	(item_attacheCase.scoreBonus), a
		jp	l_mainLoopEntry
; ---------------------------------------------------------------------------

gotGCSSupplies:
		cp	1
		jp	nz, l_advanceClock
		ld	a, 2
		ld	(gottenGCSKOdFlag), a
		printMessage(s_gcsResupplied)
		ld	a, 5
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(byte_49BF), a
		ld	(g_landing_earth.canLandFlag), a
		ld	a, 0
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, room_earth_starlightLounge
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de
		ld	(hl), 71h ; 'q'
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 71h ; 'q'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	a, 1
		ld	(byte_49BC), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

talk2GCSEngineer:
		ld	a, (byte_49BC)
		cp	0
		jp	z, l_advanceClock
		ld	a, 0
		ld	(byte_49BC), a
		printMessage(s_engineerMessage1)
		printMessage(s_engineerMessage2)
		ld	a, 2
		ld	(byte_49B6), a
		ld	a, 4
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_BCF:
		ld	a, (byte_49BE)
		cp	1
		jp	nz, l_advanceClock
		ld	a, 2
		ld	(byte_49BE), a
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_BDF:
		ld	hl, item_dyingGirl.location
		ld	a, (hl)
		cp	7
		jp	nz, l_advanceClock
		dec	hl
		dec	hl
		ld	a, (hl)
		cp	32h ; '2'
		jp	nz, l_advanceClock
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
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_C12:
		ld	a, (byte_49BD)
		cp	1
		jp	nz, l_advanceClock
		ld	a, 0
		ld	(byte_49BD), a
		ld	a, (g_currentRoomNumber)
		push	af
		ld	a, 11h
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 16h
		add	hl, de
		ld	(hl), 10h
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 10h
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
		printMessage(s_doctorMessage2)
		printMessage(s_doctorMessage3)
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_C6C:
		ld	hl, (g_currentRoomData)
		inc	hl
		inc	hl
		ld	(hl), 0AEh ; 'Æ'
		inc	hl
		ld	(hl), 15h
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_C79:
		ld	a, (byte_49C1)
		cp	0
		jp	z, l_advanceClock
		ld	b, 0
		ld	hl, g_itemList.location
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
		jp	c, l_advanceClock
		printMessage(s_boatCapsized)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

loc_CB3:
		ld	a, (byte_49C6)
		cp	1
		jp	nz, loc_CD8
		ld	a, 31h ; '1'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_CEB:
		ld	a, (g_wearingSuitFlag)
		cp	1
		jp	nz, loc_640
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_CF6:
		ld	a, 8
		ld	(item_nDoor.location), a
		ld	a, 1
		ld	(byte_49C6), a
		ld	a, 31h ; '1'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	(hl), 22h ; '"'

loc_D38:
		ld	a, 32h ; '2'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_D43:
		ld	a, (byte_49C9)
		cp	1
		jp	z, l_advanceClock
		ld	a, 1
		ld	(byte_49C9), a
		call	parseInput
		ld	a, (g_inputWordCount)
		cp	0
		jp	z, l_advanceClock
		cp	2
		jp	z, l_advanceClock
		ld	a, (playerCommand)
		cp	p_160
		jp	nz, l_advanceClock
		ld	a, 20
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		printMessage(s_youAreCorrect)
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	(hl), 80h ; 'Ä'
		ld	de, 9
		add	hl, de
		ld	(hl), 0Ah
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 0Ah
		jp	l_advanceClock
; ---------------------------------------------------------------------------

loc_D8F:
		ld	a, 10h
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Dh
		add	hl, de
		ld	(hl), 0Fh
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 0Fh
		ld	a, 33h ; '3'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		jp	l_advanceClock

l_advanceClock:
		call	advanceClock
		ld	a, (byte_4960)
		cp	0
		jp	z, loc_DD0
		sub	1
		ld	(byte_4960), a
		cp	50
		jp	c, loc_DD0
		printMessage(s_diedOfRadiation)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

loc_DD0:
		call	parseInput
		ld	a, (g_inputWordCount)
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
		call	getRoomData
		push	af
		ld	hl, (g_currentRoomData)
		inc	hl
		ld	a, (hl)
		and	2
		cp	0
		jp	z, loc_E26
		ld	a, (item_neutralizer.location)
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
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		jp	nz, l_inline_doKnock
		jp	do_ignite
; ---------------------------------------------------------------------------
include(`inline/doKnock.m4')
include(`inline/doScore.m4')
include(`inline/doQuit.m4')

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
		jp	z, g_inline_doInventory
		cp	p_drop
		jp	nz, loc_FB7

		; Don't understand single-command 'DROP'
		printMessage(`s_dontUnderstand')
		jp	l_mainLoop

loc_FB7:
		cp	p_examine
		jp	z, l_inline_doExamine

		cp	p_read
		jp	z, l_inline_doRead

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
		jp	nz, l_inline_doSleep
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
		ld	hl, (g_currentRoomData)
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
include(`inline/doSleep.m4')
include(`inline/doEat.m4')
include(`inline/doDrink.m4')

loc_112F:
		cp	p_198
		jp	nz, loc_1162
		ld	a, (g_currentPlanetNumber)
		cp	4
		jp	nz, loc_FF1
		ld	a, (g_currentRoomNumber)
		cp	2Bh ; '+'
		jp	nz, loc_FF1
		ld	hl, (g_currentRoomData)
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
		jp	l_advanceClock
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
		ld	a, (item_lockingDoors.floorMessageIndex)
		cp	19h
		jp	nz, loc_1189

loc_117F:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1189:
		ld	a, (item_keyingCard.location)
		cp	7
		jp	nz, loc_117F
		printMessage(s_okay)
		ld	a, 19h
		ld	(item_lockingDoors.floorMessageIndex), a
		ld	hl, (g_currentRoomData)
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
		ld	a, (item_lockingDoors.floorMessageIndex)
		cp	1Ah
		jp	z, loc_117F
		ld	a, (item_keyingCard.location)
		cp	7
		jp	nz, loc_117F
		printMessage(s_okay)
		ld	a, 1Ah
		ld	(item_lockingDoors.floorMessageIndex), a
		ld	hl, (g_currentRoomData)
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
		ld	(item_nDoor.floorMessageIndex), a
		ld	hl, (g_currentRoomData)
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
		ld	hl, (g_currentRoomData)
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
		jp	nz, l_inline_didntFindAnything
		ld	a, (g_currentRoomNumber)
		cp	29h ; ')'
		jp	nz, l_inline_didntFindAnything
		ld	hl, (g_currentRoomData)
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
		jp	nz, l_inline_dontKnowHow
		ld	a, (g_currentRoomNumber)
		cp	2Eh ; '.'
		jp	nz, l_inline_dontKnowHow
		printMessage(s_printGibberish)
		ld	a, 2
		ld	(item_computerPage.location), a
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
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

l_fifteenDoors:
		printMessage(s_thatDoorIsLocked)
		ld	a, (byte_49C7)
		add	a, 1
		ld	(byte_49C7), a
		cp	0Fh
		jp	c, l_mainLoopEntry
		printMessage(s_triedFifteenthDoor)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

l_marbleGameEntry:
		printMessage(s_marbleGame)
		jp	loc_4348
; ---------------------------------------------------------------------------

l_storageSpace_carryingKeyCheck:
		ld	a, (item_lockerKey.location)
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
		jp	l_inline_doKnock
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
		jp	l_inline_doHire
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
		cp	p_shovel
		jp	c, loc_15C8
		cp	p_lastHiree
		jp	c, l_inline_pickUpItem

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
		cp	p_pieceOfPaper
		jp	c, l_inline_doBuy

loc_15F8:
		printMessage(s_noWayToBuy)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1602:
		ld	a, (firstToken)
		cp	p_inventory
		jp	z, g_inline_doInventory
		ld	a, (secondToken)
		cp	p_inventory
		jp	z, g_inline_doInventory
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
		cp	p_shovel
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
		ld	a, (item_duffleBag.location)
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
		ld	hl, item_laser.location
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, item_geigerCounter.location
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
		ld	a, (item_purse.location)
		cp	location_inventory
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
		ld	a, (item_attacheCase.location)
		cp	location_inventory
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
		ld	a, (item_largeEnvelope.location)
		cp	location_inventory
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
		ld	hl, item_cpmDiskA.location
		ld	a, (hl)
		cp	8
		jp	nz, loc_16E3
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, item_cpmDiskB.location
		ld	(hl), b
		inc	hl
		ld	(hl), c
		printMessage(s_findTwoDisks)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1747:
		ld	a, (firstToken)
		cp	p_examine
		jp	z, l_inline_doExamine
		ld	a, (secondToken)
		cp	p_yes
		jp	z, l_inline_doExamine
		ld	b, p_read
		ld	c, p_pieceOfPaper
		call	compareTwoWordInput
		cp	0
		jp	nz, loc_176F
		ld	b, p_read
		ld	c, p_paper
		call	compareTwoWordInput
		cp	0
		jp	z, loc_179D

loc_176F:
		ld	hl, item_pieceOfPaper.location
		ld	a, (hl)
		cp	location_inventory
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
		ld	b, p_read
		ld	c, p_warning
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
		ld	a, (item_lockerKey.location)
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
		ld	a, (item_largeEnvelope.location)
		cp	7
		jp	nz, loc_16D1
		printMessage(s_envelopeLabel)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1866:
		ld	a, (firstToken)
		cp	p_read
		jp	z, l_inline_doRead
		ld	a, (secondToken)
		cp	p_read
		jp	z, l_inline_doRead
		ld	b, p_hit
		ld	c, p_machine
		call	compareTwoWordInput
		cp	0
		jp	nz, g_inline_hitMachine
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
		jp	nz, l_inline_doWearSuit
		ld	b, p_wear
		ld	c, p_psuit
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_doWearPSuit
		ld	b, p_wear
		ld	c, p_radsuit
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_doWearRadSuit
		ld	b, p_remove
		ld	c, p_suit
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_doRemoveSuit
		ld	b, p_remove
		ld	c, p_psuit
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_doRemovePSuit
		ld	b, p_remove
		ld	c, p_radsuit
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_doRemoveRadSuit
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
		ld	a, (item_skeletonKey.location)
		cp	7
		jp	z, loc_1951

loc_1947:
		printMessage(s_noKey)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1951:
		printMessage(s_okay)
		ld	hl, (g_currentRoomData)
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
		ld	a, (item_lockerKey.location)
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
		ld	(item_attacheCase.floorMessageIndex), a
		ld	a, 3
		ld	(item_attacheCase.location), a
		ld	a, 6
		ld	(item_attacheCase.roomNumber), a
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
		ld	(item_pSuit.floorMessageIndex), a
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
		ld	a, (item_lockerKey.location)
		cp	7
		jp	nz, loc_192D
		ld	a, location_none
		ld	(item_lockerKey.location), a
		printMessage(s_machineSwallowKey)
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1A8F:
		ld	a, (firstToken)
		cp	p_sleep
		jp	z, l_inline_doSleep
		ld	a, (secondToken)
		cp	p_sleep
		jp	z, l_inline_doSleep
		ld	b, p_eat
		ld	c, p_deposit
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1AB0
		ld	a, 0E9h	; 'È'
		jp	l_inline_doEat
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
		jp	l_inline_doDrink
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
		ld	hl, g_itemList.location
		add	hl, de
		ld	a, (hl)
		cp	7
		jp	nz, loc_39C5
		ld	(hl), 8
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		ld	a, 5
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, (byte_49C8)
		add	a, 1
		ld	(byte_49C8), a
		cp	3
		jp	nz, l_printOkayAndLoop
		ld	d, 0D3h	; '”'
		ld	e, 0BCh	; 'º'
		call	printFromMSGFile
		ld	a, 0Eh
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
		ld	a, 5
		ld	(item_skeletonKey.location), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(g_landing_earth.canLandFlag), a
		ld	a, 0
		ld	(g_landing_isthur.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
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
		ld	hl, item_pieceOfPaper.location
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
		jp	l_printOkayAndLoop
; ---------------------------------------------------------------------------

loc_1C04:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR printFromMSGFile

loc_1C0E:
		ld	a, 1
		call	fileClose

loc_1C13:
		ld	a, 1
		call	exit
; END OF FUNCTION CHUNK	FOR printFromMSGFile

include(`functions/look.m4')
include(`functions/printMessageAtHL.m4')
include(`functions/printFloorItems.m4')
include(`functions/tokenizeString.m4')
include(`functions/searchVocabulary.m4')
include(`functions/vocabularyCmp.m4')
include(`functions/getRoomData.m4')
include(`functions/getYesNo.m4')
include(`functions/convertScoreToString.m4')
include(`functions/subtractFromScore.m4')
include(`functions/parseInput.m4')
include(`functions/advanceClock.m4')
include(`functions/printClockString.m4')
include(`functions/printComputerTerminal.m4')
include(`functions/compareTwoWordInput.m4')
include(`functions/hasInventoryRoom.m4')
include(`functions/readString.m4')

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
include(`data/vocabulary.m4')
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
g_rankMessageList:	wordToBytes(s_rank_beginner)		; 00
			wordToBytes(s_rank_apprentice1)		; 01
			wordToBytes(s_rank_apprentice2)		; 02
			wordToBytes(s_rank_apprentice3)		; 03
			wordToBytes(s_rank_apprentice4)		; 04
			wordToBytes(s_rank_apprentice5)		; 05
			wordToBytes(s_rank_apprentice6)		; 06
			wordToBytes(s_rank_apprentice7)		; 07
			wordToBytes(s_rank_cpo)			; 08
			wordToBytes(s_rank_midshipman1)		; 09
			wordToBytes(s_rank_midshipman2)		; 0a
			wordToBytes(s_rank_midshipman3)		; 0b
			wordToBytes(s_rank_midshipman4)		; 0c
			wordToBytes(s_rank_midshipman5)		; 0d
			wordToBytes(s_rank_warrantOfficer)	; 0e
			wordToBytes(s_rank_captainDunsel)	; 0f
			wordToBytes(s_rank_captain1)		; 10
			wordToBytes(s_rank_captainRespectus)	; 11
inventoryMsgList:	wordToBytes(s_inven_shovel)		; 00
			wordToBytes(s_inven_duffleBag)		; 01
			wordToBytes(s_inven_laser)		; 02
			wordToBytes(s_inven_geigerCounter)	; 03
			wordToBytes(s_inven_neutralizer)	; 04
			wordToBytes(s_inven_pSuit)		; 05
			wordToBytes(s_inven_pSuitDonned)	; 06
			wordToBytes(s_inven_foldedPaper)	; 07
			wordToBytes(s_inven_pieceOfPaper)	; 08
			wordToBytes(s_inven_repairDisk)		; 09
			wordToBytes(s_inven_purse)		; 0a
			wordToBytes(s_inven_coil)		; 0b
			wordToBytes(s_inven_computerPage)	; 0c
			wordToBytes(s_inven_keyingCard)		; 0d
			wordToBytes(s_inven_trochWalking)	; 0e
			wordToBytes(s_inven_trochSitting)	; 0f
			wordToBytes(s_inven_lucindaWalking)	; 10
			wordToBytes(s_inven_lucindaSitting)	; 11
			wordToBytes(s_inven_diskA)		; 12
			wordToBytes(s_inven_oars)		; 13
			wordToBytes(s_inven_rope)		; 14
			wordToBytes(s_inven_diskB)		; 15
			wordToBytes(s_inven_skeletonKey)	; 16
			wordToBytes(s_inven_platinumClaw)	; 17
			wordToBytes(s_inven_silverLance)	; 18
			wordToBytes(s_inven_crystalStatue)	; 19
			wordToBytes(s_inven_radSuit)		; 1a
			wordToBytes(s_inven_lockerKey)		; 1b
			wordToBytes(s_inven_attacheCase)	; 1c
			wordToBytes(s_inven_emptyBottle)	; 1d
			wordToBytes(s_inven_largeEnvelope)	; 1e
			wordToBytes(s_inven_dyingGirl)		; 1f
			wordToBytes(s_inven_deadGirl)		; 20
			wordToBytes(s_inven_radSuitDonned)	; 21
floorItemMsgList:	wordToBytes(s_floor_shovel)				; 00
			wordToBytes(s_floor_duffleBag)				; 01
			wordToBytes(s_floor_laser)				; 02
			wordToBytes(s_floor_geigerCounter)			; 03
			wordToBytes(s_forSale_navigationComputer)		; 04
			wordToBytes(s_floor_navigationComputer)			; 05
			wordToBytes(s_forSale_neuralAnalyzer)			; 06
			wordToBytes(s_floor_neuralAnalyzer)			; 07
			wordToBytes(s_forSale_illusionNeutralizer)		; 08
			wordToBytes(s_floor_illusionNeutralizer)		; 09
			wordToBytes(s_forSale_pSuit)				; 0a
			wordToBytes(s_floor_pSuit)				; 0b
			wordToBytes(s_floor_pSuitNearDoor)			; 0c
			wordToBytes(s_floor_pSuitInLocker)			; 0d
			wordToBytes(s_floor_foldedPaper)			; 0e
			wordToBytes(s_floor_pieceOfPaper)			; 0f
			wordToBytes(s_floor_cpmDiskFolder)			; 10
			wordToBytes(s_floor_purseHidden)			; 11
			wordToBytes(s_floor_purse)				; 12
			wordToBytes(s_floor_degaussingCoil)			; 13
			wordToBytes(s_floor_computerPaperPage)			; 14
			wordToBytes(s_floor_keyingCard)				; 15
			wordToBytes(s_floor_diamonds)				; 16
			wordToBytes(s_floor_irridiumCrystals)			; 17
			wordToBytes(s_floor_ewDoorsOpen)			; 18
			wordToBytes(s_floor_ewDoorsLocked)			; 19
			wordToBytes(s_floor_rowboat)				; 1a
			wordToBytes(s_floor_rowboatWithOars)			; 1b
			wordToBytes(s_floor_rowboatWithTieRope)			; 1c
			wordToBytes(s_floor_rowboatWithTieRopeOars)		; 1d
			wordToBytes(s_floor_smallRowboat)			; 1e
			wordToBytes(s_floor_troch)				; 1f
			wordToBytes(s_floor_lucinda)				; 20
			wordToBytes(s_floor_cpmDisk)				; 21
			wordToBytes(s_floor_nDoorOpen)				; 22
			wordToBytes(s_floor_nDoorLocked)			; 23
			wordToBytes(s_floor_oars)				; 24
			wordToBytes(s_floor_rope)				; 25
			wordToBytes(s_floor_largeEnvelope)			; 26
			wordToBytes(s_floor_skeletonKey)			; 27
			wordToBytes(s_floor_platinumClaw)			; 28
			wordToBytes(s_floor_silverLance)			; 29
			wordToBytes(s_floor_crystalStatue)			; 2a
			wordToBytes(s_floor_radiationSuit)			; 2b
			wordToBytes(s_floor_lockerKey)				; 2c
			wordToBytes(s_floor_caseInLocker)			; 2d
			wordToBytes(s_floor_attacheCase)			; 2e
			wordToBytes(s_floor_caseUnderBunker)			; 2f
			wordToBytes(s_floor_emptyBottle)			; 30
			wordToBytes(s_floor_dyingGirl)				; 31
			wordToBytes(s_floor_deadGirl)				; 32
			wordToBytes(s_floor_largeEnvelope)			; 33
			wordToBytes(s_installed_navigationComputer)		; 34
			wordToBytes(s_installed_neuralAnalyzer)			; 35
g_earthReadList:	wordToBytes(s_doorNumber10)	; 0
			wordToBytes(s_doorNumber11)	; 1
			wordToBytes(s_doorNumber12)	; 2
			wordToBytes(s_doorNumber13)	; 3
			wordToBytes(s_doorNumber14)	; 4
			wordToBytes(s_doorNumber15)	; 5
			wordToBytes(s_doorNumber16)	; 6
g_gcsExamineMsgList:	wordToBytes(s_first_gcsRestaurant)
			wordToBytes(s_notCleanedInYears)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_corridorClean)
			wordToBytes(s_corridorClean)
			wordToBytes(s_corridorClean)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_notCleanedInYears)
			wordToBytes(s_examineBar)
			wordToBytes(s_first_gcsRestaurant)
			wordToBytes(s_corridorClean)
			wordToBytes(s_corridorClean)
			wordToBytes(s_dontSeeUnusual)
			wordToBytes(s_notCleanedInYears)
			wordToBytes(s_smellOfAntiseptic)
			wordToBytes(s_nothingSignificant)
			wordToBytes(s_examineBar)
			wordToBytes(s_first_gcsRestaurant)
			wordToBytes(s_terse_restaurant)
include(`data/gcsReadList.m4')
stru_2BDC:	msgOffset <0, 0>	; 36
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

include(`functions/outputString.m4')
include(`functions/getc.m4')
include(`functions/rawGetc.m4')

; ---------------------------------------------------------------------------
		db    0
		db  3Eh	; >
		db    1
		db 0CDh	; Õ
		db  37h	; 7
		db  2Dh	; -
; ---------------------------------------------------------------------------
include(`functions/exit.m4')
include(`functions/putc.m4')
; =============== S U B	R O U T	I N E =======================================


sub_2CA7:
		push	af
		call	sub_2E1A
		cp	1
		jp	z, loc_2CDE
		pop	af
		cp	fh_msg
		jp	nz, loc_2CBC
		ld	de, msgFCB
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CBC:
		cp	fh_bgn
		jp	nz, loc_2CC7
		ld	de, bgnFCB
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CC7:
		ld	de, spareFCB

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
		ld	de, msgFCB
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D07:
		cp	2
		jp	nz, loc_2D12
		ld	de, bgnFCB
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D12:
		ld	de, msgFCB

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

include(`functions/fileClose.m4')
include(`functions/fileOpen.m4')
include(`functions/fileRead.m4')

; =============== S U B	R O U T	I N E =======================================


sub_2DEF:
		cp	fh_msg
		jp	nz, loc_2DFA
		ld	hl, msgFCB
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2DFA:
		cp	fh_bgn
		jp	nz, loc_2E05
		ld	hl, bgnFCB
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2E05:
		ld	hl, spareFCB

loc_2E08:
		ld	de, 21h
		add	hl, de			; hl = fcb.fcb_rnd
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
		cp	fh_msg
		jp	nz, loc_2E25
		ld	de, msgFCB
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E25:
		cp	fh_bgn
		jp	nz, loc_2E30
		ld	de, bgnFCB
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E30:
		ld	de, spareFCB

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
msgFCB:	cpm_fcb <0>
		db    0
		db    0
		db    0
		db    0
bgnFCB:		cpm_fcb	<0>
		db    0
		db    0
		db    0
		db    0
spareFCB:	cpm_fcb	<0>
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================


include(`functions/addByteToHL.m4')
include(`functions/saveAllRegisters.m4')
include(`functions/printStackString.m4')
include(`functions/abbreviateWord.m4')
include(`functions/printFromMessageFile.m4')

do_launch:
		ld	a, (g_currentRoomNumber)
		cp	room_inShip
		jp	z, loc_3084
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3084:
		ld	a, (g_hireList.hiredFlag)
		cp	0
		jp	nz, loc_3096

loc_308C:
		printmessage(unableToDoNow)
		jp	l_mainLoop

loc_3096:
		ld	a, (stru_4973.hiredFlag)
		cp	0
		jp	z, loc_308C
		ld	a, (stru_499A.hiredFlag)
		cp	0
		jp	z, loc_308C
		ld	hl, item-navComputer.location
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
		ld	a, (stru_4979.hiredFlag)
		cp	0
		jp	z, loc_30EA
		printMessage(s_enterCoordinates)
		call	readString
		call	tokenizeString
		ld	a, b
		cp	1
		jp	z, loc_3119

loc_310F:
		printMessage(s_dontUnderstand)
		jp	l_mainLoop

loc_3119:
		ld	de, g_firstWord
		ld	hl, g_tmpAbbreviationBuffer
		ld	bc, 5
		call	abbreviateWord
		ld	b, 5
		ld	hl, g_tmpAbbreviationBuffer

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
		call	searchVocabulary
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
		ld	a, (g_shipSuppliedFlag)
		cp	0
		jp	nz, loc_3192
		printMessage(s_outOfSupplies)
		jp	l_inline_playerDied

loc_3192:
		ld	a, 0
		ld	(g_shipSuppliedFlag), a
		ld	a, (byte_495F)
		cp	0
		jp	nz, loc_31B0
		printMessage(s_travelMessage1)
		printMessage(s_deepSpace)
		jp	l_inline_playerDied
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
		ld	hl, g_landing_earth
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
		ld	hl, (g_currentRoomData)
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
		ld	a, (g_inputWordCount)
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
		ld	a, (g_inputWordCount)
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
		ld	a, (g_inputWordCount)
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
		ld	a, (g_inputWordCount)
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
		ld	a, (g_inputWordCount)
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
		ld	a, (g_inputWordCount)
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
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	a, 1
		ld	(byte_49AA), a
		jp	loc_3417
; ---------------------------------------------------------------------------

include(`inline/doHire.m4')
include(`inline/pickupItem.m4')
include(`inline/doBuy.m4')
include(`inline/doInventory.m4')

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
		ld	a, p_trochObject
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
		ld	hl, item_crystalStatue.location
		ld	a, (hl)
		cp	location_inventory
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
		ld	hl, item_pSuit.location
		ld	a, (hl)
		cp	location_inventory
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
		ld	hl, stru_4A71.location
		ld	a, (hl)
		cp	location_inventory
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
		ld	hl, item_cpmDiskA.location
		ld	a, (hl)
		cp	7
		jp	z, loc_39EB
		ld	a, 7Dh ; '}'
		ld	(tmpObject), a
		ld	hl, item_cpmDiskB.location
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
		ld	hl, g_itemList.location
		add	hl, de
		ld	a, (hl)
		cp	location_inventory
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
		ld	a, (g_wearingSuitFlag)
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
		ld	(item_pSuit.floorMessageIndex), a
		jp	loc_3A24
; ---------------------------------------------------------------------------

loc_3A97:
		ld	a, 0Ch
		jp	loc_3A91
; ---------------------------------------------------------------------------

include(`inline/doExamine.m4')
include(`inline/doRead.m4')
include(`inline/doHitMachine.m4')

do_find_locker:
		ld	a, (g_currentPlanetNumber)
		cp	location_gcs
		jp	z, find_locker_code

l_findLocker_dontKnowHow:
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

find_locker_code:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_storageSpace
		jp	nz, l_findLocker_dontKnowHow
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
		call	rawGetc
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
		ld	hl, stru_BDC
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

include(`inline/wearSuit.m4')
include(`inline/removeSuit.m4')

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
		printMessage(s_badFileName)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3E7B:
		ld	a, fh_bgn
		ld	bc, 1C00h
		ld	de, 4944h
		call	sub_2CE2
		cp	1
		jp	nz, loc_3E9A
		ld	a, 2
		call	fileClose
		ld	d, 4Dh ; 'M'
		ld	e, 0FFh
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3E9A:
		ld	a, 2
		call	fileClose
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
		ld	a, (item_rowboat.location)
		cp	4
		jp	z, loc_3F19

loc_3F0F:
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_3F19:
		ld	a, (item_oars.location)
		cp	7
		jp	nz, loc_3F0F
		ld	hl, item_rowboat.floorMessageIndex
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ld	a, 8
		ld	(item_oars.location), a
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
		ld	a, (item_rowboat.location)
		cp	4
		jp	nz, loc_3F0F
		ld	a, (item_rope.location)
		cp	7
		jp	nz, loc_3F0F
		ld	hl, item_rowboat.floorMessageIndex
		ld	a, (hl)
		add	a, 2
		ld	(hl), a
		ld	a, 8
		ld	(item_rope.location), a
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
		ld	a, (item_rowboat.location)
		cp	4
		jp	nz, loc_3F0F
		ld	a, 8
		ld	(item_rowboat.location), a
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
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 67h ; 'g'
		ld	a, 2Fh ; '/'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 67h ; 'g'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 6Ah ; 'j'
		ld	a, 30h ; '0'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 6Ah ; 'j'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
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
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 2Fh ; '/'
		ld	a, 2Fh ; '/'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 2Eh ; '.'
		pop	af
		ld	(g_currentRoomNumber), a
		call	getRoomData
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
		ld	a, (item_lucindaObject.location)
		cp	6
		jp	z, loc_40CB
		ld	a, (item_lucindaObject.roomNumber)
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
		printMessage(s_analyzeLucinda)
		ld	a, 1
		ld	(g_analyzerUsedOnLucinda), a
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
		jp	l_inline_playerDied
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
		ld	a, (item_cpmDiskA.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, (item_cpmDiskB.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, (item_repairDisk.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, 1
		ld	(byte_49B0), a
		ld	a, 1
		ld	(g_shipSuppliedFlag), a
		ld	(g_landing_isthur.canLandFlag), a
		ld	(byte_49C5), a
		ld	a, 0
		ld	(g_landing_earth.canLandFlag), a
		ld	(g_landing_gcs.canLandFlag), a
		ld	(g_landing_navier.canLandFlag), a
		ld	(g_landing_solomaw.canLandFlag), a
		ld	a, 2
		ld	(g_currentPlanetNumber), a
		ld	a, 2Dh ; '-'
		ld	(g_currentRoomNumber), a
		call	getRoomData
		ld	hl, (g_currentRoomData)
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
		call	getRoomData
		ld	hl, byte_47DD
		call	outputString
		ld	d, 0FBh	; '˚'
		ld	e, 15h
		call	printFromMSGFile
		ld	a, 12
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl
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
		call	getRoomData
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
		call	getRoomData
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
s_clockString:	db  0Dh			; DATA XREF: printClockString+2o
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
turnCounterMaybe:db 0			; DATA XREF: advanceClock+31o
byte_47F1:	db 0			; DATA XREF: ROM:12AAw	ROM:12EAw ...
g_inputWordCount:	db 0			; DATA XREF: ROM:093Cr	ROM:0D53r ...
		db    0
g_firstWord:	db [ 5 ], 2Dh		; DATA XREF: parseInput+38o
					; parseInput:loc_2028o
		db 80h
secondCommand:	db [ 5 ], 2Dh		; DATA XREF: parseInput+B4o
		db 80h
g_tmpAbbreviationBuffer:db [ 5 ], 2Dh		; DATA XREF: searchVocabulary+30o
					; parseInput+3Bo ...
firstToken:	db 0			; DATA XREF: ROM:twoWordCommandr
					; ROM:twoWordCommand_0r ...
secondToken:	db 0			; DATA XREF: ROM:0970r	ROM:13B2r ...
playerCommand:	db 0			; DATA XREF: ROM:singleWordCommandr
					; ROM:0D60r ...
		db    0
		db    8
currentRoomFlags:		db 0
		db    0
		db    0
		db    0
tmpObject:	db 0			; DATA XREF: isItemInRoomr
tmpPlanet:	db 0			; DATA XREF: printFloorItems+21w printFloorItems+2Aw ...
inputBuffer:	db 9Fh			; DATA XREF: tokenizeStringo
					; tokenizeString+Fo ...
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
g_currentScore:	dw 40
g_verboseCountdown:		db 0Ah		; The game randomly prints the verbose message
						; for an entered room. When this counter is 0,
						; the verbose message is printed.
g_currentRoomData:		dw 0
g_currentPlanetNumber:		db 1
g_currentRoomNumber:		db 11h
byte_495F:	db 1
byte_4960:	db 0
word_4961:	dw 0
g_restoredGameFlag:	db 0
baseTimeMaybe:	.ascii '1620',0
byte_4969:	db 0
g_hireList:	HIREABLE(hire_welma, notHired, s_hired_welma)
		HIREABLE(hire_none, isHired, s_none)
		HIREABLE(hire_parson, notHired, s_notForHire)
stru_4973:	HIREABLE(hire_severn, notHired, s_hired_severn)
		HIREABLE(hire_pirate, notHired, s_ridiculous)
stru_4979:	HIREABLE(hire_lyle, notHired, s_hired_lyle)
		HIREABLE(hire_troch, notHired, s_hired_troch)
		HIREABLE(hire_none, notHired, s_none)
		HIREABLE(hire_none, notHired, s_none)
		HIREABLE(hire_none, notHired, s_none)
		HIREABLE(hire_none, notHired, s_none)
		HIREABLE(hire_reser, notHired, s_hired_reser)
		HIREABLE(hire_none, notHired, s_none)
stru_4991:	HIREABLE(hire_brandon, notHired, s_hired_brandon)
		HIREABLE(hire_none, notHired, s_none)
		HIREABLE(hire_bartender, notHired, s_hired_bartender)
stru_499A:	HIREABLE(hire_alex, notHired, s_tooDrunk)
computerInstalledFlag:db 0		; DATA XREF: ROM:loc_30E2r ROM:36E4r ...
analyzerInstalledFlag:db 0		; DATA XREF: ROM:3709r	ROM:371Aw ...
g_boughtItemList:db [ 4	], 0		 ; 0 ; DATA XREF: ROM:36CAo
carriedItemCount:db 0			; DATA XREF: ROM:08B6r	ROM:08BBw ...
g_shipSuppliedFlag:	db 0			; DATA XREF: ROM:051Cr	ROM:055Bw ...
g_analyzerUsedOnLucinda:	db 0			; DATA XREF: ROM:3AE6r	ROM:40E6w
byte_49A6:	db 0			; DATA XREF: ROM:198Er	ROM:3A7Ar ...
byte_49A7:	db 0			; DATA XREF: ROM:19E6r	ROM:3A8Cw
byte_49A8:	db 0			; DATA XREF: ROM:0B38w	ROM:loc_19A5r ...
byte_49A9:	db 0			; DATA XREF: ROM:loc_19D7r ROM:19FAw ...
byte_49AA:	db 0			; DATA XREF: ROM:17FFr	ROM:34D2w
g_lockerRentedFlag:db 0			; DATA XREF: ROM:0B33w	ROM:3C38r ...
		db    0
g_wornSuitFloorMessage:		db 0	; 7 if wearing p-suit
					; 34 if	wearing	rad suit
g_wearingSuitFlag:db 0			; Value is wearingSuit_* flags
byte_49AF:	db 0			; DATA XREF: ROM:l_sliderGameEntryr ROM:41F7w
byte_49B0:	db 0			; DATA XREF: ROM:456Ew
g_poisonedFlag:db 0			; DATA XREF: ROM:1064r	ROM:1092w
g_drankShipsBeveragesFlag:	db 0			; DATA XREF: ROM:loc_10DCr ROM:10EDw
g_gcsDrankInRestaurantFlag:	db 0			; DATA XREF: ROM:loc_10F3r ROM:1107w
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
include(`data/landing.m4')
include(`data/items.m4')
include(`data/earthRooms.m4')
include(`data/isthurRooms.m4')
include(`data/gcsRooms.m4')
include(`data/navierRooms.m4')
include(`data/solomawRooms.m4')
