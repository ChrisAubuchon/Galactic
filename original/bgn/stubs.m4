baseBGNAddress:			ds 20
g_currentScore:			ds 2
g_verboseCountdown:		ds 1
g_currentRoomData:		ds 2
g_currentPlanetNumber:		ds 1
g_currentRoomNumber:		ds 1
g_shipDestination:		ds 1
g_radioactiveValue:		ds 1
g_launchCounter_xxx:		ds 2
g_restoredGameFlag:		ds 1
baseTimeMaybe:			ds 5
g_earth_terminalIntroFlag:	ds 1
include(`bgn/hireable.m4')dnl
g_computerInstalledFlag:	ds 1
analyzerInstalledFlag:		ds 1
g_boughtItemList:		ds 4
carriedItemCount:		ds 1
g_shipSuppliedFlag:		ds 1
g_analyzerUsedOnLucinda:	ds 1
g_gcsStorage_location:		ds 1
g_gcs_psuitInLocker:		ds 1
g_gcs_caseInLocker:		ds 1
g_gcs_locker335_open:		ds 1
g_gcs_changeBulletin:		ds 1
g_lockerRentedFlag:		ds 1
				ds 1
g_wornSuitFloorMessage:		ds 1
g_wearingSuitFlag:		ds 1
g_slider_gameWonFlag:		ds 1
byte_49B0:			ds 1
g_poisonedFlag:			ds 1
g_drankShipsBeveragesFlag:	ds 1
g_gcsDrankInRestaurantFlag:	ds 1
g_gcsLandingBay_warning:	ds 1
g_terminalSkipPassword:		ds 1
g_gcsComputerState:		ds 1
g_gcs_barState:			ds 1
g_gcs_restaurantEntered:	ds 1
g_gcs_foundDyingGirl:		ds 1
				ds 1
g_gcs_supplyState:		ds 1
g_gcs_engineeringTrigger:	ds 1
l_gcs_doctorTrigger:		ds 1
g_gcs_professorState:		ds 1
g_earth_supplyState:		ds 1
g_navier_boatTiedFlag:		ds 1
g_navier_computerCenterTrigger:	ds 1
				ds 1
g_caseTrigger:			ds 1
g_isthurGammaControlTrigger:	ds 1
g_isthur_computerCenterTrigger:	ds 1
g_navier_shelfTrigger:		ds 1
g_solomaw_doorsOpened:		ds 1
g_deliveredItemCount:		ds 1
g_solomaw_riddleComplete:	ds 1
gameWonFlagMaybe:		ds 1
g_duffleBagExamined:		ds 1
include(`bgn/landing.m4')dnl
include(`bgn/items.m4')dnl
include(`bgn/earthRooms.m4')dnl
include(`bgn/isthurRooms.m4')dnl
include(`bgn/gcsRooms.m4')dnl
include(`bgn/navierRooms.m4')dnl
include(`bgn/solomawRooms.m4')dnl
