include(`messages.m4')dnl
include(`constants.m4')dnl
include(`macros.m4')dnl
include(`structs.m4')

		ds 5
bdos_func:	ds 1
		ds 0FAh
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
		jp	nz, l_inline_introRestoreGame

		ld	a, fh_msg
		ld	hl, aBGalactic_msg
		call	fileOpen
		cp	1
		jp	nz, l_inline_introRestoreGame

		ld	a, fh_msg
		ld	hl, aCGalactic_msg
		call	fileOpen
		cp	1
		jp	nz, l_inline_introRestoreGame

		ld	a, fh_msg
		ld	hl, aDGalactic_msg
		call	fileOpen
		cp	1
		jp	nz, l_inline_introRestoreGame

		ld	hl, s_errorPrefix
		call	outputString

		jp	l_inline_exit
; ---------------------------------------------------------------------------
include(`inline/introRestoreGame.m4')
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
		jp	l_inline_exit
; ---------------------------------------------------------------------------

loc_227:
		ld	a, fh_bgn			; File number
		ld	bc, 1C00h			; Length
		ld	de, baseBGNAddress
		call	fileRead
		cp	1
		jp	nz, loc_241
		printMessage(s_gameDataFileBad)
		jp	l_inline_closeAndExit
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
include(`inline/lucindaChecks.m4')
include(`inline/earthEarlyTimers.m4')

loc_393:
		ld	a, (g_currentPlanetNumber)
		cp	location_earth
		jp	z, l_preturn_earth
		cp	location_isthur
		jp	z, l_preturn_isthur
		cp	location_gcs
		jp	z, l_preturn_gcs
		cp	location_navier
		jp	z, l_preturn_navier

		ld	a, (g_currentRoomNumber)
		cp	room_solomaw_artifactEntrance
		jp	z, l_room_solomawArtifactEntrance

		cp	room_solomaw_maze_33
		jp	z, l_room_solomawMaze33

		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_preturn_navier:
		ld	a, (g_currentRoomNumber)
		cp	room_navier_overlordChamber
		jp	z, l_room_navierOverlordChamber

		cp	room_navier_inRowboatOnLake
		jp	z, l_room_navierInRowboat

		cp	room_navier_inRowboatNearShelf
		jp	z, l_room_navierInRowboat

		cp	room_navier_shelf
		jp	z, l_room_navierShelf

		cp	room_navier_airlock
		jp	z, l_room_navierAirlock

		cp	room_navier_computerCenter
		jp	z, l_room_navierComputerCenter

		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_preturn_gcs:
		ld	a, (g_currentRoomNumber)
		cp	room_gcs_landingBay
		jp	z, l_room_gcsLandingBay

		cp	room_gcs_airlessPassage
		jp	z, l_room_gcsLandingBay

		cp	room_gcs_bar
		jp	z, l_room_gcsBar

		cp	room_gcs_restaurant
		jp	z, l_room_gcsRestaurant

		cp	room_gcs_gymnasium
		jp	z, l_room_gcsGym

		cp	room_gcs_maintenance
		jp	z, l_room_gcsMaintenance

		cp	room_gcs_supply
		jp	z, l_room_gcsSupply

		cp	room_gcs_engineering
		jp	z, l_room_gcsEngineering

		cp	room_gcs_doctor
		jp	z, l_room_gcsDoctor

		cp	room_gcs_hospital
		jp	z, l_room_gcsHospital

		cp	room_gcs_library
		jp	z, l_room_gcsLibrary

		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_preturn_isthur:
		ld	a, (g_currentRoomNumber)
		cp	room_isthur_landingPad
		jp	z, l_room_isthurLandingPad

		cp	room_isthur_gammaEntrance
		jp	z, l_room_isthurGammaEntrance

		cp	room_isthur_nsTunnel_4
		jp	z, l_room_isthurNsTunnel4

		cp	room_isthur_cmdtFoyer
		jp	z, l_room_isthurCmdtFoyer

		cp	room_isthur_cmdtOffice
		jp	z, l_room_isthurCmdtOffice

		cp	room_isthur_intelHq
		jp	z, l_room_isthurIntelHq

		cp	room_isthur_cafeteria
		jp	z, l_room_isthurCafeteria

		cp	room_isthur_controlTower
		jp	z, l_room_isthurControlTower

		cp	room_isthur_gammaControl
		jp	z, l_room_isthurGammaControl

		cp	room_isthur_computerCenter
		jp	z, l_room_isthurComputerCenter
		jp	l_advanceClock
; ---------------------------------------------------------------------------

l_preturn_earth:
		ld	a, (g_currentRoomNumber)
		cp	room_earth_commanderOffice
		jp	z, l_room_earthCmdrOffice

		cp	room_earth_customs
		jp	z, l_room_earthCustoms

		cp	room_earth_supply
		jp	z, l_room_supply

		cp	room_earth_pirate
		jp	z, l_room_earthPirate

		cp	room_earth_radioactive_low
		jp	c, l_advanceClock

		cp	room_earth_radioactive_high
		jp	nc, l_advanceClock

		jp	l_room_earthRadioactive
; ---------------------------------------------------------------------------

include(`rooms/earth/commandersOffice.m4')
include(`rooms/earth/customs.m4')
include(`rooms/earth/supply.m4')
include(`rooms/earth/pirate.m4')
include(`rooms/earth/radioactive.m4')
include(`rooms/isthur/landingPad.m4')
include(`rooms/isthur/gammaEntrance.m4')
include(`rooms/isthur/nsTunnel4.m4')
include(`rooms/isthur/cmdtFoyer.m4')
include(`rooms/isthur/cmdtOffice.m4')
include(`rooms/isthur/intelHq.m4')
include(`rooms/isthur/cafeteria.m4')
include(`rooms/isthur/controlTower.m4')
include(`rooms/isthur/gammaControl.m4')
include(`rooms/isthur/computerCenter.m4')
include(`rooms/gcs/landingBay.m4')
include(`rooms/gcs/bar.m4')
include(`rooms/gcs/restaurant.m4')
include(`rooms/gcs/gym.m4')
include(`rooms/gcs/maintenance.m4')
include(`rooms/gcs/supply.m4')
include(`rooms/gcs/engineering.m4')
include(`rooms/gcs/library.m4')
include(`rooms/gcs/hospital.m4')
include(`rooms/gcs/doctor.m4')
include(`rooms/navier/overlordChamber.m4')
include(`rooms/navier/inRowboat.m4')
include(`rooms/navier/shelf.m4')
include(`rooms/navier/airlock.m4')
include(`rooms/navier/computerCenter.m4')
include(`rooms/solomaw/artifactEntrance.m4')
include(`rooms/solomaw/maze33.m4')

l_advanceClock:
		call	advanceClock
		ld	a, (g_radioactiveValue)
		cp	0
		jp	z, loc_DD0
		sub	1
		ld	(g_radioactiveValue), a
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
		jp	nz, l_inline_move
		ld	a, (g_currentRoomNumber)
		cp	0				; Room 0 might be the spaceship
		jp	z, l_inline_launch			; in each world
		printMessage(s_whichWay)
		jp	l_mainLoop
include(`inline/move.m4')
include(`inline/help.m4')
include(`inline/look.m4')

loc_E67:
		cp	p_launch
		jp	nz, loc_E6F
		jp	l_inline_launch
; ---------------------------------------------------------------------------

loc_E6F:
		cp	p_land
		jp	nz, loc_E77
		jp	l_inline_land
; ---------------------------------------------------------------------------

loc_E77:
		cp	p_ignite
		jp	nz, l_inline_knock
		jp	l_inline_ignite
; ---------------------------------------------------------------------------
include(`inline/knock.m4')
include(`inline/score.m4')
include(`inline/quit.m4')

loc_F6C:
		cp	p_login
		jp	z, l_inline_login

		cp	p_hire
		jp	nz, loc_F80

		; Don't understand single-command 'HIRE'
		printMessage(`s_dontUnderstand')
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_F80:
		cp	p_connect
		jp	z, l_inline_login

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
		jp	z, l_inline_inventory
		cp	p_drop
		jp	nz, loc_FB7

		; Don't understand single-command 'DROP'
		printMessage(`s_dontUnderstand')
		jp	l_mainLoop

loc_FB7:
		cp	p_examine
		jp	z, l_inline_examine

		cp	p_read
		jp	z, l_inline_read

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
		jp	z, l_inline_save

include(`inline/dolat.m4')
include(`inline/sleep.m4')
include(`inline/eat.m4')
include(`inline/drink.m4')
include(`inline/annsAge.m4')
include(`inline/sendMoreMoney.m4')
include(`inline/museumAnswer.m4')
include(`inline/dig.m4')
include(`inline/analog.m4')

loc_129D:
		printMessage(s_noWayToDo)
		jp	l_mainLoop

include(`inline/directWalk.m4')

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
		ld	a, (g_solomaw_doorsOpened)
		add	a, 1
		ld	(g_solomaw_doorsOpened), a
		cp	0Fh
		jp	c, l_mainLoopEntry
		printMessage(s_triedFifteenthDoor)
		jp	l_inline_playerDied
; ---------------------------------------------------------------------------

l_marbleGameEntry:
		printMessage(s_marbleGame)
		jp	l_minigame_marble
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
		ld	a, (g_slider_gameWonFlag)
		cp	0
		jp	nz, loc_13A2
		printMessage(s_sliderGame)
		jp	l_minigame_slider
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
		jp	z, l_inline_help
		ld	a, (firstToken)
		cp	p_help
		jp	z, l_inline_help
		cp	p_look
		jp	z, l_inline_look
		ld	a, (secondToken)
		cp	p_look
		jp	z, l_inline_look
		ld	b, p_lift
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	z, loc_13F2
		jp	l_inline_launch
; ---------------------------------------------------------------------------

loc_13F2:
		ld	b, p_blast
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1401
		jp	l_inline_launch
; ---------------------------------------------------------------------------

loc_1401:
		ld	b, p_orbit
		ld	c, p_planet
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1410
		jp	l_inline_launch
; ---------------------------------------------------------------------------

loc_1410:
		ld	b, p_orbit
		ld	c, p_exit
		call	compareTwoWordInput
		cp	0
		jp	z, loc_141F
		jp	l_inline_ignite
; ---------------------------------------------------------------------------

loc_141F:
		ld	b, p_set
		ld	c, p_course
		call	compareTwoWordInput
		cp	0
		jp	z, loc_142E
		jp	l_inline_setCourse
; ---------------------------------------------------------------------------

loc_142E:
		ld	b, p_lay
		ld	c, p_course
		call	compareTwoWordInput
		cp	0
		jp	z, loc_143D
		jp	l_inline_setCourse
; ---------------------------------------------------------------------------

loc_143D:
		ld	b, p_computer
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_144C
		jp	l_inline_setCourse
; ---------------------------------------------------------------------------

loc_144C:
		ld	b, p_computer
		ld	c, p_on
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1466
		ld	a, (g_currentRoomNumber)
		cp	2
		jp	c, l_inline_setCourse
		jp	l_inline_login
; ---------------------------------------------------------------------------
		db 0C3h	; Ã
		db 0D0h	; Ð
		db  30h	; 0
; ---------------------------------------------------------------------------

loc_1466:
		ld	b, p_input
		ld	c, p_coordinate
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1475
		jp	l_inline_setCourse
; ---------------------------------------------------------------------------

loc_1475:
		ld	b, p_input
		ld	c, p_ready
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1484
		jp	l_inline_setCourse
; ---------------------------------------------------------------------------

loc_1484:
		ld	b, p_warp
		ld	c, p_speed
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1493
		jp	l_inline_ignite
; ---------------------------------------------------------------------------

loc_1493:
		ld	b, p_deep
		ld	c, p_space
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14A2
		jp	l_inline_ignite
; ---------------------------------------------------------------------------

loc_14A2:
		ld	b, p_full
		ld	c, p_accel
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14B1
		jp	l_inline_ignite
; ---------------------------------------------------------------------------

loc_14B1:
		ld	b, p_set
		ld	c, p_down
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14C0
		jp	l_inline_land
; ---------------------------------------------------------------------------

loc_14C0:
		ld	b, p_knock
		ld	c, p_door
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14D1
		ld	a, p_knock
		jp	l_inline_knock
; ---------------------------------------------------------------------------

loc_14D1:
		ld	a, (firstToken)
		cp	p_login
		jp	z, l_inline_login
		ld	a, (secondToken)
		cp	p_login
		jp	z, l_inline_login
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
		jp	l_inline_hire
; ---------------------------------------------------------------------------

loc_150A:
		ld	a, (firstToken)
		cp	p_land
		jp	z, l_inline_land
		ld	a, (secondToken)
		cp	p_land
		jp	z, l_inline_land
		ld	b, p_log
		ld	c, p_on
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1529
		jp	l_inline_login
; ---------------------------------------------------------------------------

loc_1529:
		ld	b, p_log
		ld	c, p_enter
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1538
		jp	l_inline_login
; ---------------------------------------------------------------------------

loc_1538:
		ld	b, p_connect
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1547
		jp	l_inline_login
; ---------------------------------------------------------------------------

loc_1547:
		ld	b, p_log
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1556
		jp	l_inline_login
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
		jp	c, l_inline_buy

loc_15F8:
		printMessage(s_noWayToBuy)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1602:
		ld	a, (firstToken)
		cp	p_inventory
		jp	z, l_inline_inventory
		ld	a, (secondToken)
		cp	p_inventory
		jp	z, l_inline_inventory
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
		jp	c, l_inline_drop

loc_1638:
		printMessage(s_notCarrying)
		jp	l_mainLoop
; ---------------------------------------------------------------------------
include(`inline/examineBag.m4')
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
		ld	a, (g_caseTrigger)
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
include(`inline/examineEnvelope.m4')

loc_1747:
		ld	a, (firstToken)
		cp	p_examine
		jp	z, l_inline_examine
		ld	a, (secondToken)
		cp	p_yes
		jp	z, l_inline_examine
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

l_inline_dontKnowHowHere:
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
		jp	nz, l_inline_dontKnowHowHere
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
		jp	nz, l_inline_dontKnowHowHere
		ld	a, (g_gcs_changeBulletin)
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
		jp	z, l_inline_read
		ld	a, (secondToken)
		cp	p_read
		jp	z, l_inline_read
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
		jp	nz, l_minigame_findLocker
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
		jp	nz, l_inline_save
		ld	a, (firstToken)
		cp	p_dolat
		jp	z, l_inline_dolat
		ld	a, (secondToken)
		cp	p_dolat
		jp	z, l_inline_dolat
		ld	b, p_open
		ld	c, p_door
		call	compareTwoWordInput
		cp	0
		jp	z, l_inline_openLocker
		ld	a, (g_currentPlanetNumber)
		cp	1
		jp	z, loc_1937

l_dolat_dontKnowHowHere:
		printMessage(s_dontKnowHowHere)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1937:
		ld	a, (g_currentRoomNumber)
		cp	20h ; ' '
		jp	nz, l_dolat_dontKnowHowHere
		ld	a, (item_skeletonKey.location)
		cp	7
		jp	z, loc_1951

l_inline_noKey:
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

include(`inline/openLocker.m4')
include(`inline/closeLocker.m4')
include(`inline/depositKey.m4')
; ---------------------------------------------------------------------------

loc_1A8F:
		ld	a, (firstToken)
		cp	p_sleep
		jp	z, l_inline_sleep
		ld	a, (secondToken)
		cp	p_sleep
		jp	z, l_inline_sleep

		ld	b, p_eat
		ld	c, p_deposit
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1AB0
		ld	a, p_eat
		jp	l_inline_eat
; ---------------------------------------------------------------------------

loc_1AB0:
		ld	a, (firstToken)
		cp	p_eat
		jp	z, l_inline_ridiculous
		ld	a, (secondToken)
		cp	p_eat
		jp	nz, loc_1ACA

l_inline_ridiculous:
		printMessage(s_ridiculous)
		jp	l_mainLoop
; ---------------------------------------------------------------------------

loc_1ACA:
		ld	b, p_drink
		ld	c, p_drink
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1ADB
		ld	a, p_drink
		jp	l_inline_drink
; ---------------------------------------------------------------------------

loc_1ADB:
		ld	b, p_case
		ld	c, p_oar
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_caseOar
		ld	b, p_close
		ld	c, p_oar
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_caseOar
		ld	b, p_case
		ld	c, p_rope
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_caseRope
		ld	b, p_launch
		ld	c, p_boat
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_launchBoat
		ld	b, p_tie
		ld	c, p_boat
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_tieBoat
		ld	b, p_untie
		ld	c, p_boat
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_untieBoat
		ld	b, p_cast
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_untieBoat
		ld	b, p_analyze
		ld	c, p_lucinda
		call	compareTwoWordInput
		cp	0
		jp	nz, l_inline_analyzeLucinda

		ld	a, (firstToken)
		cp	p_deliver
		jp	z, loc_1B4E

		ld	a, (secondToken)
		cp	p_deliver
		jp	z, loc_1B54
		jp	l_inline_unfoldPaper
; ---------------------------------------------------------------------------

loc_1B4E:
		ld	a, (secondToken)
		jp	loc_1B57
; ---------------------------------------------------------------------------

loc_1B54:
		ld	a, (firstToken)

include(`inline/deliver.m4')
include(`inline/unfoldPaper.m4')

loc_1C04:
		printMessage(s_noWayToDo)
		jp	l_mainLoop
; ---------------------------------------------------------------------------
include(`inline/closeAndExit.m4')
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
include(`functions/isItemInRoom.m4')
include(`functions/hasInventoryRoom.m4')
include(`functions/readString.m4')
include(`functions/pseudoRng.m4')

; ---------------------------------------------------------------------------
		db  0Dh
		db  49h	; I
		db  7Ah	; z
unk_21DE:	db  2Dh	; -		; DATA XREF: sub_21B8o
include(`data/badMoveMessages.m4')
include(`data/vocabulary.m4')
include(`data/directWalk.m4')
			db 0
include(`data/rankMessages.m4')
include(`data/itemInvenMessages.m4')
include(`data/itemFloorMessages.m4')
include(`data/earthReadMessages.m4')
include(`data/gcsExamineMessages.m4')
include(`data/gcsReadList.m4')
include(`data/lockerCoordinates.m4')
include(`functions/outputString.m4')
include(`functions/getc.m4')
include(`functions/rawGetc.m4')

; ---------------------------------------------------------------------------
		db    0
		db  3Eh	; >
		db    1
		db 0CDh	; Í
		db  37h	; 7
		db  2Dh	; -
; ---------------------------------------------------------------------------
include(`functions/exit.m4')
include(`functions/putc.m4')
include(`functions/fileCreate.m4')
include(`functions/fileWrite.m4')
include(`functions/fileClose.m4')
include(`functions/fileOpen.m4')
include(`functions/fileRead.m4')
include(`functions/fileSetDMAPage.m4')
include(`functions/fileCopyFilenameToFCB.m4')

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
		db  80h	; €
msgFCB		.TAG	cpm_fcb
msgFCB		db [ 40 ] 0
bgnFCB		.TAG	cpm_fcb
bgnFCB:		db [ 40 ] 0
spareFCB	.TAG	cpm_fcb
spareFCB:	db [ 40 ] 0

; =============== S U B	R O U T	I N E =======================================


include(`functions/addByteToHL.m4')
include(`functions/saveAllRegisters.m4')
include(`functions/printStackString.m4')
include(`functions/abbreviateWord.m4')
include(`functions/printFromMessageFile.m4')
include(`inline/launch.m4')
include(`inline/setCourse.m4')
include(`inline/ignite.m4')
include(`inline/land.m4')
include(`inline/login.m4')
include(`inline/hire.m4')
include(`inline/pickupItem.m4')
include(`inline/buy.m4')
include(`inline/inventory.m4')
include(`inline/drop.m4')
include(`inline/examine.m4')
include(`inline/read.m4')
include(`inline/hitMachine.m4')
include(`minigames/findLocker.m4')
include(`inline/wearSuit.m4')
include(`inline/removeSuit.m4')
include(`inline/save.m4')
include(`inline/caseOar.m4')
include(`inline/caseRope.m4')
include(`inline/launchBoat.m4')
include(`inline/tieBoat.m4')
include(`inline/untieBoat.m4')
include(`inline/analyzeLucinda.m4')
include(`minigames/slider.m4')
include(`minigames/marble.m4')
g_saveTextBuffer:	db [ 20 ] 0
g_intro_filenameBuffer:		db [ 20 ] 0
aAGalactic_msg:	.ascii "A:GALACTIC.MSG", 0
aBGalactic_msg:	.ascii "B:GALACTIC.MSG", 0
aCGalactic_msg:	.ascii "C:GALACTIC.MSG", 0
aDGalactic_msg:	.ascii "D:GALACTIC.MSG", 0
aAGalactic_bgn:	.ascii "A:GALACTIC.BGN", 0
aBGalactic_bgn:	.ascii "B:GALACTIC.BGN", 0
aCGalactic_bgn:	.ascii "C:GALACTIC.BGN", 0
aDGalactic_bgn:	.ascii "D:GALACTIC.BGN", 0
g_clearScreen:	db CLEAR_DISPLAY
		db STRING_TERM
s_errorPrefix:	db 0Dh
		.ascii "ERROR"
		db 80h
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
currentTimeMaybe:db '1', '6', '2', '0'  ; DATA XREF: ROM:0249o ROM:l_inline_saveo ...
		db  20h
		db  68h	; h
		db  6Fh	; o
		db  75h	; u
		db  72h	; r
		db  73h	; s
		db  2Eh	; .
		db  0Dh
		db  80h	; €
g_findLocker_prompt:		db SET_CURSOR_ADDRESS(16, 46)
				.ascii "[0 to exit]?  "
				db STRING_TERM
g_findLocker_clearScreen:	db CLEAR_DISPLAY
				db STRING_TERM
g_findLocker_clearCursor:	db key_ESC
				db 'Y'
g_findLocker_clearCursorCoords:	db 32h					; y: 19
				db 28h					; x: 9
				db ' '
				db STRING_TERM
g_findLocker_drawCursor:	db  key_ESC
				db  'Y'
g_findLocker_cursorCoords:	db 32h			; y: 19
				db 28h			; x: 9
				db ENTER_GRAPHICS_MODE
				db key_BLANK
				db EXIT_GRAPHICS_MODE
				db STRING_TERM
turnCounterMaybe:db 0			; DATA XREF: advanceClock+31o
g_directWalk_walkOkay:		db 0		; TRUE if directWalk is successful
g_inputWordCount:	db 0			; DATA XREF: ROM:093Cr	ROM:0D53r ...
			db    0
g_firstWord:	db [ 5 ] 2Dh		; DATA XREF: parseInput+38o
					; parseInput:loc_2028o
		db 80h
secondCommand:	db [ 5 ] 2Dh		; DATA XREF: parseInput+B4o
		db 80h
g_tmpAbbreviationBuffer:db [ 5 ] 2Dh		; DATA XREF: searchVocabulary+30o
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
g_inputBuffer:	db [ 52 ] 0
readDMAAddress:	db 0, 44h, 3Ah,	47h, 41h, 4Ch, 41h, 43h, 54h, 49h, 43h
		db 2Eh,	4Dh, 53h, 47h, 0, 41h, 3Ah, 47h, 41h, 4Ch, 41h
		db 43h,	54h, 49h, 43h, 2Eh, 42h, 47h, 4Eh, 0, 42h, 3Ah
		db 47h,	41h, 4Ch, 41h, 43h, 54h, 49h, 43h, 2Eh,	42h, 47h
		db 4Eh,	0, 43h,	3Ah, 47h, 41h, 4Ch, 41h, 43h, 54h, 49h
		db 43h,	2Eh, 42h, 47h, 4Eh, 0, 44h, 3Ah, 47h, 41h, 4Ch
		db 41h,	43h, 54h, 49h, 43h, 2Eh, 42h, 47h, 4Eh,	0, 1Bh
		db 45h,	80h, 0Dh, 45h
		db [ 2 ] 52h
		db 4Fh,	52h, 80h, 0Dh
		db [ 8 ] 20h
		db 41h,	20h, 63h, 6Ch, 6Fh, 63h, 6Bh, 20h, 6Fh,	6Eh, 20h
		db 74h,	68h, 65h, 20h, 77h, 61h
		db [ 2 ] 6Ch
		db 20h,	72h, 65h, 61h, 64h, 73h, 20h, 31h, 36h,	32h, 30h
		db 20h,	68h, 6Fh, 75h, 72h, 73h, 2Eh, 0Dh, 80h,	1Bh, 59h
		db 2Fh,	4Dh, 5Bh, 30h, 20h, 74h, 6Fh, 20h, 65h,	78h, 69h
		db 74h,	5Dh, 3Fh
		db [ 2 ] 20h
		db 80h,	1Bh, 45h, 80h, 1Bh, 59h, 32h, 28h, 20h,	80h, 1Bh
		db 59h,	32h, 28h, 1Bh, 46h, 5Eh, 1Bh, 47h, 80h
		db [ 4 ] 0
		db [ 5 ] 2Dh
		db 80h
		db [ 5 ] 2Dh
		db 80h,	0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0,	0FFh, 0
		db 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh, 0, 0FFh
include(`bgn/stubs.m4')
