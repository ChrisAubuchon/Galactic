include(`constants.m4')dnl
include(`messages.m4')dnl
include(`macros.m4')dnl
baseBGNAddress:			db [ 20 ] 0
g_currentScore:			dw 40
g_verboseCountdown:		db 0Ah		; The game randomly prints the verbose message
						; for an entered room. When this counter is 0,
						; the verbose message is printed.
g_currentRoomData:		dw 0
g_currentPlanetNumber:		db 1
g_currentRoomNumber:		db 11h
g_shipDestination:		db 1
g_radioactiveValue:		db 0
g_launchCounter_xxx:		dw 0
g_restoredGameFlag:		db 0
baseTimeMaybe:			.ascii "1620"
				db 0
g_earth_terminalIntroFlag:	db 0
include(`bgn/hireable.m4')
g_computerInstalledFlag:	db 0
analyzerInstalledFlag:		db 0
g_boughtItemList:		db [ 4 ] 0
carriedItemCount:		db 0
g_shipSuppliedFlag:		db 0
g_analyzerUsedOnLucinda:	db 0
g_gcsStorage_location:		db 0
g_gcs_psuitInLocker:		db 0
g_gcs_caseInLocker:		db 0
g_gcs_locker335_open:		db 0
g_gcs_changeBulletin:		db 0
g_lockerRentedFlag:		db 0
				db 0
g_wornSuitFloorMessage:		db 0
g_wearingSuitFlag:		db 0
g_slider_gameWonFlag:		db 0
byte_49B0:			db 0
g_poisonedFlag:			db 0
g_drankShipsBeveragesFlag:	db 0
g_gcsDrankInRestaurantFlag:	db 0
g_gcsLandingBay_warning:	db 0
g_terminalSkipPassword:		db 0
g_gcsComputerState:		db 0
g_gcs_barState:			db 0
g_gcs_restaurantEntered:	db 0
g_gcs_foundDyingGirl:		db 0
				db 0
g_gcs_supplyState:		db 0
g_gcs_engineeringTrigger:	db 0
l_gcs_doctorTrigger:		db 0
g_gcs_professorState:		db 0
g_earth_supplyState:		db 0
g_navier_boatTiedFlag:		db 0
g_navier_computerCenterTrigger:	db 0
				db 0
g_caseTrigger:			db 0
g_isthurGammaControlTrigger:	db 0
g_isthur_computerCenterTrigger:	db 0
g_navier_shelfTrigger:		db 0
g_solomaw_doorsOpened:		db 0
g_deliveredItemCount:		db 0
g_solomaw_riddleComplete:	db 0
gameWonFlagMaybe:		db 0
g_duffleBagExamined:		db 0
include(`bgn/landing.m4')
include(`bgn/items.m4')
include(`bgn/earthRooms.m4')
include(`bgn/isthurRooms.m4')
include(`bgn/gcsRooms.m4')
include(`bgn/navierRooms.m4')
include(`bgn/solomawRooms.m4')
