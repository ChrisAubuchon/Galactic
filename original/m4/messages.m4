divert(`-1')dnl

define(`s_none',				`0')
define(`s_welcome',				`11h')
define(`s_introduction',			`50h')
define(`s_helpMessage',				`28Eh')
define(`s_terse_earthOrbit',			`5E4h')	
define(`s_verbose_earthOrbit',			`600h')	
define(`s_verbose_earthInShip',			`6E0h')
define(`s_terse_landingPad',			`6BDh')
define(`s_verbose_landingPad',			`773h')
define(`s_verbose_hallway',			`7F1h')
define(`s_terse_hallway',			`822h')
define(`s_doorNumber10',			`845h')
define(`s_doorNumber11',			`8CAh')
define(`s_doorNumber12',			`8EDh')
define(`s_doorNumber13',			`96Bh')
define(`s_noAnswer',				`868h')
define(`s_arrestedBnENoLift',			`87Dh')
define(`s_severnBrokeArm',			`910h')
define(`s_verbose_hallEntrance',		`98Eh')
define(`s_shotByPirate',			`9E2h')
define(`s_doorNumber14',			`0A21h')
define(`s_earthHallwaySign',			`0A44h')
define(`s_doorNumber15',			`0A75h')
define(`s_trochKO',				`0A98h')
define(`s_doorNumber16',			`0AFAh')
define(`s_verbose_welmasRoom',			`0B1Dh')
define(`s_terse_welmasRoom',			`0C19h')
define(`s_hired_welma',				`0C35h')
define(`s_verbose_myRoom',			`0C90h')
define(`s_terse_myRoom',			`0CC8h')
define(`s_inven_duffleBag',			`0CF9h')
define(`s_inven_laser',				`0D69h')
define(`s_inven_geigerCounter',			`0D9Ah')
define(`s_verbose_parsonsRoom',			`0E2Dh')
define(`s_terse_parsonsRoom',			`0EA4h')
define(`s_verbose_earth_parsonsRoom_alt',	`0EC0h')
define(`s_inven_neutralizer',			`1087h')
define(`s_inven_pSuit',				`10BFh')
define(`s_inven_pSuitDonned',			`10CDh')
define(`s_purchased_computer',			`110Ch')
define(`s_purchased_analyzer',			`1167h')
define(`s_verbose_severnsRoom',			`11BBh')
define(`s_terse_severnsRoom',			`1278h')
define(`s_hired_severn',			`1294h')
define(`s_verbose_piratesRoom',			`12EFh')
define(`s_terse_emptyRoom',			`1382h')
define(`s_verbose_llyesRoom',			`139Eh')
define(`s_terse_llyesRoom',			`1431h')
define(`s_hired_llye',				`144Dh')
define(`s_verbose_trochsRoom',			`1493h')
define(`s_terse_trochsRoom',			`1557h')
define(`s_hired_troch',				`1573h')
define(`s_verbose_commCenter',			`15C0h')
define(`s_terse_commCenter',			`16E6h')
define(`s_first_commCenter',			`163Eh')
define(`s_verbose_cmdrFoyer',			`1709h')
define(`s_terse_cmdrFoyer',			`17AAh')
define(`s_earth_cmdrDoorLocked',		`17E2h')
define(`s_earth_cmdrDoorUnlocked',		`17F7h')
define(`s_verbose_earth_cmdrOffice',		`1813h')
define(`s_terse_earth_cmdrOffice',		`1883h')
define(`s_first_cmdrOffice',			`18ADh')
define(`s_verbose_privFoyer',			`1B62h')
define(`s_terse_privFoyer',			`1C7Ah')
define(`s_terminalHere',			`1C8Fh')
define(`s_terminal_ps_verbose',			`1CF1h')
define(`s_terminal_planetIsthur',		`1DF4h')
define(`s_terminal_planetNavier',		`1F0Ch')
define(`s_terminal_planetSolomaw',		`2086h')
define(`s_terminal_earthGossip',		`220Eh')
define(`s_terminal_earthPersonnel',		`22BDh')
define(`s_verbose_infirmary',			`2461h')
define(`s_terse_infirmary',			`2502h')
define(`s_hired_reser',				`254Fh')
define(`s_verbose_library',			`2587h')
define(`s_verbose_customs',			`25A3h')
define(`s_terse_customs',			`27CCh')
define(`s_hired_brandon',			`27E1h')
define(`s_caughtWithIllusion',			`268Ah')
define(`s_caughtWithAnalyzer',			`270Fh')
define(`s_supplyQuestion',			`285Fh')
define(`s_verbose_earth_supply',		`28CFh')
define(`s_terse_earth_supply',			`28BAh')
define(`s_suppliesOnBoard',			`28EBh')
define(`s_verbose_alt_starLounge',		`2931h')
define(`s_terse_starLounge',			`2954h')
define(`s_verbose_starLounge',			`2977h')
define(`s_hired_bartender',			`2A49h')
define(`s_verbose_mainEntr',			`2AB9h')
define(`s_terse_mainEntr',			`2B37h')
define(`s_verbose_townSquare',			`2B68h')
define(`s_terse_townSquare',			`2BA7h')
define(`s_verbose_saloonFront',			`2BC3h')
define(`s_verbose_innFront',			`2BF4h')
define(`s_verbose_houseFront',			`2C1Eh')
define(`s_verbose_feedFront',			`2C4Fh')
define(`s_verbose_sheriffFront',		`2C80h')
define(`s_verbose_roadEnd',			`2CB8h')
define(`s_terse_dirtRoad',			`2CDBh')
define(`s_verbose_house',			`2CF7h')
define(`s_paperDisintegrates',			`2D67h')
define(`s_pirateLivesMessage',			`2D91h')
define(`s_terse_house',				`2DECh')
define(`s_verbose_inn',				`2E0Fh')
define(`s_terse_inn',				`2EDAh')
define(`s_first_inn',				`2E6Ah')
define(`s_terse_saloon',			`2EEFh')
define(`s_verbose_saloon',			`2F0Bh')
define(`s_verbose_feed',			`2F90h')
define(`s_terse_feed',				`30A1h')
define(`s_sheriffLocked',			`3070h')
define(`s_verbose_sheriff',			`30BDh')
define(`s_terse_sheriff',			`30F5h')
define(`s_inven_foldedPaper',			`3142h')
define(`s_paperIsFolded',			`3157h')
define(`s_paperMessage',			`317Ah')
define(`s_inven_pieceOfPaper',			`3230h')
define(`s_inven_shovel',			`3261h')
define(`s_verbose_vastWaste',			`326Fh')
define(`s_terse_vastWaste',			`32B5h')
define(`s_verbose_bridgeEdge',			`32D1h')
define(`s_verbose_campsite',			`3302h')
define(`s_bombShelterEntrance',			`3379h')
define(`s_verbose_shelter',			`33A3h')
define(`s_terse_shelter',			`33E2h')
define(`s_inven_repairDisk',			`3436h')
define(`s_verbose_isthurOrbit',			`34D0h')
define(`s_deepFissure',				`344Bh')
define(`s_terse_isthurOrbit',			`3563h')
define(`s_verbose_isthurInShip',		`3586h')
define(`s_terse_isthurInShip',			`360Bh')
define(`s_verbose_isthurPad',			`362Eh')
define(`s_verbose_gammaEntr',			`36B3h')
define(`s_isthur_airlockNorthOpen',		`36EBh')
define(`s_isthur_airlockSouthOpen',		`3762h')
define(`s_verbose_nsTunnel',			`37E0h')
define(`s_verbose_ewTunnel',			`37FCh')
define(`s_verbose_nsewInter',			`3818h')
define(`s_verbose_nseInter',			`385Eh')
define(`s_verbose_cmdtFoyer',			`389Dh')
define(`s_verbose_cmdtOffice',			`3922h')
define(`s_terse_cmdtFoyer',			`3968h')
define(`s_first_cmdtOffice',			`39A0h')
define(`s_first_cmdtOffice_alt',		`3B0Ch')
define(`s_verbose_garbageDump',			`3CC5h')
define(`s_ambient_garbageDump',			`3CEFh')
define(`s_ambient_garbage_oneFourth',		`3D0Bh')
define(`s_ambient_garbage_oneHalf',		`3D35h')
define(`s_ambient_garbage_full',		`3D58h')
define(`s_verbose_cafeteria',			`3D82h')
define(`s_verbose_istHospital',			`3DB3h')
define(`s_verbose_istInfirm',			`3DCFh')
define(`s_verbose_energyInput',			`3DEBh')
define(`s_terse_energyInput',			`3E69h')
define(`s_terse_airPlant',			`3E8Ch')
define(`s_verbose_airPlant',			`3EAFh')
define(`s_verbose_fireControl',			`3F49h')
define(`s_terse_fireControl',			`3F2Dh')
define(`s_terse_intelHq',			`3FC0h')
define(`s_verbose_intelHq',			`3FE3h')
define(`s_terse_machineShop',			`4187h')
define(`s_verbose_machineShop',			`41A3h')
define(`s_terse_designCenter',			`41FEh')
define(`s_verbose_designCenter',		`421Ah')
define(`s_terse_wastePlant',			`427Ch')
define(`s_verbose_wastePlant',			`429Fh')
define(`s_terse_controlTower',			`42D7h')
define(`s_verbose_controlTower',		`42F3h')
define(`s_verbose_laundry',			`43A2h')
define(`s_verbose_waterPlant',			`43BEh')
define(`s_inven_coil',				`4404h')
define(`s_verbose_bubble39',			`4419h')
define(`s_inven_purse',				`4489h')
define(`s_purseMessage',			`4497h')
define(`s_terse_gammaEntr',			`44F2h')
define(`s_verbose_gammaEntr',			`451Ch')
define(`s_verbose_gammaEntr_alt',		`4593h')
define(`s_verbose_gammaCtrl',			`45F5h')
define(`s_verbose_computerCtr',			`4681h')
define(`s_printGibberish',			`46A4h')
define(`s_inven_computerPage',			`4776h')
define(`s_isthur_cmdtMessage_disks',		`47AEh')
define(`s_isthur_cmdtMessage_goodJob',		`489Ch')
define(`s_terse_istSecurity',			`4983h')
define(`s_verbose_istSecurity',			`499Fh')
define(`s_deepSpace',				`4A40h')
define(`s_endingGame',				`4A7Fh')
define(`s_cantGoDirection',			`4AD3h')
define(`s_dontKnowHowToApply',			`4AFDh')
define(`s_dontKnowWord',			`4B27h')
define(`s_dontUnderstand',			`4B43h')
define(`s_what',				`4B5Fh')
define(`s_usingUnknownWords',			`4B6Dh')
define(`s_didntFindAnything',			`4B90h')
define(`s_dontKnowHowHere',			`4BACh')
define(`s_nothingHappens',			`4BCFh')
define(`s_whichWay',				`4BE4h')
define(`s_okay',				`4BF2h')
define(`s_ridiculous',				`4BF9h')
define(`s_noWayToDo',				`4C0Eh')
define(`s_cantCarryMore',			`4C46h')
define(`s_beyondYourPower',			`4C7Eh')
define(`s_pleaseAnswer',			`4CA1h')
define(`s_inventoryEmpty',			`4CBDh')
define(`s_inventoryCarrying',			`4CFCh')
define(`s_quitQuestion',			`4D26h')
define(`s_notCarrying',				`4D49h')
define(`s_talkLouder',				`4D65h')
define(`s_tooManyWords',			`4D81h')
define(`s_badFileName',				`4DEAh')
define(`s_noRoomOnMedia',			`4DFFh')
define(`s_done',				`4E14h')
define(`s_rank_beginner',			`4E22h')
define(`s_rank_apprentice1',			`4E4Ch')
define(`s_rank_apprentice2',			`4E6Fh')
define(`s_rank_apprentice3',			`4E92h')
define(`s_rank_apprentice4',			`4EB5h')
define(`s_rank_apprentice5',			`4ED8h')
define(`s_rank_apprentice6',			`4EFBh')
define(`s_rank_apprentice7',			`4F1Eh')
define(`s_rank_cpo',				`4F41h')
define(`s_rank_midshipman1',			`4F5Dh')
define(`s_rank_midshipman2',			`4F79h')
define(`s_rank_midshipman3',			`4F95h')
define(`s_rank_midshipman4',			`4FB1h')
define(`s_rank_midshipman5',			`4FCDh')
define(`s_rank_warrantOfficer',			`4FE9h')
define(`s_rank_captainDunsel',			`5005h')
define(`s_rank_captain1',			`5021h')
define(`s_rank_captainRespectus',		`503Dh')
define(`s_galaxySalutes',			`506Eh')
define(`s_minigame_findLocker_board',		`50C9h')
define(`s_terse_gcsInShip',			`57C2h')
define(`s_verbose_gcsInShip',			`57DEh')
define(`s_consumeAll',				`5958h')
define(`s_sleep',				`5990h')
define(`s_unableToDoNow',			`59C8h')
define(`s_terse_gcsLandBay',			`5ABDh')
define(`s_verbose_gcsLandBay',			`5AD9h')
define(`s_first_gcsLandBay',			`5B73h')
define(`s_bayDoorsClosed',			`5CB5h')
define(`s_thawSuccessful',			`5DD4h')
define(`s_bayDoorsOpen',			`5E3Dh')
define(`s_verbose_airlessPass',			`5EF3h')
define(`s_terminal_gcsFirst1',			`5F55h')
define(`s_terminal_gcsFirst2',			`5FA9h')
define(`s_terminal_gcsOrders',			`60D6h')
define(`s_whichWay',				`61AFh')
define(`s_terminal_gcsIdComplete',		`6361h')
define(`s_terse_outerAirlock',			`6409h')
define(`s_verbose_outerAirlock',		`642Ch')
define(`s_welcomeToGcs',			`64D4h')
define(`s_psuitWarning',			`650Ch')
define(`s_terse_innerAirlock',			`6544h')
define(`s_verbose_innerAirlock',		`6567h')
define(`s_gcsBulletinPre',			`65DEh')
define(`s_gcsBulletinPost',			`6774h')
define(`s_terse_storageSpace',			`687Eh')
define(`s_verbose_storageSpace',		`68A1h')
define(`s_machineDropsKey',			`69FFh')
define(`s_unableToRentLocker',			`6ADFh')
define(`s_first_airlockSwish',			`6B17h')
define(`s_terse_innerCorridor',			`6B56h')
define(`s_terse_outerCorridor',			`6B79h')
define(`s_lockerClosedLocked',			`6BFEh')
define(`s_lockerOpen',				`6C60h')
define(`s_noKey',				`6C83h')
define(`s_notCarryingPSuit',			`6CC2h')
define(`s_lockerLocked',			`6D08h')
define(`s_mustDepositKey',			`6D2Bh')
define(`s_machineSwallowKey',			`6D7Fh')
define(`s_locker548',				`6DA9h')
define(`s_caseMessage1',			`6DD3h')
define(`s_caseMessage2',			`6E0Bh')
define(`s_caseMessage3',			`6E4Ah')
define(`s_verbose_innerCorridor',		`6E89h')
define(`s_dontSeeUnusual',			`6EBAh')
define(`s_sign_engineering',			`6F3Fh')
define(`s_corridorClean',			`6F4Dh')
define(`s_sign_computerCenter',			`6F85h')
define(`s_nothingSignificant',			`6FB6h')
define(`s_sign_supplyRoom',			`6FFCh')
define(`s_sign_doctorsOffice',			`700Ah')
define(`s_sign_headquarters',			`701Fh')
define(`s_notCleanedInYears',			`7065h')
define(`s_verbose_gcsDarkHall',			`70C7h')
define(`s_sign_storageSpace',			`70F1h')
define(`s_first_shipRumblings',			`7106h')
define(`s_examineBar',				`7145h')
define(`s_nothingWrittenHere',			`71E6h')
define(`s_verbose_outerCorridor',		`7209h')
define(`s_sign_restaurant',			`723Ah')
define(`s_first_constructionSounds',		`7256h')
define(`s_sign_barracks',			`72A3h')
define(`s_sign_gymnasium',			`72B1h')
define(`s_sign_maintenance',			`72BFh')
define(`s_nothingToReadHere',			`72DBh')
define(`s_sign_hospital',			`72BFh')
define(`s_smellOfAntiseptic',			`7328h')
define(`s_first_gcsBar',			`7367h')
define(`s_first_gcsRestaurant',			`738Ah')
define(`s_terse_gcsHeadquarters',		`73D0h')
define(`s_verbose_gcsHeadquarters',		`73ECh')
define(`s_first_gcsHeadquarters',		`76AFh')
define(`s_gcs_hqArrested1',			`786Fh')
define(`s_gcs_hqArrested2',			`7956h')
define(`s_first_gcsHeadquarters_alt',		`7A8Ah')
define(`s_terse_gcsEngineering',		`7D54h')
define(`s_verbose_gcsEngineering',		`7D70h')
define(`s_engineerMessage1',			`7DFCh')
define(`s_engineerMessage2',			`7E38h')
define(`s_verbose_gcsHospital',			`816Eh')
define(`s_first_gcsHospital',			`818Ah')
define(`s_hospitalMessage1',			`8304h')
define(`s_hospitalMessage2',			`83BAh')
define(`s_inNoCondition',			`853Bh')
define(`s_stomachPumped',			`841Ch')
define(`s_medicLine',				`84CBh')
define(`s_terse_restaurant',			`8565h')
define(`s_restaurantGreeting',			`8581h')
define(`s_restaurantNoSeats',			`85E3h')
define(`s_steakAndMushrooms',			`86A7h')
define(`s_holsonMessage',			`8702h')
define(`s_verbose_gcsBar',			`8939h')
define(`s_barWelcome',				`894Eh')
define(`s_barNoSeats',				`8B54h')
define(`s_barSeatAvailable',			`8C11h')
define(`s_strongDrink',				`8C73h')
define(`s_goodeMessage1',			`8D30h')
define(`s_waiterNotArrived',			`8FF3h')
define(`s_daviesMessage1',			`902Bh')
define(`s_goodeMessage2',			`92EEh')
define(`s_daviesMessage2',			`94A7h')
define(`s_verbose_gcsDoctor',			`959Ch')
define(`s_doctorMessage2',			`95E9h')
define(`s_doctorMessage3',			`9675h')
define(`s_doctorMessage1',			`97E8h')
define(`s_terse_gcsLibrary',			`989Eh')
define(`s_verbose_gcsLibrary',			`9946h')
define(`s_first_gcsLibrary',			`99BDh')
define(`s_inven_largeEnvelope',			`9AB9h')
define(`s_envelopeLabel',			`9AD5h')
define(`s_noLibraryCard',			`9B22h')
define(`s_applicationProcessed',		`9B5Ah')
define(`s_verbose_barracks',			`9BDFh')
define(`s_inven_attacheCase',			`9C72h')
define(`s_verbose_gymnasium',			`9CE9h')
define(`s_gymClosedForRepairs',			`9CB8h')
define(`s_pleaseLogOn',				`9E86h')
define(`s_verbose_computerFoyer',		`9E39h')
define(`s_securityArrests',			`9F3Ch')
define(`s_terse_gcsComputerCenter',		`9FEBh')
define(`s_verbose_gcsComputerCenter',		`0A00Eh')
define(`s_professorPacing',			`0A093h')
define(`s_professorRepeating',			`0A126h')
define(`s_verbose_gcsSupply',			`0A17Ah')
define(`s_darkSupplyMessage1',			`0A229h')
define(`s_darkSupplyMessage2',			`0A2F4h')
define(`s_gcsResupplied',			`0A41Ah')
define(`s_terse_gcsMaintenance',		`0A460h')
define(`s_verbose_gcsMaintenance',		`0A48Ah')
define(`s_maintenanceLocked',			`0A4D7h')
define(`s_dyingGirlMessage1',			`0A4FAh')
define(`s_inven_dyingGirl',			`0A547h')
define(`s_inven_lockerKey',			`0A5B7h')
define(`s_inven_emptyBottle',			`0A5F6h')
define(`s_first_innerCorridor_19',		`0A196h')
define(`s_supplyClosedLocked',			`0A1FFh')
define(`s_dyingGirlMessage2',			`0A563h')
define(`s_verbose_gcsOrbit',			`0A674h')
define(`s_shipUnidentified',			`0A6B3h')
define(`s_terse_navier_inOrbit',		`0A731h')
define(`s_verbose_navier_inOrbit',		`0A75Bh')
define(`s_terse_navier_onPad',			`0A7FCh')
define(`s_verbose_navier_inShip',		`0A81Fh')
define(`s_planetQuarantined',			`0A8ABh')
define(`s_verbose_navier_onPad',		`0A914h')
define(`s_verbose_navier_cityEntrance',		`0A992h')
define(`s_verbose_navier_nsePassage',		`0A9C3h')
define(`s_verbose_navier_smallRoom',		`0AA09h')
define(`s_terse_navier_smallRoom',		`0AA25h')
define(`s_verbose_navier_longNS',		`0AAB8h')
define(`s_verbose_navier_deadEnd',		`0AAE2h')
define(`s_verbose_navier_psychicCtrl',		`0AAFEh')
define(`s_verbose_navier_nswPassage',		`0ABADh')
define(`s_verbose_navier_ewCorridor',		`0ABF3h')
define(`s_verbose_navier_overlordEntr',		`0AC16h')
define(`s_verbose_navier_overlord',		`0AC7Fh')
define(`s_verbose_navier_overlordIgnored',	`0AE15h')
define(`s_terse_navier_overlord',		`0AE77h')
define(`s_verbose_navier_nsPassage',		`0AE9Ah')
define(`s_verbose_navier_underMain',		`0AEBDh')
define(`s_verbose_navier_underMain_alt',	`0AFC7h')
define(`s_terse_navier_underMain',		`0AF96h')
define(`s_verbose_navier_slopingTunnel',	`0B037h')
define(`s_verbose_navier_fivePoints',		`0B053h')
define(`s_terse_navier_diningRoom',		`0B06Fh')
define(`s_verbose_navier_diningRoom',		`0B08Bh')
define(`s_terse_navier_kitchen',		`0B102h')
define(`s_verbose_navier_kitchen',		`0B11Eh')
define(`s_verbose_navier_servantFoyer',		`0B18Eh')
define(`s_terse_navier_servantQuarters',	`0B1C6h')
define(`s_verbose_navier_servantQuarters',	`0B1E9h')
define(`s_verbose_navier_narrowTunnel',		`0B291h')
define(`s_verbose_navier_gentleSlope',		`0B2ADh')
define(`s_terse_navier_barracksEntrance',	`0B2D0h')
define(`s_verbose_navier_barracksEntrance',	`0B2F3h')
define(`s_terse_navier_smallBedroom',		`0B35Ch')
define(`s_verbose_navier_smallBedroom',		`0B3D3h')
define(`s_inven_keyingCard',			`0B427h')
define(`s_terse_navier_levelOneEntrance',	`0B435h')
define(`s_verbose_navier_levelOneEntrance',	`0B458h')
define(`s_first_navier_levelOneEntrance',	`0B497h')
define(`s_verbose_navier_nsewIntersection',	`0B562h')
define(`s_verbose_navier_ewTunnel',		`0B585h')
define(`s_terse_navier_volcano',		`0B5A8h')
define(`s_verbose_navier_volcano',		`0B5C4h')
define(`s_terse_navier_lavaBed',		`0B67Ah')
define(`s_verbose_navier_lavaBed',		`0B69Dh')
define(`s_terse_navier_curvingCanyon',		`0B7F4h')
define(`s_verbose_navier_curvingCanyon',	`0B810h')
define(`s_verbose_navier_besideLakeBed',	`0B86Bh')
define(`s_terse_navier_lakeBed',		`0B88Eh')
define(`s_verbose_navier_lakeBed',		`0B8AAh')
define(`s_verbose_navier_nsCanyon',		`0B936h')
define(`s_verbose_navier_boxCanyon',		`0B959h')
define(`s_terse_navier_levelTwoEntrance',	`0BB58h')
define(`s_verbose_navier_levelTwoEntrance',	`0BB74h')
define(`s_terse_navier_lockableDoors',		`0BBD6h')
define(`s_verbose_navier_lockableDoors',	`0BC00h')
define(`s_verbose_navier_lakeEdge',		`0BD11h')
define(`s_verbose_navier_shelf',		`0BE68h')
define(`s_first_navier_shelf',			`0BE68h')
define(`s_boatDriftedAway',			`0BE99h')
define(`s_inven_trochWalking',			`0BF79h')
define(`s_inven_trochSitting',			`0BFA3h')
define(`s_inven_lucindaSitting',		`0BFF7h')
define(`s_trochKilledLucinda',			`0C04Bh')
define(`s_lucindaDestroyedDisk',		`0C07Ch')
define(`s_inven_diskA',				`0C0C9h')
define(`s_inven_lucindaWalking',		`0C0D7h')
define(`s_doorIsLocked',			`0C12Bh')
define(`s_terse_navier_airlock',		`0C15Ch')
define(`s_verbose_navier_airlock',		`0C1EFh')
define(`s_verbose_navier_airlock_alt',		`0C2BAh')
define(`s_verbose_navier_computerCenter',	`0C354h')
define(`s_terse_navier_computerCenter',		`0C3AFh')
define(`s_verbose_navier_longCorridor',		`0C403h')
define(`s_verbose_navier_longCorridorWInter',	`0C42Dh')
define(`s_verbose_navier_emptyStoreroom',	`0C4A4h')
define(`s_verbose_navier_oldStoreroom',		`0C4C7h')
define(`s_inven_oars',				`0C4FFh')
define(`s_terse_navier_stairBottom',		`0C50Dh')
define(`s_verbose_navier_stairBottom',		`0C530h')
define(`s_verbose_navier_puzzleTesting',	`0C576h')
define(`s_terse_navier_puzzleTesting',		`0C71Ah')
define(`s_terse_navier_tomorrowChamber',	`0C73Dh')
define(`s_verbose_navier_tomorrowChamber',	`0C760h')
define(`s_terse_navier_barrenRoom',		`0C832h')
define(`s_verbose_navier_barrenRoom',		`0C84Eh')
define(`s_verbose_navier_pitBottom',		`0C886h')
define(`s_verbose_navier_deadEndCap',		`0C8A9h')
define(`s_verbose_navier_pitTop',		`0C8C5h')
define(`s_inven_rope',				`0C8FDh')
define(`s_analyzeLucinda',			`0C90Bh')
define(`s_inven_diskB',				`0C9B3h')
define(`s_cantAnalyzeLucinda',			`0C9C1h')
define(`s_tookCareOfSupplies',			`0CA00h')
define(`s_sliderGame',				`0CA5Bh')
define(`s_verbose_solomaw_inOrbit',		`0CD8Eh')
define(`s_notAllowedToLand',			`0CF08h')
define(`s_terse_solomaw_inOrbit',		`0CF40h')
define(`s_verbose_solomaw_inShip',		`0CF6Ah')
define(`s_terse_solomaw_landingField',		`0CFE1h')
define(`s_verbose_solomaw_landingField',	`0D004h')
define(`s_verbose_solomaw_portAuthority',	`0D07Bh')
define(`s_first_solomaw_portAuthority',		`0D09Eh')
define(`s_terse_solomaw_portAuthority',		`0D0F2h')
define(`s_verbose_solomaw_priestEntrance',	`0D115h')
define(`s_terse_solomaw_highPriest',		`0D1CBh')
define(`s_verbose_solomaw_highPriest',		`0D1A1h')
define(`s_first_solomaw_highPriest',		`0D22Dh')
define(`s_recoveryDiskLocation',		`0D3BCh')
define(`s_inven_skeletonKey',			`0D4F7h')
define(`s_verbose_solomaw_directions',		`0D50Ch')
define(`s_terse_solomaw_directions',		`0D68Dh')
define(`s_verbose_solomaw_curvingCorridor',	`0D6B0h')
define(`s_verbose_solomaw_artifactEntrance',	`0D6D3h')
define(`s_door_solomaw_artifactEntrance',	`0D704h')
define(`s_riddleFailedNoPass',			`0DB8Eh')
define(`s_youAreCorrect',			`0DBF0h')
define(`s_terse_solomaw_artifact',		`0DC21h')
define(`s_verbose_solomaw_artifact',		`0DC3Dh')
define(`s_inven_platinumClaw',			`0DC83h')
define(`s_verbose_solomaw_nsCorridor',		`0DC98h')
define(`s_terse_solomaw_museumEntrance',	`0DD08h')
define(`s_verbose_solomaw_museumEntrance',	`0DD32h')
define(`s_verbose_solomaw_museum',		`0E10Dh')
define(`s_terse_solomaw_museum',		`0E129h')
define(`s_inven_silverLance',			`0E145h')
define(`s_verbose_solomaw_ewCorridor',		`0E17Dh')
define(`s_verbose_solomaw_mazeEntrance',	`0E1A0h')
define(`s_terse_solomaw_mazeEntrance',		`0E39Fh')
define(`s_verbose_solomaw_mazeBeginning',	`0E3C9h')
define(`s_terse_solomaw_mazeBeginning',		`0E41Dh')
define(`s_verbose_solomaw_nsewMaze',		`0E486h')
define(`s_terse_solomaw_maze',			`0E4D3h')
define(`s_thatDoorIsLocked',			`0E4EFh')
define(`s_verbose_solomaw_nswMaze',		`0E504h')
define(`s_verbose_solomaw_nseMaze',		`0E551h')
define(`s_verbose_solomaw_newMaze',		`0E59Eh')
define(`s_verbose_solomaw_seMaze',		`0E5E4h')
define(`s_verbose_solomaw_nsMaze',		`0E62Ah')
define(`s_inven_crystalStatue',			`0E693h')
define(`s_drop_crystalStatue',			`0E6A8h')
define(`s_triedFifteenthDoor',			`0E6E7h')
define(`s_marbleGame',				`0E749h')
define(`s_verbose_inRowboatOnLake',		`0EA44h')
define(`s_terse_inRowboat',			`0EA7Ch')
define(`s_verbose_inRowboatNearShelf',		`0EA98h')
define(`s_cantSwim',				`0EA67h')
define(`s_boxCanyon',				`0EA87h')
define(`s_enterCoordinates',			`0EAF3h')
define(`s_coursePlotted',			`0EB32h')
define(`s_travelMessage1',			`0EB4Eh')
define(`s_cantPassUntilAnswer',			`0EB78h')
define(`s_multipleExits',			`0EBFDh')
define(`s_heDeclinesToCome',			`0ECA5h')
define(`s_sheDeclinesToCome',			`0ECE4h')
define(`s_inven_radSuit',			`0EDCBh')
define(`s_userName',				`0EEF8h')
define(`s_password',				`0EF0Dh')
define(`s_logonAborted',			`0EF22h')
define(`s_terminal_planetAborted',		`0EF4Ch')
define(`s_terminal_planetPrompt',		`0EF84h')
define(`s_terminal_ps_terse',			`0EF99h')
define(`s_terminal_logoffComplete',		`0EFFBh')
define(`s_courseImpossible',			`0F017h')
define(`s_terminal_planetUnavailable',		`0F048h')
define(`s_terminal_planetTerminated',		`0F072h')
define(`s_notCarryingDuffle',			`0F09Ch')
define(`s_notCarryingPurse',			`0F0BFh')
define(`s_nothingToRead',			`0F0DBh')
define(`s_foundLaserAndGeiger',			`0F16Eh')
define(`s_geigerClicking',			`0F19Fh')
define(`s_foundSecondCpmDisk',			`0F1D7h')
define(`s_notForHire',				`0F21Dh')
define(`s_tooDrunk',				`0F232h')
define(`s_alreadyHired',			`0F263h')
define(`s_parsonArrested',			`0F2B0h')
define(`s_dontKnowHowToGet',			`0F327h')
define(`s_noWayToBuy',				`0F351h')
define(`s_cantWearTwoSuits',			`0F36Dh')
define(`s_launchedLate',			`0F39Eh')
define(`s_sign_library',			`0F39Eh')
define(`s_dontKnowWhatToRead',			`0F3F2h')
define(`s_alreadyBought',			`0F43Fh')
define(`s_notCarryingPaper',			`0F45Bh')
define(`s_diedOfRadiation',			`0F47Eh')
define(`s_lucindaEscaped',			`0F4A8h')
define(`s_copyRight',				`0F4BDh')
define(`s_saveHelp',				`0F56Ch')
define(`s_galacticBgnBad',			`0F5C0h')
define(`s_gameDataFileBad',			`0F5F1h')
define(`s_saveGamePrompt',			`0F64Ch')
define(`s_supplyAnswer',			`0F702h')
define(`s_didntWearPSuit',			`0F725h')
define(`s_disksDontWork',			`0F779h')
define(`s_disksWork',				`0F82Fh')
define(`s_boatCapsized',			`0F8D0h')
define(`s_notDepartureTime',			`0F901h')
define(`s_outOfSupplies',			`0F924h')
define(`s_terminal_gcsIntro',			`0F947h')
define(`s_terminal_gcsOptions',			`0F986h')
define(`s_terminal_gcsDown',			`0F9BEh')
define(`s_noMachine',				`0FA2Eh')
define(`s_boxExploded',				`0FA4Ah')
define(`s_hitQuestion',				`0FA74h')
define(`s_dontDrink',				`0FA90h')
define(`s_findTwoDisks',			`0FAB3h')
define(`s_keyMessage',				`0FADDh')
define(`s_adviseAgainst',			`0FAF9h')
define(`s_disksFixed',				`0FB15h')
define(`s_currentScorePrefix',			`0FD84h')
define(`s_currentScorePostfix',			`0FD99h')
define(`s_endScorePrefix',			`0FDD1h')
define(`s_endScorePostfix',			`0FDE6h')

# Floor item messages
define(`s_floor_duffleBag',			`0CDDh')
define(`s_floor_laser',				`0D4Dh')
define(`s_floor_geigerCounter',			`0D77h')
define(`s_forSale_navigationComputer',		`0F61h')
define(`s_forSale_illusionNeutralizer',		`0F92h')
define(`s_forSale_pSuit',			`0FC3h')
define(`s_forSale_neuralAnalyzer',		`0FF4h')
define(`s_installed_navigationComputer',	`1025h')
define(`s_floor_illusionNeutralizer',		`1056h')
define(`s_installed_neuralAnalyzer',		`10E2h')
define(`s_floor_pSuit',				`10A3h')
define(`s_floor_foldedPaper',			`3118h')
define(`s_floor_shovel',			`3245h')
define(`s_floor_cpmDiskFolder',			`33FEh')
define(`s_floor_degaussingCoil',		`43E1h')
define(`s_floor_purseHidden',			`442Eh')
define(`s_floor_purse',				`446Dh')
define(`s_floor_computerPaperPage',		`478Bh')
define(`s_floor_pSuitNearDoor',			`5832h')
define(`s_floor_lockerKey',			`6A30h')
define(`s_floor_pSuitInLocker',			`6C98h')
define(`s_floor_caseInLocker',			`6DA9h')
define(`s_floor_twoDisks',			`9A8Fh')
define(`s_floor_largeEnvelope',			`9AF8h')
define(`s_floor_attacheCase',			`9C87h')
define(`s_floor_caseUnderBunker',		`9BFBh')
define(`s_floor_emptyBottle',			`0A5CCh')
define(`s_floor_dyingGirl',			`0A62Eh')
define(`s_floor_deadGirl',			`0A658h')
define(`s_floor_keyingCard',			`0B40Bh')
define(`s_floor_diamonds',			`0B71Bh')
define(`s_buriedInLava',			`0B737h')
define(`s_trochSavedFromLava',			`0B7AEh')
define(`s_floor_irridiumCrystals',		`0BAE1h')
define(`s_irridiumIllusion',			`0BB04h')
define(`s_floor_ewDoorsOpen',			`0BCBDh')
define(`s_floor_ewDoorsLocked',			`0BCE7h')
define(`s_floor_rowboat',			`0BD34h')
define(`s_floor_rowboatWithOars',		`0BD50h')
define(`s_floor_rowboatWithTieRope',		`0BD73h')
define(`s_floor_rowboatWithTieRopeOars',	`0BD9Dh')
define(`s_floor_smallRowboat',			`0BF02h')
define(`s_floor_lucinda',			`0BFDBh')
define(`s_floor_cpmDisk',			`0C0A6h')
define(`s_floor_nDoorLocked',			`0C282h')
define(`s_floor_nDoorOpen',			`0C29Eh')
define(`s_floor_oars',				`0C4EAh')
define(`s_floor_rope',				`0C8E1h')
define(`s_floor_skeletonKey',			`0D4D4h')
define(`s_floor_platinumClaw',			`0DC60h')
define(`s_floor_silverLance',			`0E145h')
define(`s_floor_crystalStatue',			`0E670h')
define(`s_tooBadSomeoneNotHere',		`0ED9Ah')
define(`s_floor_radiationSuit',			`0EDE0h')
define(`s_floor_pieceOfPaper',			`0EE03h')
define(`s_floor_troch',				`0EE26h')
define(`s_floor_navigationComputer',		`0F0FEh')
define(`s_floor_neuralAnalyzer',		`0F121h')
define(`s_inven_deadGirl',			`0F286h')
define(`s_inven_radSuitDonned',			`0F286h')

dnldivert`'dnl
