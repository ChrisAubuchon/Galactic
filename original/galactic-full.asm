; ---------------------------------------------------------------------------

cpm_fcb		struc ;	(sizeof=0x24)
drive_num:	db ?
filename:	db 8 dup(?)
filetype:	db 3 dup(?)
fcb_ex:		db ?
reserved_1:	db ?
reserved_2:	db ?
fcb_rc:		db ?
fcb_al:		db 16 dup(?)
fcb_cr:		db ?
fcb_rnd:	db 3 dup(?)
cpm_fcb		ends

; ---------------------------------------------------------------------------

input_t		struc ;	(sizeof=0x6)
field_0:	db 5 dup(?)		; enum charMap
field_5:	db ?			; enum parseRval
input_t		ends

; ---------------------------------------------------------------------------

; If the first bit of roomFlags	is set print the verbose_offset	message.
; 2nd bit: Print the terse_offset message
; 3rd bit: firstMaybe_offset message
navierRoom_t	struc ;	(sizeof=0x1A)
scoreBonus:	db ?			; base 10
roomFlags:	db ?
verbose_offset:	db 2 dup(?)
terse_offset:	db 2 dup(?)
firstMaybe_offset:db 2 dup(?)
offset_probably:db 2 dup(?)
north_room:	db ?			; enum gcs_rooms
south_room:	db ?			; enum gcs_rooms
east_room:	db ?			; enum gcs_rooms
west_room:	db ?			; enum gcs_rooms
ne_room:	db ?			; enum gcs_rooms
nw_room:	db ?			; enum gcs_rooms
se_room:	db ?			; enum gcs_rooms
sw_room:	db ?			; enum gcs_rooms
up_room:	db ?			; enum gcs_rooms
down_room:	db ?			; enum gcs_rooms
cw_room:	db ?			; enum gcs_rooms
ccw_room:	db ?			; enum gcs_rooms
enter_room:	db ?			; enum gcs_rooms
exit_room:	db ?			; enum gcs_rooms
inward_room:	db ?			; enum gcs_rooms
outward_room:	db ?			; enum gcs_rooms
navierRoom_t	ends

; ---------------------------------------------------------------------------

; If the first bit of roomFlags	is set print the verbose_offset	message.
; 2nd bit: Print the terse_offset message
; 3rd bit: firstMaybe_offset message
gcsRoom_t	struc ;	(sizeof=0x1A)
scoreBonus:	db ?			; base 10
roomFlags:	db ?
verbose_offset:	db 2 dup(?)
terse_offset:	db 2 dup(?)
firstMaybe_offset:db 2 dup(?)
offset_probably:db 2 dup(?)
north_room:	db ?			; enum gcs_rooms
south_room:	db ?			; enum gcs_rooms
east_room:	db ?			; enum gcs_rooms
west_room:	db ?			; enum gcs_rooms
ne_room:	db ?			; enum gcs_rooms
nw_room:	db ?			; enum gcs_rooms
se_room:	db ?			; enum gcs_rooms
sw_room:	db ?			; enum gcs_rooms
up_room:	db ?			; enum gcs_rooms
down_room:	db ?			; enum gcs_rooms
cw_room:	db ?			; enum gcs_rooms
ccw_room:	db ?			; enum gcs_rooms
enter_room:	db ?			; enum gcs_rooms
exit_room:	db ?			; enum gcs_rooms
inward_room:	db ?			; enum gcs_rooms
outward_room:	db ?			; enum gcs_rooms
gcsRoom_t	ends

; ---------------------------------------------------------------------------

isthurRoom_t	struc ;	(sizeof=0x1A)
scoreBonus:	db ?			; base 10
roomFlags:	db ?
verbose_offset:	db 2 dup(?)
terse_offset:	db 2 dup(?)
firstMaybe_offset:db 2 dup(?)
offset_probably:db 2 dup(?)
north_room:	db ?			; enum isthur_rooms
south_room:	db ?			; enum isthur_rooms
east_room:	db ?			; enum isthur_rooms
west_room:	db ?			; enum isthur_rooms
ne_room:	db ?			; enum isthur_rooms
nw_room:	db ?			; enum isthur_rooms
se_room:	db ?			; enum isthur_rooms
sw_room:	db ?			; enum isthur_rooms
up_room:	db ?			; enum isthur_rooms
down_room:	db ?			; enum isthur_rooms
cw_room:	db ?			; enum isthur_rooms
ccw_room:	db ?			; enum isthur_rooms
enter_room:	db ?			; enum isthur_rooms
exit_room:	db ?			; enum isthur_rooms
inward_room:	db ?			; enum isthur_rooms
outward_room:	db ?			; enum isthur_rooms
isthurRoom_t	ends

; ---------------------------------------------------------------------------

roomData_t	struc ;	(sizeof=0x1A)
scoreBonus:	db ?			; base 10
roomFlags:	db ?			; base 16
verbose_offset:	db 2 dup(?)
terse_offset:	db 2 dup(?)
firstMaybe_offset:db 2 dup(?)
offset_probably:db 2 dup(?)
north_room:	db ?			; enum earth_rooms
south_room:	db ?			; enum earth_rooms
east_room:	db ?			; enum earth_rooms
west_room:	db ?			; enum earth_rooms
ne_room:	db ?			; enum earth_rooms
nw_room:	db ?			; enum earth_rooms
se_room:	db ?			; enum earth_rooms
sw_room:	db ?			; enum earth_rooms
up_room:	db ?			; enum earth_rooms
down_room:	db ?			; enum earth_rooms
cw_room:	db ?			; enum earth_rooms
ccw_room:	db ?			; enum earth_rooms
enter_room:	db ?			; enum earth_rooms
exit_room:	db ?			; enum earth_rooms
inward_room:	db ?			; enum earth_rooms
outward_room:	db ?			; enum earth_rooms
roomData_t	ends

; ---------------------------------------------------------------------------

hire_t		struc ;	(sizeof=0x3)
occupied:	db ?
hireMsgHi:	db ?
hireMsgLo:	db ?
hire_t		ends

; ---------------------------------------------------------------------------

msgOffset	struc ;	(sizeof=0x2)
hiByte:		db ?
loByte:		db ?
msgOffset	ends

; ---------------------------------------------------------------------------

orbitStruMaybe	struc ;	(sizeof=0x3)
canLandFlag:	db ?			; If 1,	the ship can land. If 0, the msg at msgHi,msgLo	is printed
msgHi:		db ?
msgLo:		db ?
orbitStruMaybe	ends

; ---------------------------------------------------------------------------

gcsBasedItems	struc ;	(sizeof=0x6)
itemCode:	db ?			; enum itemCodes
roomNum:	db ?			; enum gcs_rooms
field_2:	db ?
field_3:	db ?
field_4:	db ?
field_5:	db ?
gcsBasedItems	ends

; ---------------------------------------------------------------------------

isthurBasedItems struc ; (sizeof=0x6)
itemCode:	db ?			; enum itemCodes
roomNum:	db ?			; enum isthur_rooms
field_2:	db ?
field_3:	db ?
field_4:	db ?
field_5:	db ?
isthurBasedItems ends

; ---------------------------------------------------------------------------

earthBasedItems	struc ;	(sizeof=0x6)
itemCode:	db ?			; enum itemCodes
roomNum:	db ?			; enum earth_rooms
field_2:	db ?
field_3:	db ?
field_4:	db ?
field_5:	db ?
earthBasedItems	ends

; ---------------------------------------------------------------------------

object_t	struc ;	(sizeof=0x6)
scoreBonus:	db ?
field_1:	db ?
field_2:	db ?
field_3:	db ?
location:	db ?			; enum location
roomNumber:	db ?
object_t	ends

; ---------------------------------------------------------------------------

; enum charMap
__:		 equ 26h
_comma:		 equ 32h
_dash:		 equ 33h
_0:		 equ 36h
_1:		 equ 37h
_2:		 equ 38h
_3:		 equ 39h
_4:		 equ 3Ah
_5:		 equ 3Bh
_6:		 equ 3Ch
_7:		 equ 3Dh
_8:		 equ 3Eh
_9:		 equ 3Fh
_A:		 equ 47h
_B:		 equ 48h
_C:		 equ 49h
_D:		 equ 4Ah
_E:		 equ 4Bh
_F:		 equ 4Ch
_G:		 equ 4Dh
_H:		 equ 4Eh
_I:		 equ 4Fh
_J:		 equ 50h
_K:		 equ 51h
_L:		 equ 52h
_M:		 equ 53h
_N:		 equ 54h
_O:		 equ 55h
_P:		 equ 56h
_Q:		 equ 57h
_R:		 equ 58h
_S:		 equ 59h
_T:		 equ 5Ah
_U:		 equ 5Bh
_V:		 equ 5Ch
_W:		 equ 5Dh
_X:		 equ 5Eh
_Y:		 equ 5Fh
_Z:		 equ 60h

; ---------------------------------------------------------------------------

; enum parseRval
p_walk:		 equ 0
p_n:		 equ 1
p_s:		 equ 2
p_e:		 equ 3
p_west:		 equ 4
p_ne:		 equ 5
p_nw:		 equ 6
p_se:		 equ 7
p_sw:		 equ 8
p_up:		 equ 9
p_down:		 equ 0Ah
p_cw:		 equ 0Bh
p_ccw:		 equ 0Ch
p_enter:	 equ 0Dh
p_exit:		 equ 0Eh
p_inward:	 equ 0Fh
p_outward:	 equ 10h
p_custo:	 equ 11h
p_commu:	 equ 16h
p_airlock:	 equ 19h
p_bar:		 equ 1Bh
p_corridor:	 equ 1Fh
p_zerozerozero:	 equ 28h
p_negative12:	 equ 29h
p_5comma10:	 equ 2Ah
p_13:		 equ 2Bh
p_56comma11:	 equ 2Ch
p_launch:	 equ 2Dh
p_blast:	 equ 2Eh
p_off:		 equ 2Fh
p_orbit:	 equ 30h
p_planet:	 equ 31h
p_set:		 equ 32h
p_course:	 equ 33h
p_on:		 equ 34h
p_coordinate:	 equ 35h
p_input:	 equ 36h
p_ready:	 equ 37h
p_lay:		 equ 38h
p_ignite:	 equ 39h
p_warp:		 equ 3Ah
p_speed:	 equ 3Bh
p_deep:		 equ 3Ch
p_space:	 equ 3Dh
p_full:		 equ 3Eh
p_accel:	 equ 3Fh
p_land:		 equ 40h
p_knock:	 equ 47h
p_door:		 equ 48h
p_login:	 equ 49h
p_find:		 equ 4Eh
p_central:	 equ 58h
p_shove:	 equ 65h
p_low_item:	 equ 65h
p_bag:		 equ 66h
p_count:	 equ 68h
p_computer:	 equ 69h
p_analyze:	 equ 6Ah
p_neutralizer:	 equ 6Bh
p_psuit:	 equ 6Ch
p_piece:	 equ 6Dh
p_purse:	 equ 6Fh
p_coil:		 equ 70h
p_card:		 equ 72h
p_diamond:	 equ 73h
p_irridium:	 equ 74h
p_boat:		 equ 76h
p_a:		 equ 79h
p_oar:		 equ 7Bh
p_rope:		 equ 7Ch
p_b:		 equ 7Dh
p_claw:		 equ 7Fh
p_statue:	 equ 81h
p_radsuit:	 equ 82h
p_locker:	 equ 83h
p_case:		 equ 84h
p_bottle:	 equ 85h
p_envelope:	 equ 86h
p_paper:	 equ 88h
p_crystal:	 equ 89h
p_suit:		 equ 8Ah
p_key:		 equ 8Bh
p_disk:		 equ 8Ch
p_connect:	 equ 8Dh
p_1:		 equ 8Eh
p_2:		 equ 8Fh
p_3:		 equ 90h
p_log:		 equ 91h
p_lucinda:	 equ 95h
p_welma:	 equ 96h
p_low_hiree:	 equ 96h
p_acon:		 equ 99h
p_bob:		 equ 9Bh
p_troch:	 equ 9Ch
p_lastCarryableItem: equ 9Dh
p_wear:		 equ 0A1h
p_bartender:	 equ 0A5h
p_alex:		 equ 0A6h
p_lastHiree:	 equ 0A7h
p_hire:		 equ 0B1h
p_160:		 equ 0C8h
p_462:		 equ 0C9h
p_deliver:	 equ 0CAh
p_dig:		 equ 0CBh
p_unfold:	 equ 0CDh
p_analog:	 equ 0CEh
p_cast:		 equ 0D2h
p_10652:	 equ 0D3h
p_1085:		 equ 0D4h
p_9567:		 equ 0D5h
p_untie:	 equ 0D6h
p_tie:		 equ 0D7h
p_book:		 equ 0D8h
p_198:		 equ 0D9h
p_ray_goode:	 equ 0DAh
p_jack_davies:	 equ 0DBh
p_zebra:	 equ 0DEh
p_deposit:	 equ 0E0h
p_close:	 equ 0E1h
p_open:		 equ 0E2h
p_dolat:	 equ 0E3h
p_save:		 equ 0E4h
p_game:		 equ 0E5h
p_remove:	 equ 0E6h
p_sleep:	 equ 0E7h
p_drink:	 equ 0E8h
p_eat:		 equ 0E9h
p_machine:	 equ 0EAh
p_hit:		 equ 0EBh
p_bulletin:	 equ 0ECh
p_sign:		 equ 0EDh
p_examine:	 equ 0EFh
p_read:		 equ 0F0h
p_inventory:	 equ 0F2h
p_drop:		 equ 0F3h
p_quit:		 equ 0F4h
p_score:	 equ 0F5h
p_buy:		 equ 0F6h
p_lift:		 equ 0F7h
p_look:		 equ 0FBh
p_help:		 equ 0FCh
p_yes:		 equ 0FDh

; ---------------------------------------------------------------------------

; enum earth_rooms
re_circular_hallway_low: equ 3
re_circular_hallway_high: equ 0Ah
re_your_room:	 equ 0Bh
r_parson:	 equ 0Ch
r_pirates_room:	 equ 0Eh
r_comm_center:	 equ 11h
r_port_commander_foyer:	equ 12h
r_port_commander_office: equ 13h
r_foyer:	 equ 14h
r_infirmary:	 equ 15h
r_library:	 equ 16h
r_customs:	 equ 17h
r_supply:	 equ 18h
re_starlightLounge: equ	19h
re_front_sheriff: equ 20h
re_deserted_house: equ 24h
re_sheriffs_office: equ	26h
re_pirates_campsite: equ 28h
re_bomb_shelter: equ 2Ah
re_vast_wasteland: equ 2Eh
r_none1:	 equ 65h
r_none:		 equ 66h
r_none2:	 equ 67h

; ---------------------------------------------------------------------------

; enum isthur_rooms
r_landing_site:	 equ 2
r_entr_gamma:	 equ 3
r_NS_tunnel_0:	 equ 4
r_commandant_foyer: equ	0Ah
r_commandant_office: equ 0Bh
r_intelligence_HQ: equ 18h
r_cafeteria:	 equ 1Ah
r_control_tower: equ 22h
ri_bubble_39:	 equ 28h
r_gamma_control: equ 2Dh
r_computer_center: equ 2Eh
r_ist_none1:	 equ 65h
r_ist_none:	 equ 66h
r_ist_none2:	 equ 67h

; ---------------------------------------------------------------------------

; enum gcs_rooms
r_landing_bay:	 equ 2
r_airless_passage: equ 3
rg_storage_space: equ 6
r_bar:		 equ 0Ah
rg_restaurant_0: equ 0Bh
r_gymnasium:	 equ 0Dh
r_gcs_library:	 equ 0Eh
r_maintenance:	 equ 0Fh
r_supply_room:	 equ 10h
r_doctors_office: equ 12h
r_gcs_computer_center: equ 13h
r_hospital:	 equ 14h
r_engineering:	 equ 15h
r_restaurant:	 equ 27h
r_gcs_none:	 equ 65h
r_gcs_none1:	 equ 66h
r_gcs_none2:	 equ 67h

; ---------------------------------------------------------------------------

; enum planets
planet_earth:	 equ 1
planet_isthur:	 equ 2
planet_gcs:	 equ 3
planet_navier:	 equ 4

; ---------------------------------------------------------------------------

; enum navier_rooms
rn_overlords_chamber: equ 11h
rn_underground_entrance: equ 13h
rn_none:	 equ 65h
rn_none1:	 equ 66h
rn_none2:	 equ 67h

; ---------------------------------------------------------------------------

; enum itemCodes
ic_carrying:	 equ 7
ic_cantGet:	 equ 8

; ---------------------------------------------------------------------------

; enum location
location_earth:	 equ 1
location_isthur: equ 2
location_gcs:	 equ 3
location_navier: equ 4
location_solomaw: equ 5
location_inventory: equ	7
location_none:	 equ 8

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
bdos_func:	ds 1			; CODE XREF: outputString+17p
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
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld	a, 1
		ld	(byte_4963), a
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
		ld	hl, unk_4793
		call	outputString
		jp	loc_1C13
; ---------------------------------------------------------------------------

loc_14A:				; CODE XREF: ROM:0117j	ROM:0124j ...
		ld	hl, byte_4790
		call	outputString
		ld	d, 0F4h	; 'Ù'
		ld	e, 0BDh	; 'Ω'
		call	printFromMSGFile

loc_157:				; CODE XREF: ROM:019Bj
		ld	hl, unk_4704
		ld	c, 0
		ld	b, 0

loc_15E:				; CODE XREF: ROM:017Dj	ROM:01AEj ...
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

loc_177:				; CODE XREF: ROM:016Dj	ROM:0172j
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
		ld	hl, unk_4704
		ld	a, 2
		call	openFile
		jp	nz, loc_227
		ld	d, 0F5h	; 'ı'
		ld	e, 6Ch ; 'l'
		call	printFromMSGFile
		jp	loc_157
; ---------------------------------------------------------------------------

loc_19E:				; CODE XREF: ROM:0163j
		ld	a, b
		cp	0
		jp	nz, loc_1B1
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1B1:				; CODE XREF: ROM:01A1j
		dec	b
		dec	hl
		dec	c
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1C1:				; CODE XREF: ROM:0168j
		ld	a, b
		cp	0
		jp	nz, loc_1D4
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1D4:				; CODE XREF: ROM:01C4j
		dec	b
		dec	hl
		dec	c
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_15E
; ---------------------------------------------------------------------------

loc_1E4:				; CODE XREF: ROM:0186j
		ld	a, 0
		ld	(byte_4963), a
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
		ld	d, 0F5h	; 'ı'
		ld	e, 0C0h	; '¿'
		call	printFromMSGFile
		jp	loc_1C13
; ---------------------------------------------------------------------------

loc_227:				; CODE XREF: ROM:0191j	ROM:01F3j ...
		ld	a, 2
		ld	bc, 1C00h
		ld	de, baseBGNAddress
		call	setDMAAddress
		cp	1
		jp	nz, loc_241
		ld	d, 0F5h	; 'ı'
		ld	e, 0F1h	; 'Ò'
		call	printFromMSGFile
		jp	loc_1C0E
; ---------------------------------------------------------------------------

loc_241:				; CODE XREF: ROM:0234j
		ld	a, 2
		call	closeFile
		ld	de, baseTimeMaybe ; "1620"
		ld	hl, currentTimeMaybe
		ld	bc, 4
		call	abbreWordTo5
		jp	loc_266
; ---------------------------------------------------------------------------
		db  1Bh
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
; ---------------------------------------------------------------------------

loc_266:				; CODE XREF: ROM:0252j
		ld	a, (byte_4963)
		cp	1
		jp	z, loc_28A
		ld	de, 0
		ld	e, 11h
		call	printFromMSGFile
		call	askIfInstructions
		cp	0
		jp	z, loc_28A
		ld	d, 0
		ld	e, 50h ; 'P'
		call	printFromMSGFile
		ld	b, 20
		call	subtractFromScore

loc_28A:				; CODE XREF: ROM:026Bj	ROM:027Bj ...
		call	getBGNRoomAddress
		call	lookFunction

loc_290:				; CODE XREF: ROM:0DD8j	ROM:0DF7j ...
		ld	hl, item_lucindaObject.location
		ld	a, 6
		cp	(hl)
		jp	z, loc_306
		ld	a, (bgnBaseOffsetFlag)
		cp	(hl)
		jp	nz, loc_2A8
		inc	hl
		ld	a, (currentRoomNumMaybe)
		cp	(hl)
		jp	z, loc_306

loc_2A8:				; CODE XREF: ROM:029Dj
		ld	hl, item_lucindaObject.location
		ld	a, (item_trochObject.location)
		cp	(hl)
		jp	nz, loc_2CB
		inc	hl
		ld	a, (item_trochObject.roomNumber)
		cp	(hl)
		jp	nz, loc_2CB
		ld	d, 0C0h	; '¿'
		ld	e, 4Bh ; 'K'
		call	printFromMSGFile

loc_2C1:				; CODE XREF: ROM:02E7j	ROM:0303j ...
		ld	d, 4Ah ; 'J'
		ld	e, 7Fh ; ''
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_2CB:				; CODE XREF: ROM:02AFj	ROM:02B7j
		ld	a, (item_lucindaObject.roomNumber)
		cp	2Ch ; ','
		jp	z, loc_2D8
		cp	2Dh ; '-'
		jp	nz, loc_2EA

loc_2D8:				; CODE XREF: ROM:02D0j
		ld	a, (item_lockingDoors.field_2)
		cp	1Ah
		jp	z, loc_2EA
		ld	d, 0F4h	; 'Ù'
		ld	e, 0A8h	; '®'
		call	printFromMSGFile
		jp	loc_2C1
; ---------------------------------------------------------------------------

loc_2EA:				; CODE XREF: ROM:02D5j	ROM:02DDj
		ld	hl, item_lucindaObject.location
		ld	a, (item_cpmDisk1.location)
		cp	(hl)
		jp	nz, loc_306
		ld	a, (item_cpmDisk1.roomNumber)
		inc	hl
		cp	(hl)
		jp	nz, loc_306
		ld	d, 0C0h	; '¿'
		ld	e, 7Ch ; '|'
		call	printFromMSGFile
		jp	loc_2C1
; ---------------------------------------------------------------------------

loc_306:				; CODE XREF: ROM:0296j	ROM:02A5j ...
		ld	hl, (word_4961)
		inc	hl
		ld	(word_4961), hl
		ld	a, h
		cp	0
		jp	nz, loc_393
		ld	a, l
		cp	4Ch ; 'L'
		jp	nz, loc_344
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 12h
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_393
; ---------------------------------------------------------------------------

loc_344:				; CODE XREF: ROM:0316j
		cp	52h ; 'R'
		jp	nz, loc_374
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 12h
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_393
; ---------------------------------------------------------------------------

loc_374:				; CODE XREF: ROM:0346j
		cp	65h ; 'e'
		jp	nz, loc_393
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	nz, loc_393
		ld	a, (currentRoomNumMaybe)
		cp	0
		jp	z, loc_393
		ld	d, 0F3h	; 'Û'
		ld	e, 9Eh ; 'û'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_393:				; CODE XREF: ROM:0310j	ROM:0341j ...
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_earth
		jp	z, loc_453
		cp	planet_isthur
		jp	z, loc_41B
		cp	planet_gcs
		jp	z, loc_3DE
		cp	planet_navier
		jp	z, loc_3BA
		ld	a, (currentRoomNumMaybe)
		cp	9
		jp	z, loc_D43
		cp	33h ; '3'
		jp	z, loc_D8F
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_3BA:				; CODE XREF: ROM:03A7j
		ld	a, (currentRoomNumMaybe)
		cp	rn_overlords_chamber
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
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_3DE:				; CODE XREF: ROM:03A2j
		ld	a, (currentRoomNumMaybe)
		cp	r_landing_bay
		jp	z, loc_8E7
		cp	r_airless_passage
		jp	z, loc_8E7
		cp	r_bar
		jp	z, loc_92A
		cp	r_restaurant
		jp	z, sitWithHolson
		cp	r_gymnasium
		jp	z, loc_A74
		cp	r_maintenance
		jp	z, findDyingGirl
		cp	r_supply_room
		jp	z, doGCSKO
		cp	r_engineering
		jp	z, talk2GCSEngineer
		cp	r_doctors_office
		jp	z, loc_C12
		cp	r_hospital
		jp	z, loc_BDF
		cp	r_gcs_library
		jp	z, loc_BCF
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_41B:				; CODE XREF: ROM:039Dj
		ld	a, (currentRoomNumMaybe)
		cp	r_landing_site
		jp	z, onIstLandingSite
		cp	r_entr_gamma
		jp	z, loc_67A
		cp	r_NS_tunnel_0
		jp	z, doIstAirlockCycle
		cp	r_commandant_foyer
		jp	z, changeIstCmdtFoyMsg
		cp	r_commandant_office
		jp	z, loc_6CF
		cp	r_intelligence_HQ
		jp	z, changeIntHQMsg
		cp	r_cafeteria
		jp	z, loc_7B8
		cp	r_control_tower
		jp	z, loc_805
		cp	r_gamma_control
		jp	z, loc_83D
		cp	r_computer_center
		jp	z, loc_88A
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_453:				; CODE XREF: ROM:0398j
		ld	a, (currentRoomNumMaybe)
		cp	r_port_commander_office
		jp	z, inPortCmdrOffice
		cp	r_customs
		jp	z, inCustoms_1
		cp	r_supply
		jp	z, inSupply_1
		cp	r_pirates_room
		jp	z, inPiratesRoom
		cp	27h ; '''
		jp	c, loc_DB1
		cp	3Ah ; ':'
		jp	nc, loc_DB1
		jp	loc_616
; ---------------------------------------------------------------------------

inPortCmdrOffice:			; CODE XREF: ROM:0458j
		ld	a, (gameWonFlagMaybe)
		cp	1
		jp	z, loc_4C0
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, r_supply
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 0CFh ; 'œ'
		ld	a, r_parson
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_4C0:				; CODE XREF: ROM:047Cj
		ld	a, 24
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	d, 50h ; 'P'
		ld	e, 6Eh ; 'n'
		call	printFromMSGFile
		ld	a, (item_computerPage.location)
		cp	7
		jp	nz, loc_F1B
		ld	a, 30
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	loc_F1B
; ---------------------------------------------------------------------------

inCustoms_1:				; CODE XREF: ROM:045Dj
		ld	a, (stru_496A.occupied+27h)
		cp	1
		jp	z, loc_DB1
		ld	a, (item_analyzer.location)
		cp	0
		jp	nz, loc_502
		ld	d, 27h ; '''
		ld	e, 0Fh
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_502:				; CODE XREF: ROM:04F5j
		ld	a, (item_neutralizer.location)
		cp	7
		jp	nz, loc_DB1
		ld	d, 26h ; '&'
		ld	e, 8Ah ; 'ä'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

inSupply_1:				; CODE XREF: ROM:0462j
		ld	a, (item_navComputer.location)
		cp	8
		jp	z, loc_DB1
		ld	a, (byte_49A4)
		cp	1
		jp	z, loc_DB1
		ld	a, (byte_49BF)
		cp	0
		jp	z, earthSupplyDepot
		cp	1
		jp	z, gcsSupplyDepot
		cp	2
		jp	z, isthurSupplyDepot
		jp	loc_DB1
; ---------------------------------------------------------------------------

earthSupplyDepot:			; CODE XREF: ROM:0529j
		ld	d, 28h ; '('
		ld	e, 5Fh ; '_'
		call	printFromMSGFile
		ld	d, 0F7h	; '˜'
		ld	e, 2
		call	printFromMSGFile
		ld	d, 28h ; '('
		ld	e, 0EBh	; 'Î'
		call	printFromMSGFile
		ld	a, 9
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 1
		ld	(byte_49A4), a
		ld	a, 0Ah
		ld	(byte_49BF), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

gcsSupplyDepot:				; CODE XREF: ROM:052Ej
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
		ld	(item_cpmDisk1.scoreBonus),	a
		ld	a, 32h ; '2'
		ld	(item_cpmDisk1.roomNumber),	a
		ld	a, 0Dh
		ld	(item_cpmDisk2.scoreBonus),	a
		ld	a, 3Ah ; ':'
		ld	(item_cpmDisk2.roomNumber),	a
		jp	loc_DB1
; ---------------------------------------------------------------------------

isthurSupplyDepot:			; CODE XREF: ROM:0533j
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
		jp	loc_DB1
; ---------------------------------------------------------------------------

inPiratesRoom:				; CODE XREF: ROM:0467j
		ld	hl, g_itemList.location
		ld	de, 6
		ld	c, 34

loc_5D8:				; CODE XREF: ROM:05E0j
		ld	a, (hl)
		cp	7
		call	z, sub_5E6
		add	hl, de
		dec	c
		jp	nz, loc_5D8
		jp	loc_5ED

; =============== S U B	R O U T	I N E =======================================


sub_5E6:				; CODE XREF: ROM:05DBp
		ld	(hl), 1
		inc	hl
		ld	(hl), 28h ; '('
		dec	hl
		ret
; End of function sub_5E6

; ---------------------------------------------------------------------------

loc_5ED:				; CODE XREF: ROM:05E3j
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 7
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, roomData_t.enter_room
		add	hl, de
		ld	(hl), r_pirates_room
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_616:				; CODE XREF: ROM:0474j
		ld	a, (item_geigerCounter.location)
		cp	7
		jp	nz, loc_625
		ld	d, 0F1h	; 'Ò'
		ld	e, 9Fh ; 'ü'
		call	printFromMSGFile

loc_625:				; CODE XREF: ROM:061Bj
		ld	a, (item_radSuit.field_3)
		cp	22h ; '"'
		jp	z, loc_DB1
		ld	a, (byte_4960)
		add	a, 5
		ld	(byte_4960), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

onIstLandingSite:			; CODE XREF: ROM:0420j
		ld	a, (wearingSuitFlag)
		cp	1
		jp	z, loc_64A

loc_640:				; CODE XREF: ROM:068Cj	ROM:0CF0j
		ld	d, 0F7h	; '˜'
		ld	e, 25h ; '%'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_64A:				; CODE XREF: ROM:063Dj
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 3
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_67A:				; CODE XREF: ROM:0425j
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	a, (hl)
		cp	2
		jp	nz, loc_DB1
		ld	a, (wearingSuitFlag)
		cp	1
		jp	nz, loc_640
		jp	loc_DB1
; ---------------------------------------------------------------------------

doIstAirlockCycle:			; CODE XREF: ROM:042Aj
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 3
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

changeIstCmdtFoyMsg:			; CODE XREF: ROM:042Fj
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	(hl), 39h ; '9'
		inc	hl
		ld	(hl), 68h ; 'h'
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_6CF:				; CODE XREF: ROM:0434j
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
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_6F7:				; CODE XREF: ROM:06D9j
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
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 1
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_73B:				; CODE XREF: ROM:06F9j
		cp	48h ; 'H'
		jp	nz, loc_DB1
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
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 1
		ld	(currentRoomNumMaybe), a
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
		ld	a, (bgnBaseOffsetFlag)
		push	af
		ld	a, 1
		ld	(bgnBaseOffsetFlag), a
		ld	a, 18
		ld	(currentRoomNumMaybe), a
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
		ld	(bgnBaseOffsetFlag), a
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

changeIntHQMsg:				; CODE XREF: ROM:0439j
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 0C0h ; '¿'
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_7B8:				; CODE XREF: ROM:043Ej
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 9
		ld	(currentRoomNumMaybe), a
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

loc_7DE:				; CODE XREF: ROM:07CEj
		inc	hl
		ld	a, (hl)
		cp	0Bh
		jp	nz, loc_7EF
		ld	(hl), 35h ; '5'
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 2
		jp	loc_7FB
; ---------------------------------------------------------------------------

loc_7EF:				; CODE XREF: ROM:07E2j
		cp	35h ; '5'
		jp	nz, loc_7FB
		ld	(hl), 58h ; 'X'
		ld	hl, (bgnRoomAddressMaybe)
		ld	(hl), 1

loc_7FB:				; CODE XREF: ROM:07DBj	ROM:07ECj ...
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_805:				; CODE XREF: ROM:0443j
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	a, (hl)
		cp	0F3h ; 'Û'
		jp	nz, loc_DB1
		ld	(hl), 0D7h ; '◊'
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, re_your_room
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_83D:				; CODE XREF: ROM:0448j
		ld	a, (byte_49C4)
		cp	1
		jp	nz, loc_DB1
		ld	a, 0
		ld	(byte_49C4), a
		ld	a, (item_cpmDisk1.location)
		cp	7
		jp	nz, loc_DB1
		ld	a, (item_cpmDisk2.location)
		cp	7
		jp	nz, loc_DB1
		ld	d, 0F7h	; '˜'
		ld	e, 79h ; 'y'
		call	printFromMSGFile
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 0Bh
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_88A:				; CODE XREF: ROM:044Dj
		ld	a, (byte_49C5)
		cp	1
		jp	nz, loc_DB1
		ld	a, 0
		ld	(byte_49C5), a
		ld	a, (item_cpmDisk1.location)
		cp	7
		jp	nz, loc_DB1
		ld	a, (item_cpmDisk2.location)
		cp	7
		jp	nz, loc_DB1
		ld	d, 0F8h	; '¯'
		ld	e, 2Fh ; '/'
		call	printFromMSGFile
		ld	a, 8
		ld	(item_cpmDisk1.location), a
		ld	(item_cpmDisk2.location), a
		ld	a, (carriedItemCount)
		sub	2
		ld	(carriedItemCount), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 0Bh
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_8E7:				; CODE XREF: ROM:03E3j	ROM:03E8j
		ld	a, (wearingSuitFlag)
		cp	1
		jp	z, loc_DB1
		ld	a, (byte_49B4)
		cp	0
		jp	nz, loc_920
		ld	a, 1
		ld	(byte_49B4), a
		ld	a, 14h
		ld	(currentRoomNumMaybe), a
		ld	d, 5Ch ; '\'
		ld	e, 0B5h	; 'µ'
		call	printFromMSGFile
		ld	d, 5Dh ; ']'
		ld	e, 0D4h	; '‘'
		call	printFromMSGFile
		ld	b, 1Eh
		call	subtractFromScore
		ld	b, 0Ah

loc_916:				; CODE XREF: ROM:091Aj
		call	incrementClock
		dec	b
		jp	nz, loc_916
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_920:				; CODE XREF: ROM:08F4j
		ld	d, 5Eh ; '^'
		ld	e, 3Dh ; '='
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_92A:				; CODE XREF: ROM:03EDj
		ld	a, (enteredBarFlag)
		cp	0
		jp	nz, loc_9F2
		ld	d, 89h ; 'â'
		ld	e, 4Eh ; 'N'
		call	printFromMSGFile

loc_939:				; CODE XREF: ROM:0950j
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, singleWordCommand
		cp	2
		jp	z, twoWordCommand

loc_949:				; CODE XREF: ROM:0960j	ROM:097Dj
		ld	d, 4Ch ; 'L'
		ld	e, 0A1h	; '°'
		call	printFromMSGFile
		jp	loc_939
; ---------------------------------------------------------------------------

singleWordCommand:			; CODE XREF: ROM:0941j
		ld	a, (playerCommand)
		cp	p_ray_goode
		jp	z, sitWithRayGoode
		cp	p_jack_davies
		jp	z, sitWithJackDavies
		jp	loc_949
; ---------------------------------------------------------------------------

twoWordCommand:				; CODE XREF: ROM:0946j
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

sitWithRayGoode:			; CODE XREF: ROM:0958j	ROM:0968j ...
		ld	a, (enteredBarFlag)
		add	a, 1
		ld	(enteredBarFlag), a
		ld	d, 8Dh ; 'ç'
		ld	e, 30h ; '0'
		call	printFromMSGFile
		ld	d, 92h ; 'í'
		ld	e, 0EEh	; 'Ó'
		call	printFromMSGFile
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	loc_DB1
; ---------------------------------------------------------------------------

sitWithJackDavies:			; CODE XREF: ROM:095Dj	ROM:096Dj ...
		ld	a, (enteredBarFlag)
		add	a, 2
		ld	(enteredBarFlag), a
		ld	a, 3
		ld	(item_attacheCase.location), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 21h ; '!'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	(hl), 0Fh
		inc	hl
		inc	hl
		ld	(hl), 0Fh
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	d, 90h ; 'ê'
		ld	e, 2Bh ; '+'
		call	printFromMSGFile
		ld	d, 94h ; 'î'
		ld	e, 0A7h	; 'ß'
		call	printFromMSGFile
		ld	a, 25h ; '%'
		ld	(currentRoomNumMaybe), a
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_9F2:				; CODE XREF: ROM:092Fj
		cp	3
		jp	nz, loc_A01
		ld	d, 8Bh ; 'ã'
		ld	e, 54h ; 'T'
		call	printFromMSGFile
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_A01:				; CODE XREF: ROM:09F4j
		ld	d, 8Ch ; 'å'
		ld	e, 11h
		call	printFromMSGFile
		ld	a, (enteredBarFlag)
		cp	1
		jp	z, sitWithJackDavies
		jp	sitWithRayGoode
; ---------------------------------------------------------------------------

sitWithHolson:				; CODE XREF: ROM:03F2j
		ld	a, (byte_49B8)
		cp	0
		jp	nz, loc_A6A
		ld	d, 85h ; 'Ö'
		ld	e, 81h ; 'Å'
		call	printFromMSGFile
		ld	d, 87h ; 'á'
		ld	e, 2
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49B8), a
		ld	(byte_49BE), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 0Eh
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 3
		ld	(item_largeEnvelope.location), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_A6A:				; CODE XREF: ROM:0A18j
		ld	d, 85h ; 'Ö'
		ld	e, 0E3h	; '„'
		call	printFromMSGFile
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_A74:				; CODE XREF: ROM:03F7j
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 32
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	(hl), 72h ; 'r'
		inc	hl
		inc	hl
		ld	(hl), 72h ; 'r'
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

findDyingGirl:				; CODE XREF: ROM:03FCj
		ld	a, (foundDyingGirlFlag)
		cp	1
		jp	z, loc_DB1
		ld	d, 0A4h	; '§'
		ld	e, 0FAh	; '˙'
		call	printFromMSGFile
		ld	d, 0A5h	; '•'
		ld	e, 63h ; 'c'
		call	printFromMSGFile
		ld	a, 1
		ld	(foundDyingGirlFlag), a
		ld	a, 5
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	a, 3
		ld	(item_dyingGirl.location), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

doGCSKO:				; CODE XREF: ROM:0401j
		ld	a, (gottenGCSKOdFlag)
		cp	0
		jp	nz, gotGCSSupplies
		ld	b, 0Fh
		call	subtractFromScore
		ld	a, 1
		ld	(gottenGCSKOdFlag), a
		ld	a, 0
		ld	(wearingSuitFlag), a
		ld	d, 0A2h	; '¢'
		ld	e, 29h ; ')'
		call	printFromMSGFile
		ld	d, 0A2h	; '¢'
		ld	e, 0F4h	; 'Ù'
		call	printFromMSGFile
		ld	a, 12h
		ld	(currentRoomNumMaybe), a
		ld	hl, g_itemList.location
		ld	de, 6
		ld	c, 23h ; '#'

loc_AF7:				; CODE XREF: ROM:0B04j
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
		ld	(item_cpmDisk1.location), a
		ld	(item_cpmDisk2.location), a
		ld	(item_attacheCase.location), a
		ld	(item_largeEnvelope.location), a
		ld	(item_dyingGirl.location), a
		jp	loc_B23

; =============== S U B	R O U T	I N E =======================================


sub_B20:				; CODE XREF: ROM:0AFAp	ROM:0AFFp
		ld	(hl), 8
		ret
; End of function sub_B20

; ---------------------------------------------------------------------------

loc_B23:				; CODE XREF: ROM:0B1Dj
		ld	d, 97h ; 'ó'
		ld	e, 0E8h	; 'Ë'
		call	printFromMSGFile
		ld	d, 95h ; 'ï'
		ld	e, 0E9h	; 'È'
		call	printFromMSGFile
		ld	a, 0
		ld	(lockerRentedFlag), a
		ld	a, 1
		ld	(byte_49A8), a
		ld	a, 5
		ld	(item_attacheCase.scoreBonus),	a
		jp	loc_28A
; ---------------------------------------------------------------------------

gotGCSSupplies:				; CODE XREF: ROM:0ACAj
		cp	1
		jp	nz, loc_DB1
		ld	a, 2
		ld	(gottenGCSKOdFlag), a
		ld	d, 0A4h	; '§'
		ld	e, 1Ah
		call	printFromMSGFile
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
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, re_starlightLounge
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	a, 1
		ld	(byte_49BC), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

talk2GCSEngineer:			; CODE XREF: ROM:0406j
		ld	a, (byte_49BC)
		cp	0
		jp	z, loc_DB1
		ld	a, 0
		ld	(byte_49BC), a
		ld	d, 7Dh ; '}'
		ld	e, 0FCh	; '¸'
		call	printFromMSGFile
		ld	d, 7Eh ; '~'
		ld	e, 3Bh ; ';'
		call	printFromMSGFile
		ld	a, 2
		ld	(byte_49B6), a
		ld	a, 4
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_BCF:				; CODE XREF: ROM:0415j
		ld	a, (byte_49BE)
		cp	1
		jp	nz, loc_DB1
		ld	a, 2
		ld	(byte_49BE), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_BDF:				; CODE XREF: ROM:0410j
		ld	hl, item_dyingGirl.location
		ld	a, (hl)
		cp	7
		jp	nz, loc_DB1
		dec	hl
		dec	hl
		ld	a, (hl)
		cp	32h ; '2'
		jp	nz, loc_DB1
		inc	hl
		inc	hl
		ld	(hl), 8
		ld	d, 83h ; 'É'
		ld	e, 4
		call	printFromMSGFile
		ld	d, 83h ; 'É'
		ld	e, 0BAh	; '∫'
		call	printFromMSGFile
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		ld	a, 1
		ld	(byte_49BD), a
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_C12:				; CODE XREF: ROM:040Bj
		ld	a, (byte_49BD)
		cp	1
		jp	nz, loc_DB1
		ld	a, 0
		ld	(byte_49BD), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 11h
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	d, 95h ; 'ï'
		ld	e, 0E9h	; 'È'
		call	printFromMSGFile
		ld	d, 96h ; 'ñ'
		ld	e, 75h ; 'u'
		call	printFromMSGFile
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_C6C:				; CODE XREF: ROM:03BFj
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		inc	hl
		ld	(hl), 0AEh ; 'Æ'
		inc	hl
		ld	(hl), 15h
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_C79:				; CODE XREF: ROM:03C4j	ROM:03C9j
		ld	a, (byte_49C1)
		cp	0
		jp	z, loc_DB1
		ld	b, 0
		ld	hl, g_itemList.location
		ld	de, 6
		ld	c, 22h ; '"'

loc_C8B:				; CODE XREF: ROM:0C98j
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


sub_C9E:				; CODE XREF: ROM:0C8Ep	ROM:0C93p
		ld	a, b
		add	a, 1
		ld	b, a
		ret
; End of function sub_C9E

; ---------------------------------------------------------------------------

loc_CA3:				; CODE XREF: ROM:0C9Bj
		ld	a, b
		cp	2
		jp	c, loc_DB1
		ld	d, 0F8h	; '¯'
		ld	e, 0D0h	; '–'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_CB3:				; CODE XREF: ROM:03CEj
		ld	a, (byte_49C6)
		cp	1
		jp	nz, loc_CD8
		ld	a, 31h ; '1'
		ld	(currentRoomNumMaybe), a
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

loc_CD8:				; CODE XREF: ROM:0CB8j
		ld	a, (byte_49C0)
		cp	0
		jp	z, loc_3F94
		ld	a, 30h ; '0'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_CEB:				; CODE XREF: ROM:03D3j
		ld	a, (wearingSuitFlag)
		cp	1
		jp	nz, loc_640
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_CF6:				; CODE XREF: ROM:03D8j
		ld	a, 8
		ld	(item_nDoor.location), a
		ld	a, 1
		ld	(byte_49C6), a
		ld	a, 31h ; '1'
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	(hl), 22h ; '"'

loc_D38:				; CODE XREF: ROM:0D22j
		ld	a, 32h ; '2'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_D43:				; CODE XREF: ROM:03AFj
		ld	a, (byte_49C9)
		cp	1
		jp	z, loc_DB1
		ld	a, 1
		ld	(byte_49C9), a
		call	parseInput
		ld	a, (numInputWords)
		cp	0
		jp	z, loc_DB1
		cp	2
		jp	z, loc_DB1
		ld	a, (playerCommand)
		cp	p_160
		jp	nz, loc_DB1
		ld	a, 20
		ld	hl, (scoreProbably)
		call	add16bitWords
		ld	(scoreProbably), hl
		ld	d, 0DBh	; '€'
		ld	e, 0F0h	; ''
		call	printFromMSGFile
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	(hl), 80h ; 'Ä'
		ld	de, 9
		add	hl, de
		ld	(hl), 0Ah
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 0Ah
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_D8F:				; CODE XREF: ROM:03B4j
		ld	a, 10h
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Dh
		add	hl, de
		ld	(hl), 0Fh
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 0Fh
		ld	a, 33h ; '3'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_DB1

loc_DB1:				; CODE XREF: ROM:03B7j	ROM:03DBj ...
		call	incrementClock
		ld	a, (byte_4960)
		cp	0
		jp	z, loc_DD0
		sub	1
		ld	(byte_4960), a
		cp	32h ; '2'
		jp	c, loc_DD0
		ld	d, 0F4h	; 'Ù'
		ld	e, 7Eh ; '~'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_DD0:				; CODE XREF: ROM:0DB9j	ROM:0DC3j
		call	parseInput
		ld	a, (numInputWords)
		cp	0
		jp	z, loc_290
		cp	2
		jp	z, twoWordCommand_0
		ld	a, (playerCommand)

oneWordCommand:				; CODE XREF: ROM:loc_13C6j
		cp	p_walk
		jp	nz, loc_DFA
		ld	a, (currentRoomNumMaybe)
		cp	0
		jp	z, do_launch
		ld	d, 4Bh ; 'K'
		ld	e, 0E4h	; '‰'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_DFA:				; CODE XREF: ROM:0DE5j
		cp	p_zerozerozero
		jp	nc, do_help
		cp	p_custo
		jp	nc, loc_12A7
		call	getBGNRoomAddress
		push	af
		ld	hl, (bgnRoomAddressMaybe)
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

loc_E26:				; CODE XREF: ROM:0E11j	ROM:0E19j
		pop	af

loc_E27:				; CODE XREF: ROM:0E23j
		nop
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 9
		add	hl, de
		ld	e, a
		add	hl, de
		ld	a, (hl)
		cp	65h ; 'e'
		jp	nc, loc_130F
		ld	(currentRoomNumMaybe), a
		call	lookFunction
		jp	loc_290
; ---------------------------------------------------------------------------

do_help:				; CODE XREF: ROM:0DFCj	ROM:13CBj ...
		cp	p_help
		jp	nz, do_look
		ld	d, 2
		ld	e, 8Eh ; 'é'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_look:				; CODE XREF: ROM:0E42j	ROM:13D8j ...
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_E67:				; CODE XREF: ROM:0E51j
		cp	p_launch
		jp	nz, loc_E6F
		jp	do_launch
; ---------------------------------------------------------------------------

loc_E6F:				; CODE XREF: ROM:0E69j
		cp	p_land
		jp	nz, loc_E77
		jp	do_land
; ---------------------------------------------------------------------------

loc_E77:				; CODE XREF: ROM:0E71j
		cp	p_ignite
		jp	nz, do_knock
		jp	do_ignite
; ---------------------------------------------------------------------------

do_knock:				; CODE XREF: ROM:0E79j	ROM:14CEj
		cp	p_knock
		jp	nz, do_score
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_earth
		jp	z, loc_E96

loc_E8C:				; CODE XREF: ROM:0E9Bj	ROM:0EA0j
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_E96:				; CODE XREF: ROM:0E89j
		ld	a, (currentRoomNumMaybe)
		cp	3
		jp	c, loc_E8C
		cp	0Ah
		jp	nc, loc_E8C
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

knockNoAnswer:				; CODE XREF: ROM:0ECCj
		ld	d, 8
		ld	e, 68h ; 'h'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_EC3:				; CODE XREF: ROM:0EB6j
		ld	b, 1
		ld	c, 3
		call	pseudoRNG
		cp	3
		jp	nz, knockNoAnswer
		ld	a, (currentRoomNumMaybe)
		add	a, 7
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

do_score:				; CODE XREF: ROM:0E81j
		cp	p_score
		jp	nz, do_quit
		ld	d, 0FDh	; '˝'
		ld	e, 84h ; 'Ñ'
		call	printFromMSGFile
		call	convertScoreToString
		ld	d, 0FDh	; '˝'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile
		call	askIfInstructions
		cp	0
		jp	nz, loc_F16

loc_EF8:				; CODE XREF: ROM:0F13j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_quit:				; CODE XREF: ROM:0EDCj
		cp	p_quit
		jp	nz, loc_F6C
		ld	d, 4Dh ; 'M'
		ld	e, 26h ; '&'
		call	printFromMSGFile
		call	askIfInstructions
		cp	0
		jp	z, loc_EF8

loc_F16:				; CODE XREF: ROM:02C8j	ROM:0390j ...
		ld	b, 19h
		call	subtractFromScore

loc_F1B:				; CODE XREF: ROM:04D7j	ROM:04E5j
		ld	d, 0FDh	; '˝'
		ld	e, 0D1h	; '—'
		call	printFromMSGFile
		call	convertScoreToString
		ld	d, 0FDh	; '˝'
		ld	e, 0E6h	; 'Ê'
		call	printFromMSGFile
		ld	hl, (scoreProbably)
		ld	bc, 50
		ld	de, 0

loc_F35:				; CODE XREF: ROM:0F3Cj	ROM:0F47j
		ld	a, l
		sub	c
		ld	l, a
		jp	c, loc_F3F
		inc	e
		jp	loc_F35
; ---------------------------------------------------------------------------

loc_F3F:				; CODE XREF: ROM:0F38j
		ld	a, h
		cp	0
		jp	z, loc_F4A
		dec	h
		inc	e
		jp	loc_F35
; ---------------------------------------------------------------------------

loc_F4A:				; CODE XREF: ROM:0F42j
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
		ld	d, 50h ; 'P'
		ld	e, 6Eh ; 'n'
		call	printFromMSGFile

loc_F69:				; CODE XREF: ROM:0F5Fj
		jp	loc_1C0E
; ---------------------------------------------------------------------------

loc_F6C:				; CODE XREF: ROM:0F04j
		cp	p_login
		jp	z, do_login
		cp	p_hire
		jp	nz, loc_F80
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_F80:				; CODE XREF: ROM:0F73j
		cp	p_connect
		jp	z, do_login
		cp	p_lift
		jp	nz, loc_F94
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_F94:				; CODE XREF: ROM:0F87j
		cp	p_buy
		jp	nz, loc_FA3
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_FA3:				; CODE XREF: ROM:0F96j
		cp	p_inventory
		jp	z, do_inventory
		cp	p_drop
		jp	nz, loc_FB7
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_FB7:				; CODE XREF: ROM:0FAAj
		cp	p_examine
		jp	z, do_examine
		cp	p_read
		jp	z, do_read
		cp	p_hit
		jp	nz, loc_FD0
		ld	d, 0FAh	; '˙'
		ld	e, 74h ; 't'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_FD0:				; CODE XREF: ROM:0FC3j
		cp	p_machine
		jp	nz, loc_FDF

hit_machine:				; CODE XREF: ROM:188Cj	ROM:1899j
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_FDF:				; CODE XREF: ROM:0FD2j
		cp	p_save
		jp	z, do_save

loc_FE4:				; CODE XREF: ROM:190Ej	ROM:1916j
		cp	p_dolat
		jp	nz, do_sleep
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_navier
		jp	z, loc_FFB

loc_FF1:				; CODE XREF: ROM:1000j	ROM:100Bj ...
		ld	d, 4Bh ; 'K'
		ld	e, 0CFh	; 'œ'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_FFB:				; CODE XREF: ROM:0FEEj
		ld	a, (currentRoomNumMaybe)
		cp	rn_underground_entrance
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
		ld	d, 4Eh ; 'N'
		ld	e, 14h
		call	printFromMSGFile
		jp	loc_28A
; ---------------------------------------------------------------------------

do_sleep:				; CODE XREF: ROM:0FE6j	ROM:1A94j ...
		cp	p_sleep
		jp	nz, do_eat
		ld	d, 59h ; 'Y'
		ld	e, 90h ; 'ê'
		call	printFromMSGFile
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		jp	loc_290
; ---------------------------------------------------------------------------

do_eat:					; CODE XREF: ROM:1029j	ROM:1AADj
		cp	p_eat
		jp	nz, do_drink
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_gcs
		jp	z, loc_105C

i_dont_know_how:			; CODE XREF: ROM:1061j	ROM:10AAj ...
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_105C:				; CODE XREF: ROM:104Fj
		ld	a, (currentRoomNumMaybe)
		cp	r_restaurant
		jp	nz, i_dont_know_how
		ld	a, (gcs_beenPoisoned)
		cp	1
		jp	nz, loc_1076
		ld	d, 85h ; 'Ö'
		ld	e, 3Bh ; ';'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1076:				; CODE XREF: ROM:1069j
		ld	d, 86h ; 'Ü'
		ld	e, 0A7h	; 'ß'
		call	printFromMSGFile
		ld	d, 84h ; 'Ñ'
		ld	e, 1Ch
		call	printFromMSGFile
		ld	d, 84h ; 'Ñ'
		ld	e, 0CBh	; 'À'
		call	printFromMSGFile
		ld	a, r_hospital
		ld	(currentRoomNumMaybe), a
		ld	a, 1
		ld	(gcs_beenPoisoned), a
		jp	loc_28A
; ---------------------------------------------------------------------------

do_drink:				; CODE XREF: ROM:1047j	ROM:1AD8j
		cp	p_drink
		jp	nz, loc_112F
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_earth
		jp	z, drink_earth
		cp	planet_gcs
		jp	z, drink_gcs
		jp	i_dont_know_how
; ---------------------------------------------------------------------------

drink_earth:				; CODE XREF: ROM:10A2j
		ld	a, (currentRoomNumMaybe)
		cp	re_starlightLounge
		jp	nz, i_dont_know_how
		ld	d, 0FAh	; '˙'
		ld	e, 90h ; 'ê'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

drink_gcs:				; CODE XREF: ROM:10A7j
		ld	a, (currentRoomNumMaybe)
		cp	r_landing_bay
		jp	c, loc_10DC
		cp	8
		jp	c, loc_10D4
		cp	0Ch
		jp	nc, loc_10D4
		jp	loc_10F3
; ---------------------------------------------------------------------------

loc_10D4:				; CODE XREF: ROM:10C9j	ROM:10CEj
		cp	r_restaurant
		jp	z, loc_10F3
		jp	i_dont_know_how
; ---------------------------------------------------------------------------

loc_10DC:				; CODE XREF: ROM:10C4j
		ld	a, (byte_49B2)
		cp	1
		jp	z, i_dont_know_how
		ld	d, 59h ; 'Y'
		ld	e, 58h ; 'X'
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49B2), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_10F3:				; CODE XREF: ROM:10D1j	ROM:10D6j
		ld	a, (byte_49B3)
		cp	1
		jp	nz, loc_1105
		ld	d, 8Fh ; 'è'
		ld	e, 0F3h	; 'Û'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1105:				; CODE XREF: ROM:10F8j
		ld	a, 1
		ld	(byte_49B3), a
		ld	d, 8Ch ; 'å'
		ld	e, 73h ; 's'
		call	printFromMSGFile
		ld	d, 59h ; 'Y'
		ld	e, 90h ; 'ê'
		call	printFromMSGFile
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		call	incrementClock
		ld	a, 0Ch
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_112F:				; CODE XREF: ROM:109Aj
		cp	p_198
		jp	nz, loc_1162
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_FF1
		ld	a, (currentRoomNumMaybe)
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
		ld	d, 4Eh ; 'N'
		ld	e, 14h
		call	printFromMSGFile
		jp	loc_DB1
; ---------------------------------------------------------------------------

loc_1162:				; CODE XREF: ROM:1131j
		cp	p_10652

loc_1164:
		jp	nz, loc_11AC
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_192D
		ld	a, (currentRoomNumMaybe)
		cp	2Ch ; ','
		jp	nz, loc_192D
		ld	a, (item_lockingDoors.field_2)
		cp	19h
		jp	nz, loc_1189

loc_117F:				; CODE XREF: ROM:118Ej	ROM:11C6j ...
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1189:				; CODE XREF: ROM:117Cj
		ld	a, (item_card.location)
		cp	7
		jp	nz, loc_117F
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 19h
		ld	(item_lockingDoors.field_2), a
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 33h ; '3'
		inc	hl
		ld	(hl), 2Bh ; '+'
		jp	loc_290
; ---------------------------------------------------------------------------

loc_11AC:				; CODE XREF: ROM:loc_1164j
		cp	p_9567
		jp	nz, loc_11EC
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_192D
		ld	a, (currentRoomNumMaybe)
		cp	2Ch ; ','
		jp	nz, loc_192D
		ld	a, (item_lockingDoors.field_2)
		cp	1Ah
		jp	z, loc_117F
		ld	a, (item_card.location)
		cp	7
		jp	nz, loc_117F
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 1Ah
		ld	(item_lockingDoors.field_2), a
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 6Bh ; 'k'
		inc	hl
		ld	(hl), 6Bh ; 'k'
		jp	loc_290
; ---------------------------------------------------------------------------

loc_11EC:				; CODE XREF: ROM:11AEj
		cp	p_1085
		jp	nz, loc_1212
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_192D
		ld	a, (currentRoomNumMaybe)
		cp	31h ; '1'
		jp	nz, loc_192D
		ld	a, 24h ; '$'
		ld	(item_nDoor.field_2), a
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 32h ; '2'
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_1212:				; CODE XREF: ROM:11EEj
		cp	p_462
		jp	nz, do_dig
		ld	a, (bgnBaseOffsetFlag)
		cp	5
		jp	nz, loc_FF1
		ld	a, (currentRoomNumMaybe)
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
		ld	d, 4Eh ; 'N'
		ld	e, 14h
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_dig:					; CODE XREF: ROM:1214j
		cp	p_dig
		jp	nz, do_analog57
		ld	a, (g_itemList.location)
		cp	7
		jp	nz, loc_30EA
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	nz, didnt_find_anything
		ld	a, (currentRoomNumMaybe)
		cp	29h ; ')'
		jp	nz, didnt_find_anything
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 13h
		add	hl, de
		ld	(hl), 2Ah ; '*'
		inc	hl
		ld	(hl), 2Ah ; '*'
		ld	d, 33h ; '3'
		ld	e, 79h ; 'y'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_analog57:				; CODE XREF: ROM:1248j
		cp	p_analog
		jp	nz, loc_129D
		ld	a, (bgnBaseOffsetFlag)
		cp	2
		jp	nz, i_dont_know_how
		ld	a, (currentRoomNumMaybe)
		cp	2Eh ; '.'
		jp	nz, i_dont_know_how
		ld	d, 46h ; 'F'
		ld	e, 0A4h	; '§'
		call	printFromMSGFile
		ld	a, 2
		ld	(item_computerPage.location), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_129D:				; CODE XREF: ROM:127Bj
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_12A7:				; CODE XREF: ROM:0E01j
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
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	z, loc_12D4
		cp	3
		jp	z, loc_12DA
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_12D4:				; CODE XREF: ROM:12C2j
		ld	hl, byte_28AB
		jp	loc_12DD
; ---------------------------------------------------------------------------

loc_12DA:				; CODE XREF: ROM:12C7j
		ld	hl, byte_2991

loc_12DD:				; CODE XREF: ROM:12D7j
		add	hl, de
		ld	b, 1

loc_12E0:				; CODE XREF: ROM:1302j
		ld	a, (currentRoomNumMaybe)
		ld	c, 9

loc_12E5:				; CODE XREF: ROM:12EEj
		cp	(hl)
		inc	hl
		jp	nz, loc_12ED
		ld	(byte_47F1), a

loc_12ED:				; CODE XREF: ROM:12E7j
		dec	c
		jp	nz, loc_12E5
		ld	a, (byte_47F1)
		cp	0
		jp	z, loc_1300
		ld	a, (hl)
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_1300:				; CODE XREF: ROM:12F6j
		inc	hl
		dec	b
		jp	nz, loc_12E0
		ld	d, 4Ah ; 'J'
		ld	e, 0FDh	; '˝'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_130F:				; CODE XREF: ROM:0E34j
		cp	0C9h ; '…'
		jp	nc, loc_1327
		ld	d, 0
		sub	65h ; 'e'
		rlca
		ld	e, a
		ld	hl, byte_21DF
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1327:				; CODE XREF: ROM:1311j
		ld	d, 0
		sub	0C9h ; '…'
		cp	0Ah
		jp	z, loc_134E
		cp	14h
		jp	z, loc_136C
		cp	1Eh
		jp	z, loc_1390
		cp	15h
		jp	z, loc_1376
		rlca
		ld	e, a
		ld	hl, byte_21FD
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_134E:				; CODE XREF: ROM:132Dj
		ld	d, 0E4h	; '‰'
		ld	e, 0EFh	; 'Ô'
		call	printFromMSGFile
		ld	a, (byte_49C7)
		add	a, 1
		ld	(byte_49C7), a
		cp	0Fh
		jp	c, loc_28A
		ld	d, 0E6h	; 'Ê'
		ld	e, 0E7h	; 'Á'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_136C:				; CODE XREF: ROM:1332j
		ld	d, 0E7h	; 'Á'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	loc_4348
; ---------------------------------------------------------------------------

loc_1376:				; CODE XREF: ROM:133Cj
		ld	a, (item_lockerKey.location)
		cp	7
		jp	nz, loc_1388
		ld	d, 6Dh ; 'm'
		ld	e, 2Bh ; '+'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1388:				; CODE XREF: ROM:137Bj
		ld	a, 5
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_1390:				; CODE XREF: ROM:1337j
		ld	a, (byte_49AF)
		cp	0
		jp	nz, loc_13A2
		ld	d, 0CAh	; ' '
		ld	e, 5Bh ; '['
		call	printFromMSGFile
		jp	loc_40EC
; ---------------------------------------------------------------------------

loc_13A2:				; CODE XREF: ROM:1395j
		ld	a, 21h ; '!'
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

twoWordCommand_0:			; CODE XREF: ROM:0DDDj
		ld	a, (firstToken)
		cp	p_walk
		jp	z, loc_13BD
		ld	a, (secondToken)
		cp	p_walk
		jp	z, loc_13C3
		jp	loc_13C9
; ---------------------------------------------------------------------------

loc_13BD:				; CODE XREF: ROM:13AFj
		ld	a, (secondToken)
		jp	loc_13C6
; ---------------------------------------------------------------------------

loc_13C3:				; CODE XREF: ROM:13B7j
		ld	a, (firstToken)

loc_13C6:				; CODE XREF: ROM:13C0j
		jp	oneWordCommand
; ---------------------------------------------------------------------------

loc_13C9:				; CODE XREF: ROM:13BAj
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

loc_13F2:				; CODE XREF: ROM:13ECj
		ld	b, p_blast
		ld	c, p_off
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1401
		jp	do_launch
; ---------------------------------------------------------------------------

loc_1401:				; CODE XREF: ROM:13FBj
		ld	b, p_orbit
		ld	c, p_planet
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1410
		jp	do_launch
; ---------------------------------------------------------------------------

loc_1410:				; CODE XREF: ROM:140Aj
		ld	b, p_orbit
		ld	c, p_exit
		call	compareTwoWordInput
		cp	0
		jp	z, loc_141F
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_141F:				; CODE XREF: ROM:1419j
		ld	b, p_set
		ld	c, p_course
		call	compareTwoWordInput
		cp	0
		jp	z, loc_142E
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_142E:				; CODE XREF: ROM:1428j
		ld	b, p_lay
		ld	c, p_course
		call	compareTwoWordInput
		cp	0
		jp	z, loc_143D
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_143D:				; CODE XREF: ROM:1437j
		ld	b, p_computer
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_144C
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_144C:				; CODE XREF: ROM:1446j
		ld	b, p_computer
		ld	c, p_on
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1466
		ld	a, (currentRoomNumMaybe)
		cp	2
		jp	c, do_setCourse
		jp	do_login
; ---------------------------------------------------------------------------
		db 0C3h	; √
		db 0D0h	; –
		db  30h	; 0
; ---------------------------------------------------------------------------

loc_1466:				; CODE XREF: ROM:1455j
		ld	b, p_input
		ld	c, p_coordinate
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1475
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_1475:				; CODE XREF: ROM:146Fj
		ld	b, p_input
		ld	c, p_ready
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1484
		jp	do_setCourse
; ---------------------------------------------------------------------------

loc_1484:				; CODE XREF: ROM:147Ej
		ld	b, p_warp
		ld	c, p_speed
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1493
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_1493:				; CODE XREF: ROM:148Dj
		ld	b, p_deep
		ld	c, p_space
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14A2
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_14A2:				; CODE XREF: ROM:149Cj
		ld	b, p_full
		ld	c, p_accel
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14B1
		jp	do_ignite
; ---------------------------------------------------------------------------

loc_14B1:				; CODE XREF: ROM:14ABj
		ld	b, p_set
		ld	c, p_down
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14C0
		jp	do_land
; ---------------------------------------------------------------------------

loc_14C0:				; CODE XREF: ROM:14BAj
		ld	b, p_knock
		ld	c, p_door
		call	compareTwoWordInput
		cp	0
		jp	z, loc_14D1
		ld	a, p_knock
		jp	do_knock
; ---------------------------------------------------------------------------

loc_14D1:				; CODE XREF: ROM:14C9j
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

loc_14F4:				; CODE XREF: ROM:14E6j
		ld	a, (secondToken)
		jp	loc_14FD
; ---------------------------------------------------------------------------

loc_14FA:				; CODE XREF: ROM:14EEj
		ld	a, (firstToken)

loc_14FD:				; CODE XREF: ROM:14F7j
		cp	p_welma
		jp	c, loc_150A
		cp	p_lastHiree
		jp	nc, loc_150A
		jp	loc_34D8
; ---------------------------------------------------------------------------

loc_150A:				; CODE XREF: ROM:14F1j	ROM:14FFj ...
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

loc_1529:				; CODE XREF: ROM:1523j
		ld	b, p_log
		ld	c, p_enter
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1538
		jp	do_login
; ---------------------------------------------------------------------------

loc_1538:				; CODE XREF: ROM:1532j
		ld	b, p_connect
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1547
		jp	do_login
; ---------------------------------------------------------------------------

loc_1547:				; CODE XREF: ROM:1541j
		ld	b, p_log
		ld	c, p_computer
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1556
		jp	do_login
; ---------------------------------------------------------------------------

loc_1556:				; CODE XREF: ROM:1550j
		ld	b, p_lift
		ld	c, p_book
		call	compareTwoWordInput
		cp	0
		jp	z, loc_157C
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_15A2
		ld	a, (currentRoomNumMaybe)
		cp	0Eh
		jp	nz, loc_15A2
		ld	d, 9Bh ; 'õ'
		ld	e, 22h ; '"'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_157C:				; CODE XREF: ROM:155Fj
		ld	b, p_lift
		ld	c, p_card
		call	compareTwoWordInput
		cp	0
		jp	z, loc_15A2
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_15A2
		ld	a, (currentRoomNumMaybe)
		cp	0Eh
		jp	nz, loc_15A2
		ld	d, 9Bh ; 'õ'
		ld	e, 5Ah ; 'Z'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_15A2:				; CODE XREF: ROM:1567j	ROM:156Fj ...
		ld	a, (firstToken)
		cp	p_lift
		jp	z, loc_15B5
		ld	a, (secondToken)
		cp	p_lift
		jp	z, loc_15BB
		jp	loc_15D2
; ---------------------------------------------------------------------------

loc_15B5:				; CODE XREF: ROM:15A7j
		ld	a, (secondToken)
		jp	loc_15BE
; ---------------------------------------------------------------------------

loc_15BB:				; CODE XREF: ROM:15AFj
		ld	a, (firstToken)

loc_15BE:				; CODE XREF: ROM:15B8j
		cp	p_shove
		jp	c, loc_15C8
		cp	p_lastHiree
		jp	c, getItemCode

loc_15C8:				; CODE XREF: ROM:15C0j
		ld	d, 0F3h	; 'Û'
		ld	e, 27h ; '''
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_15D2:				; CODE XREF: ROM:15B2j
		ld	a, (firstToken)
		cp	p_buy
		jp	z, loc_15E5
		ld	a, (secondToken)
		cp	p_buy
		jp	z, loc_15EB
		jp	loc_1602
; ---------------------------------------------------------------------------

loc_15E5:				; CODE XREF: ROM:15D7j
		ld	a, (secondToken)
		jp	loc_15EE
; ---------------------------------------------------------------------------

loc_15EB:				; CODE XREF: ROM:15DFj
		ld	a, (firstToken)

loc_15EE:				; CODE XREF: ROM:15E8j
		cp	p_computer
		jp	c, loc_15F8
		cp	p_piece
		jp	c, loc_3883

loc_15F8:				; CODE XREF: ROM:15F0j
		ld	d, 0F3h	; 'Û'
		ld	e, 51h ; 'Q'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1602:				; CODE XREF: ROM:15E2j
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
; ---------------------------------------------------------------------------

loc_1625:				; CODE XREF: ROM:1617j
		ld	a, (secondToken)
		jp	loc_162E
; ---------------------------------------------------------------------------

loc_162B:				; CODE XREF: ROM:161Fj
		ld	a, (firstToken)

loc_162E:				; CODE XREF: ROM:1628j
		cp	p_shove
		jp	c, loc_1638
		cp	p_lastCarryableItem
		jp	c, dropCode

loc_1638:				; CODE XREF: ROM:1630j
		ld	d, 4Dh ; 'M'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1642:				; CODE XREF: ROM:1622j
		ld	b, p_examine
		ld	c, p_bag
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1695
		ld	a, (item_duffleBag.location)
		cp	7
		jp	z, loc_1660
		ld	d, 0F0h	; ''
		ld	e, 9Ch ; 'ú'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1660:				; CODE XREF: ROM:1653j
		ld	a, (currentRoomNumMaybe)
		ld	c, a
		cp	2
		jp	c, loc_1670
		ld	a, (bgnBaseOffsetFlag)
		ld	b, a
		jp	loc_1672
; ---------------------------------------------------------------------------

loc_1670:				; CODE XREF: ROM:1666j
		ld	b, 0

loc_1672:				; CODE XREF: ROM:166Dj
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
		ld	d, 0F1h	; 'Ò'
		ld	e, 6Eh ; 'n'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1695:				; CODE XREF: ROM:164Bj
		ld	b, p_examine
		ld	c, p_purse
		call	compareTwoWordInput
		cp	0
		jp	z, loc_16BD
		ld	a, (item_purse.location)
		cp	7
		jp	z, loc_16B3
		ld	d, 0F0h	; ''
		ld	e, 0BFh	; 'ø'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_16B3:				; CODE XREF: ROM:16A6j
		ld	d, 44h ; 'D'
		ld	e, 97h ; 'ó'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_16BD:				; CODE XREF: ROM:169Ej
		ld	b, p_examine
		ld	c, p_case
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1705
		ld	a, (item_attacheCase.location)
		cp	7
		jp	z, loc_16DB

loc_16D1:				; CODE XREF: ROM:1716j	ROM:182Fj ...
		ld	d, 4Dh ; 'M'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_16DB:				; CODE XREF: ROM:16CEj
		ld	a, (byte_49C3)
		cp	1
		jp	z, loc_16ED

loc_16E3:				; CODE XREF: ROM:1677j	ROM:1731j
		ld	d, 4Bh ; 'K'
		ld	e, 90h ; 'ê'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_16ED:				; CODE XREF: ROM:16E0j
		ld	d, 6Dh ; 'm'
		ld	e, 0D3h	; '”'
		call	printFromMSGFile
		ld	d, 6Eh ; 'n'
		ld	e, 0Bh
		call	printFromMSGFile
		ld	d, 6Eh ; 'n'
		ld	e, 4Ah ; 'J'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1705:				; CODE XREF: ROM:16C6j
		ld	b, p_examine
		ld	c, p_envelope
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1747
		ld	a, (item_largeEnvelope.location)
		cp	7
		jp	nz, loc_16D1
		ld	a, (currentRoomNumMaybe)
		ld	c, a
		cp	2
		jp	nc, loc_1727
		ld	b, 0
		jp	loc_172B
; ---------------------------------------------------------------------------

loc_1727:				; CODE XREF: ROM:171Fj
		ld	a, (bgnBaseOffsetFlag)
		ld	b, a

loc_172B:				; CODE XREF: ROM:1724j
		ld	hl, item_cpmDisk1.location
		ld	a, (hl)
		cp	8
		jp	nz, loc_16E3
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, item_cpmDisk2.location
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	d, 0FAh	; '˙'
		ld	e, 0B3h	; '≥'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1747:				; CODE XREF: ROM:170Ej
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

loc_176F:				; CODE XREF: ROM:1760j
		ld	hl, item_pieceOfPaper.location
		ld	a, (hl)
		cp	7
		jp	z, loc_1782

loc_1778:				; CODE XREF: ROM:1BF2j
		ld	d, 0F4h	; 'Ù'
		ld	e, 5Bh ; '['
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1782:				; CODE XREF: ROM:1775j
		dec	hl
		ld	a, (hl)
		cp	8
		jp	nz, loc_1793
		ld	d, 31h ; '1'
		ld	e, 57h ; 'W'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1793:				; CODE XREF: ROM:1786j
		ld	d, 31h ; '1'
		ld	e, 7Ah ; 'z'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_179D:				; CODE XREF: ROM:176Cj
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_1866
		ld	b, 0F0h	; ''
		ld	c, 0EEh	; 'Ó'
		call	compareTwoWordInput
		cp	0
		jp	z, loc_17CD
		ld	a, (currentRoomNumMaybe)
		cp	4
		jp	z, loc_17C3

loc_17B9:				; CODE XREF: ROM:17DEj	ROM:17FCj ...
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_17C3:				; CODE XREF: ROM:17B6j
		ld	d, 65h ; 'e'
		ld	e, 0Ch
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_17CD:				; CODE XREF: ROM:17AEj
		ld	b, p_read
		ld	c, p_sign
		call	compareTwoWordInput
		cp	0
		jp	z, loc_17EB
		ld	a, (currentRoomNumMaybe)
		cp	4
		jp	nz, loc_17B9
		ld	d, 64h ; 'd'
		ld	e, 0D4h	; '‘'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_17EB:				; CODE XREF: ROM:17D6j
		ld	b, p_read
		ld	c, p_bulletin
		call	compareTwoWordInput
		cp	0
		jp	z, loc_181B
		ld	a, (currentRoomNumMaybe)
		cp	5
		jp	nz, loc_17B9
		ld	a, (byte_49AA)
		cp	1
		jp	z, loc_1811
		ld	d, 65h ; 'e'
		ld	e, 0DEh	; 'ﬁ'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1811:				; CODE XREF: ROM:1804j
		ld	d, 67h ; 'g'
		ld	e, 74h ; 't'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_181B:				; CODE XREF: ROM:17F4j
		ld	b, p_read
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, loc_183C

loc_1827:				; CODE XREF: ROM:1845j
		ld	a, (item_lockerKey.location)
		cp	7
		jp	z, loc_1832
		jp	nz, loc_16D1

loc_1832:				; CODE XREF: ROM:182Cj
		ld	d, 0FAh	; '˙'
		ld	e, 0DDh	; '›'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_183C:				; CODE XREF: ROM:1824j
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
		ld	d, 9Ah ; 'ö'
		ld	e, 0D5h	; '’'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1866:				; CODE XREF: ROM:17A2j	ROM:1851j
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

advise_against_that:			; CODE XREF: ROM:1887j	ROM:1894j
		ld	d, 0FAh	; '˙'
		ld	e, 0F9h	; '˘'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_18A9:				; CODE XREF: ROM:189Cj
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
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	z, loc_1937

loc_192D:				; CODE XREF: ROM:116Cj	ROM:1174j ...
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1937:				; CODE XREF: ROM:192Aj
		ld	a, (currentRoomNumMaybe)
		cp	20h ; ' '
		jp	nz, loc_192D
		ld	a, (item_skeletonKey.location)
		cp	7
		jp	z, loc_1951

loc_1947:				; CODE XREF: ROM:198Bj
		ld	d, 6Ch ; 'l'
		ld	e, 83h ; 'É'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1951:				; CODE XREF: ROM:1944j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 26h ; '&'
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 26h ; '&'
		jp	loc_290
; ---------------------------------------------------------------------------

loc_196A:				; CODE XREF: ROM:1922j
		ld	b, p_open
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1A00
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_192D
		ld	a, (currentRoomNumMaybe)
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
		ld	d, 6Bh ; 'k'
		ld	e, 0FEh	; '˛'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_19A5:				; CODE XREF: ROM:1998j
		ld	a, (byte_49A8)
		cp	1
		jp	nz, loc_192D
		ld	d, 6Dh ; 'm'
		ld	e, 0A9h	; '©'
		call	printFromMSGFile
		ld	d, 6Dh ; 'm'
		ld	e, 0D3h	; '”'
		call	printFromMSGFile
		ld	a, 2Fh ; '/'
		ld	(item_attacheCase.field_2), a
		ld	a, 3
		ld	(item_attacheCase.location), a
		ld	a, 6
		ld	(item_attacheCase.roomNumber),	a
		ld	a, 0
		ld	(byte_49A8), a
		ld	a, 1
		ld	(byte_49C3), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_19D7:				; CODE XREF: ROM:1993j
		ld	a, (byte_49A9)
		cp	1
		jp	z, loc_1AC0
		ld	d, 6Ch ; 'l'
		ld	e, 60h ; '`'
		call	printFromMSGFile
		ld	a, (byte_49A7)
		cp	1
		jp	nz, loc_19F8
		ld	a, 0Eh
		ld	(item_pSuit.field_2), a
		ld	a, 3
		ld	(item_pSuit.location), a

loc_19F8:				; CODE XREF: ROM:19EBj
		ld	a, 1
		ld	(byte_49A9), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1A00:				; CODE XREF: ROM:1973j
		ld	b, p_close
		ld	c, p_locker
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1A48
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_192D
		ld	a, (currentRoomNumMaybe)
		cp	6
		jp	nz, loc_192D
		ld	a, (byte_49A9)
		cp	0
		jp	z, loc_1AC0
		ld	d, 6Dh ; 'm'
		ld	e, 8
		call	printFromMSGFile
		ld	a, (item_pSuit.location)
		cp	3
		jp	nz, loc_1A40
		ld	a, (item_pSuit.roomNumber)
		cp	6
		jp	nz, loc_1A40
		ld	a, 8
		ld	(item_pSuit.location), a

loc_1A40:				; CODE XREF: ROM:1A30j	ROM:1A38j
		ld	a, 0
		ld	(byte_49A9), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1A48:				; CODE XREF: ROM:1A09j
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

loc_1A60:				; CODE XREF: ROM:1A51j
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_192D
		ld	a, (currentRoomNumMaybe)
		cp	6
		jp	nz, loc_192D
		ld	a, (item_lockerKey.location)
		cp	7
		jp	nz, loc_192D
		ld	a, ic_cantGet
		ld	(item_lockerKey.location), a
		ld	d, 6Dh ; 'm'
		ld	e, 7Fh ; ''
		call	printFromMSGFile
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1A8F:				; CODE XREF: ROM:1A5Dj
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

loc_1AB0:				; CODE XREF: ROM:1AA8j
		ld	a, (firstToken)
		cp	p_eat
		jp	z, loc_1AC0
		ld	a, (secondToken)
		cp	p_eat
		jp	nz, loc_1ACA

loc_1AC0:				; CODE XREF: ROM:19DCj	ROM:1A21j ...
		ld	d, 4Bh ; 'K'
		ld	e, 0F9h	; '˘'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1ACA:				; CODE XREF: ROM:1ABDj
		ld	b, p_drink
		ld	c, p_drink
		call	compareTwoWordInput
		cp	0
		jp	z, loc_1ADB
		ld	a, 0E8h	; 'Ë'
		jp	do_drink
; ---------------------------------------------------------------------------

loc_1ADB:				; CODE XREF: ROM:1AD3j
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

loc_1B4E:				; CODE XREF: ROM:1B40j
		ld	a, (secondToken)
		jp	loc_1B57
; ---------------------------------------------------------------------------

loc_1B54:				; CODE XREF: ROM:1B48j
		ld	a, (firstToken)

loc_1B57:				; CODE XREF: ROM:1B51j
		push	af
		ld	a, (currentRoomNumMaybe)
		cp	5
		jp	nz, loc_17B9
		pop	af
		cp	p_crystal
		jp	nz, loc_1B68
		ld	a, 81h ; 'Å'

loc_1B68:				; CODE XREF: ROM:1B63j
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
		ld	(item_skeletonKey.location), a
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_1BE0:				; CODE XREF: ROM:1B4Bj
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
		jp	loc_368A
; ---------------------------------------------------------------------------

loc_1C04:				; CODE XREF: ROM:1BE9j
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR printFromMSGFile

loc_1C0E:				; CODE XREF: ROM:023Ej	ROM:loc_F69j ...
		ld	a, 1
		call	closeFile

loc_1C13:				; CODE XREF: ROM:0147j	ROM:0224j
		ld	a, 1
		call	sub_2C78
; END OF FUNCTION CHUNK	FOR printFromMSGFile

; =============== S U B	R O U T	I N E =======================================


lookFunction:				; CODE XREF: ROM:028Dp	ROM:0E3Ap ...

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
		or	80h ; 'Ä'
		and	0BFh ; 'ø'
		ld	(currentRoomFlags), a
		jp	loc_1C5A
; ---------------------------------------------------------------------------

loc_1C50:				; CODE XREF: lookFunction+1Aj
		ld	a, (currentRoomFlags)
		and	7Fh ; ''
		or	40h ; '@'
		ld	(currentRoomFlags), a

loc_1C5A:				; CODE XREF: lookFunction+35j
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


printMsgAtHL:				; CODE XREF: lookFunction+Dp
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

addRoomScore:				; CODE XREF: lookFunction+72j
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

locret_1CAC:				; CODE XREF: lookFunction+84j
		ret
; END OF FUNCTION CHUNK	FOR lookFunction

; =============== S U B	R O U T	I N E =======================================


sub_1CAD:				; CODE XREF: lookFunction+67p

; FUNCTION CHUNK AT 1D35 SIZE 00000006 BYTES

		ld	hl, item_trochObject.location
		ld	de, 6
		ld	b, 6
		ld	c, 2

loc_1CB7:				; CODE XREF: sub_1CAD+14j
		ld	a, (hl)
		cp	b
		call	z, sub_1D02
		dec	c
		jp	z, loc_1CC4
		add	hl, de
		jp	loc_1CB7
; ---------------------------------------------------------------------------

loc_1CC4:				; CODE XREF: sub_1CAD+10j
		ld	a, (currentRoomNumMaybe)
		cp	2
		jp	nc, loc_1CD4
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_1CDA
; ---------------------------------------------------------------------------

loc_1CD4:				; CODE XREF: sub_1CAD+1Cj
		ld	a, (bgnBaseOffsetFlag)
		ld	(tmpPlanet), a

loc_1CDA:				; CODE XREF: sub_1CAD+24j
		ld	hl, g_itemList.location
		ld	de, 6
		ld	a, (tmpPlanet)
		ld	b, a
		ld	c, 23h ; '#'

loc_1CE6:				; CODE XREF: sub_1CAD+52j
		ld	a, (hl)
		cp	b
		jp	nz, loc_1CFC
		cp	0
		jp	z, loc_1D35
		push	bc
		inc	hl
		ld	b, (hl)
		dec	hl
		ld	a, (currentRoomNumMaybe)
		cp	b
		call	z, sub_1D02
		pop	bc

loc_1CFC:				; CODE XREF: sub_1CAD+3Bj sub_1CAD+8Bj
		dec	c
		ret	z
		add	hl, de
		jp	loc_1CE6
; End of function sub_1CAD


; =============== S U B	R O U T	I N E =======================================


sub_1D02:				; CODE XREF: sub_1CAD+Cp sub_1CAD+4Bp	...
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

loc_1D1D:				; CODE XREF: sub_1D02+Bj
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

loc_1D35:				; CODE XREF: sub_1CAD+40j
		call	sub_1D02
		jp	loc_1CFC
; END OF FUNCTION CHUNK	FOR sub_1CAD

; =============== S U B	R O U T	I N E =======================================

; This function	returns	the number of words in the input string	in b

getStringMaybe:				; CODE XREF: askIfInstructions+3p
					; parseInput+7p ...
		ld	hl, inputBuffer

loc_1D3E:				; CODE XREF: getStringMaybe+Cj
		ld	a, (hl)
		inc	hl
		cp	0Dh
		jp	z, loc_1D8D
		cp	20h ; ' '
		jp	z, loc_1D3E
		ld	hl, inputBuffer

loc_1D4D:				; CODE XREF: getStringMaybe+16j
		ld	a, (hl)
		inc	hl
		cp	20h ; ' '
		jp	z, loc_1D4D
		dec	hl
		push	hl
		ex	de, hl
		pop	hl

loc_1D58:				; CODE XREF: getStringMaybe+21j
		inc	hl
		ld	a, (hl)
		cp	0Dh
		jp	nz, loc_1D58

loc_1D5F:				; CODE XREF: getStringMaybe+28j
		dec	hl
		ld	a, (hl)
		cp	20h ; ' '
		jp	z, loc_1D5F
		inc	hl
		ld	(hl), 0Dh
		push	de

loc_1D6A:				; CODE XREF: getStringMaybe+38j
		inc	de
		ld	a, (de)
		cp	0Dh
		jp	z, loc_1D90
		cp	20h ; ' '
		jp	nz, loc_1D6A

loc_1D76:				; CODE XREF: getStringMaybe+3Fj
		inc	de
		ld	a, (de)
		cp	20h ; ' '
		jp	z, loc_1D76

loc_1D7D:				; CODE XREF: getStringMaybe+4Bj
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

loc_1D8D:				; CODE XREF: getStringMaybe+7j
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_1D90:				; CODE XREF: getStringMaybe+33j
		pop	de
		ld	b, 5
		ld	hl, firstCommand

loc_1D96:				; CODE XREF: getStringMaybe+6Bj
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

loc_1DAA:				; CODE XREF: getStringMaybe+5Fj
					; getStringMaybe+76j
		ld	(hl), 20h ; ' '
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, loc_1DAA

loc_1DB4:				; CODE XREF: getStringMaybe+68j
		ld	b, 1
		ret
; ---------------------------------------------------------------------------

loc_1DB7:				; CODE XREF: getStringMaybe+46j
		pop	de
		ld	b, 5
		ld	hl, firstCommand

loc_1DBD:				; CODE XREF: getStringMaybe+92j
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

loc_1DD0:				; CODE XREF: getStringMaybe+86j
					; getStringMaybe+9Cj
		ld	(hl), 20h ; ' '
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, loc_1DD0
		jp	loc_1DE4
; ---------------------------------------------------------------------------

loc_1DDD:				; CODE XREF: getStringMaybe+8Fj
					; getStringMaybe+A6j
		ld	a, (de)
		inc	de
		cp	20h ; ' '
		jp	nz, loc_1DDD

loc_1DE4:				; CODE XREF: getStringMaybe+9Fj
					; getStringMaybe+ADj
		ld	a, (de)
		inc	de
		cp	20h ; ' '
		jp	z, loc_1DE4
		ld	b, 5
		ld	hl, secondCommand
		dec	de

loc_1DF1:				; CODE XREF: getStringMaybe+C6j
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

loc_1E04:				; CODE XREF: getStringMaybe+BAj
					; getStringMaybe+D0j
		ld	(hl), 20h ; ' '
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, loc_1E04

loc_1E0E:				; CODE XREF: getStringMaybe+C3j
		ld	b, 2
		ret
; End of function getStringMaybe


; =============== S U B	R O U T	I N E =======================================


sub_1E11:				; CODE XREF: askIfInstructions+22p
					; parseInput+44p ...
		ld	hl, 11Ch
		ld	(word_1E8D), hl
		ld	hl, 0
		ld	(word_1E89), hl

loc_1E1D:				; CODE XREF: sub_1E11+6Aj sub_1E11+73j
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

loc_1E52:				; CODE XREF: sub_1E11+39j
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

loc_1E6F:				; CODE XREF: sub_1E11+4Fj sub_1E11+55j
		ld	a, b
		cp	1
		jp	z, loc_1E7E
		ld	hl, (word_1E8B)
		ld	(word_1E8D), hl
		jp	loc_1E1D
; ---------------------------------------------------------------------------

loc_1E7E:				; CODE XREF: sub_1E11+61j
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


sub_1E8F:				; CODE XREF: sub_1E11+33p
		ld	c, 5

loc_1E91:				; CODE XREF: sub_1E8F+Cj
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

loc_1EA1:				; CODE XREF: sub_1E8F+6j
		jp	c, loc_1EA7
		ld	b, 2
		ret
; ---------------------------------------------------------------------------

loc_1EA7:				; CODE XREF: sub_1E8F:loc_1EA1j
		ld	b, 1
		ret
; End of function sub_1E8F


; =============== S U B	R O U T	I N E =======================================


getBGNRoomAddress:			; CODE XREF: ROM:loc_28Ap ROM:0322p ...
		call	sub_2F27
		ld	a, (currentRoomNumMaybe)
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
		ex	de, hl
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	nz, loc_1ECA
		ld	hl, g_earthRoomList
		jp	loc_1EEE
; ---------------------------------------------------------------------------

loc_1ECA:				; CODE XREF: getBGNRoomAddress+17j
		cp	2
		jp	nz, loc_1ED5
		ld	hl, isthurRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

loc_1ED5:				; CODE XREF: getBGNRoomAddress+22j
		cp	3
		jp	nz, loc_1EE0
		ld	hl, gcsRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

loc_1EE0:				; CODE XREF: getBGNRoomAddress+2Dj
		cp	planet_navier
		jp	nz, loc_1EEB
		ld	hl, navierRoomData
		jp	loc_1EEE
; ---------------------------------------------------------------------------

loc_1EEB:				; CODE XREF: getBGNRoomAddress+38j
		ld	hl, stru_5F65

loc_1EEE:				; CODE XREF: getBGNRoomAddress+1Dj
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


askIfInstructions:			; CODE XREF: ROM:0276p	ROM:0EF0p ...
		call	loc_2119
		call	getStringMaybe
		ld	a, b
		cp	1
		jp	z, loc_1F0D

loc_1F03:				; CODE XREF: askIfInstructions+32j
		ld	d, 4Ch ; 'L'
		ld	e, 0A1h	; '°'
		call	printFromMSGFile
		jp	askIfInstructions
; ---------------------------------------------------------------------------

loc_1F0D:				; CODE XREF: askIfInstructions+9j
		ld	de, firstCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreWordTo5
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FDh ; '˝'
		jp	z, loc_1F2C
		cp	0FEh ; '˛'
		jp	z, loc_1F2F
		jp	loc_1F03
; ---------------------------------------------------------------------------

loc_1F2C:				; CODE XREF: askIfInstructions+2Aj
		ld	a, 1
		ret
; ---------------------------------------------------------------------------

loc_1F2F:				; CODE XREF: askIfInstructions+2Fj
		ld	a, 0
		ret
; End of function askIfInstructions


; =============== S U B	R O U T	I N E =======================================


convertScoreToString:			; CODE XREF: ROM:0EE6p	ROM:0F22p
		ld	hl, (scoreProbably)
		ld	a, l
		ld	c, 0FFh

loc_1F38:				; CODE XREF: convertScoreToString+9j
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

loc_1F4A:				; CODE XREF: convertScoreToString+10j
		ld	a, c
		add	a, '0'
		cp	'0'
		jp	z, loc_1F55
		call	putc

loc_1F55:				; CODE XREF: convertScoreToString+1Dj
		ld	a, l
		add	a, 100
		ld	c, 0FFh

loc_1F5A:				; CODE XREF: convertScoreToString+2Bj
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


subtractFromScore:			; CODE XREF: ROM:0287p	ROM:0911p ...
		ld	hl, (scoreProbably)
		ld	a, l
		sub	b
		ld	l, a
		jp	c, loc_1F7D
		ld	(scoreProbably), hl
		ret
; ---------------------------------------------------------------------------

loc_1F7D:				; CODE XREF: subtractFromScore+6j
		ld	a, h
		cp	0
		jp	z, loc_1F88
		dec	h
		ld	(scoreProbably), hl
		ret
; ---------------------------------------------------------------------------

loc_1F88:				; CODE XREF: subtractFromScore+10j
		ld	l, 0
		ld	(scoreProbably), hl
		ret
; End of function subtractFromScore


; =============== S U B	R O U T	I N E =======================================


parseInput:				; CODE XREF: ROM:loc_939p ROM:0D50p ...
		push	af
		push	bc
		push	de
		push	hl
		call	loc_2119
		call	getStringMaybe
		ld	a, b
		cp	0
		jp	nz, loc_1FAD
		ld	d, 4Dh ; 'M'
		ld	e, 65h ; 'e'
		call	printFromMSGFile
		ld	a, 0
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_1FAD:				; CODE XREF: parseInput+Dj
		cp	3
		jp	c, loc_1FC1
		ld	d, 4Dh ; 'M'
		ld	e, 81h ; 'Å'
		call	printFromMSGFile
		ld	a, 0
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_1FC1:				; CODE XREF: parseInput+21j
		cp	2
		jp	z, loc_2028
		ld	de, firstCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreWordTo5
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FFh
		jp	nz, loc_2020

loc_1FDD:				; CODE XREF: parseInput+AEj
					; parseInput+C8j
		ld	b, 1
		ld	c, 4
		call	pseudoRNG
		cp	1
		jp	nz, loc_1FF3
		ld	d, 4Bh ; 'K'
		ld	e, 27h ; '''
		call	printFromMSGFile
		jp	loc_2018
; ---------------------------------------------------------------------------

loc_1FF3:				; CODE XREF: parseInput+58j
		cp	2
		jp	nz, loc_2002
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_2018
; ---------------------------------------------------------------------------

loc_2002:				; CODE XREF: parseInput+67j
		cp	3
		jp	nz, loc_2011
		ld	d, 4Bh ; 'K'
		ld	e, 5Fh ; '_'
		call	printFromMSGFile
		jp	loc_2018
; ---------------------------------------------------------------------------

loc_2011:				; CODE XREF: parseInput+76j
		ld	d, 4Bh ; 'K'
		ld	e, 6Dh ; 'm'
		call	printFromMSGFile

loc_2018:				; CODE XREF: parseInput+62j
					; parseInput+71j ...
		ld	a, 0
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_2020:				; CODE XREF: parseInput+4Cj
		ld	a, 1
		ld	(numInputWords), a
		jp	loc_2061
; ---------------------------------------------------------------------------

loc_2028:				; CODE XREF: parseInput+35j
		ld	de, firstCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreWordTo5
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FFh
		jp	z, loc_1FDD
		ld	(firstToken), a
		ld	de, secondCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreWordTo5
		call	sub_1E11
		ld	a, (playerCommand)
		cp	0FFh
		jp	z, loc_1FDD
		ld	(secondToken), a
		ld	a, 2
		ld	(numInputWords), a

loc_2061:				; CODE XREF: parseInput+1Cj
					; parseInput+30j ...
		pop	hl
		pop	de
		pop	bc
		pop	af
		ret
; End of function parseInput


; =============== S U B	R O U T	I N E =======================================


incrementClock:				; CODE XREF: ROM:loc_916p ROM:loc_DB1p ...
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

loc_207F:				; CODE XREF: incrementClock+10j
		ld	(hl), 30h ; '0'
		dec	hl
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ret
; ---------------------------------------------------------------------------

loc_2087:				; CODE XREF: incrementClock+16j
		cp	34h ; '4'
		jp	z, loc_208D
		ret
; ---------------------------------------------------------------------------

loc_208D:				; CODE XREF: incrementClock+23j
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


sub_209F:				; CODE XREF: lookFunction+60p
		push	hl
		push	af
		ld	hl, unk_479A

loc_20A4:				; CODE XREF: ROM:2122j
		call	outputString
		pop	af
		pop	hl
		ret
; End of function sub_209F


; =============== S U B	R O U T	I N E =======================================


printComputerTerminal:			; CODE XREF: lookFunction+64p
		ld	d, 1Ch
		ld	e, 8Fh ; 'è'
		call	printFromMSGFile
		ret
; End of function printComputerTerminal


; =============== S U B	R O U T	I N E =======================================


compareTwoWordInput:			; CODE XREF: ROM:13E7p	ROM:13F6p ...
		ld	a, (firstToken)
		cp	b
		jp	z, loc_20C0
		cp	c
		jp	z, loc_20C7

loc_20BD:				; CODE XREF: compareTwoWordInput+1Cj
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_20C0:				; CODE XREF: compareTwoWordInput+4j
		ld	a, (secondToken)
		cp	c
		jp	z, loc_20D1

loc_20C7:				; CODE XREF: compareTwoWordInput+8j
		ld	a, (secondToken)
		cp	b
		jp	z, loc_20D1
		jp	loc_20BD
; ---------------------------------------------------------------------------

loc_20D1:				; CODE XREF: compareTwoWordInput+12j
					; compareTwoWordInput+19j
		ld	a, 1
		ret
; End of function compareTwoWordInput


; =============== S U B	R O U T	I N E =======================================


isItemInRoom:				; CODE XREF: ROM:loc_3662p
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
		ld	hl, g_itemList.location
		add	hl, de
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	z, loc_20F2

loc_20EF:				; CODE XREF: isItemInRoom+2Bj
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_20F2:				; CODE XREF: isItemInRoom+18j
		cp	0
		jp	z, loc_2103
		inc	hl
		ld	a, (currentRoomNumMaybe)
		cp	(hl)
		jp	z, loc_2102
		jp	loc_20EF
; ---------------------------------------------------------------------------

loc_2102:				; CODE XREF: isItemInRoom+28j
		dec	hl

loc_2103:				; CODE XREF: isItemInRoom+20j
		ld	b, 1
		ret
; End of function isItemInRoom


; =============== S U B	R O U T	I N E =======================================


isCarryingTooMuch:			; CODE XREF: ROM:loc_3675p
		ld	a, (carriedItemCount)
		cp	9
		jp	c, loc_2111
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_2111:				; CODE XREF: isCarryingTooMuch+5j
		add	a, 1
		ld	(carriedItemCount), a
		ld	b, 1
		ret
; End of function isCarryingTooMuch

; ---------------------------------------------------------------------------

loc_2119:				; CODE XREF: askIfInstructionsp
					; parseInput+4p ...
		call	sub_2F2C
		dec	c
		add	hl, bc
		jr	nz, loc_2140
		jr	nz, loc_2160+1
		jr	nz, loc_20A4
		ld	hl, inputBuffer
		ld	b, 0

loc_2129:				; CODE XREF: ROM:2147j	ROM:215Bj ...
		call	getc
		cp	8
		jp	z, loc_214B
		cp	7Fh ; ''
		jp	z, loc_216D
		cp	61h ; 'a'
		jp	c, loc_2142
		cp	7Bh ; '{'
		jp	nc, loc_2142

loc_2140:				; CODE XREF: ROM:211Ej
		sub	20h ; ' '

loc_2142:				; CODE XREF: ROM:2138j	ROM:213Dj
		ld	(hl), a
		inc	hl
		inc	b
		cp	0Dh
		jp	nz, loc_2129
		ret
; ---------------------------------------------------------------------------

loc_214B:				; CODE XREF: ROM:212Ej
		ld	a, b
		cp	0
		jp	nz, loc_215E
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_2129
; ---------------------------------------------------------------------------

loc_215E:				; CODE XREF: ROM:214Ej
		dec	b
		dec	hl

loc_2160:				; CODE XREF: ROM:2120j
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_2129
; ---------------------------------------------------------------------------

loc_216D:				; CODE XREF: ROM:2133j
		ld	a, b
		cp	0
		jp	nz, loc_2180
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_2129
; ---------------------------------------------------------------------------

loc_2180:				; CODE XREF: ROM:2170j
		dec	b
		dec	hl
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_2129

; =============== S U B	R O U T	I N E =======================================

; b = 1, c = 3

pseudoRNG:				; CODE XREF: ROM:0EC7p
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

loc_21B1:				; CODE XREF: pseudoRNG+23j
		sub	c
		jp	nc, loc_21B1
		add	a, c
		add	a, b
		ret
; End of function pseudoRNG


; =============== S U B	R O U T	I N E =======================================


sub_21B8:				; CODE XREF: pseudoRNG+6p
					; pseudoRNG+14p
		ld	hl, byte_21DE
		ld	b, 8
		ld	a, (hl)

loc_21BE:				; CODE XREF: sub_21B8+1Fj
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
byte_21DE:	db 2Dh			; DATA XREF: sub_21B8o
byte_21DF:	db 4Ah			; DATA XREF: ROM:131Ao
		db 0FDh	; ˝
		db  4Ah	; J
		db 0D3h	; ”
		db  59h	; Y
		db 0C8h	; »
		db  30h	; 0
		db  70h	; p
		db  34h	; 4
		db  4Bh	; K
		db 0EAh	; Í
		db  67h	; g
		db 0C1h	; ¡
		db  2Bh	; +
		db 0DBh	; €
		db  8Eh	; é
		db 0EBh	; Î
		db  78h	; x
		db  61h	; a
		db 0AFh	; Ø
		db  4Ah	; J
		db 0FDh	; ˝
		db 0EBh	; Î
		db 0FDh	; ˝
		db 0A1h	; °
		db 0FFh
		db  9Ch	; ú
		db 0B8h	; ∏
		db 0A4h	; §
		db 0D7h	; ◊
byte_21FD:	db 8			; DATA XREF: ROM:1341o
		db  7Dh	; }
		db    9
		db  10h
		db    9
		db 0E2h	; ‚
		db  0Ah
		db  98h	; ò
		db 0E4h	; ‰
		db 0EFh	; Ô
		db  9Eh	; û
		db  86h	; Ü
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
byte_28AB:	db 2			; DATA XREF: ROM:loc_12D4o
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
byte_2991:	db 0			; DATA XREF: ROM:loc_12DAo
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
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
floorItemMsgList:msgOffset <32h, 45h>		; 00
		msgOffset <0Ch,	0DDh>		; 01
		msgOffset <0Dh,	4Dh>		; 02
		msgOffset <0Dh,	77h>		; 03
		msgOffset <0Fh,	61h>		; 04
		msgOffset <0F0h, 0FEh>		; 05
		msgOffset <0Fh,	0F4h>		; 06
		msgOffset <0F1h, 21h>		; 07
		msgOffset <0Fh,	92h>		; 08
		msgOffset <10h,	56h>		; 09
		msgOffset <0Fh,	0C3h>		; 0a
		msgOffset <10h,	0A3h>		; 0b
		msgOffset <58h,	32h>		; 0c
		msgOffset <6Ch,	98h>		; 0d
		msgOffset <31h,	18h>		; 0e
		msgOffset <0EEh, 3>		; 0f
		msgOffset <33h,	0FEh>		; 10
		msgOffset <44h,	2Eh>		; 11
		msgOffset <44h,	6Dh>		; 12
		msgOffset <43h,	0E1h>		; 13
		msgOffset <47h,	8Bh>		; 14
		msgOffset <0B4h, 0Bh>		; 15
		msgOffset <0B7h, 1Bh>		; 16
		msgOffset <0BAh, 0E1h>		; 17
		msgOffset <0BCh, 0BDh>		; 18
		msgOffset <0BCh, 0E7h>		; 19
		msgOffset <0BDh, 34h>		; 1a
		msgOffset <0BDh, 50h>		; 1b
		msgOffset <0BDh, 73h>		; 1c
		msgOffset <0BDh, 9Dh>		; 1d
		msgOffset <0BFh, 2>		; 1e
		msgOffset <0EEh, 26h>		; 1f
		msgOffset <0BFh, 0DBh>		; 20
		msgOffset <0C0h, 0A6h>		; 21
		msgOffset <0C2h, 82h>		; 22
		msgOffset <0C2h, 9Eh>		; 23
		msgOffset <0C4h, 0EAh>		; 24
		msgOffset <0C8h, 0E1h>		; 25
		msgOffset <9Ah,	8Fh>		; 26
		msgOffset <0D4h, 0D4h>		; 27
		msgOffset <0DCh, 60h>		; 28
		msgOffset <0E1h, 45h>		; 29
		msgOffset <0E6h, 70h>		; 2a
		msgOffset <0EDh, 0E0h>		; 2b
		msgOffset <6Ah,	30h>		; 2c
		msgOffset <6Dh,	0A9h>		; 2d
		msgOffset <9Ch,	87h>		; 2e
		msgOffset <9Bh,	0FBh>		; 2f
		msgOffset <0A5h, 0CCh>		; 30
		msgOffset <0A6h, 2Eh>		; 31
		msgOffset <0A6h, 58h>		; 32
		msgOffset <9Ah,	0F8h>		; 33
		msgOffset <10h,	25h>		; 34
		msgOffset <10h,	0E2h>		; 35
earthReadMsgList:msgOffset <8, 45h>	 ; 0 ; DATA XREF: ROM:3BD5o
		msgOffset <8, 0CAh>	; 1
		msgOffset <8, 0EDh>	; 2
		msgOffset <9, 6Bh>	; 3
		msgOffset <0Ah,	21h>	; 4
		msgOffset <0Ah,	75h>	; 5
		msgOffset <0Ah,	0FAh>	; 6
gcsExamineMsgList:msgOffset <73h, 8Ah>	  ; 0 ;	DATA XREF: ROM:3B77o
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


outputString:				; CODE XREF: ROM:0144p	ROM:014Dp ...
		push	bc
		push	de

loc_2C0E:				; CODE XREF: outputString+1Bj
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
		ld	c, 2
		call	bdos_func
		pop	hl
		jp	loc_2C0E
; ---------------------------------------------------------------------------

loc_2C2A:				; CODE XREF: outputString+6j
		pop	de
		pop	bc
		ret
; End of function outputString


; =============== S U B	R O U T	I N E =======================================


sub_2C2D:				; CODE XREF: outputString+Bp
		push	hl
		ld	e, 0Dh
		ld	c, 2
		call	bdos_func
		pop	hl
		ld	e, 0Ah
		ret
; End of function sub_2C2D


; =============== S U B	R O U T	I N E =======================================


sub_2C39:				; CODE XREF: outputString+10p
		push	hl
		ld	e, 0Ah
		ld	c, 2
		call	bdos_func
		pop	hl
		ld	e, 0Dh
		ret
; End of function sub_2C39


; =============== S U B	R O U T	I N E =======================================


getc:					; CODE XREF: ROM:loc_15Ep
					; ROM:loc_2129p ...
		push	bc
		push	de
		push	hl
		ld	c, 1
		call	bdos_func
		cp	0Dh
		jp	nz, loc_2C5B
		push	af
		ld	e, 0Ah
		ld	c, 2
		call	bdos_func
		pop	af

loc_2C5B:				; CODE XREF: getc+Aj
		pop	hl
		pop	de
		pop	bc
		ret
; End of function getc


; =============== S U B	R O U T	I N E =======================================


find_locker_getc:			; CODE XREF: ROM:loc_3C91p
		push	bc
		push	de
		push	hl

loc_2C62:				; CODE XREF: find_locker_getc+Cj
		ld	c, 6
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


sub_2C78:				; CODE XREF: printFromMSGFile-1337p
		ld	c, 0
		call	bdos_func
; End of function sub_2C78


; =============== S U B	R O U T	I N E =======================================


putc:					; CODE XREF: ROM:01A6p	ROM:01ABp ...
		push	bc
		push	de
		push	hl
		ld	c, 2
		ld	e, a
		push	af
		call	bdos_func
		pop	af
		cp	0Ah
		jp	nz, loc_2C97
		ld	c, 2
		ld	e, 0Dh
		call	bdos_func
		jp	loc_2CA3
; ---------------------------------------------------------------------------

loc_2C97:				; CODE XREF: putc+Dj
		cp	0Dh
		jp	nz, loc_2CA3
		ld	c, 2
		ld	e, 0Ah
		call	bdos_func

loc_2CA3:				; CODE XREF: putc+17j putc+1Cj
		pop	hl
		pop	de
		pop	bc
		ret
; End of function putc


; =============== S U B	R O U T	I N E =======================================


sub_2CA7:				; CODE XREF: ROM:3E69p
		push	af
		call	sub_2E1A
		cp	1
		jp	z, loc_2CDE
		pop	af
		cp	1
		jp	nz, loc_2CBC
		ld	de, byte_2EA8
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CBC:				; CODE XREF: sub_2CA7+Cj
		cp	2
		jp	nz, loc_2CC7
		ld	de, bgnFCB
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CC7:				; CODE XREF: sub_2CA7+17j
		ld	de, msgFCB

loc_2CCA:				; CODE XREF: sub_2CA7+12j sub_2CA7+1Dj
		push	de
		ld	c, 13h
		call	bdos_func
		pop	de
		ld	c, 16h
		call	bdos_func
		cp	0FFh
		jp	z, loc_2CDE
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2CDE:				; CODE XREF: sub_2CA7+6j sub_2CA7+31j
		pop	af
		ld	a, 1
		ret
; End of function sub_2CA7


; =============== S U B	R O U T	I N E =======================================


sub_2CE2:				; CODE XREF: ROM:3E83p
		ld	(byte_2D36), a
		ld	l, b
		ld	h, 0
		add	hl, hl
		ld	b, h
		ld	c, l
		inc	bc

loc_2CEC:				; CODE XREF: sub_2CE2+51j
		dec	bc
		ld	a, b
		or	c
		cp	0
		ret	z
		push	bc
		ld	c, 1Ah
		push	de
		call	bdos_func
		ld	a, (byte_2D36)
		cp	1
		jp	nz, loc_2D07
		ld	de, byte_2EA8
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D07:				; CODE XREF: sub_2CE2+1Cj
		cp	2
		jp	nz, loc_2D12
		ld	de, bgnFCB
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D12:				; CODE XREF: sub_2CE2+27j
		ld	de, msgFCB

loc_2D15:				; CODE XREF: sub_2CE2+22j sub_2CE2+2Dj
		push	de
		ld	c, 22h ; '"'
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


closeFile:				; CODE XREF: ROM:0243p
					; printFromMSGFile-133Cp ...
		cp	1
		jp	nz, loc_2D42
		ld	de, byte_2EA8
		jp	loc_2D50
; ---------------------------------------------------------------------------

loc_2D42:				; CODE XREF: closeFile+2j
		cp	2
		jp	nz, loc_2D4D
		ld	de, bgnFCB
		jp	loc_2D50
; ---------------------------------------------------------------------------

loc_2D4D:				; CODE XREF: closeFile+Dj
		ld	de, msgFCB

loc_2D50:				; CODE XREF: closeFile+8j
					; closeFile+13j
		ld	c, 16
		call	bdos_func
		ret
; End of function closeFile


; =============== S U B	R O U T	I N E =======================================


openFile:				; CODE XREF: ROM:0112p	ROM:011Fp ...
		push	af
		call	sub_2E1A
		cp	1
		jp	z, loc_2D86
		pop	af
		cp	1
		jp	nz, loc_2D6B
		ld	de, byte_2EA8
		jp	loc_2D79
; ---------------------------------------------------------------------------

loc_2D6B:				; CODE XREF: openFile+Cj
		cp	2
		jp	nz, loc_2D76
		ld	de, bgnFCB
		jp	loc_2D79
; ---------------------------------------------------------------------------

loc_2D76:				; CODE XREF: openFile+17j
		ld	de, msgFCB

loc_2D79:				; CODE XREF: openFile+12j openFile+1Dj
		ld	c, 0Fh
		call	bdos_func
		cp	0FFh
		jp	z, loc_2D87
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2D86:				; CODE XREF: openFile+6j
		pop	af

loc_2D87:				; CODE XREF: openFile+2Aj
		ld	a, 1
		ret
; End of function openFile


; =============== S U B	R O U T	I N E =======================================


setDMAAddress:				; CODE XREF: ROM:022Fp
					; printFromMSGFile+14p	...
		ld	(byte_2DE5), a
		ld	l, b
		ld	h, 0
		add	hl, hl
		ld	b, h
		ld	c, l
		inc	bc

loc_2D94:				; CODE XREF: setDMAAddress+58j
		dec	bc
		ld	a, b
		or	c
		cp	0
		jp	z, loc_2DEC
		push	bc
		ld	c, 26
		push	de
		call	bdos_func
		ld	a, (byte_2DE5)
		cp	1
		jp	nz, loc_2DB1
		ld	de, byte_2EA8
		jp	loc_2DBF
; ---------------------------------------------------------------------------

loc_2DB1:				; CODE XREF: setDMAAddress+1Ej
		cp	2
		jp	nz, loc_2DBC
		ld	de, bgnFCB
		jp	loc_2DBF
; ---------------------------------------------------------------------------

loc_2DBC:				; CODE XREF: setDMAAddress+29j
		ld	de, msgFCB

loc_2DBF:				; CODE XREF: setDMAAddress+24j
					; setDMAAddress+2Fj
		push	de
		ld	c, 33
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

loc_2DE6:				; CODE XREF: setDMAAddress+3Dj
		pop	de
		pop	de
		pop	bc
		ld	a, 1
		ret
; ---------------------------------------------------------------------------

loc_2DEC:				; CODE XREF: setDMAAddress+Fj
		ld	a, 0
		ret
; End of function setDMAAddress


; =============== S U B	R O U T	I N E =======================================


sub_2DEF:				; CODE XREF: printFromMSGFile+9p
		cp	1
		jp	nz, loc_2DFA
		ld	hl, byte_2EA8
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2DFA:				; CODE XREF: sub_2DEF+2j
		cp	2
		jp	nz, loc_2E05
		ld	hl, bgnFCB
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2E05:				; CODE XREF: sub_2DEF+Dj
		ld	hl, msgFCB

loc_2E08:				; CODE XREF: sub_2DEF+8j sub_2DEF+13j
		ld	de, 21h
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


sub_2E1A:				; CODE XREF: sub_2CA7+1p openFile+1p
		cp	1
		jp	nz, loc_2E25
		ld	de, byte_2EA8
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E25:				; CODE XREF: sub_2E1A+2j
		cp	2
		jp	nz, loc_2E30
		ld	de, bgnFCB
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E30:				; CODE XREF: sub_2E1A+Dj
		ld	de, msgFCB

loc_2E33:				; CODE XREF: sub_2E1A+8j sub_2E1A+13j
		push	de
		push	hl
		ex	de, hl
		ld	c, 28h ; '('

loc_2E38:				; CODE XREF: sub_2E1A+22j
		ld	(hl), 0
		inc	hl
		dec	c
		jp	nz, loc_2E38
		pop	hl
		pop	de
		ld	c, 0Ch
		ex	de, hl
		push	hl

loc_2E45:				; CODE XREF: sub_2E1A+2Fj
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

loc_2E5D:				; CODE XREF: sub_2E1A+3Cj
		inc	de
		inc	hl
		ld	c, 8

loc_2E61:				; CODE XREF: sub_2E1A+56j
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

loc_2E79:				; CODE XREF: sub_2E1A+4Aj
		inc	de
		pop	hl
		push	de
		ld	de, 9
		add	hl, de
		pop	de
		ld	c, 3

loc_2E83:				; CODE XREF: sub_2E1A+73j
		ld	a, (de)
		cp	0
		jp	z, loc_2E90
		ld	(hl), a
		inc	hl
		inc	de
		dec	c
		jp	nz, loc_2E83

loc_2E90:				; CODE XREF: sub_2E1A+6Cj
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2E93:				; CODE XREF: sub_2E1A+4Fj sub_2E1A+5Cj
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
byte_2EA8:	db 0			; DATA XREF: sub_2CA7+Fo sub_2CE2+1Fo	...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
bgnFCB:		cpm_fcb	<0>		; DATA XREF: sub_2CA7+1Ao sub_2CE2+2Ao ...
		db    0
		db    0
		db    0
		db    0
msgFCB:		cpm_fcb	<0>		; DATA XREF: sub_2CA7:loc_2CC7o
					; sub_2CE2:loc_2D12o ...
		db    0
		db    0
		db    0
		db    0

; =============== S U B	R O U T	I N E =======================================


add16bitWords:				; CODE XREF: ROM:04C5p	ROM:04DFp ...
		push	de
		ld	e, a
		ld	d, 0
		add	hl, de
		pop	de
		ret
; End of function add16bitWords


; =============== S U B	R O U T	I N E =======================================


sub_2F27:				; CODE XREF: getBGNRoomAddressp
					; printFromMSGFilep
		ex	(sp), hl
		push	de
		push	bc
		push	af
		jp	(hl)
; End of function sub_2F27


; =============== S U B	R O U T	I N E =======================================


sub_2F2C:				; CODE XREF: ROM:loc_2119p
		ex	(sp), hl
		call	sub_2F32
		ex	(sp), hl
		ret
; End of function sub_2F2C


; =============== S U B	R O U T	I N E =======================================


sub_2F32:				; CODE XREF: sub_2F2C+1p sub_2F32+Aj
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

; This function	abbreviates an input word to five characters. (e.g. 'INVENTORY' -> 'INVEN')

abbreWordTo5:				; CODE XREF: ROM:024Fp
					; askIfInstructions+1Fp ...
		ld	a, (de)
		ld	(hl), a
		inc	de
		inc	hl
		dec	bc
		ld	a, b
		or	c
		cp	0
		jp	nz, abbreWordTo5
		ret
; End of function abbreWordTo5


; =============== S U B	R O U T	I N E =======================================


printFromMSGFile:			; CODE XREF: ROM:0154p	ROM:0198p ...

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

loc_2F72:				; CODE XREF: printFromMSGFile+84j
		ld	hl, decompMaybeBuffer
		ld	d, 7

loc_2F77:				; CODE XREF: printFromMSGFile+3Dj
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

loc_2F8C:				; CODE XREF: printFromMSGFile+3Aj
		ld	hl, decompMaybeBuffer
		push	bc
		ld	c, 0

loc_2F92:				; CODE XREF: printFromMSGFile+78j
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

loc_2FBB:				; CODE XREF: printFromMSGFile+B6j
					; printFromMSGFile+C6j	...
		inc	c
		cp	0
		jp	z, loc_2FD3
		call	putc
		jp	loc_2F92
; ---------------------------------------------------------------------------

loc_2FC7:				; CODE XREF: printFromMSGFile+123j
		pop	bc
		cp	0
		jp	z, loc_2FD4
		call	putc
		jp	loc_2F72
; ---------------------------------------------------------------------------

loc_2FD3:				; CODE XREF: printFromMSGFile+72j
		pop	bc

loc_2FD4:				; CODE XREF: printFromMSGFile+7Ej
		pop	af
		pop	bc
		pop	de
		pop	hl
		ret
; End of function printFromMSGFile


; =============== S U B	R O U T	I N E =======================================


sub_2FD9:				; CODE XREF: printFromMSGFile+33p
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

loc_2FF3:				; CODE XREF: sub_2FD9+10j
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

loc_2FFE:				; CODE XREF: printFromMSGFile+49j
		ld	a, (hl)
		rrca
		and	7Fh ; ''
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3005:				; CODE XREF: printFromMSGFile+4Ej
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

loc_3015:				; CODE XREF: printFromMSGFile+53j
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

loc_3027:				; CODE XREF: printFromMSGFile+58j
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

loc_303B:				; CODE XREF: printFromMSGFile+5Dj
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

loc_304D:				; CODE XREF: printFromMSGFile+62j
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

loc_305D:				; CODE XREF: printFromMSGFile+67j
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

loc_306B:				; CODE XREF: printFromMSGFile+6Cj
		ld	a, (hl)
		and	7Fh ; ''
		inc	hl
		jp	loc_2FC7
; END OF FUNCTION CHUNK	FOR printFromMSGFile
; ---------------------------------------------------------------------------

do_launch:				; CODE XREF: ROM:0DEDj	ROM:0E6Cj ...
		ld	a, (currentRoomNumMaybe)
		cp	1
		jp	z, loc_3084
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3084:				; CODE XREF: ROM:3077j
		ld	a, (stru_496A.occupied)
		cp	0
		jp	nz, loc_3096

loc_308C:				; CODE XREF: ROM:309Bj	ROM:30A3j ...
		ld	d, 59h ; 'Y'
		ld	e, 0C8h	; '»'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3096:				; CODE XREF: ROM:3089j
		ld	a, (stru_496A.occupied+9)
		cp	0
		jp	z, loc_308C
		ld	a, (stru_496A.occupied+30h)
		cp	0
		jp	z, loc_308C
		ld	hl, item_navComputer.location
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
		ld	d, 0F9h	; '˘'
		ld	e, 1
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_30C8:				; CODE XREF: ROM:30B5j	ROM:30BBj
		ld	a, 0
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

do_setCourse:				; CODE XREF: ROM:142Bj	ROM:143Aj ...
		ld	a, (currentRoomNumMaybe)
		cp	0
		jp	z, loc_30E2
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_30E2:				; CODE XREF: ROM:30D5j
		ld	a, (computerInstalledFlag)
		cp	0
		jp	nz, loc_30F4

loc_30EA:				; CODE XREF: ROM:1250j	ROM:30F9j ...
		ld	d, 59h ; 'Y'
		ld	e, 0C8h	; '»'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_30F4:				; CODE XREF: ROM:30E7j
		ld	a, (stru_496A.occupied+0Fh)
		cp	0
		jp	z, loc_30EA
		ld	d, 0EAh	; 'Í'
		ld	e, 0F3h	; 'Û'
		call	printFromMSGFile
		call	loc_2119
		call	getStringMaybe
		ld	a, b
		cp	1
		jp	z, loc_3119

loc_310F:				; CODE XREF: ROM:3138j	ROM:313Dj
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3119:				; CODE XREF: ROM:310Cj
		ld	de, firstCommand
		ld	hl, abbrevCmdBuffer
		ld	bc, 5
		call	abbreWordTo5
		ld	b, 5
		ld	hl, abbrevCmdBuffer

loc_312A:				; CODE XREF: ROM:3144j
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

loc_3140:				; CODE XREF: ROM:312Ej	ROM:3133j
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

loc_315F:				; CODE XREF: ROM:3151j	ROM:3156j
		ld	a, 0
		ld	(byte_495F), a

loc_3164:				; CODE XREF: ROM:315Cj
		ld	d, 0EBh	; 'Î'
		ld	e, 32h ; '2'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_ignite:				; CODE XREF: ROM:0E7Cj	ROM:141Cj ...
		ld	a, (currentRoomNumMaybe)
		cp	0
		jp	z, loc_3180
		ld	d, 4Bh ; 'K'
		ld	e, 0F9h	; '˘'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3180:				; CODE XREF: ROM:3173j
		ld	a, (byte_49A4)
		cp	0
		jp	nz, loc_3192
		ld	d, 0F9h	; '˘'
		ld	e, 24h ; '$'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_3192:				; CODE XREF: ROM:3185j
		ld	a, 0
		ld	(byte_49A4), a
		ld	a, (byte_495F)
		cp	0
		jp	nz, loc_31B0
		ld	d, 0EBh	; 'Î'
		ld	e, 4Eh ; 'N'
		call	printFromMSGFile
		ld	d, 4Ah ; 'J'
		ld	e, 40h ; '@'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_31B0:				; CODE XREF: ROM:319Cj
		ld	b, a
		ld	a, (bgnBaseOffsetFlag)
		cp	b
		jp	nz, loc_31C2
		ld	d, 0F0h	; ''
		ld	e, 17h
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_31C2:				; CODE XREF: ROM:31B5j
		ld	a, (byte_495F)
		ld	(bgnBaseOffsetFlag), a
		jp	loc_28A
; ---------------------------------------------------------------------------

do_land:				; CODE XREF: ROM:0E74j	ROM:14BDj ...
		ld	a, (currentRoomNumMaybe)
		cp	0		; currentRoom of 0 == inOrbit
		jp	z, loc_31DD
		ld	d, 4Ah ; 'J'
		ld	e, 0FDh	; '˝'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_31DD:				; CODE XREF: ROM:31D0j
		ld	a, (bgnBaseOffsetFlag)
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3200:				; CODE XREF: ROM:31F3j
		ld	a, 1		; currentRoom == 1 is the landing pad of the planet
		ld	(currentRoomNumMaybe), a
		jp	loc_28A
; ---------------------------------------------------------------------------

do_login:				; CODE XREF: ROM:0F6Ej	ROM:0F82j ...
		ld	hl, (bgnRoomAddressMaybe)
		inc	hl
		ld	a, (hl)
		and	4
		cp	0
		jp	nz, loc_321E
		ld	d, 59h ; 'Y'
		ld	e, 0C8h	; '»'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_321E:				; CODE XREF: ROM:3211j
		ld	d, 0EEh	; 'Ó'
		ld	e, 0F8h	; '¯'
		call	printFromMSGFile
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_323A

loc_3230:				; CODE XREF: ROM:3247j	ROM:324Fj ...
		ld	d, 0EFh	; 'Ô'
		ld	e, 22h ; '"'
		call	printFromMSGFile
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_323A:				; CODE XREF: ROM:322Dj
		ld	a, (playerCommand)
		cp	4Ch ; 'L'
		jp	z, loc_324A
		cp	0DFh ; 'ﬂ'
		jp	z, loc_33D0
		jp	loc_3230
; ---------------------------------------------------------------------------

loc_324A:				; CODE XREF: ROM:323Fj
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	nz, loc_3230
		ld	d, 0EFh	; 'Ô'
		ld	e, 0Dh
		call	printFromMSGFile
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	nz, loc_3230
		ld	a, (playerCommand)
		cp	4Dh ; 'M'
		jp	z, loc_326F
		jp	loc_3230
; ---------------------------------------------------------------------------

loc_326F:				; CODE XREF: ROM:3269j
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

loc_3286:				; CODE XREF: ROM:3274j	ROM:329Dj ...
		ld	d, 0EFh	; 'Ô'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile

loc_328D:				; CODE XREF: ROM:3283j
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_32A0
		cp	2
		jp	z, loc_32EF
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_32A0:				; CODE XREF: ROM:3295j
		ld	b, 0
		ld	a, (playerCommand)

loc_32A5:				; CODE XREF: ROM:32F4j	ROM:32FCj
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

loc_32EF:				; CODE XREF: ROM:329Aj
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_32A5
; ---------------------------------------------------------------------------

loc_32F7:				; CODE XREF: ROM:32E9j
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_32A5
; ---------------------------------------------------------------------------

loc_32FF:				; CODE XREF: ROM:32A7j	ROM:32ACj ...
		ld	a, (bgnBaseOffsetFlag)
		cp	3
		jp	nz, loc_3314
		ld	a, (byte_49B6)
		cp	0
		jp	nz, loc_3314
		ld	a, 1
		ld	(byte_49B6), a

loc_3314:				; CODE XREF: ROM:3304j	ROM:330Cj
		ld	d, 0EFh	; 'Ô'
		ld	e, 0FBh	; '˚'
		call	printFromMSGFile
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_331E:				; CODE XREF: ROM:32BBj	ROM:32C0j ...
		ld	d, 0EFh	; 'Ô'
		ld	e, 84h ; 'Ñ'
		call	printFromMSGFile
		call	parseInput
		ld	a, (numInputWords)
		cp	1
		jp	z, loc_333F
		cp	2
		jp	z, loc_337A

loc_3335:				; CODE XREF: ROM:3377j
		ld	d, 0EFh	; 'Ô'
		ld	e, 4Ch ; 'L'
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_333F:				; CODE XREF: ROM:332Dj
		ld	b, 0
		ld	a, (playerCommand)

loc_3344:				; CODE XREF: ROM:337Fj	ROM:3387j
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

loc_337A:				; CODE XREF: ROM:3332j
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_3344
; ---------------------------------------------------------------------------

loc_3382:				; CODE XREF: ROM:3374j
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_3344
; ---------------------------------------------------------------------------

loc_338A:				; CODE XREF: ROM:3346j
		ld	d, 1Dh
		ld	e, 0F4h	; 'Ù'
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_3394:				; CODE XREF: ROM:334Bj
		ld	d, 1Fh
		ld	e, 0Ch
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_339E:				; CODE XREF: ROM:3350j
		ld	d, 20h ; ' '
		ld	e, 86h ; 'Ü'
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_33A8:				; CODE XREF: ROM:3355j	ROM:335Aj ...
		ld	d, 0F0h	; ''
		ld	e, 48h ; 'H'
		call	printFromMSGFile
		jp	loc_331E
; ---------------------------------------------------------------------------

loc_33B2:				; CODE XREF: ROM:3364j	ROM:3369j ...
		ld	d, 0F0h	; ''
		ld	e, 72h ; 'r'
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_33BC:				; CODE XREF: ROM:32CAj	ROM:loc_32CFj ...
		ld	d, 22h ; '"'
		ld	e, 0BDh	; 'Ω'
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_33C6:				; CODE XREF: ROM:32D9j	ROM:32DEj ...
		ld	d, 22h ; '"'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_3286
; ---------------------------------------------------------------------------

loc_33D0:				; CODE XREF: ROM:3244j
		ld	a, (bgnBaseOffsetFlag)
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

loc_33FD:				; CODE XREF: ROM:33DDj
		ld	a, 1
		ld	(byte_49B5), a
		ld	d, 5Fh ; '_'
		ld	e, 55h ; 'U'
		call	printFromMSGFile
		ld	d, 5Fh ; '_'
		ld	e, 0A9h	; '©'
		call	printFromMSGFile

loc_3410:				; CODE XREF: ROM:33F7j
		ld	d, 0F9h	; '˘'
		ld	e, 47h ; 'G'
		call	printFromMSGFile

loc_3417:				; CODE XREF: ROM:342Ej	ROM:345Aj ...
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

loc_3431:				; CODE XREF: ROM:3426j
		ld	b, 0
		ld	a, (playerCommand)

loc_3436:				; CODE XREF: ROM:3462j	ROM:346Aj
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

loc_345D:				; CODE XREF: ROM:342Bj
		ld	b, 1
		ld	a, (firstToken)
		jp	loc_3436
; ---------------------------------------------------------------------------

loc_3465:				; CODE XREF: ROM:3457j
		ld	b, 0
		ld	a, (secondToken)
		jp	loc_3436
; ---------------------------------------------------------------------------

loc_346D:				; CODE XREF: ROM:344Cj	ROM:3451j
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

loc_348F:				; CODE XREF: ROM:349Bj
		ld	d, 0F9h	; '˘'
		ld	e, 0BEh	; 'æ'
		call	printFromMSGFile
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_3499:				; CODE XREF: ROM:3472j
		cp	1
		jp	z, loc_348F
		ld	d, 63h ; 'c'
		ld	e, 61h ; 'a'
		call	printFromMSGFile
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 11h
		ld	(currentRoomNumMaybe), a
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	a, 1
		ld	(byte_49AA), a
		jp	loc_3417
; ---------------------------------------------------------------------------

loc_34D8:				; CODE XREF: ROM:1507j	ROM:3629j
		ld	e, a
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_earth
		jp	z, hire_earth
		cp	planet_gcs

i_dont_know_how_0:			; CODE XREF: ROM:34F9j	ROM:3502j
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

hire_earth:				; CODE XREF: ROM:34DEj
		ld	a, e
		sub	p_low_hiree
		ld	e, a
		ld	b, e
		ld	a, (currentRoomNumMaybe)
		sub	0Ah
		cp	10h
		jp	z, i_dont_know_how_0
		cp	0Fh
		jp	z, loc_35AD

loc_3501:				; CODE XREF: ROM:35B5j
		cp	e
		jp	nz, i_dont_know_how_0

loc_3505:				; CODE XREF: ROM:35B9j
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3522:				; CODE XREF: ROM:3515j
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		ld	a, b
		cp	2
		jp	z, loc_290
		cp	10h
		jp	z, loc_290
		cp	4
		jp	z, loc_290
		dec	hl
		dec	hl
		ld	(hl), 1
		cp	0Fh
		jp	nz, loc_3547
		inc	hl
		inc	hl
		inc	hl
		ld	(hl), 1

loc_3547:				; CODE XREF: ROM:353Fj
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

loc_3559:				; CODE XREF: ROM:354Ej
		cp	0Dh
		jp	nz, loc_3566
		ld	(hl), 27h ; '''
		inc	hl
		ld	(hl), 0CCh ; 'Ã'
		jp	loc_35AA
; ---------------------------------------------------------------------------

loc_3566:				; CODE XREF: ROM:355Bj
		cp	0Bh
		jp	nz, hireTrochMaybe
		ld	(hl), 25h ; '%'
		inc	hl
		ld	(hl), 2
		jp	loc_35AA
; ---------------------------------------------------------------------------

hireTrochMaybe:				; CODE XREF: ROM:3568j
		cp	6
		jp	nz, loc_357F
		push	hl
		ld	hl, item_trochObject.location
		ld	(hl), 0
		pop	hl

loc_357F:				; CODE XREF: ROM:3575j
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		inc	hl
		ld	(hl), 13h
		inc	hl
		ld	(hl), 82h ; 'Ç'
		add	a, 3
		ld	b, a
		ld	a, (currentRoomNumMaybe)
		ld	c, a
		ld	a, b
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 16h
		add	hl, de
		ld	a, b
		add	a, 7
		ld	(hl), a
		ld	a, c
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress

loc_35AA:				; CODE XREF: ROM:3556j	ROM:3563j ...
		jp	loc_290
; ---------------------------------------------------------------------------

loc_35AD:				; CODE XREF: ROM:34FEj
		push	af
		ld	a, e
		cp	10h
		jp	z, loc_35B8
		pop	af
		jp	loc_3501
; ---------------------------------------------------------------------------

loc_35B8:				; CODE XREF: ROM:35B1j
		pop	af
		jp	loc_3505
; ---------------------------------------------------------------------------

getItemCode:				; CODE XREF: ROM:15C5j
		ld	(tmpObject), a
		ld	a, (currentRoomNumMaybe)
		cp	2
		jp	nc, loc_35CF
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_35D5
; ---------------------------------------------------------------------------

loc_35CF:				; CODE XREF: ROM:35C4j
		ld	a, (bgnBaseOffsetFlag)
		ld	(tmpPlanet), a

loc_35D5:				; CODE XREF: ROM:35CCj
		ld	a, (tmpObject)
		cp	p_computer
		jp	c, loc_35E5
		cp	p_piece
		jp	nc, loc_35E5
		jp	loc_3694
; ---------------------------------------------------------------------------

loc_35E5:				; CODE XREF: ROM:35DAj	ROM:35DFj
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

loc_3601:				; CODE XREF: ROM:35F6j	ROM:35FBj
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

loc_362C:				; CODE XREF: ROM:3623j
		ld	a, (tmpObject)
		cp	9Ch ; 'ú'
		jp	z, loc_3866
		ld	a, (tmpPlanet)
		cp	0
		jp	z, loc_3646
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3646:				; CODE XREF: ROM:3639j
		ld	a, (tmpObject)
		cp	96h ; 'ñ'
		jp	nz, loc_3658
		ld	d, 0ECh	; 'Ï'
		ld	e, 0E4h	; '‰'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3658:				; CODE XREF: ROM:364Bj
		ld	d, 0ECh	; 'Ï'
		ld	e, 0A5h	; '•'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3662:				; CODE XREF: ROM:3603j	ROM:3608j ...
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	nz, loc_3675

beyond_your_power:			; CODE XREF: ROM:1BF9j	ROM:35F1j ...
		ld	d, 4Ch ; 'L'
		ld	e, 7Eh ; '~'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3675:				; CODE XREF: ROM:3668j
		call	isCarryingTooMuch
		ld	a, b
		cp	0
		jp	nz, loc_3688
		ld	d, 4Ch ; 'L'
		ld	e, 46h ; 'F'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3688:				; CODE XREF: ROM:367Bj
		ld	(hl), ic_carrying

loc_368A:				; CODE XREF: ROM:1BA8j	ROM:1C01j ...
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3694:				; CODE XREF: ROM:35E2j
		push	af
		ld	a, (item_navComputer.location)
		cp	ic_cantGet
		jp	z, loc_36C1
		ld	a, (tmpObject)
		cp	p_computer
		jp	z, loc_36AD
		cp	p_analyze
		jp	z, loc_36AD
		jp	loc_36C5
; ---------------------------------------------------------------------------

loc_36AD:				; CODE XREF: ROM:36A2j	ROM:36A7j
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_earth
		jp	nz, loc_36C1
		ld	a, (currentRoomNumMaybe)
		cp	r_parson
		jp	nz, loc_36C1
		pop	af
		jp	loc_36C5
; ---------------------------------------------------------------------------

loc_36C1:				; CODE XREF: ROM:369Aj	ROM:36B2j ...
		pop	af
		jp	beyond_your_power
; ---------------------------------------------------------------------------

loc_36C5:				; CODE XREF: ROM:36AAj	ROM:36BEj
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

loc_36DE:				; CODE XREF: ROM:36D1j
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
		ld	hl, item_navComputer.location
		ld	(hl), 0
		dec	hl
		dec	hl
		ld	(hl), 35h ; '5'
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3704:				; CODE XREF: ROM:36E1j
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
		ld	hl, item_analyzer.location
		ld	(hl), 0
		dec	hl
		dec	hl
		ld	(hl), 36h ; '6'
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3729:				; CODE XREF: ROM:3706j
		cp	2
		jp	nz, loc_3731
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_3731:				; CODE XREF: ROM:372Bj
		ld	hl, item_pSuit.field_2
		ld	(hl), 0Ch
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_3739:				; CODE XREF: ROM:35E7j
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	z, beyond_your_power
		ld	(hl), 8
		ld	d, 0B7h	; '∑'
		ld	e, 37h ; '7'
		call	printFromMSGFile
		ld	hl, item_trochObject.location
		ld	a, (hl)
		cp	6
		jp	z, loc_375E
		ld	d, 0EDh	; 'Ì'
		ld	e, 9Ah ; 'ö'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_375E:				; CODE XREF: ROM:3751j
		ld	d, 0B7h	; '∑'
		ld	e, 0AEh	; 'Æ'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3768:				; CODE XREF: ROM:35ECj
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	z, beyond_your_power
		ld	(hl), 8
		ld	d, 0BBh	; 'ª'
		ld	e, 4
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

doPaperDisintegrate:			; CODE XREF: ROM:35FEj
		cp	p_paper
		jp	nz, loc_37B4
		ld	a, (bgnBaseOffsetFlag)
		cp	1
		jp	nz, loc_37AC
		ld	a, (currentRoomNumMaybe)
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_37AC:				; CODE XREF: ROM:3787j	ROM:378Fj ...
		ld	a, 6Dh ; 'm'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_37B4:				; CODE XREF: ROM:377Fj
		cp	p_crystal
		jp	nz, loc_37E6
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_37DE
		ld	a, (currentRoomNumMaybe)
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_37DE:				; CODE XREF: ROM:37BEj	ROM:37C6j ...
		ld	a, 81h ; 'Å'
		ld	(tmpObject), a
		jp	loc_3662
; ---------------------------------------------------------------------------

loc_37E6:				; CODE XREF: ROM:37B6j
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

loc_3801:				; CODE XREF: ROM:37E8j
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

loc_381C:				; CODE XREF: ROM:3803j
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

loc_3840:				; CODE XREF: ROM:360Dj
		ld	hl, item_laser.location
		ld	a, (hl)
		cp	7
		jp	nz, beyond_your_power
		ld	hl, item_lucindaObject.location
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	nz, beyond_your_power
		cp	2
		jp	c, loc_3861
		inc	hl
		ld	a, (currentRoomNumMaybe)
		cp	(hl)
		jp	nz, beyond_your_power
		dec	hl

loc_3861:				; CODE XREF: ROM:3855j
		ld	(hl), 6
		jp	loc_368A
; ---------------------------------------------------------------------------

loc_3866:				; CODE XREF: ROM:3631j
		ld	hl, item_trochObject.location
		ld	a, (tmpPlanet)
		cp	(hl)
		jp	nz, beyond_your_power
		cp	2
		jp	c, loc_387E
		inc	hl
		ld	a, (currentRoomNumMaybe)
		cp	(hl)
		jp	nz, beyond_your_power
		dec	hl

loc_387E:				; CODE XREF: ROM:3872j
		ld	(hl), 6
		jp	loc_368A
; ---------------------------------------------------------------------------

loc_3883:				; CODE XREF: ROM:15F5j
		ld	(tmpObject), a
		ld	a, 1
		ld	(tmpPlanet), a
		call	isItemInRoom
		ld	a, b
		cp	0
		jp	nz, loc_389E
		ld	d, 59h ; 'Y'
		ld	e, 0C8h	; '»'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_389E:				; CODE XREF: ROM:3891j
		dec	hl
		dec	hl
		push	hl
		ld	a, (tmpObject)
		sub	69h ; 'i'
		ld	e, a
		ld	d, 0
		ld	hl, itemBoughtParson
		add	hl, de
		ld	a, (hl)
		cp	0
		jp	z, loc_38BE
		ld	d, 0F4h	; 'Ù'
		ld	e, 3Fh ; '?'
		call	printFromMSGFile
		pop	hl
		jp	loc_290
; ---------------------------------------------------------------------------

loc_38BE:				; CODE XREF: ROM:38B0j
		ld	(hl), 1
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		pop	hl
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		jp	loc_290
; ---------------------------------------------------------------------------

do_inventory:				; CODE XREF: ROM:0FA5j	ROM:1607j ...
		ld	hl, g_itemList.location
		ld	de, 6
		ld	c, 23h ; '#'

loc_38D7:				; CODE XREF: ROM:38DFj
		ld	a, (hl)
		cp	7
		jp	z, loc_38EC
		add	hl, de
		dec	c
		jp	nz, loc_38D7
		ld	d, 4Ch ; 'L'
		ld	e, 0BDh	; 'Ω'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_38EC:				; CODE XREF: ROM:38DAj
		ld	d, 4Ch ; 'L'
		ld	e, 0FCh	; '¸'
		call	printFromMSGFile
		ld	hl, g_itemList.location
		ld	de, 6
		ld	c, 23h ; '#'

loc_38FB:				; CODE XREF: ROM:391Dj
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

loc_3918:				; CODE XREF: ROM:38FEj
		dec	c
		jp	z, loc_290
		add	hl, de
		jp	loc_38FB
; ---------------------------------------------------------------------------

dropCode:				; CODE XREF: ROM:1635j
		ld	(tmpObject), a
		ld	a, (currentRoomNumMaybe)
		cp	2
		jp	nc, loc_3933
		ld	a, 0
		ld	(tmpPlanet), a
		jp	loc_3939
; ---------------------------------------------------------------------------

loc_3933:				; CODE XREF: ROM:3928j
		ld	a, (bgnBaseOffsetFlag)
		ld	(tmpPlanet), a

loc_3939:				; CODE XREF: ROM:3930j
		ld	a, (tmpObject)
		cp	p_lucinda
		jp	nz, loc_3949
		ld	a, 78h ; 'x'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_3949:				; CODE XREF: ROM:393Ej
		cp	p_troch
		jp	nz, loc_3956
		ld	a, 77h ; 'w'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_3956:				; CODE XREF: ROM:394Bj
		cp	p_paper
		jp	nz, loc_3963
		ld	a, 6Dh ; 'm'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_3963:				; CODE XREF: ROM:3958j
		cp	p_crystal
		jp	nz, loc_398A

loc_3968:				; CODE XREF: ROM:398Cj
		ld	hl, item_crystalStatue.location
		ld	a, (hl)
		cp	ic_carrying
		jp	nz, youre_not_carrying
		ld	(hl), ic_cantGet
		ld	d, 0E6h	; 'Ê'
		ld	e, 0A8h	; '®'
		call	printFromMSGFile
		ld	b, 15
		call	subtractFromScore
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_398A:				; CODE XREF: ROM:3965j
		cp	p_statue
		jp	z, loc_3968
		cp	p_suit
		jp	nz, loc_39AA
		ld	a, 6Ch ; 'l'
		ld	(tmpObject), a
		ld	hl, item_pSuit.location
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_39EB
		ld	a, 82h ; 'Ç'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_39AA:				; CODE XREF: ROM:3991j
		cp	p_key
		jp	nz, loc_39C5
		ld	a, 7Eh ; '~'
		ld	(tmpObject), a
		ld	hl, item_skeletonKey.location
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_39EB
		ld	a, 83h ; 'É'
		ld	(tmpObject), a
		jp	loc_39EB
; ---------------------------------------------------------------------------

loc_39C5:				; CODE XREF: ROM:1B86j	ROM:39ACj
		cp	p_disk
		jp	nz, loc_39EB
		ld	a, 79h ; 'y'
		ld	(tmpObject), a
		ld	hl, item_cpmDisk1.location
		ld	a, (hl)
		cp	7
		jp	z, loc_39EB
		ld	a, 7Dh ; '}'
		ld	(tmpObject), a
		ld	hl, item_cpmDisk2.location
		ld	a, (hl)
		cp	7
		jp	z, loc_39EB
		ld	a, 6Eh ; 'n'
		ld	(tmpObject), a

loc_39EB:				; CODE XREF: ROM:3946j	ROM:3953j ...
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
		cp	ic_carrying
		jp	z, loc_3A17
		cp	6
		jp	z, loc_3A17
		jp	youre_not_carrying
; ---------------------------------------------------------------------------

loc_3A17:				; CODE XREF: ROM:3A0Cj	ROM:3A11j
		ld	a, (tmpObject)
		cp	6Ch ; 'l'
		jp	z, loc_3A4A
		cp	82h ; 'Ç'
		jp	z, loc_3A4A

loc_3A24:				; CODE XREF: ROM:3A67j	ROM:3A94j
		ld	a, (tmpPlanet)
		ld	(hl), a
		inc	hl
		ld	a, (currentRoomNumMaybe)
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

loc_3A47:				; CODE XREF: ROM:3A32j	ROM:3A37j ...
		jp	loc_3E0D
; ---------------------------------------------------------------------------

loc_3A4A:				; CODE XREF: ROM:3A1Cj	ROM:3A21j
		ld	a, (wearingSuitFlag)
		cp	0
		jp	z, loc_3A5F
		jp	loc_30EA
; ---------------------------------------------------------------------------

youre_not_carrying:			; CODE XREF: ROM:396Ej	ROM:39F0j ...
		ld	d, 4Dh ; 'M'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3A5F:				; CODE XREF: ROM:3A4Fj
		ld	a, (tmpObject)
		cp	6Ch ; 'l'
		jp	z, loc_3A6A
		jp	loc_3A24
; ---------------------------------------------------------------------------

loc_3A6A:				; CODE XREF: ROM:3A64j
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_gcs
		jp	nz, loc_3A97
		ld	a, (currentRoomNumMaybe)
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

loc_3A91:				; CODE XREF: ROM:3A99j
		ld	(item_pSuit.field_2), a
		jp	loc_3A24
; ---------------------------------------------------------------------------

loc_3A97:				; CODE XREF: ROM:3A6Fj	ROM:3A77j ...
		ld	a, 0Ch
		jp	loc_3A91
; ---------------------------------------------------------------------------

do_examine:				; CODE XREF: ROM:0FB9j	ROM:174Cj ...
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_isthur
		jp	z, searchBubble39
		cp	4
		jp	z, loc_3AD5
		cp	planet_gcs
		jp	z, examine_gcs

didnt_find_anything:			; CODE XREF: ROM:1258j	ROM:1260j ...
		ld	d, 4Bh ; 'K'
		ld	e, 90h ; 'ê'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

searchBubble39:				; CODE XREF: ROM:3AA1j
		ld	hl, item_purse.location
		ld	a, (hl)
		cp	ic_cantGet
		jp	nz, didnt_find_anything
		ld	a, (currentRoomNumMaybe)
		cp	ri_bubble_39
		jp	nz, didnt_find_anything
		ld	(hl), 2
		ld	d, 44h ; 'D'
		ld	e, 2Eh ; '.'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3AD5:				; CODE XREF: ROM:3AA6j
		ld	a, (currentRoomNumMaybe)
		cp	3Ah ; ':'
		jp	nz, loc_3B84
		ld	hl, item_cpmDisk2.location
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
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 1
		ld	(currentRoomNumMaybe), a
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
		ld	a, (bgnBaseOffsetFlag)
		push	af
		ld	a, 2
		ld	(bgnBaseOffsetFlag), a
		ld	a, 2Ch ; ','
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	(hl), 93h ; 'ì'
		ld	de, 9
		add	hl, de
		ld	(hl), 2Dh ; '-'
		pop	af
		ld	(bgnBaseOffsetFlag), a
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_290
; ---------------------------------------------------------------------------

examine_gcs:				; CODE XREF: ROM:3AABj
		ld	a, (currentRoomNumMaybe)
		cp	11
		jp	nc, loc_3B71
		ld	d, 6Eh ; 'n'
		ld	e, 0BAh	; '∫'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3B71:				; CODE XREF: ROM:3B64j
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3B84:				; CODE XREF: ROM:3ADAj
		cp	32h ; '2'
		jp	nz, didnt_find_anything
		ld	hl, item_cpmDisk1.location
		ld	a, (hl)
		cp	8
		jp	nz, didnt_find_anything
		ld	a, (item_trochObject.location)
		cp	6
		jp	nz, didnt_find_anything
		ld	(hl), 4
		ld	d, 33h ; '3'
		ld	e, 0FEh	; '˛'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_read:				; CODE XREF: ROM:0FBEj	ROM:186Bj ...
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_earth
		jp	z, read_earth_room
		cp	planet_gcs
		jp	z, read_gcs_room

nothing_to_read:			; CODE XREF: ROM:3BC7j	ROM:3BCCj ...
		ld	d, 0F0h	; ''
		ld	e, 0DBh	; '€'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

read_earth_room:			; CODE XREF: ROM:3BABj
		ld	a, (currentRoomNumMaybe)
		cp	re_deserted_house
		jp	z, read_deserted_house
		cp	re_circular_hallway_low
		jp	c, nothing_to_read
		cp	re_circular_hallway_high
		jp	nc, nothing_to_read
		sub	re_circular_hallway_low
		rlca
		ld	e, a
		ld	d, 0
		ld	hl, earthReadMsgList
		add	hl, de
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

read_deserted_house:			; CODE XREF: ROM:3BC2j
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 3
		add	hl, de
		ld	a, (hl)
		cp	0F7h
		jp	nz, nothing_to_read
		ld	d, 2Dh ; '-'
		ld	e, 91h ; 'ë'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

read_gcs_room:				; CODE XREF: ROM:3BB0j
		ld	a, (currentRoomNumMaybe)
		cp	4
		jp	nc, loc_3C0B
		ld	d, 72h ; 'r'
		ld	e, 0DBh	; '€'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3C0B:				; CODE XREF: ROM:3BFEj
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
		jp	loc_290
; ---------------------------------------------------------------------------

hitMachine:				; CODE XREF: ROM:187Fj
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_gcs
		jp	z, loc_3C30

i_dont_see_a_machine:			; CODE XREF: ROM:3C35j
		ld	d, 0FAh	; '˙'
		ld	e, 2Eh ; '.'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3C30:				; CODE XREF: ROM:3C23j
		ld	a, (currentRoomNumMaybe)
		cp	rg_storage_space
		jp	nz, i_dont_see_a_machine
		ld	a, (lockerRentedFlag)
		cp	0
		jp	nz, cannot_rent_locker
		ld	d, 69h ; 'i'
		ld	e, 0FFh
		call	printFromMSGFile
		ld	hl, item_lockerKey.location
		ld	(hl), 3
		ld	a, 1
		ld	(lockerRentedFlag), a
		jp	loc_290
; ---------------------------------------------------------------------------

cannot_rent_locker:			; CODE XREF: ROM:3C3Dj
		ld	d, 6Ah ; 'j'
		ld	e, 0DFh	; 'ﬂ'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_find_locker:				; CODE XREF: ROM:18B2j
		ld	a, (bgnBaseOffsetFlag)
		cp	planet_gcs
		jp	z, find_locker_code

i_dont_know_how_1:			; CODE XREF: ROM:3C75j
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

find_locker_code:			; CODE XREF: ROM:3C63j
		ld	a, (currentRoomNumMaybe)
		cp	rg_storage_space
		jp	nz, i_dont_know_how_1
		ld	d, 50h ; 'P'
		ld	e, 0C9h	; '…'
		call	printFromMSGFile
		ld	hl, unk_47E6
		call	outputString

loc_3C85:				; CODE XREF: ROM:3D46j
		ld	hl, unk_47CA
		call	outputString

loc_3C8B:				; CODE XREF: ROM:3D1Fj	ROM:3D25j ...
		ld	hl, unk_47E8
		ld	b, (hl)
		inc	hl
		ld	c, (hl)

loc_3C91:				; CODE XREF: ROM:3CCEj
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

loc_3CA2:				; CODE XREF: ROM:3C96j
		cp	34h ; '4'
		jp	nz, loc_3CB0
		push	af
		ld	a, c
		sub	1
		ld	c, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CB0:				; CODE XREF: ROM:3CA4j
		cp	36h ; '6'
		jp	nz, loc_3CBE
		push	af
		ld	a, c
		add	a, 1
		ld	c, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CBE:				; CODE XREF: ROM:3CB2j
		cp	38h ; '8'
		jp	nz, loc_3CCC
		push	af
		ld	a, b
		sub	1
		ld	b, a
		pop	af
		jp	loc_3D11
; ---------------------------------------------------------------------------

loc_3CCC:				; CODE XREF: ROM:3CC0j
		cp	30h ; '0'
		jp	nz, loc_3C91
		ld	hl, unk_47E8
		ld	a, (hl)
		cp	23h ; '#'
		jp	z, loc_3CDF
		cp	2Ah ; '*'
		jp	z, loc_3CF1

loc_3CDF:				; CODE XREF: ROM:3CD7j
		inc	hl
		ld	a, (hl)
		cp	44h ; 'D'
		jp	z, loc_3CE9
		jp	loc_3D03
; ---------------------------------------------------------------------------

loc_3CE9:				; CODE XREF: ROM:3CE3j
		ld	a, 2
		ld	(byte_49A6), a
		jp	loc_3D08
; ---------------------------------------------------------------------------

loc_3CF1:				; CODE XREF: ROM:3CDCj
		inc	hl
		ld	a, (hl)
		cp	38h ; '8'
		jp	z, loc_3CFB
		jp	loc_3D03
; ---------------------------------------------------------------------------

loc_3CFB:				; CODE XREF: ROM:3CF5j
		ld	a, 1
		ld	(byte_49A6), a
		jp	loc_3D08
; ---------------------------------------------------------------------------

loc_3D03:				; CODE XREF: ROM:3CE6j	ROM:3CF8j
		ld	a, 0
		ld	(byte_49A6), a

loc_3D08:				; CODE XREF: ROM:3CEEj	ROM:3D00j
		ld	hl, byte_47DD
		call	outputString
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_3D11:				; CODE XREF: ROM:3C9Fj	ROM:3CADj ...
		ld	a, b
		sub	20h ; ' '
		rlca
		ld	e, a
		ld	d, 0
		ld	hl,  gcsReadMsgList.hiByte+48h
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
		ld	hl, unk_47E8
		ld	(hl), b
		inc	hl
		ld	(hl), c
		ld	hl, byte_47E0
		call	outputString
		ld	hl, unk_47E6
		call	outputString
		ld	hl, unk_47E2
		ld	(hl), b
		inc	hl
		ld	(hl), c
		jp	loc_3C85	; End of "find locker" mini game
; ---------------------------------------------------------------------------

loc_3D49:				; CODE XREF: ROM:18BEj
		ld	b, 0		; Wear suit
		jp	loc_3D55
; ---------------------------------------------------------------------------

do_wear_psuit:				; CODE XREF: ROM:18CAj
		ld	b, 1		; wear p-suit
		jp	loc_3D55
; ---------------------------------------------------------------------------

do_wear_rad_suit:			; CODE XREF: ROM:18D6j
		ld	b, 2		; wear rad suit

loc_3D55:				; CODE XREF: ROM:3D4Bj	ROM:3D50j
		ld	a, (wearingSuitFlag)
		cp	0
		jp	z, loc_3D67
		ld	d, 0F3h	; 'Û'
		ld	e, 6Dh ; 'm'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3D67:				; CODE XREF: ROM:3D5Aj
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

loc_3D7D:				; CODE XREF: ROM:3D6Aj	ROM:3D77j
		ld	hl, item_pSuit.location
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_3D90
		ld	d, 6Ch ; 'l'
		ld	e, 0C2h	; '¬'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3D90:				; CODE XREF: ROM:3D83j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 1
		ld	(wearingSuitFlag), a
		dec	hl
		ld	(hl), 7
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3DA2:				; CODE XREF: ROM:3D6Fj	ROM:3D7Aj
		ld	hl, item_radSuit.location
		ld	a, (hl)
		cp	ic_carrying
		jp	z, loc_3DB5
		ld	d, 4Dh ; 'M'
		ld	e, 49h ; 'I'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3DB5:				; CODE XREF: ROM:3DA8j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 2
		ld	(wearingSuitFlag), a
		dec	hl
		ld	(hl), 22h ; '"'
		jp	loc_290
; ---------------------------------------------------------------------------

removeSuitCode:				; CODE XREF: ROM:18E2j
		ld	b, 0
		jp	loc_3DD3
; ---------------------------------------------------------------------------

loc_3DCC:				; CODE XREF: ROM:18EEj
		ld	b, 1
		jp	loc_3DD3
; ---------------------------------------------------------------------------

loc_3DD1:				; CODE XREF: ROM:18FAj
		ld	b, 2

loc_3DD3:				; CODE XREF: ROM:3DC9j	ROM:3DCEj
		ld	a, (wearingSuitFlag)
		cp	0
		jp	nz, loc_3DE5

loc_3DDB:				; CODE XREF: ROM:3DF3j
		ld	d, 4Bh ; 'K'
		ld	e, 43h ; 'C'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3DE5:				; CODE XREF: ROM:3DD8j
		ld	a, b
		cp	0
		jp	nz, loc_3DEF
		ld	a, (wearingSuitFlag)
		ld	b, a

loc_3DEF:				; CODE XREF: ROM:3DE8j
		ld	a, (wearingSuitFlag)
		cp	b
		jp	nz, loc_3DDB
		ld	hl, wearingSuitFlag
		ld	(hl), 0
		cp	2
		jp	z, loc_3E08
		ld	hl, item_pSuit.field_3
		ld	(hl), 6
		jp	loc_3E0D
; ---------------------------------------------------------------------------

loc_3E08:				; CODE XREF: ROM:3DFDj
		ld	hl, item_radSuit.field_3
		ld	(hl), 1Bh

loc_3E0D:				; CODE XREF: ROM:loc_3A47j ROM:3E05j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

do_save:				; CODE XREF: ROM:0FE1j	ROM:1906j
		ld	de, currentTimeMaybe
		ld	hl, baseTimeMaybe ; "1620"
		ld	bc, 4
		call	abbreWordTo5
		ld	a, 1
		ld	(byte_4963), a
		ld	c, 0Eh
		ld	hl, byte_46F0

loc_3E2D:				; CODE XREF: ROM:3E31j
		ld	(hl), 0
		inc	hl
		dec	c
		jp	nz, loc_3E2D
		ld	d, 0F6h	; 'ˆ'
		ld	e, 4Ch ; 'L'
		call	printFromMSGFile
		ld	hl, byte_46F0
		ld	b, 0

loc_3E40:				; CODE XREF: ROM:3E5Ej	ROM:3EB9j ...
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

loc_3E59:				; CODE XREF: ROM:3E4Fj	ROM:3E54j
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
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3E7B:				; CODE XREF: ROM:3E6Ej
		ld	a, 2
		ld	bc, 1C00h
		ld	de, baseBGNAddress
		call	sub_2CE2
		cp	1
		jp	nz, loc_3E9A
		ld	a, 2
		call	closeFile
		ld	d, 4Dh ; 'M'
		ld	e, 0FFh
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3E9A:				; CODE XREF: ROM:3E88j
		ld	a, 2
		call	closeFile
		ld	d, 4Eh ; 'N'
		ld	e, 14h
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3EA9:				; CODE XREF: ROM:3E45j
		ld	a, b
		cp	0
		jp	nz, loc_3EBC
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EBC:				; CODE XREF: ROM:3EACj
		dec	b
		dec	hl
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3ECB:				; CODE XREF: ROM:3E4Aj
		ld	a, b
		cp	0
		jp	nz, loc_3EDE
		ld	a, 7
		call	putc
		ld	a, 20h ; ' '
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EDE:				; CODE XREF: ROM:3ECEj
		dec	b
		dec	hl
		ld	a, 20h ; ' '
		call	putc
		ld	a, 8
		call	putc
		jp	loc_3E40
; ---------------------------------------------------------------------------

loc_3EED:				; CODE XREF: ROM:1AE4j	ROM:1AF0j
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	z, loc_3EFF

loc_3EF5:				; CODE XREF: ROM:3F04j	ROM:3F3Dj ...
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3EFF:				; CODE XREF: ROM:3EF2j
		ld	a, (currentRoomNumMaybe)
		cp	2Dh ; '-'
		jp	nz, loc_3EF5
		ld	a, (item_rowboat.location)
		cp	4
		jp	z, loc_3F19

loc_3F0F:				; CODE XREF: ROM:3F1Ej	ROM:3F4Dj ...
		ld	d, 4Ch ; 'L'
		ld	e, 0Eh
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3F19:				; CODE XREF: ROM:3F0Cj
		ld	a, (item_oars.location)
		cp	7
		jp	nz, loc_3F0F
		ld	hl, item_rowboat.field_2
		ld	a, (hl)
		add	a, 1
		ld	(hl), a
		ld	a, 8
		ld	(item_oars.location), a
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_3F38:				; CODE XREF: ROM:1AFCj
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (currentRoomNumMaybe)
		cp	2Dh ; '-'
		jp	nz, loc_3EF5
		ld	a, (item_rowboat.location)
		cp	4
		jp	nz, loc_3F0F
		ld	a, (item_rope.location)
		cp	7
		jp	nz, loc_3F0F
		ld	hl, item_rowboat.field_2
		ld	a, (hl)
		add	a, 2
		ld	(hl), a
		ld	a, 8
		ld	(item_rope.location), a
		ld	a, (carriedItemCount)
		sub	1
		ld	(carriedItemCount), a
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_3F6F:				; CODE XREF: ROM:1B08j
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (currentRoomNumMaybe)
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

loc_3F94:				; CODE XREF: ROM:0CDDj
		ld	d, 0BEh	; 'æ'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile
		jp	loc_2C1
; ---------------------------------------------------------------------------

loc_3F9E:				; CODE XREF: ROM:3F91j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 2Eh ; '.'
		jp	loc_290
; ---------------------------------------------------------------------------

loc_3FB1:				; CODE XREF: ROM:1B14j
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (currentRoomNumMaybe)
		cp	2Dh ; '-'
		jp	c, loc_3EF5
		cp	30h ; '0'
		jp	nc, loc_3EF5
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49C0), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 2Eh ; '.'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 67h ; 'g'
		ld	a, 2Fh ; '/'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 67h ; 'g'
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_290
; ---------------------------------------------------------------------------

loc_4002:				; CODE XREF: ROM:1B20j	ROM:1B2Cj
		ld	a, (bgnBaseOffsetFlag)
		cp	4
		jp	nz, loc_3EF5
		ld	a, (currentRoomNumMaybe)
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

loc_4024:				; CODE XREF: ROM:4019j	ROM:401Ej
		ld	d, 0BEh	; 'æ'
		ld	e, 99h ; 'ô'
		call	printFromMSGFile
		ld	a, 0
		ld	(byte_49C0), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 2Dh ; '-'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 6Ah ; 'j'
		ld	a, 30h ; '0'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 6Ah ; 'j'
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_290
; ---------------------------------------------------------------------------

loc_4060:				; CODE XREF: ROM:4021j
		ld	d, 4Bh ; 'K'
		ld	e, 0F2h	; 'Ú'
		call	printFromMSGFile
		ld	a, 0
		ld	(byte_49C0), a
		ld	a, (currentRoomNumMaybe)
		push	af
		ld	a, 2Eh ; '.'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ah
		add	hl, de
		ld	(hl), 2Fh ; '/'
		ld	a, 2Fh ; '/'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Bh
		add	hl, de
		ld	(hl), 2Eh ; '.'
		pop	af
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_290
; ---------------------------------------------------------------------------

loc_409C:				; CODE XREF: ROM:1B38j
		ld	a, (currentRoomNumMaybe)
		cp	0
		jp	z, loc_40B3
		cp	1
		jp	z, loc_40B3

loc_40A9:				; CODE XREF: ROM:40C8j
		ld	d, 4Bh ; 'K'
		ld	e, 0ACh	; '¨'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_40B3:				; CODE XREF: ROM:40A1j	ROM:40A6j
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

loc_40CB:				; CODE XREF: ROM:40B8j	ROM:40C0j ...
		ld	a, (analyzerInstalledFlag)
		cp	1
		jp	z, loc_40DD
		ld	d, 0C9h	; '…'
		ld	e, 0C1h	; '¡'
		call	printFromMSGFile
		jp	loc_290
; ---------------------------------------------------------------------------

loc_40DD:				; CODE XREF: ROM:40D0j
		ld	d, 0C9h	; '…'
		ld	e, 0Bh
		call	printFromMSGFile
		ld	a, 1
		ld	(byte_49A5), a
		jp	loc_290
; ---------------------------------------------------------------------------

loc_40EC:				; CODE XREF: ROM:139Fj
		ld	hl, byte_42FE
		call	outputString

loc_40F2:				; CODE XREF: ROM:4230j
		ld	hl, byte_429C
		call	outputString
		ld	hl, inputBuffer

loc_40FB:				; CODE XREF: ROM:4105j
		call	getc
		ld	(hl), a
		inc	hl
		cp	0Dh
		jp	z, loc_4108
		jp	loc_40FB
; ---------------------------------------------------------------------------

loc_4108:				; CODE XREF: ROM:4102j
		ld	a, (inputBuffer)
		ld	b, a
		ld	hl, byte_4296
		ld	c, 0

loc_4111:				; CODE XREF: ROM:411Ej
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

loc_4121:				; CODE XREF: ROM:4113j
		ld	a, c
		cp	1
		jp	z, loc_4243
		cp	4
		jp	z, loc_4264

loc_412C:				; CODE XREF: ROM:4249j	ROM:426Aj
		ld	de, 0
		ld	a, c
		ld	(byte_433B), a
		add	a, 1
		cp	6
		jp	nz, loc_413C
		ld	a, 0

loc_413C:				; CODE XREF: ROM:4137j
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

loc_4151:				; CODE XREF: ROM:414Cj
		ld	e, a
		ld	hl, byte_4296
		add	hl, de
		ld	a, (hl)
		cp	2Dh ; '-'
		jp	z, loc_415F
		jp	loc_4208
; ---------------------------------------------------------------------------

loc_415F:				; CODE XREF: ROM:4144j	ROM:4159j
		ld	a, e
		ld	(byte_433C), a

loc_4163:				; CODE XREF: ROM:4261j	ROM:4282j
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

loc_4182:				; CODE XREF: ROM:4195j
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

loc_4198:				; CODE XREF: ROM:418Cj
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
		ld	hl, byte_42B8
		ld	de, 8

loc_41BA:				; CODE XREF: ROM:41C0j
		ld	a, (hl)
		cp	b
		jp	z, loc_41C3
		add	hl, de
		jp	loc_41BA
; ---------------------------------------------------------------------------

loc_41C3:				; CODE XREF: ROM:41BCj
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
		ld	(currentRoomNumMaybe), a
		ld	hl, byte_47DD
		call	outputString
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_4208:				; CODE XREF: ROM:411Bj	ROM:415Cj ...
		ld	a, (byte_4344)
		cp	30h ; '0'
		jp	z, loc_4218
		sub	1
		ld	(byte_4344), a
		jp	loc_422A
; ---------------------------------------------------------------------------

loc_4218:				; CODE XREF: ROM:420Dj
		ld	a, 39h ; '9'
		ld	(byte_4344), a
		ld	a, (byte_4343)
		cp	30h ; '0'
		jp	z, loc_4233
		sub	1
		ld	(byte_4343), a

loc_422A:				; CODE XREF: ROM:4215j
		ld	hl, byte_433D
		call	outputString
		jp	loc_40F2
; ---------------------------------------------------------------------------

loc_4233:				; CODE XREF: ROM:4222j
		ld	hl, byte_47DD
		call	outputString
		ld	d, 0FAh	; '˙'
		ld	e, 4Ah ; 'J'
		call	printFromMSGFile
		jp	loc_F16
; ---------------------------------------------------------------------------

loc_4243:				; CODE XREF: ROM:4124j
		ld	hl, byte_429A
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

loc_4264:				; CODE XREF: ROM:4129j
		ld	hl, byte_4297
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


sub_4285:				; CODE XREF: ROM:417Dp	ROM:419Bp
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
byte_4296:	db 4Fh			; DATA XREF: ROM:410Co	ROM:413Do ...
byte_4297:	db 59h			; DATA XREF: ROM:424Cr	ROM:4254w ...
byte_4298:	db 52h			; DATA XREF: ROM:41E5o
		db  42h	; B
byte_429A:	db 47h			; DATA XREF: ROM:loc_4243o ROM:424Fw ...
		db  2Dh	; -
byte_429C:	db 1Bh			; DATA XREF: ROM:loc_40F2o
		db  59h	; Y
		db  33h	; 3
		db  30h	; 0
		db  57h	; W
		db  68h	; h
		db  61h	; a
		db  74h	; t
		db  20h
		db  63h	; c
		db  6Fh	; o
		db  6Ch	; l
		db  6Fh	; o
		db  72h	; r
		db  3Fh	; ?
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  1Bh
		db  59h	; Y
		db  33h	; 3
		db  3Dh	; =
		db  80h	; Ä
byte_42B8:	db 4Fh			; DATA XREF: ROM:41B4o
		db  4Fh	; O
		db  52h	; R
		db  41h	; A
		db  4Eh	; N
		db  47h	; G
		db  45h	; E
		db  80h	; Ä
		db  59h	; Y
		db  59h	; Y
		db  45h	; E
		db  4Ch	; L
		db  4Ch	; L
		db  4Fh	; O
		db  57h	; W
		db  80h	; Ä
		db  52h	; R
		db  20h
		db  52h	; R
		db  45h	; E
		db  44h	; D
		db  20h
		db  20h
		db  80h	; Ä
		db  42h	; B
		db  20h
		db  42h	; B
		db  4Ch	; L
		db  55h	; U
		db  45h	; E
		db  20h
		db  80h	; Ä
		db  47h	; G
		db  47h	; G
		db  52h	; R
		db  45h	; E
		db  45h	; E
		db  4Eh	; N
		db  20h
		db  80h	; Ä
byte_42E0:	db 1Bh			; DATA XREF: sub_4285+9o
		db  59h	; Y
		db  27h	; '
		db  31h	; 1
		db  80h	; Ä
		db  1Bh
		db  59h	; Y
		db  27h	; '
		db  3Dh	; =
		db  80h	; Ä
		db  1Bh
		db  59h	; Y
		db  27h	; '
		db  49h	; I
		db  80h	; Ä
		db  1Bh
		db  59h	; Y
		db  2Ch	; ,
		db  49h	; I
		db  80h	; Ä
		db  1Bh
		db  59h	; Y
		db  2Ch	; ,
		db  3Dh	; =
		db  80h	; Ä
		db  1Bh
		db  59h	; Y
		db  2Ch	; ,
		db  31h	; 1
		db  80h	; Ä
byte_42FE:	db 1Bh			; DATA XREF: ROM:loc_40ECo
		db  47h	; G
		db  1Bh
		db  71h	; q
		db  80h	; Ä
byte_4303:	db 20h			; DATA XREF: ROM:loc_4182o
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  80h	; Ä
byte_430E:	db 1Bh			; DATA XREF: ROM:418Fo	ROM:41A4o ...
		db  42h	; B
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  80h	; Ä
byte_4325:	db 1Bh			; DATA XREF: ROM:419Eo	ROM:41D3o ...
		db  46h	; F
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  1Bh
		db  47h	; G
		db  80h	; Ä
byte_4334:	db 1Bh			; DATA XREF: ROM:41AAo	ROM:41C7o
		db  46h	; F
		db  69h	; i
		db  69h	; i
		db  1Bh
		db  47h	; G
		db  80h	; Ä
byte_433B:	db 0			; DATA XREF: ROM:4130w	ROM:4166r ...
byte_433C:	db 0			; DATA XREF: ROM:4160w	ROM:4171r ...
byte_433D:	db 1Bh			; DATA XREF: ROM:loc_422Ao
		db  59h	; Y
		db  31h	; 1
		db  3Ah	; :
		db  1Bh
		db  70h	; p
byte_4343:	db 32h			; DATA XREF: ROM:421Dr	ROM:4227w
byte_4344:	db 35h			; DATA XREF: ROM:loc_4208r ROM:4212w ...
		db  1Bh
		db  71h	; q
		db  80h	; Ä
; ---------------------------------------------------------------------------

loc_4348:				; CODE XREF: ROM:1373j	ROM:4544j
		ld	hl, byte_46D6
		call	outputString
		ld	hl, inputBuffer

loc_4351:				; CODE XREF: ROM:435Bj
		call	getc
		ld	(hl), a
		inc	hl
		cp	0Dh
		jp	z, loc_435E
		jp	loc_4351
; ---------------------------------------------------------------------------

loc_435E:				; CODE XREF: ROM:4358j
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

loc_4382:				; CODE XREF: ROM:4363j	ROM:4368j
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

loc_43A3:				; CODE XREF: ROM:438Fj
		ld	a, (byte_46E4)
		or	80h ; 'Ä'
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_4418
; ---------------------------------------------------------------------------

loc_43B4:				; CODE XREF: ROM:436Dj	ROM:4372j
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

loc_43D5:				; CODE XREF: ROM:43C1j
		ld	a, (byte_46E4)
		or	40h ; '@'
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_4418
; ---------------------------------------------------------------------------

loc_43E6:				; CODE XREF: ROM:4377j	ROM:437Cj
		ld	hl, byte_46AC
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

loc_4407:				; CODE XREF: ROM:43F3j
		ld	a, (byte_46E4)
		or	20h ; ' '
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_44E0
; ---------------------------------------------------------------------------

loc_4418:				; CODE XREF: ROM:43B1j	ROM:43E3j
		ld	hl, byte_46B3
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

loc_4439:				; CODE XREF: ROM:4425j
		ld	a, (byte_46E4)
		or	10h
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_447C
; ---------------------------------------------------------------------------

loc_444A:				; CODE XREF: ROM:43D2j	ROM:4404j
		ld	hl, byte_46BA
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

loc_446B:				; CODE XREF: ROM:4457j
		ld	a, (byte_46E4)
		or	8
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_44AE
; ---------------------------------------------------------------------------

loc_447C:				; CODE XREF: ROM:43A0j	ROM:4447j
		ld	hl, byte_46C1
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

loc_449D:				; CODE XREF: ROM:4489j
		ld	a, (byte_46E4)
		or	4
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_44AE:				; CODE XREF: ROM:4436j	ROM:4479j
		ld	hl, byte_46C8
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

loc_44CF:				; CODE XREF: ROM:44BBj
		ld	a, (byte_46E4)
		or	2
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString
		jp	loc_450F
; ---------------------------------------------------------------------------

loc_44E0:				; CODE XREF: ROM:4415j	ROM:4468j
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

loc_4501:				; CODE XREF: ROM:44EDj
		ld	a, (byte_46E4)
		or	1
		ld	(byte_46E4), a
		ld	hl, byte_4669
		call	outputString

loc_450F:				; CODE XREF: ROM:437Fj	ROM:449Aj ...
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

loc_452C:				; CODE XREF: ROM:4521j
		ld	a, (byte_46EB)
		cp	30h ; '0'
		jp	z, loc_45FC
		sub	1
		ld	(byte_46EB), a
		ld	a, 39h ; '9'
		ld	(byte_46EC), a

loc_453E:				; CODE XREF: ROM:4529j
		ld	hl, byte_46E5
		call	outputString
		jp	loc_4348
; ---------------------------------------------------------------------------

loc_4547:				; CODE XREF: ROM:4514j
		ld	a, 5Ah ; 'Z'
		ld	(byte_46E4), a
		ld	hl, byte_46EB
		ld	(hl), 31h ; '1'
		inc	hl
		ld	(hl), 30h ; '0'
		ld	a, (item_cpmDisk1.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, (item_cpmDisk2.location)
		cp	7
		jp	nz, loc_45CE
		ld	a, (item_repairDisk.location)
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
		ld	(bgnBaseOffsetFlag), a
		ld	a, 2Dh ; '-'
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	hl, (bgnRoomAddressMaybe)
		ld	de, 0Ch
		add	hl, de
		ld	(hl), 2Eh ; '.'
		ld	de, 8
		add	hl, de
		ld	(hl), 2Eh ; '.'
		ld	a, 3
		ld	(bgnBaseOffsetFlag), a
		ld	a, 13h
		ld	(currentRoomNumMaybe), a
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
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_45CE:				; CODE XREF: ROM:4559j	ROM:4561j ...
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

loc_45F1:				; CODE XREF: ROM:45E0j
		ld	a, r_gcs_computer_center
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		jp	loc_28A
; ---------------------------------------------------------------------------

loc_45FC:				; CODE XREF: ROM:loc_4519j ROM:4531j
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
		ld	(currentRoomNumMaybe), a
		call	getBGNRoomAddress
		ld	b, 0Ah
		call	subtractFromScore
		ld	d, 78h ; 'x'
		ld	e, 6Fh ; 'o'
		call	printFromMSGFile
		ld	d, 79h ; 'y'
		ld	e, 56h ; 'V'
		call	printFromMSGFile
		jp	loc_28A
; ---------------------------------------------------------------------------
byte_4634:	db 1Bh			; DATA XREF: ROM:439Ao	ROM:43CCo ...
		db  46h	; F
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  1Bh
		db  42h	; B
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  1Bh
		db  42h	; B
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  69h	; i
		db  1Bh
		db  47h	; G
		db  1Bh
		db  7Bh	; {
		db  80h	; Ä
byte_4669:	db 1Bh			; DATA XREF: ROM:43ABo	ROM:43DDo ...
		db  70h	; p
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  1Bh
		db  42h	; B
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  1Bh
		db  42h	; B
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  1Bh
		db  44h	; D
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  20h
		db  1Bh
		db  71h	; q
		db  1Bh
		db  7Bh	; {
		db  80h	; Ä
byte_469E:	db 1Bh			; DATA XREF: ROM:loc_4382o
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  26h	; &
		db  34h	; 4
		db  80h	; Ä
byte_46A5:	db 1Bh			; DATA XREF: ROM:loc_43B4o
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  26h	; &
		db  3Eh	; >
		db  80h	; Ä
byte_46AC:	db 1Bh			; DATA XREF: ROM:loc_43E6o
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  26h	; &
		db  48h	; H
		db  80h	; Ä
byte_46B3:	db 1Bh			; DATA XREF: ROM:loc_4418o
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  2Bh	; +
		db  39h	; 9
		db  80h	; Ä
byte_46BA:	db 1Bh			; DATA XREF: ROM:loc_444Ao
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  2Bh	; +
		db  43h	; C
		db  80h	; Ä
byte_46C1:	db 1Bh			; DATA XREF: ROM:loc_447Co
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  30h	; 0
		db  34h	; 4
		db  80h	; Ä
byte_46C8:	db 1Bh			; DATA XREF: ROM:loc_44AEo
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  30h	; 0
		db  3Eh	; >
		db  80h	; Ä
byte_46CF:	db 1Bh			; DATA XREF: ROM:loc_44E0o
		db  7Dh	; }
		db  1Bh
		db  59h	; Y
		db  30h	; 0
		db  48h	; H
		db  80h	; Ä
byte_46D6:	db 1Bh			; DATA XREF: ROM:loc_4348o
		db  59h	; Y
		db  36h	; 6
		db  34h	; 4
		db  1Bh
		db  4Bh	; K
		db  1Bh
		db  59h	; Y
		db  36h	; 6
		db  36h	; 6
		db  3Fh	; ?
		db  20h
		db  20h
		db  80h	; Ä
byte_46E4:	db 5Ah			; DATA XREF: ROM:4388r	ROM:4392r ...
byte_46E5:	db 1Bh			; DATA XREF: ROM:loc_453Eo
		db  59h	; Y
		db  34h	; 4
		db  39h	; 9
		db  1Bh
		db  70h	; p
byte_46EB:	db 31h			; DATA XREF: ROM:loc_452Cr ROM:4536w ...
byte_46EC:	db 30h			; DATA XREF: ROM:451Cr	ROM:4526w ...
		db  1Bh
		db  71h	; q
		db  80h	; Ä
byte_46F0:	db 2Fh			; DATA XREF: ROM:3E2Ao	ROM:3E3Bo ...
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
unk_4704:	db  36h	; 6		; DATA XREF: ROM:loc_157o ROM:0189o
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
byte_4790:	db 1Bh			; DATA XREF: ROM:loc_14Ao
		db  45h	; E
		db  80h	; Ä
unk_4793:	db  0Dh			; DATA XREF: ROM:0141o
		db  45h	; E
		db  52h	; R
		db  52h	; R
		db  4Fh	; O
		db  52h	; R
		db  80h	; Ä
unk_479A:	db  0Dh			; DATA XREF: sub_209F+2o
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
unk_47CA:	db  1Bh			; DATA XREF: ROM:loc_3C85o
		db  59h	; Y
		db  2Fh	; /
		db  4Dh	; M
		db  5Bh	; [
		db  30h	; 0
		db  20h
		db  74h	; t
		db  6Fh	; o
		db  20h
		db  65h	; e
		db  78h	; x
		db  69h	; i
		db  74h	; t
		db  5Dh	; ]
		db  3Fh	; ?
		db  20h
		db  20h
		db  80h	; Ä
byte_47DD:	db 1Bh			; DATA XREF: ROM:loc_3D08o ROM:41FFo ...
		db  45h	; E
		db  80h	; Ä
byte_47E0:	db 1Bh			; DATA XREF: ROM:3D34o
		db  59h	; Y
unk_47E2:	db  32h	; 2		; DATA XREF: ROM:3D40o
		db  28h	; (
		db  20h
		db  80h	; Ä
unk_47E6:	db  1Bh			; DATA XREF: ROM:3C7Fo	ROM:3D3Ao
		db  59h	; Y
unk_47E8:	db  32h	; 2		; DATA XREF: ROM:loc_3C8Bo ROM:3CD1o ...
		db  28h	; (
		db  1Bh
		db  46h	; F
		db  5Eh	; ^
		db  1Bh
		db  47h	; G
		db  80h	; Ä
turnCounterMaybe:db 0			; DATA XREF: incrementClock+31o
byte_47F1:	db 0			; DATA XREF: ROM:12AAw	ROM:12EAw ...
numInputWords:	db 0			; DATA XREF: ROM:093Cr	ROM:0D53r ...
		db    0
firstCommand:	db [ 5 ], 2Dh		; DATA XREF: getStringMaybe+58o
					; getStringMaybe+7Fo ...
		db 80h
secondCommand:	db [ 5 ], 2Dh		; DATA XREF: getStringMaybe+B2o
					; parseInput+B4o
		db 80h
abbrevCmdBuffer:db [ 5 ], 2Dh		; DATA XREF: sub_1E11+30o
					; askIfInstructions+19o ...
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
baseBGNAddress:	db 1Bh			; DATA XREF: ROM:022Co	ROM:3E80o
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
bgnRoomAddressMaybe:dw 0		; DATA XREF: ROM:0325r	ROM:0355r ...
bgnBaseOffsetFlag:db 1			; DATA XREF: ROM:0299r	ROM:0379r ...
currentRoomNumMaybe:db 11h		; DATA XREF: ROM:02A1r	ROM:0319r ...
byte_495F:	db 1			; DATA XREF: ROM:3159w	ROM:3161w ...
byte_4960:	db 0			; DATA XREF: ROM:062Dr	ROM:0632w ...
word_4961:	dw 0			; DATA XREF: ROM:loc_306r ROM:030Aw ...
byte_4963:	db 0			; DATA XREF: ROM:010Aw	ROM:01E6w ...
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
itemBoughtParson:db [ 4	], 0		 ; 0 ; DATA XREF: ROM:36CAo ROM:38A9o
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
byte_49AF:	db 0			; DATA XREF: ROM:loc_1390r ROM:41F7w
byte_49B0:	db 0			; DATA XREF: ROM:456Ew
gcs_beenPoisoned:db 0			; DATA XREF: ROM:1064r	ROM:1092w
byte_49B2:	db 0			; DATA XREF: ROM:loc_10DCr ROM:10EDw
byte_49B3:	db 0			; DATA XREF: ROM:loc_10F3r ROM:1107w
byte_49B4:	db 0			; DATA XREF: ROM:08EFr	ROM:08F9w
byte_49B5:	db 0			; DATA XREF: ROM:33D8r	ROM:33FFw
byte_49B6:	db 0			; DATA XREF: ROM:0BBEw	ROM:3307r ...
enteredBarFlag:	db 0			; DATA XREF: ROM:loc_92Ar
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
g_itemList:		object_t <6, 0,	1, 1, location_earth, 26h>
item_duffleBag:		object_t <0, 0,	2, 2, location_earth, 0Bh>
item_laser:		object_t <2, 0,	3, 3, location_none, 0Bh>
item_geigerCounter:	object_t <2, 0,	4, 4, location_none, 0Bh>
item_navComputer:	object_t <3, 1,	5, 0, location_none, 0Ch>
item_analyzer:		object_t <3, 1,	7, 0, location_none, 0Ch>
item_neutralizer:	object_t <3, 0,	9, 5, location_none, 0Ch>
item_pSuit:		object_t <3, 0,	0Bh, 6,	location_none, 0Ch>
item_pieceOfPaper:	object_t <5, 0,	0Fh, 8,	location_earth,	26h>
item_repairDisk:	object_t <0Ch, 0, 11h, 0Ah, location_earth, 2Ah>
item_purse:		object_t <4, 0,	13h, 0Bh, location_none, 28h>
item_degaussingCoil:	object_t <5, 0,	14h, 0Ch, location_isthur, 20h>
item_computerPage:	object_t <0Dh, 0, 15h, 0Dh, location_none, 2Eh>
item_card:		object_t <0, 0,	16h, 0Eh, location_navier, 1Eh>
item_diamond:		object_t <0, 1,	17h, 0,	location_navier, 24h>
item_irridium:		object_t <0, 1,	18h, 0,	location_navier, 2Ah>
item_lockingDoors:	object_t <0, 1,	19h, 0,	location_navier, 2Ch>
item_rowboat:		object_t <0, 1,	1Bh, 0,	location_navier, 2Dh>
item_trochObject:	object_t <0, 0,	20h, 0Fh, location_none, 0>
item_lucindaObject:	object_t <0, 0,	21h, 11h, location_navier, 32h>
item_cpmDisk1:		object_t <2, 0,	22h, 13h, location_none, 32h>
item_nDoor:		object_t <0, 1,	23h, 0,	location_navier, 31h>
item_oars:		object_t <0, 0,	25h, 14h, location_navier, 37h>
item_rope:		object_t <0, 0,	26h, 15h, location_navier, 3Eh>
item_cpmDisk2:		object_t <2, 0,	22h, 16h, location_none, 3Ah>
item_skeletonKey:	object_t <7, 0,	28h, 17h, location_none, 5>
item_platinumClaw:	object_t <0, 0,	29h, 18h, location_solomaw, 0Ah>
item_silverLance:	object_t <0, 0,	2Ah, 19h, location_solomaw, 0Dh>
item_crystalStatue:	object_t <0, 0,	2Bh, 1Ah, location_solomaw, 33h>
item_radSuit:		object_t <0, 0,	2Ch, 1Bh, location_isthur, 12h>
item_lockerKey:		object_t <0, 0,	2Dh, 1Ch, location_none, 6>
item_attacheCase:	object_t <5, 0,	2Fh, 1Dh, location_none, 0Ch>
item_emptyBottle	object_t <0, 0,	31h, 1Eh, location_none, 12h>
item_largeEnvelope:	object_t <6, 0,	34h, 1Fh, location_none, 0Eh>
item_dyingGirl:		object_t <0, 0,	32h, 20h, location_none, 0Fh>
g_earthRoomList:db 0			; [0].scoreBonus ; DATA	XREF: getBGNRoomAddress+1Ao
		db 40h			; [0].roomFlags
		db 6, 0			; verbose_offset
		db 5, 0E4h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [0].north_room
		db r_none1		; [0].south_room
		db r_none1		; [0].east_room
		db r_none1		; [0].west_room
		db r_none1		; [0].ne_room
		db r_none1		; [0].nw_room
		db r_none1		; [0].se_room
		db r_none1		; [0].sw_room
		db r_none1		; [0].up_room
		db r_none1		; [0].down_room
		db r_none1		; [0].cw_room
		db r_none1		; [0].ccw_room
		db r_none1		; [0].enter_room
		db r_none1		; [0].exit_room
		db r_none1		; [0].inward_room
		db r_none1		; [0].outward_room
		db 0			; [1].scoreBonus
		db 80h			; [1].roomFlags
		db 6, 0E0h		; verbose_offset
		db 6, 0BDh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [1].north_room
		db r_none1		; [1].south_room
		db r_none1		; [1].east_room
		db r_none1		; [1].west_room
		db r_none1		; [1].ne_room
		db r_none1		; [1].nw_room
		db r_none1		; [1].se_room
		db r_none1		; [1].sw_room
		db r_none1		; [1].up_room
		db r_none1		; [1].down_room
		db r_none1		; [1].cw_room
		db r_none1		; [1].ccw_room
		db r_none1		; [1].enter_room
		db 2			; [1].exit_room
		db r_none1		; [1].inward_room
		db r_none1		; [1].outward_room
		db 0			; [2].scoreBonus
		db 80h			; [2].roomFlags
		db 7, 73h		; verbose_offset
		db 6, 0BDh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 30h			; [2].north_room
		db 2Bh			; [2].south_room
		db r_customs		; [2].east_room
		db 1			; [2].west_room
		db 34h			; [2].ne_room
		db 2Dh			; [2].nw_room
		db 33h			; [2].se_room
		db 32h			; [2].sw_room
		db 2Fh			; [2].up_room
		db 2Ch			; [2].down_room
		db r_none1		; [2].cw_room
		db r_none1		; [2].ccw_room
		db 1			; [2].enter_room
		db r_none1		; [2].exit_room
		db r_none1		; [2].inward_room
		db r_none1		; [2].outward_room
		db 0			; [3].scoreBonus
		db 80h			; [3].roomFlags
		db 7, 0F1h		; verbose_offset
		db 8, 22h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [3].north_room
		db r_none1		; [3].south_room
		db r_none1		; [3].east_room
		db r_none1		; [3].west_room
		db r_none1		; [3].ne_room
		db r_none1		; [3].nw_room
		db r_none1		; [3].se_room
		db r_none1		; [3].sw_room
		db r_none1		; [3].up_room
		db r_none1		; [3].down_room
		db 4			; [3].cw_room
		db r_none		; [3].ccw_room
		db 0C9h			; [3].enter_room
		db r_none1		; [3].exit_room
		db r_none1		; [3].inward_room
		db r_none1		; [3].outward_room
		db 0			; [4].scoreBonus
		db 80h			; [4].roomFlags
		db 7, 0F1h		; verbose_offset
		db 8, 22h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [4].north_room
		db r_none1		; [4].south_room
		db r_none1		; [4].east_room
		db r_none1		; [4].west_room
		db r_none1		; [4].ne_room
		db r_none1		; [4].nw_room
		db r_none1		; [4].se_room
		db r_none1		; [4].sw_room
		db r_none1		; [4].up_room
		db r_none1		; [4].down_room
		db 5			; [4].cw_room
		db re_circular_hallway_low; [4].ccw_room
		db re_your_room		; [4].enter_room
		db r_none1		; [4].exit_room
		db r_none1		; [4].inward_room
		db r_none1		; [4].outward_room
		db 0			; [5].scoreBonus
		db 80h			; [5].roomFlags
		db 7, 0F1h		; verbose_offset
		db 8, 22h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [5].north_room
		db r_none1		; [5].south_room
		db r_none1		; [5].east_room
		db r_none1		; [5].west_room
		db r_none1		; [5].ne_room
		db r_none1		; [5].nw_room
		db r_none1		; [5].se_room
		db r_none1		; [5].sw_room
		db r_none1		; [5].up_room
		db r_none1		; [5].down_room
		db 6			; [5].cw_room
		db 4			; [5].ccw_room
		db 0C9h			; [5].enter_room
		db r_none1		; [5].exit_room
		db r_none1		; [5].inward_room
		db r_none1		; [5].outward_room
		db 0			; [6].scoreBonus
		db 80h			; [6].roomFlags
		db 7, 0F1h		; verbose_offset
		db 8, 22h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [6].north_room
		db r_none1		; [6].south_room
		db r_none1		; [6].east_room
		db r_none1		; [6].west_room
		db r_none1		; [6].ne_room
		db r_none1		; [6].nw_room
		db r_none1		; [6].se_room
		db r_none1		; [6].sw_room
		db r_none1		; [6].up_room
		db r_none1		; [6].down_room
		db 7			; [6].cw_room
		db 5			; [6].ccw_room
		db 0CAh			; [6].enter_room
		db r_none1		; [6].exit_room
		db r_none1		; [6].inward_room
		db r_none1		; [6].outward_room
		db 0			; [7].scoreBonus
		db 0A0h			; [7].roomFlags
		db 9, 8Eh		; verbose_offset
		db 8, 22h		; terse_offset
		db 0Ah,	44h		; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [7].north_room
		db r_none1		; [7].south_room
		db r_none1		; [7].east_room
		db r_foyer		; [7].west_room
		db r_none1		; [7].ne_room
		db r_none1		; [7].nw_room
		db r_none1		; [7].se_room
		db r_none1		; [7].sw_room
		db r_none1		; [7].up_room
		db r_none1		; [7].down_room
		db 8			; [7].cw_room
		db 6			; [7].ccw_room
		db 0CBh			; [7].enter_room
		db r_none1		; [7].exit_room
		db r_none1		; [7].inward_room
		db r_none1		; [7].outward_room
		db 0			; [8].scoreBonus
		db 80h			; [8].roomFlags
		db 7, 0F1h		; verbose_offset
		db 8, 22h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [8].north_room
		db r_none1		; [8].south_room
		db r_none1		; [8].east_room
		db r_none1		; [8].west_room
		db r_none1		; [8].ne_room
		db r_none1		; [8].nw_room
		db r_none1		; [8].se_room
		db r_none1		; [8].sw_room
		db r_none1		; [8].up_room
		db r_none1		; [8].down_room
		db 9			; [8].cw_room
		db 7			; [8].ccw_room
		db 0C9h			; [8].enter_room
		db r_none1		; [8].exit_room
		db r_none1		; [8].inward_room
		db r_none1		; [8].outward_room
		db 0			; [9].scoreBonus
		db 80h			; [9].roomFlags
		db 7, 0F1h		; verbose_offset
		db 8, 22h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [9].north_room
		db r_none1		; [9].south_room
		db r_none1		; [9].east_room
		db r_none1		; [9].west_room
		db r_none1		; [9].ne_room
		db r_none1		; [9].nw_room
		db r_none1		; [9].se_room
		db r_none1		; [9].sw_room
		db r_none1		; [9].up_room
		db r_none1		; [9].down_room
		db r_none		; [9].cw_room
		db 8			; [9].ccw_room
		db 0CCh			; [9].enter_room
		db r_none1		; [9].exit_room
		db r_none1		; [9].inward_room
		db r_none1		; [9].outward_room
		db 0			; [10].scoreBonus
		db 80h			; [10].roomFlags
		db 0Bh,	1Dh		; verbose_offset
		db 0Ch,	19h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [10].north_room
		db r_none1		; [10].south_room
		db r_none1		; [10].east_room
		db r_none1		; [10].west_room
		db r_none1		; [10].ne_room
		db r_none1		; [10].nw_room
		db r_none1		; [10].se_room
		db r_none1		; [10].sw_room
		db r_none1		; [10].up_room
		db r_none1		; [10].down_room
		db r_none1		; [10].cw_room
		db r_none1		; [10].ccw_room
		db r_none1		; [10].enter_room
		db re_circular_hallway_low; [10].exit_room
		db r_none1		; [10].inward_room
		db r_none1		; [10].outward_room
		db 0			; [11].scoreBonus
		db 8Ch			; [11].roomFlags
		db 0Ch,	90h		; verbose_offset
		db 0Ch,	0C8h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [11].north_room
		db r_none1		; [11].south_room
		db r_none1		; [11].east_room
		db r_none1		; [11].west_room
		db r_none1		; [11].ne_room
		db r_none1		; [11].nw_room
		db r_none1		; [11].se_room
		db r_none1		; [11].sw_room
		db r_none1		; [11].up_room
		db r_none1		; [11].down_room
		db r_none1		; [11].cw_room
		db r_none1		; [11].ccw_room
		db r_none1		; [11].enter_room
		db 4			; [11].exit_room
		db r_none1		; [11].inward_room
		db r_none1		; [11].outward_room
		db 0			; [12].scoreBonus
		db 80h			; [12].roomFlags
		db 0Eh,	2Dh		; verbose_offset
		db 0Eh,	0A4h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [12].north_room
		db r_none1		; [12].south_room
		db r_none1		; [12].east_room
		db r_none1		; [12].west_room
		db r_none1		; [12].ne_room
		db r_none1		; [12].nw_room
		db r_none1		; [12].se_room
		db r_none1		; [12].sw_room
		db r_none1		; [12].up_room
		db r_none1		; [12].down_room
		db r_none1		; [12].cw_room
		db r_none1		; [12].ccw_room
		db r_none1		; [12].enter_room
		db 5			; [12].exit_room
		db r_none1		; [12].inward_room
		db r_none1		; [12].outward_room
		db 0			; [13].scoreBonus
		db 80h			; [13].roomFlags
		db 11h,	0BBh		; verbose_offset
		db 12h,	78h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [13].north_room
		db r_none1		; [13].south_room
		db r_none1		; [13].east_room
		db r_none1		; [13].west_room
		db r_none1		; [13].ne_room
		db r_none1		; [13].nw_room
		db r_none1		; [13].se_room
		db r_none1		; [13].sw_room
		db r_none1		; [13].up_room
		db r_none1		; [13].down_room
		db r_none1		; [13].cw_room
		db r_none1		; [13].ccw_room
		db r_none1		; [13].enter_room
		db 6			; [13].exit_room
		db r_none1		; [13].inward_room
		db r_none1		; [13].outward_room
		db 0			; [14].scoreBonus
		db 80h			; [14].roomFlags
		db 12h,	0EFh		; verbose_offset
		db 13h,	82h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [14].north_room
		db r_none1		; [14].south_room
		db r_none1		; [14].east_room
		db r_none1		; [14].west_room
		db r_none1		; [14].ne_room
		db r_none1		; [14].nw_room
		db r_none1		; [14].se_room
		db r_none1		; [14].sw_room
		db r_none1		; [14].up_room
		db r_none1		; [14].down_room
		db r_none1		; [14].cw_room
		db r_none1		; [14].ccw_room
		db r_none1		; [14].enter_room
		db 7			; [14].exit_room
		db r_none1		; [14].inward_room
		db r_none1		; [14].outward_room
		db 0			; [15].scoreBonus
		db 80h			; [15].roomFlags
		db 13h,	9Eh		; verbose_offset
		db 14h,	31h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [15].north_room
		db r_none1		; [15].south_room
		db r_none1		; [15].east_room
		db r_none1		; [15].west_room
		db r_none1		; [15].ne_room
		db r_none1		; [15].nw_room
		db r_none1		; [15].se_room
		db r_none1		; [15].sw_room
		db r_none1		; [15].up_room
		db r_none1		; [15].down_room
		db r_none1		; [15].cw_room
		db r_none1		; [15].ccw_room
		db r_none1		; [15].enter_room
		db 8			; [15].exit_room
		db r_none1		; [15].inward_room
		db r_none1		; [15].outward_room
		db 0			; [16].scoreBonus
		db 80h			; [16].roomFlags
		db 14h,	93h		; verbose_offset
		db 15h,	57h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [16].north_room
		db r_none1		; [16].south_room
		db r_none1		; [16].east_room
		db r_none1		; [16].west_room
		db r_none1		; [16].ne_room
		db r_none1		; [16].nw_room
		db r_none1		; [16].se_room
		db r_none1		; [16].sw_room
		db r_none1		; [16].up_room
		db r_none1		; [16].down_room
		db r_none1		; [16].cw_room
		db r_none1		; [16].ccw_room
		db r_none1		; [16].enter_room
		db 9			; [16].exit_room
		db r_none1		; [16].inward_room
		db r_none1		; [16].outward_room
		db 0			; [17].scoreBonus
		db 0A8h			; [17].roomFlags
		db 15h,	0C0h		; verbose_offset
		db 16h,	0E6h		; terse_offset
		db 16h,	3Eh		; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_port_commander_foyer; [17].north_room
		db r_supply		; [17].south_room
		db r_foyer		; [17].east_room
		db r_customs		; [17].west_room
		db r_none		; [17].ne_room
		db r_none		; [17].nw_room
		db r_infirmary		; [17].se_room
		db r_library		; [17].sw_room
		db r_none		; [17].up_room
		db r_none		; [17].down_room
		db r_none		; [17].cw_room
		db r_none		; [17].ccw_room
		db r_none		; [17].enter_room
		db r_none		; [17].exit_room
		db r_none		; [17].inward_room
		db r_none		; [17].outward_room
		db 0			; [18].scoreBonus
		db 98h			; [18].roomFlags
		db 17h,	9		; verbose_offset
		db 17h,	0AAh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 17h,	0E2h		; offset_probably
		db r_none		; [18].north_room
		db r_comm_center	; [18].south_room
		db r_none2		; [18].east_room
		db r_none		; [18].west_room
		db r_none		; [18].ne_room
		db r_none		; [18].nw_room
		db r_foyer		; [18].se_room
		db r_customs		; [18].sw_room
		db r_none		; [18].up_room
		db r_none		; [18].down_room
		db r_foyer		; [18].cw_room
		db r_customs		; [18].ccw_room
		db r_none2		; [18].enter_room
		db r_none		; [18].exit_room
		db r_none		; [18].inward_room
		db r_none		; [18].outward_room
		db 5			; [19].scoreBonus
		db 0A0h			; [19].roomFlags
		db 18h,	13h		; verbose_offset
		db 18h,	83h		; terse_offset
		db 18h,	0ADh		; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [19].north_room
		db r_none1		; [19].south_room
		db r_none1		; [19].east_room
		db r_port_commander_foyer; [19].west_room
		db r_none1		; [19].ne_room
		db r_none1		; [19].nw_room
		db r_none1		; [19].se_room
		db r_none1		; [19].sw_room
		db r_none1		; [19].up_room
		db r_none1		; [19].down_room
		db r_none1		; [19].cw_room
		db r_none1		; [19].ccw_room
		db r_none1		; [19].enter_room
		db r_port_commander_foyer; [19].exit_room
		db r_none1		; [19].inward_room
		db r_none1		; [19].outward_room
		db 0			; [20].scoreBonus
		db 8Ch			; [20].roomFlags
		db 1Bh,	62h		; verbose_offset
		db 1Ch,	7Ah		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [20].north_room
		db r_none		; [20].south_room
		db 7			; [20].east_room
		db r_comm_center	; [20].west_room
		db r_none		; [20].ne_room
		db r_none		; [20].nw_room
		db r_none		; [20].se_room
		db r_none		; [20].sw_room
		db r_none		; [20].up_room
		db r_none		; [20].down_room
		db r_infirmary		; [20].cw_room
		db r_port_commander_foyer; [20].ccw_room
		db 7			; [20].enter_room
		db r_none1		; [20].exit_room
		db r_none1		; [20].inward_room
		db r_none1		; [20].outward_room
		db 0			; [21].scoreBonus
		db 80h			; [21].roomFlags
		db 24h,	61h		; verbose_offset
		db 25h,	2		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [21].north_room
		db r_none		; [21].south_room
		db r_none		; [21].east_room
		db r_library		; [21].west_room
		db r_none		; [21].ne_room
		db r_none		; [21].nw_room
		db r_none		; [21].se_room
		db r_none		; [21].sw_room
		db r_none		; [21].up_room
		db r_none		; [21].down_room
		db r_library		; [21].cw_room
		db r_foyer		; [21].ccw_room
		db r_none1		; [21].enter_room
		db r_none1		; [21].exit_room
		db r_none1		; [21].inward_room
		db r_none1		; [21].outward_room
		db 0			; [22].scoreBonus
		db 8Ch			; [22].roomFlags
		db 25h,	87h		; verbose_offset
		db 25h,	87h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [22].north_room
		db re_starlightLounge	; [22].south_room
		db r_infirmary		; [22].east_room
		db r_none		; [22].west_room
		db r_none		; [22].ne_room
		db r_none		; [22].nw_room
		db r_none		; [22].se_room
		db r_none		; [22].sw_room
		db r_none		; [22].up_room
		db r_none		; [22].down_room
		db r_customs		; [22].cw_room
		db r_infirmary		; [22].ccw_room
		db r_none1		; [22].enter_room
		db r_none1		; [22].exit_room
		db r_none1		; [22].inward_room
		db r_none1		; [22].outward_room
		db 0			; [23].scoreBonus
		db 80h			; [23].roomFlags
		db 25h,	0A3h		; verbose_offset
		db 27h,	0CCh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [23].north_room
		db r_none		; [23].south_room
		db r_comm_center	; [23].east_room
		db 2			; [23].west_room
		db r_none		; [23].ne_room
		db r_none		; [23].nw_room
		db r_none		; [23].se_room
		db r_none		; [23].sw_room
		db r_none		; [23].up_room
		db r_none		; [23].down_room
		db r_port_commander_foyer; [23].cw_room
		db r_library		; [23].ccw_room
		db r_none1		; [23].enter_room
		db 2			; [23].exit_room
		db r_none1		; [23].inward_room
		db r_none1		; [23].outward_room
		db 0			; [24].scoreBonus
		db 80h			; [24].roomFlags
		db 28h,	0CFh		; verbose_offset
		db 28h,	0BAh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_comm_center	; [24].north_room
		db re_starlightLounge	; [24].south_room
		db 1Ah			; [24].east_room
		db r_none		; [24].west_room
		db r_none		; [24].ne_room
		db r_none		; [24].nw_room
		db r_none		; [24].se_room
		db r_none		; [24].sw_room
		db r_none		; [24].up_room
		db r_none		; [24].down_room
		db r_none1		; [24].cw_room
		db r_none1		; [24].ccw_room
		db r_none1		; [24].enter_room
		db r_none1		; [24].exit_room
		db r_none1		; [24].inward_room
		db r_none1		; [24].outward_room
		db 0			; [25].scoreBonus
		db 80h			; [25].roomFlags
		db 29h,	77h		; verbose_offset
		db 29h,	54h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_library		; [25].north_room
		db 1Ah			; [25].south_room
		db r_supply		; [25].east_room
		db r_none		; [25].west_room
		db r_none		; [25].ne_room
		db r_none		; [25].nw_room
		db r_none		; [25].se_room
		db r_none		; [25].sw_room
		db r_none		; [25].up_room
		db r_none		; [25].down_room
		db r_none1		; [25].cw_room
		db r_none1		; [25].ccw_room
		db r_none1		; [25].enter_room
		db r_none1		; [25].exit_room
		db r_none1		; [25].inward_room
		db r_none1		; [25].outward_room
		db 0			; [26].scoreBonus
		db 80h			; [26].roomFlags
		db 2Ah,	0B9h		; verbose_offset
		db 2Bh,	37h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [26].north_room
		db 1Bh			; [26].south_room
		db r_supply		; [26].east_room
		db re_starlightLounge	; [26].west_room
		db r_none		; [26].ne_room
		db r_none		; [26].nw_room
		db r_none		; [26].se_room
		db r_none		; [26].sw_room
		db r_none		; [26].up_room
		db r_none		; [26].down_room
		db r_none1		; [26].cw_room
		db r_none1		; [26].ccw_room
		db r_none1		; [26].enter_room
		db r_none1		; [26].exit_room
		db r_none1		; [26].inward_room
		db r_none1		; [26].outward_room
		db 0			; [27].scoreBonus
		db 80h			; [27].roomFlags
		db 2Bh,	68h		; verbose_offset
		db 2Bh,	0A7h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Ah			; [27].north_room
		db 2Fh			; [27].south_room
		db 1Fh			; [27].east_room
		db 1Ch			; [27].west_room
		db r_none		; [27].ne_room
		db r_none		; [27].nw_room
		db r_none		; [27].se_room
		db r_none		; [27].sw_room
		db r_none		; [27].up_room
		db r_none		; [27].down_room
		db r_none1		; [27].cw_room
		db r_none1		; [27].ccw_room
		db r_none1		; [27].enter_room
		db r_none1		; [27].exit_room
		db r_none1		; [27].inward_room
		db r_none1		; [27].outward_room
		db 0			; [28].scoreBonus
		db 80h			; [28].roomFlags
		db 2Bh,	0C3h		; verbose_offset
		db 2Ch,	0DBh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 22h			; [28].north_room
		db re_vast_wasteland	; [28].south_room
		db 1Bh			; [28].east_room
		db 1Dh			; [28].west_room
		db r_none		; [28].ne_room
		db r_none		; [28].nw_room
		db r_none		; [28].se_room
		db r_none		; [28].sw_room
		db r_none		; [28].up_room
		db r_none		; [28].down_room
		db r_none1		; [28].cw_room
		db r_none1		; [28].ccw_room
		db 22h			; [28].enter_room
		db r_none1		; [28].exit_room
		db r_none1		; [28].inward_room
		db r_none1		; [28].outward_room
		db 0			; [29].scoreBonus
		db 80h			; [29].roomFlags
		db 2Bh,	0F4h		; verbose_offset
		db 2Ch,	0DBh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 23h			; [29].north_room
		db 2Dh			; [29].south_room
		db 1Ch			; [29].east_room
		db 1Eh			; [29].west_room
		db r_none		; [29].ne_room
		db r_none		; [29].nw_room
		db r_none		; [29].se_room
		db r_none		; [29].sw_room
		db r_none		; [29].up_room
		db r_none		; [29].down_room
		db r_none1		; [29].cw_room
		db r_none1		; [29].ccw_room
		db 23h			; [29].enter_room
		db r_none1		; [29].exit_room
		db r_none1		; [29].inward_room
		db r_none1		; [29].outward_room
		db 0			; [30].scoreBonus
		db 80h			; [30].roomFlags
		db 2Ch,	1Eh		; verbose_offset
		db 2Ch,	0DBh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_deserted_house	; [30].north_room
		db 2Ch			; [30].south_room
		db 1Dh			; [30].east_room
		db 2Bh			; [30].west_room
		db r_none		; [30].ne_room
		db r_none		; [30].nw_room
		db r_none		; [30].se_room
		db r_none		; [30].sw_room
		db r_none		; [30].up_room
		db r_none		; [30].down_room
		db r_none1		; [30].cw_room
		db r_none1		; [30].ccw_room
		db re_deserted_house	; [30].enter_room
		db r_none1		; [30].exit_room
		db r_none1		; [30].inward_room
		db r_none1		; [30].outward_room
		db 0			; [31].scoreBonus
		db 80h			; [31].roomFlags
		db 2Ch,	4Fh		; verbose_offset
		db 2Ch,	0DBh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 25h			; [31].north_room
		db 31h			; [31].south_room
		db re_front_sheriff	; [31].east_room
		db 1Bh			; [31].west_room
		db r_none		; [31].ne_room
		db r_none		; [31].nw_room
		db r_none		; [31].se_room
		db r_none		; [31].sw_room
		db r_none		; [31].up_room
		db r_none		; [31].down_room
		db r_none1		; [31].cw_room
		db r_none1		; [31].ccw_room
		db 25h			; [31].enter_room
		db r_none1		; [31].exit_room
		db r_none1		; [31].inward_room
		db r_none1		; [31].outward_room
		db 0			; [32].scoreBonus
		db 80h			; [32].roomFlags
		db 2Ch,	80h		; verbose_offset
		db 2Ch,	0DBh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 68h			; [32].north_room
		db 32h			; [32].south_room
		db 21h			; [32].east_room
		db 1Fh			; [32].west_room
		db r_none		; [32].ne_room
		db r_none		; [32].nw_room
		db r_none		; [32].se_room
		db r_none		; [32].sw_room
		db r_none		; [32].up_room
		db r_none		; [32].down_room
		db r_none1		; [32].cw_room
		db r_none1		; [32].ccw_room
		db 68h			; [32].enter_room
		db r_none1		; [32].exit_room
		db r_none1		; [32].inward_room
		db r_none1		; [32].outward_room
		db 0			; [33].scoreBonus
		db 80h			; [33].roomFlags
		db 2Ch,	0B8h		; verbose_offset
		db 2Ch,	0DBh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [33].north_room
		db 33h			; [33].south_room
		db 34h			; [33].east_room
		db re_front_sheriff	; [33].west_room
		db r_none		; [33].ne_room
		db r_none		; [33].nw_room
		db r_none		; [33].se_room
		db r_none		; [33].sw_room
		db r_none		; [33].up_room
		db r_none		; [33].down_room
		db r_none1		; [33].cw_room
		db r_none1		; [33].ccw_room
		db r_none1		; [33].enter_room
		db r_none1		; [33].exit_room
		db r_none1		; [33].inward_room
		db r_none1		; [33].outward_room
		db 0			; [34].scoreBonus
		db 80h			; [34].roomFlags
		db 2Fh,	0Bh		; verbose_offset
		db 2Eh,	0EFh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [34].north_room
		db 1Ch			; [34].south_room
		db r_none1		; [34].east_room
		db r_none1		; [34].west_room
		db r_none1		; [34].ne_room
		db r_none1		; [34].nw_room
		db r_none1		; [34].se_room
		db r_none1		; [34].sw_room
		db r_none1		; [34].up_room
		db r_none1		; [34].down_room
		db r_none1		; [34].cw_room
		db r_none1		; [34].ccw_room
		db r_none1		; [34].enter_room
		db 1Ch			; [34].exit_room
		db r_none1		; [34].inward_room
		db r_none1		; [34].outward_room
		db 0			; [35].scoreBonus
		db 0A0h			; [35].roomFlags
		db 2Eh,	0Fh		; verbose_offset
		db 2Eh,	0DAh		; terse_offset
		db 2Eh,	6Ah		; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [35].north_room
		db 1Dh			; [35].south_room
		db r_none1		; [35].east_room
		db r_none1		; [35].west_room
		db r_none1		; [35].ne_room
		db r_none1		; [35].nw_room
		db r_none1		; [35].se_room
		db r_none1		; [35].sw_room
		db r_none1		; [35].up_room
		db r_none1		; [35].down_room
		db r_none1		; [35].cw_room
		db r_none1		; [35].ccw_room
		db r_none1		; [35].enter_room
		db 1Dh			; [35].exit_room
		db r_none1		; [35].inward_room
		db r_none1		; [35].outward_room
		db 0			; [36].scoreBonus
		db 80h			; [36].roomFlags
		db 2Ch,	0F7h		; verbose_offset
		db 2Dh,	0ECh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [36].north_room
		db 1Eh			; [36].south_room
		db r_none1		; [36].east_room
		db r_none1		; [36].west_room
		db r_none1		; [36].ne_room
		db r_none1		; [36].nw_room
		db r_none1		; [36].se_room
		db r_none1		; [36].sw_room
		db r_none1		; [36].up_room
		db r_none1		; [36].down_room
		db r_none1		; [36].cw_room
		db r_none1		; [36].ccw_room
		db r_none1		; [36].enter_room
		db 1Eh			; [36].exit_room
		db r_none1		; [36].inward_room
		db r_none1		; [36].outward_room
		db 0			; [37].scoreBonus
		db 80h			; [37].roomFlags
		db 2Fh,	90h		; verbose_offset
		db 30h,	0A1h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [37].north_room
		db 1Fh			; [37].south_room
		db r_none1		; [37].east_room
		db r_none1		; [37].west_room
		db r_none1		; [37].ne_room
		db r_none1		; [37].nw_room
		db r_none1		; [37].se_room
		db r_none1		; [37].sw_room
		db r_none1		; [37].up_room
		db r_none1		; [37].down_room
		db r_none1		; [37].cw_room
		db r_none1		; [37].ccw_room
		db r_none1		; [37].enter_room
		db 1Fh			; [37].exit_room
		db r_none1		; [37].inward_room
		db r_none1		; [37].outward_room
		db 5			; [38].scoreBonus
		db 80h			; [38].roomFlags
		db 30h,	0BDh		; verbose_offset
		db 30h,	0F5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [38].north_room
		db re_front_sheriff	; [38].south_room
		db r_none1		; [38].east_room
		db r_none1		; [38].west_room
		db r_none1		; [38].ne_room
		db r_none1		; [38].nw_room
		db r_none1		; [38].se_room
		db r_none1		; [38].sw_room
		db r_none1		; [38].up_room
		db r_none1		; [38].down_room
		db r_none1		; [38].cw_room
		db r_none1		; [38].ccw_room
		db r_none1		; [38].enter_room
		db re_front_sheriff	; [38].exit_room
		db r_none1		; [38].inward_room
		db r_none1		; [38].outward_room
		db 0			; [39].scoreBonus
		db 80h			; [39].roomFlags
		db 32h,	0D1h		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_pirates_campsite	; [39].north_room
		db r_none		; [39].south_room
		db r_none		; [39].east_room
		db r_none		; [39].west_room
		db r_none		; [39].ne_room
		db 35h			; [39].nw_room
		db r_none		; [39].se_room
		db r_none		; [39].sw_room
		db r_none		; [39].up_room
		db r_none		; [39].down_room
		db r_none1		; [39].cw_room
		db r_none1		; [39].ccw_room
		db r_none1		; [39].enter_room
		db r_none1		; [39].exit_room
		db r_none1		; [39].inward_room
		db r_none1		; [39].outward_room
		db 0			; [40].scoreBonus
		db 80h			; [40].roomFlags
		db 33h,	2		; verbose_offset
		db 33h,	2		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 27h			; [40].north_room
		db r_none		; [40].south_room
		db r_none		; [40].east_room
		db r_none		; [40].west_room
		db r_none		; [40].ne_room
		db r_none		; [40].nw_room
		db r_none		; [40].se_room
		db r_none		; [40].sw_room
		db r_none		; [40].up_room
		db r_none		; [40].down_room
		db r_none1		; [40].cw_room
		db r_none1		; [40].ccw_room
		db r_none1		; [40].enter_room
		db r_none1		; [40].exit_room
		db r_none1		; [40].inward_room
		db r_none1		; [40].outward_room
		db 0			; [41].scoreBonus
		db 80h			; [41].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Eh			; [41].north_room
		db 69h			; [41].south_room
		db 2Bh			; [41].east_room
		db 2Fh			; [41].west_room
		db 2			; [41].ne_room
		db 31h			; [41].nw_room
		db 2Ch			; [41].se_room
		db re_vast_wasteland	; [41].sw_room
		db r_none		; [41].up_room
		db r_none		; [41].down_room
		db r_none1		; [41].cw_room
		db r_none1		; [41].ccw_room
		db r_none1		; [41].enter_room
		db r_none1		; [41].exit_room
		db r_none1		; [41].inward_room
		db r_none1		; [41].outward_room
		db 5			; [42].scoreBonus
		db 80h			; [42].roomFlags
		db 33h,	0A3h		; verbose_offset
		db 33h,	0E2h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [42].north_room
		db 69h			; [42].south_room
		db r_none		; [42].east_room
		db r_none		; [42].west_room
		db r_none		; [42].ne_room
		db r_none		; [42].nw_room
		db r_none		; [42].se_room
		db r_none		; [42].sw_room
		db 29h			; [42].up_room
		db r_none		; [42].down_room
		db r_none1		; [42].cw_room
		db r_none1		; [42].ccw_room
		db r_none1		; [42].enter_room
		db 29h			; [42].exit_room
		db r_none1		; [42].inward_room
		db r_none1		; [42].outward_room
		db 0			; [43].scoreBonus
		db 80h			; [43].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Eh			; [43].north_room
		db 1Ch			; [43].south_room
		db 2			; [43].east_room
		db 69h			; [43].west_room
		db 2Fh			; [43].ne_room
		db 2Bh			; [43].nw_room
		db 34h			; [43].se_room
		db 33h			; [43].sw_room
		db r_none		; [43].up_room
		db r_none		; [43].down_room
		db r_none1		; [43].cw_room
		db r_none1		; [43].ccw_room
		db r_none1		; [43].enter_room
		db r_none1		; [43].exit_room
		db r_none1		; [43].inward_room
		db r_none1		; [43].outward_room
		db 0			; [44].scoreBonus
		db 80h			; [44].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Dh			; [44].north_room
		db 2			; [44].south_room
		db 2			; [44].east_room
		db 69h			; [44].west_room
		db 31h			; [44].ne_room
		db 2Ch			; [44].nw_room
		db 34h			; [44].se_room
		db 34h			; [44].sw_room
		db r_none		; [44].up_room
		db r_none		; [44].down_room
		db r_none1		; [44].cw_room
		db r_none1		; [44].ccw_room
		db r_none1		; [44].enter_room
		db r_none1		; [44].exit_room
		db r_none1		; [44].inward_room
		db r_none1		; [44].outward_room
		db 0			; [45].scoreBonus
		db 80h			; [45].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Ch			; [45].north_room
		db 69h			; [45].south_room
		db 1Eh			; [45].east_room
		db 2			; [45].west_room
		db 32h			; [45].ne_room
		db 2Dh			; [45].nw_room
		db 33h			; [45].se_room
		db 34h			; [45].sw_room
		db r_none		; [45].up_room
		db r_none		; [45].down_room
		db r_none1		; [45].cw_room
		db r_none1		; [45].ccw_room
		db r_none1		; [45].enter_room
		db r_none1		; [45].exit_room
		db r_none1		; [45].inward_room
		db r_none1		; [45].outward_room
		db 0			; [46].scoreBonus
		db 80h			; [46].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Bh			; [46].north_room
		db 1Fh			; [46].south_room
		db 2			; [46].east_room
		db 69h			; [46].west_room
		db 33h			; [46].ne_room
		db re_vast_wasteland	; [46].nw_room
		db 32h			; [46].se_room
		db 31h			; [46].sw_room
		db r_none		; [46].up_room
		db r_none		; [46].down_room
		db r_none1		; [46].cw_room
		db r_none1		; [46].ccw_room
		db r_none1		; [46].enter_room
		db r_none1		; [46].exit_room
		db r_none1		; [46].inward_room
		db r_none1		; [46].outward_room
		db 0			; [47].scoreBonus
		db 80h			; [47].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Fh			; [47].north_room
		db 2			; [47].south_room
		db 69h			; [47].east_room
		db re_front_sheriff	; [47].west_room
		db 34h			; [47].ne_room
		db 2Fh			; [47].nw_room
		db 31h			; [47].se_room
		db 2Bh			; [47].sw_room
		db r_none		; [47].up_room
		db r_none		; [47].down_room
		db r_none1		; [47].cw_room
		db r_none1		; [47].ccw_room
		db r_none1		; [47].enter_room
		db r_none1		; [47].exit_room
		db r_none1		; [47].inward_room
		db r_none1		; [47].outward_room
		db 0			; [48].scoreBonus
		db 80h			; [48].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_front_sheriff	; [48].north_room
		db 2			; [48].south_room
		db 2			; [48].east_room
		db 35h			; [48].west_room
		db 34h			; [48].ne_room
		db 31h			; [48].nw_room
		db 69h			; [48].se_room
		db 2Ch			; [48].sw_room
		db r_none		; [48].up_room
		db r_none		; [48].down_room
		db r_none1		; [48].cw_room
		db r_none1		; [48].ccw_room
		db r_none1		; [48].enter_room
		db r_none1		; [48].exit_room
		db r_none1		; [48].inward_room
		db r_none1		; [48].outward_room
		db 0			; [49].scoreBonus
		db 80h			; [49].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 21h			; [49].north_room
		db 33h			; [49].south_room
		db 2			; [49].east_room
		db 2			; [49].west_room
		db 2Fh			; [49].ne_room
		db 32h			; [49].nw_room
		db re_vast_wasteland	; [49].se_room
		db 69h			; [49].sw_room
		db r_none		; [49].up_room
		db r_none		; [49].down_room
		db r_none1		; [49].cw_room
		db r_none1		; [49].ccw_room
		db r_none1		; [49].enter_room
		db r_none1		; [49].exit_room
		db r_none1		; [49].inward_room
		db r_none1		; [49].outward_room
		db 0			; [50].scoreBonus
		db 80h			; [50].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Dh			; [50].north_room
		db 2			; [50].south_room
		db 21h			; [50].east_room
		db 2			; [50].west_room
		db 69h			; [50].ne_room
		db 33h			; [50].nw_room
		db 2Dh			; [50].se_room
		db re_vast_wasteland	; [50].sw_room
		db r_none		; [50].up_room
		db r_none		; [50].down_room
		db r_none1		; [50].cw_room
		db r_none1		; [50].ccw_room
		db r_none1		; [50].enter_room
		db r_none1		; [50].exit_room
		db r_none1		; [50].inward_room
		db r_none1		; [50].outward_room
		db 0			; [51].scoreBonus
		db 80h			; [51].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Ch			; [51].north_room
		db 1Bh			; [51].south_room
		db 2			; [51].east_room
		db 2			; [51].west_room
		db 2Ch			; [51].ne_room
		db 34h			; [51].nw_room
		db 69h			; [51].se_room
		db 29h			; [51].sw_room
		db r_none		; [51].up_room
		db r_none		; [51].down_room
		db r_none1		; [51].cw_room
		db r_none1		; [51].ccw_room
		db r_none1		; [51].enter_room
		db r_none1		; [51].exit_room
		db r_none1		; [51].inward_room
		db r_none1		; [51].outward_room
		db 0			; [52].scoreBonus
		db 80h			; [52].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Bh			; [52].north_room
		db 69h			; [52].south_room
		db 1Ch			; [52].east_room
		db 2			; [52].west_room
		db 2Dh			; [52].ne_room
		db re_vast_wasteland	; [52].nw_room
		db 2Bh			; [52].se_room
		db 31h			; [52].sw_room
		db r_none		; [52].up_room
		db r_none		; [52].down_room
		db r_none1		; [52].cw_room
		db r_none1		; [52].ccw_room
		db r_none1		; [52].enter_room
		db r_none1		; [52].exit_room
		db r_none1		; [52].inward_room
		db r_none1		; [52].outward_room
		db 0			; [53].scoreBonus
		db 80h			; [53].roomFlags
		db 32h,	6Fh		; verbose_offset
		db 32h,	0B5h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Fh			; [53].north_room
		db 69h			; [53].south_room
		db 2			; [53].east_room
		db 1Dh			; [53].west_room
		db re_vast_wasteland	; [53].ne_room
		db 31h			; [53].nw_room
		db 27h			; [53].se_room
		db 69h			; [53].sw_room
		db r_none		; [53].up_room
		db r_none		; [53].down_room
		db r_none1		; [53].cw_room
		db r_none1		; [53].ccw_room
		db r_none1		; [53].enter_room
		db r_none1		; [53].exit_room
		db r_none1		; [53].inward_room
		db r_none1		; [53].outward_room
isthurRoomData:	db 0			; [0].scoreBonus ; DATA	XREF: getBGNRoomAddress+25o
		db 80h			; [0].roomFlags
		db 34h,	0D0h		; [0].verbose_offset
		db 35h,	63h		; [0].terse_offset
		db 0, 0			; [0].firstMaybe_offset
		db 0, 0			; [0].offset_probably
		db r_ist_none1		; [0].north_room
		db r_ist_none1		; [0].south_room
		db r_ist_none1		; [0].east_room
		db r_ist_none1		; [0].west_room
		db r_ist_none1		; [0].ne_room
		db r_ist_none1		; [0].nw_room
		db r_ist_none1		; [0].se_room
		db r_ist_none1		; [0].sw_room
		db r_ist_none1		; [0].up_room
		db r_ist_none1		; [0].down_room
		db r_ist_none1		; [0].cw_room
		db r_ist_none1		; [0].ccw_room
		db r_ist_none1		; [0].enter_room
		db r_ist_none1		; [0].exit_room
		db r_ist_none1		; [0].inward_room
		db r_ist_none1		; [0].outward_room
		db 0			; [1].scoreBonus
		db 80h			; [1].roomFlags
		db 35h,	86h		; [1].verbose_offset
		db 36h,	0Bh		; [1].terse_offset
		db 0, 0			; [1].firstMaybe_offset
		db 0, 0			; [1].offset_probably
		db r_ist_none1		; [1].north_room
		db r_ist_none1		; [1].south_room
		db r_ist_none1		; [1].east_room
		db r_ist_none1		; [1].west_room
		db r_ist_none1		; [1].ne_room
		db r_ist_none1		; [1].nw_room
		db r_ist_none1		; [1].se_room
		db r_ist_none1		; [1].sw_room
		db r_ist_none1		; [1].up_room
		db r_ist_none1		; [1].down_room
		db r_ist_none1		; [1].cw_room
		db r_ist_none1		; [1].ccw_room
		db r_ist_none1		; [1].enter_room
		db r_landing_site	; [1].exit_room
		db r_ist_none1		; [1].inward_room
		db r_ist_none1		; [1].outward_room
		db 0			; [2].scoreBonus
		db 80h			; [2].roomFlags
		db 36h,	2Eh		; [2].verbose_offset
		db 36h,	0Bh		; [2].terse_offset
		db 0, 0			; [2].firstMaybe_offset
		db 0, 0			; [2].offset_probably
		db r_entr_gamma		; [2].north_room
		db 1			; [2].south_room
		db r_ist_none		; [2].east_room
		db r_ist_none		; [2].west_room
		db r_ist_none		; [2].ne_room
		db r_ist_none		; [2].nw_room
		db r_ist_none		; [2].se_room
		db r_ist_none		; [2].sw_room
		db r_ist_none		; [2].up_room
		db r_ist_none		; [2].down_room
		db r_ist_none1		; [2].cw_room
		db r_ist_none1		; [2].ccw_room
		db 1			; [2].enter_room
		db r_ist_none1		; [2].exit_room
		db r_ist_none1		; [2].inward_room
		db r_ist_none1		; [2].outward_room
		db 0			; [3].scoreBonus
		db 80h			; [3].roomFlags
		db 36h,	0B3h		; [3].verbose_offset
		db 36h,	0B3h		; [3].terse_offset
		db 0, 0			; [3].firstMaybe_offset
		db 0, 0			; [3].offset_probably
		db r_NS_tunnel_0	; [3].north_room
		db r_landing_site	; [3].south_room
		db r_ist_none		; [3].east_room
		db r_ist_none		; [3].west_room
		db r_ist_none		; [3].ne_room
		db r_ist_none		; [3].nw_room
		db r_ist_none		; [3].se_room
		db r_ist_none		; [3].sw_room
		db r_ist_none		; [3].up_room
		db r_ist_none		; [3].down_room
		db r_ist_none1		; [3].cw_room
		db r_ist_none1		; [3].ccw_room
		db r_ist_none1		; [3].enter_room
		db r_ist_none1		; [3].exit_room
		db r_ist_none1		; [3].inward_room
		db r_ist_none1		; [3].outward_room
		db 0			; [4].scoreBonus
		db 80h			; [4].roomFlags
		db 37h,	0E0h		; [4].verbose_offset
		db 37h,	0E0h		; [4].terse_offset
		db 0, 0			; [4].firstMaybe_offset
		db 0, 0			; [4].offset_probably
		db 5			; [4].north_room
		db r_entr_gamma		; [4].south_room
		db r_ist_none		; [4].east_room
		db r_ist_none		; [4].west_room
		db r_ist_none		; [4].ne_room
		db r_ist_none		; [4].nw_room
		db r_ist_none		; [4].se_room
		db r_ist_none		; [4].sw_room
		db r_ist_none		; [4].up_room
		db r_ist_none		; [4].down_room
		db r_ist_none1		; [4].cw_room
		db r_ist_none1		; [4].ccw_room
		db r_ist_none1		; [4].enter_room
		db r_ist_none1		; [4].exit_room
		db r_ist_none1		; [4].inward_room
		db r_ist_none1		; [4].outward_room
		db 0			; [5].scoreBonus
		db 80h			; [5].roomFlags
		db 38h,	18h		; [5].verbose_offset
		db 38h,	18h		; [5].terse_offset
		db 0, 0			; [5].firstMaybe_offset
		db 0, 0			; [5].offset_probably
		db 7			; [5].north_room
		db r_NS_tunnel_0	; [5].south_room
		db 8			; [5].east_room
		db 6			; [5].west_room
		db r_ist_none		; [5].ne_room
		db r_ist_none		; [5].nw_room
		db r_ist_none		; [5].se_room
		db r_ist_none		; [5].sw_room
		db r_ist_none		; [5].up_room
		db r_ist_none		; [5].down_room
		db r_ist_none1		; [5].cw_room
		db r_ist_none1		; [5].ccw_room
		db r_ist_none1		; [5].enter_room
		db r_ist_none1		; [5].exit_room
		db r_ist_none1		; [5].inward_room
		db r_ist_none1		; [5].outward_room
		db 0			; [6].scoreBonus
		db 80h			; [6].roomFlags
		db 37h,	0FCh		; [6].verbose_offset
		db 37h,	0FCh		; [6].terse_offset
		db 0, 0			; [6].firstMaybe_offset
		db 0, 0			; [6].offset_probably
		db r_ist_none		; [6].north_room
		db r_ist_none		; [6].south_room
		db 5			; [6].east_room
		db r_commandant_foyer	; [6].west_room
		db r_ist_none		; [6].ne_room
		db r_ist_none		; [6].nw_room
		db r_ist_none		; [6].se_room
		db r_ist_none		; [6].sw_room
		db r_ist_none		; [6].up_room
		db r_ist_none		; [6].down_room
		db r_ist_none1		; [6].cw_room
		db r_ist_none1		; [6].ccw_room
		db r_ist_none1		; [6].enter_room
		db r_ist_none1		; [6].exit_room
		db r_ist_none1		; [6].inward_room
		db r_ist_none1		; [6].outward_room
		db 0			; [7].scoreBonus
		db 80h			; [7].roomFlags
		db 37h,	0E0h		; [7].verbose_offset
		db 37h,	0E0h		; [7].terse_offset
		db 0, 0			; [7].firstMaybe_offset
		db 0, 0			; [7].offset_probably
		db 0Ch			; [7].north_room
		db 5			; [7].south_room
		db r_ist_none		; [7].east_room
		db r_ist_none		; [7].west_room
		db r_ist_none		; [7].ne_room
		db r_ist_none		; [7].nw_room
		db r_ist_none		; [7].se_room
		db r_ist_none		; [7].sw_room
		db r_ist_none		; [7].up_room
		db r_ist_none		; [7].down_room
		db r_ist_none1		; [7].cw_room
		db r_ist_none1		; [7].ccw_room
		db r_ist_none1		; [7].enter_room
		db r_ist_none1		; [7].exit_room
		db r_ist_none1		; [7].inward_room
		db r_ist_none1		; [7].outward_room
		db 0			; [8].scoreBonus
		db 80h			; [8].roomFlags
		db 37h,	0FCh		; [8].verbose_offset
		db 37h,	0FCh		; [8].terse_offset
		db 0, 0			; [8].firstMaybe_offset
		db 0, 0			; [8].offset_probably
		db r_ist_none		; [8].north_room
		db r_ist_none		; [8].south_room
		db 9			; [8].east_room
		db 5			; [8].west_room
		db r_ist_none		; [8].ne_room
		db r_ist_none		; [8].nw_room
		db r_ist_none		; [8].se_room
		db r_ist_none		; [8].sw_room
		db r_ist_none		; [8].up_room
		db r_ist_none		; [8].down_room
		db r_ist_none1		; [8].cw_room
		db r_ist_none1		; [8].ccw_room
		db r_ist_none1		; [8].enter_room
		db r_ist_none1		; [8].exit_room
		db r_ist_none1		; [8].inward_room
		db r_ist_none1		; [8].outward_room
		db 0			; [9].scoreBonus
		db 90h			; [9].roomFlags
		db 3Ch,	0C5h		; [9].verbose_offset
		db 3Ch,	0C5h		; [9].terse_offset
		db 0, 0			; [9].firstMaybe_offset
		db 3Ch,	0EFh		; [9].offset_probably
		db r_ist_none		; [9].north_room
		db r_ist_none		; [9].south_room
		db r_ist_none		; [9].east_room
		db 8			; [9].west_room
		db r_ist_none		; [9].ne_room
		db r_ist_none		; [9].nw_room
		db r_ist_none		; [9].se_room
		db r_ist_none		; [9].sw_room
		db r_ist_none		; [9].up_room
		db r_ist_none		; [9].down_room
		db r_ist_none1		; [9].cw_room
		db r_ist_none1		; [9].ccw_room
		db r_ist_none1		; [9].enter_room
		db r_ist_none1		; [9].exit_room
		db r_ist_none1		; [9].inward_room
		db r_ist_none1		; [9].outward_room
		db 0			; [10].scoreBonus
		db 80h			; [10].roomFlags
		db 38h,	9Dh		; [10].verbose_offset
		db 39h,	68h		; [10].terse_offset
		db 0, 0			; [10].firstMaybe_offset
		db 0, 0			; [10].offset_probably
		db r_ist_none		; [10].north_room
		db r_ist_none		; [10].south_room
		db 6			; [10].east_room
		db r_commandant_office	; [10].west_room
		db r_ist_none		; [10].ne_room
		db r_ist_none		; [10].nw_room
		db r_ist_none		; [10].se_room
		db r_ist_none		; [10].sw_room
		db r_ist_none		; [10].up_room
		db r_ist_none		; [10].down_room
		db r_ist_none1		; [10].cw_room
		db r_ist_none1		; [10].ccw_room
		db r_commandant_office	; [10].enter_room
		db r_ist_none1		; [10].exit_room
		db r_ist_none1		; [10].inward_room
		db r_ist_none1		; [10].outward_room
		db 10			; [11].scoreBonus
		db 0A0h			; [11].roomFlags
		db 39h,	22h		; [11].verbose_offset
		db 39h,	22h		; [11].terse_offset
		db 39h,	0A0h		; [11].firstMaybe_offset
		db 0, 0			; [11].offset_probably
		db r_ist_none1		; [11].north_room
		db r_ist_none1		; [11].south_room
		db r_commandant_foyer	; [11].east_room
		db r_ist_none1		; [11].west_room
		db r_ist_none1		; [11].ne_room
		db r_ist_none1		; [11].nw_room
		db r_ist_none1		; [11].se_room
		db r_ist_none1		; [11].sw_room
		db r_ist_none1		; [11].up_room
		db r_ist_none1		; [11].down_room
		db r_ist_none1		; [11].cw_room
		db r_ist_none1		; [11].ccw_room
		db r_ist_none1		; [11].enter_room
		db r_commandant_foyer	; [11].exit_room
		db r_ist_none1		; [11].inward_room
		db r_ist_none1		; [11].outward_room
		db 0			; [12].scoreBonus
		db 80h			; [12].roomFlags
		db 38h,	5Eh		; [12].verbose_offset
		db 38h,	5Eh		; [12].terse_offset
		db 0, 0			; [12].firstMaybe_offset
		db 0, 0			; [12].offset_probably
		db 0Dh			; [12].north_room
		db 7			; [12].south_room
		db 19h			; [12].east_room
		db r_ist_none		; [12].west_room
		db r_ist_none		; [12].ne_room
		db r_ist_none		; [12].nw_room
		db r_ist_none		; [12].se_room
		db r_ist_none		; [12].sw_room
		db r_ist_none		; [12].up_room
		db r_ist_none		; [12].down_room
		db r_ist_none1		; [12].cw_room
		db r_ist_none1		; [12].ccw_room
		db r_ist_none1		; [12].enter_room
		db r_ist_none1		; [12].exit_room
		db r_ist_none1		; [12].inward_room
		db r_ist_none1		; [12].outward_room
		db 0			; [13].scoreBonus
		db 80h			; [13].roomFlags
		db 37h,	0E0h		; [13].verbose_offset
		db 37h,	0E0h		; [13].terse_offset
		db 0, 0			; [13].firstMaybe_offset
		db 0, 0			; [13].offset_probably
		db 0Eh			; [13].north_room
		db 0Ch			; [13].south_room
		db r_ist_none		; [13].east_room
		db r_ist_none		; [13].west_room
		db r_ist_none		; [13].ne_room
		db r_ist_none		; [13].nw_room
		db r_ist_none		; [13].se_room
		db r_ist_none		; [13].sw_room
		db r_ist_none		; [13].up_room
		db r_ist_none		; [13].down_room
		db r_ist_none1		; [13].cw_room
		db r_ist_none1		; [13].ccw_room
		db r_ist_none1		; [13].enter_room
		db r_ist_none1		; [13].exit_room
		db r_ist_none1		; [13].inward_room
		db r_ist_none1		; [13].outward_room
		db 0			; [14].scoreBonus
		db 80h			; [14].roomFlags
		db 3Dh,	0B3h		; [14].verbose_offset
		db 3Dh,	0B3h		; [14].terse_offset
		db 0, 0			; [14].firstMaybe_offset
		db 0, 0			; [14].offset_probably
		db 0Fh			; [14].north_room
		db 0Dh			; [14].south_room
		db r_ist_none		; [14].east_room
		db r_ist_none		; [14].west_room
		db r_ist_none		; [14].ne_room
		db r_ist_none		; [14].nw_room
		db r_ist_none		; [14].se_room
		db r_ist_none		; [14].sw_room
		db r_ist_none		; [14].up_room
		db r_ist_none		; [14].down_room
		db r_ist_none1		; [14].cw_room
		db r_ist_none1		; [14].ccw_room
		db r_ist_none1		; [14].enter_room
		db r_ist_none1		; [14].exit_room
		db r_ist_none1		; [14].inward_room
		db r_ist_none1		; [14].outward_room
		db 0			; [15].scoreBonus
		db 80h			; [15].roomFlags
		db 37h,	0E0h		; [15].verbose_offset
		db 37h,	0E0h		; [15].terse_offset
		db 0, 0			; [15].firstMaybe_offset
		db 0, 0			; [15].offset_probably
		db 10h			; [15].north_room
		db 0Eh			; [15].south_room
		db r_ist_none		; [15].east_room
		db r_ist_none		; [15].west_room
		db r_ist_none		; [15].ne_room
		db r_ist_none		; [15].nw_room
		db r_ist_none		; [15].se_room
		db r_ist_none		; [15].sw_room
		db r_ist_none		; [15].up_room
		db r_ist_none		; [15].down_room
		db r_ist_none1		; [15].cw_room
		db r_ist_none1		; [15].ccw_room
		db r_ist_none1		; [15].enter_room
		db r_ist_none1		; [15].exit_room
		db r_ist_none1		; [15].inward_room
		db r_ist_none1		; [15].outward_room
		db 0			; [16].scoreBonus
		db 80h			; [16].roomFlags
		db 3Dh,	0CFh		; [16].verbose_offset
		db 3Dh,	0CFh		; [16].terse_offset
		db 0, 0			; [16].firstMaybe_offset
		db 0, 0			; [16].offset_probably
		db r_ist_none		; [16].north_room
		db 0Fh			; [16].south_room
		db r_ist_none		; [16].east_room
		db 11h			; [16].west_room
		db r_ist_none		; [16].ne_room
		db r_ist_none		; [16].nw_room
		db r_ist_none		; [16].se_room
		db r_ist_none		; [16].sw_room
		db r_ist_none		; [16].up_room
		db r_ist_none		; [16].down_room
		db r_ist_none1		; [16].cw_room
		db r_ist_none1		; [16].ccw_room
		db r_ist_none1		; [16].enter_room
		db r_ist_none1		; [16].exit_room
		db r_ist_none1		; [16].inward_room
		db r_ist_none1		; [16].outward_room
		db 0			; [17].scoreBonus
		db 80h			; [17].roomFlags
		db 37h,	0FCh		; [17].verbose_offset
		db 37h,	0FCh		; [17].terse_offset
		db 0, 0			; [17].firstMaybe_offset
		db 0, 0			; [17].offset_probably
		db r_ist_none		; [17].north_room
		db r_ist_none		; [17].south_room
		db 10h			; [17].east_room
		db 12h			; [17].west_room
		db r_ist_none		; [17].ne_room
		db r_ist_none		; [17].nw_room
		db r_ist_none		; [17].se_room
		db r_ist_none		; [17].sw_room
		db r_ist_none		; [17].up_room
		db r_ist_none		; [17].down_room
		db r_ist_none1		; [17].cw_room
		db r_ist_none1		; [17].ccw_room
		db r_ist_none1		; [17].enter_room
		db r_ist_none1		; [17].exit_room
		db r_ist_none1		; [17].inward_room
		db r_ist_none1		; [17].outward_room
		db 0			; [18].scoreBonus
		db 80h			; [18].roomFlags
		db 3Dh,	0EBh		; [18].verbose_offset
		db 3Eh,	69h		; [18].terse_offset
		db 0, 0			; [18].firstMaybe_offset
		db 0, 0			; [18].offset_probably
		db r_ist_none		; [18].north_room
		db 13h			; [18].south_room
		db 11h			; [18].east_room
		db 15h			; [18].west_room
		db r_ist_none		; [18].ne_room
		db r_ist_none		; [18].nw_room
		db r_ist_none		; [18].se_room
		db r_ist_none		; [18].sw_room
		db r_ist_none		; [18].up_room
		db r_ist_none		; [18].down_room
		db r_ist_none1		; [18].cw_room
		db r_ist_none1		; [18].ccw_room
		db r_ist_none1		; [18].enter_room
		db r_ist_none1		; [18].exit_room
		db r_ist_none1		; [18].inward_room
		db r_ist_none1		; [18].outward_room
		db 0			; [19].scoreBonus
		db 80h			; [19].roomFlags
		db 37h,	0E0h		; [19].verbose_offset
		db 37h,	0E0h		; [19].terse_offset
		db 0, 0			; [19].firstMaybe_offset
		db 0, 0			; [19].offset_probably
		db 12h			; [19].north_room
		db 14h			; [19].south_room
		db r_ist_none		; [19].east_room
		db r_ist_none		; [19].west_room
		db r_ist_none		; [19].ne_room
		db r_ist_none		; [19].nw_room
		db r_ist_none		; [19].se_room
		db r_ist_none		; [19].sw_room
		db r_ist_none		; [19].up_room
		db r_ist_none		; [19].down_room
		db r_ist_none1		; [19].cw_room
		db r_ist_none1		; [19].ccw_room
		db r_ist_none1		; [19].enter_room
		db r_ist_none1		; [19].exit_room
		db r_ist_none1		; [19].inward_room
		db r_ist_none1		; [19].outward_room
		db 0			; [20].scoreBonus
		db 80h			; [20].roomFlags
		db 3Eh,	0AFh		; [20].verbose_offset
		db 3Eh,	8Ch		; [20].terse_offset
		db 0, 0			; [20].firstMaybe_offset
		db 0, 0			; [20].offset_probably
		db 13h			; [20].north_room
		db r_ist_none		; [20].south_room
		db r_ist_none		; [20].east_room
		db r_ist_none		; [20].west_room
		db r_ist_none		; [20].ne_room
		db r_ist_none		; [20].nw_room
		db r_ist_none		; [20].se_room
		db r_ist_none		; [20].sw_room
		db r_ist_none		; [20].up_room
		db r_ist_none		; [20].down_room
		db r_ist_none1		; [20].cw_room
		db r_ist_none1		; [20].ccw_room
		db r_ist_none1		; [20].enter_room
		db r_ist_none1		; [20].exit_room
		db r_ist_none1		; [20].inward_room
		db r_ist_none1		; [20].outward_room
		db 0			; [21].scoreBonus
		db 80h			; [21].roomFlags
		db 37h,	0FCh		; [21].verbose_offset
		db 37h,	0FCh		; [21].terse_offset
		db 0, 0			; [21].firstMaybe_offset
		db 0, 0			; [21].offset_probably
		db r_ist_none		; [21].north_room
		db r_ist_none		; [21].south_room
		db 12h			; [21].east_room
		db 16h			; [21].west_room
		db r_ist_none		; [21].ne_room
		db r_ist_none		; [21].nw_room
		db r_ist_none		; [21].se_room
		db r_ist_none		; [21].sw_room
		db r_ist_none		; [21].up_room
		db r_ist_none		; [21].down_room
		db r_ist_none1		; [21].cw_room
		db r_ist_none1		; [21].ccw_room
		db r_ist_none1		; [21].enter_room
		db r_ist_none1		; [21].exit_room
		db r_ist_none1		; [21].inward_room
		db r_ist_none1		; [21].outward_room
		db 0			; [22].scoreBonus
		db 80h			; [22].roomFlags
		db 3Fh,	49h		; [22].verbose_offset
		db 3Fh,	2Dh		; [22].terse_offset
		db 0, 0			; [22].firstMaybe_offset
		db 0, 0			; [22].offset_probably
		db r_ist_none		; [22].north_room
		db 17h			; [22].south_room
		db 15h			; [22].east_room
		db r_ist_none		; [22].west_room
		db r_ist_none		; [22].ne_room
		db r_ist_none		; [22].nw_room
		db r_ist_none		; [22].se_room
		db r_ist_none		; [22].sw_room
		db r_ist_none		; [22].up_room
		db r_ist_none		; [22].down_room
		db r_ist_none1		; [22].cw_room
		db r_ist_none1		; [22].ccw_room
		db r_ist_none1		; [22].enter_room
		db r_ist_none1		; [22].exit_room
		db r_ist_none1		; [22].inward_room
		db r_ist_none1		; [22].outward_room
		db 0			; [23].scoreBonus
		db 80h			; [23].roomFlags
		db 37h,	0E0h		; [23].verbose_offset
		db 37h,	0E0h		; [23].terse_offset
		db 0, 0			; [23].firstMaybe_offset
		db 0, 0			; [23].offset_probably
		db 16h			; [23].north_room
		db r_intelligence_HQ	; [23].south_room
		db r_ist_none		; [23].east_room
		db r_ist_none		; [23].west_room
		db r_ist_none		; [23].ne_room
		db r_ist_none		; [23].nw_room
		db r_ist_none		; [23].se_room
		db r_ist_none		; [23].sw_room
		db r_ist_none		; [23].up_room
		db r_ist_none		; [23].down_room
		db r_ist_none1		; [23].cw_room
		db r_ist_none1		; [23].ccw_room
		db r_ist_none1		; [23].enter_room
		db r_ist_none1		; [23].exit_room
		db r_ist_none1		; [23].inward_room
		db r_ist_none1		; [23].outward_room
		db 10			; [24].scoreBonus
		db 80h			; [24].roomFlags
		db 3Fh,	0E3h		; [24].verbose_offset
		db 3Fh,	0C0h		; [24].terse_offset
		db 0, 0			; [24].firstMaybe_offset
		db 0, 0			; [24].offset_probably
		db 17h			; [24].north_room
		db r_ist_none		; [24].south_room
		db r_ist_none		; [24].east_room
		db r_ist_none		; [24].west_room
		db r_ist_none		; [24].ne_room
		db r_ist_none		; [24].nw_room
		db r_ist_none		; [24].se_room
		db r_ist_none		; [24].sw_room
		db r_ist_none		; [24].up_room
		db r_ist_none		; [24].down_room
		db r_ist_none1		; [24].cw_room
		db r_ist_none1		; [24].ccw_room
		db r_ist_none1		; [24].enter_room
		db r_ist_none1		; [24].exit_room
		db r_ist_none1		; [24].inward_room
		db r_ist_none1		; [24].outward_room
		db 0			; [25].scoreBonus
		db 80h			; [25].roomFlags
		db 37h,	0FCh		; [25].verbose_offset
		db 37h,	0FCh		; [25].terse_offset
		db 0, 0			; [25].firstMaybe_offset
		db 0, 0			; [25].offset_probably
		db r_ist_none		; [25].north_room
		db r_ist_none		; [25].south_room
		db r_cafeteria		; [25].east_room
		db 0Ch			; [25].west_room
		db r_ist_none		; [25].ne_room
		db r_ist_none		; [25].nw_room
		db r_ist_none		; [25].se_room
		db r_ist_none		; [25].sw_room
		db r_ist_none		; [25].up_room
		db r_ist_none		; [25].down_room
		db r_ist_none1		; [25].cw_room
		db r_ist_none1		; [25].ccw_room
		db r_ist_none1		; [25].enter_room
		db r_ist_none1		; [25].exit_room
		db r_ist_none1		; [25].inward_room
		db r_ist_none1		; [25].outward_room
		db 0			; [26].scoreBonus
		db 80h			; [26].roomFlags
		db 3Dh,	82h		; [26].verbose_offset
		db 3Dh,	82h		; [26].terse_offset
		db 0, 0			; [26].firstMaybe_offset
		db 0, 0			; [26].offset_probably
		db r_ist_none		; [26].north_room
		db r_ist_none		; [26].south_room
		db 1Bh			; [26].east_room
		db 19h			; [26].west_room
		db r_ist_none		; [26].ne_room
		db r_ist_none		; [26].nw_room
		db r_ist_none		; [26].se_room
		db r_ist_none		; [26].sw_room
		db r_ist_none		; [26].up_room
		db r_ist_none		; [26].down_room
		db r_ist_none1		; [26].cw_room
		db r_ist_none1		; [26].ccw_room
		db r_ist_none1		; [26].enter_room
		db r_ist_none1		; [26].exit_room
		db r_ist_none1		; [26].inward_room
		db r_ist_none1		; [26].outward_room
		db 0			; [27].scoreBonus
		db 80h			; [27].roomFlags
		db 37h,	0FCh		; [27].verbose_offset
		db 37h,	0FCh		; [27].terse_offset
		db 0, 0			; [27].firstMaybe_offset
		db 0, 0			; [27].offset_probably
		db r_ist_none		; [27].north_room
		db r_ist_none		; [27].south_room
		db 1Ch			; [27].east_room
		db r_cafeteria		; [27].west_room
		db r_ist_none		; [27].ne_room
		db r_ist_none		; [27].nw_room
		db r_ist_none		; [27].se_room
		db r_ist_none		; [27].sw_room
		db r_ist_none		; [27].up_room
		db r_ist_none		; [27].down_room
		db r_ist_none1		; [27].cw_room
		db r_ist_none1		; [27].ccw_room
		db r_ist_none1		; [27].enter_room
		db r_ist_none1		; [27].exit_room
		db r_ist_none1		; [27].inward_room
		db r_ist_none1		; [27].outward_room
		db 0			; [28].scoreBonus
		db 80h			; [28].roomFlags
		db 41h,	0A3h		; [28].verbose_offset
		db 41h,	87h		; [28].terse_offset
		db 0, 0			; [28].firstMaybe_offset
		db 0, 0			; [28].offset_probably
		db 1Dh			; [28].north_room
		db 27h			; [28].south_room
		db r_ist_none		; [28].east_room
		db 1Bh			; [28].west_room
		db r_ist_none		; [28].ne_room
		db r_ist_none		; [28].nw_room
		db r_ist_none		; [28].se_room
		db r_ist_none		; [28].sw_room
		db r_ist_none		; [28].up_room
		db r_ist_none		; [28].down_room
		db r_ist_none1		; [28].cw_room
		db r_ist_none1		; [28].ccw_room
		db r_ist_none1		; [28].enter_room
		db r_ist_none1		; [28].exit_room
		db r_ist_none1		; [28].inward_room
		db r_ist_none1		; [28].outward_room
		db 0			; [29].scoreBonus
		db 80h			; [29].roomFlags
		db 37h,	0E0h		; [29].verbose_offset
		db 37h,	0E0h		; [29].terse_offset
		db 0, 0			; [29].firstMaybe_offset
		db 0, 0			; [29].offset_probably
		db 1Eh			; [29].north_room
		db 1Ch			; [29].south_room
		db r_ist_none		; [29].east_room
		db r_ist_none		; [29].west_room
		db r_ist_none		; [29].ne_room
		db r_ist_none		; [29].nw_room
		db r_ist_none		; [29].se_room
		db r_ist_none		; [29].sw_room
		db r_ist_none		; [29].up_room
		db r_ist_none		; [29].down_room
		db r_ist_none1		; [29].cw_room
		db r_ist_none1		; [29].ccw_room
		db r_ist_none1		; [29].enter_room
		db r_ist_none1		; [29].exit_room
		db r_ist_none1		; [29].inward_room
		db r_ist_none1		; [29].outward_room
		db 0			; [30].scoreBonus
		db 80h			; [30].roomFlags
		db 42h,	1Ah		; [30].verbose_offset
		db 41h,	0FEh		; [30].terse_offset
		db 0, 0			; [30].firstMaybe_offset
		db 0, 0			; [30].offset_probably
		db 1Fh			; [30].north_room
		db 1Dh			; [30].south_room
		db 21h			; [30].east_room
		db r_ist_none		; [30].west_room
		db r_ist_none		; [30].ne_room
		db r_ist_none		; [30].nw_room
		db r_ist_none		; [30].se_room
		db r_ist_none		; [30].sw_room
		db r_ist_none		; [30].up_room
		db r_ist_none		; [30].down_room
		db r_ist_none1		; [30].cw_room
		db r_ist_none1		; [30].ccw_room
		db r_ist_none1		; [30].enter_room
		db r_ist_none1		; [30].exit_room
		db r_ist_none1		; [30].inward_room
		db r_ist_none1		; [30].outward_room
		db 0			; [31].scoreBonus
		db 80h			; [31].roomFlags
		db 37h,	0E0h		; [31].verbose_offset
		db 37h,	0E0h		; [31].terse_offset
		db 0, 0			; [31].firstMaybe_offset
		db 0, 0			; [31].offset_probably
		db 20h			; [31].north_room
		db 1Eh			; [31].south_room
		db r_ist_none		; [31].east_room
		db r_ist_none		; [31].west_room
		db r_ist_none		; [31].ne_room
		db r_ist_none		; [31].nw_room
		db r_ist_none		; [31].se_room
		db r_ist_none		; [31].sw_room
		db r_ist_none		; [31].up_room
		db r_ist_none		; [31].down_room
		db r_ist_none1		; [31].cw_room
		db r_ist_none1		; [31].ccw_room
		db r_ist_none1		; [31].enter_room
		db r_ist_none1		; [31].exit_room
		db r_ist_none1		; [31].inward_room
		db r_ist_none1		; [31].outward_room
		db 0			; [32].scoreBonus
		db 80h			; [32].roomFlags
		db 42h,	9Fh		; [32].verbose_offset
		db 42h,	7Ch		; [32].terse_offset
		db 0, 0			; [32].firstMaybe_offset
		db 0, 0			; [32].offset_probably
		db r_ist_none		; [32].north_room
		db 1Fh			; [32].south_room
		db r_ist_none		; [32].east_room
		db r_ist_none		; [32].west_room
		db r_ist_none		; [32].ne_room
		db r_ist_none		; [32].nw_room
		db r_ist_none		; [32].se_room
		db r_ist_none		; [32].sw_room
		db r_ist_none		; [32].up_room
		db r_ist_none		; [32].down_room
		db r_ist_none1		; [32].cw_room
		db r_ist_none1		; [32].ccw_room
		db r_ist_none1		; [32].enter_room
		db r_ist_none1		; [32].exit_room
		db r_ist_none1		; [32].inward_room
		db r_ist_none1		; [32].outward_room
		db 0			; [33].scoreBonus
		db 80h			; [33].roomFlags
		db 37h,	0FCh		; [33].verbose_offset
		db 37h,	0FCh		; [33].terse_offset
		db 0, 0			; [33].firstMaybe_offset
		db 0, 0			; [33].offset_probably
		db r_ist_none		; [33].north_room
		db r_ist_none		; [33].south_room
		db r_control_tower	; [33].east_room
		db 1Eh			; [33].west_room
		db r_ist_none		; [33].ne_room
		db r_ist_none		; [33].nw_room
		db r_ist_none		; [33].se_room
		db r_ist_none		; [33].sw_room
		db r_ist_none		; [33].up_room
		db r_ist_none		; [33].down_room
		db r_ist_none1		; [33].cw_room
		db r_ist_none1		; [33].ccw_room
		db r_ist_none1		; [33].enter_room
		db r_ist_none1		; [33].exit_room
		db r_ist_none1		; [33].inward_room
		db r_ist_none1		; [33].outward_room
		db 5			; [34].scoreBonus
		db 80h			; [34].roomFlags
		db 42h,	0F3h		; [34].verbose_offset
		db 42h,	0D7h		; [34].terse_offset
		db 0, 0			; [34].firstMaybe_offset
		db 0, 0			; [34].offset_probably
		db 23h			; [34].north_room
		db 25h			; [34].south_room
		db r_ist_none		; [34].east_room
		db 21h			; [34].west_room
		db r_ist_none		; [34].ne_room
		db r_ist_none		; [34].nw_room
		db r_ist_none		; [34].se_room
		db r_ist_none		; [34].sw_room
		db r_ist_none		; [34].up_room
		db r_ist_none		; [34].down_room
		db r_ist_none1		; [34].cw_room
		db r_ist_none1		; [34].ccw_room
		db r_ist_none1		; [34].enter_room
		db r_ist_none1		; [34].exit_room
		db r_ist_none1		; [34].inward_room
		db r_ist_none1		; [34].outward_room
		db 0			; [35].scoreBonus
		db 80h			; [35].roomFlags
		db 37h,	0E0h		; [35].verbose_offset
		db 37h,	0E0h		; [35].terse_offset
		db 0, 0			; [35].firstMaybe_offset
		db 0, 0			; [35].offset_probably
		db 24h			; [35].north_room
		db r_control_tower	; [35].south_room
		db r_ist_none		; [35].east_room
		db r_ist_none		; [35].west_room
		db r_ist_none		; [35].ne_room
		db r_ist_none		; [35].nw_room
		db r_ist_none		; [35].se_room
		db r_ist_none		; [35].sw_room
		db r_ist_none		; [35].up_room
		db r_ist_none		; [35].down_room
		db r_ist_none1		; [35].cw_room
		db r_ist_none1		; [35].ccw_room
		db r_ist_none1		; [35].enter_room
		db r_ist_none1		; [35].exit_room
		db r_ist_none1		; [35].inward_room
		db r_ist_none1		; [35].outward_room
		db 0			; [36].scoreBonus
		db 80h			; [36].roomFlags
		db 43h,	0BEh		; [36].verbose_offset
		db 43h,	0BEh		; [36].terse_offset
		db 0, 0			; [36].firstMaybe_offset
		db 0, 0			; [36].offset_probably
		db r_ist_none		; [36].north_room
		db 23h			; [36].south_room
		db r_ist_none		; [36].east_room
		db r_ist_none		; [36].west_room
		db r_ist_none		; [36].ne_room
		db r_ist_none		; [36].nw_room
		db r_ist_none		; [36].se_room
		db r_ist_none		; [36].sw_room
		db r_ist_none		; [36].up_room
		db r_ist_none		; [36].down_room
		db r_ist_none1		; [36].cw_room
		db r_ist_none1		; [36].ccw_room
		db r_ist_none1		; [36].enter_room
		db r_ist_none1		; [36].exit_room
		db r_ist_none1		; [36].inward_room
		db r_ist_none1		; [36].outward_room
		db 0			; [37].scoreBonus
		db 80h			; [37].roomFlags
		db 37h,	0E0h		; [37].verbose_offset
		db 37h,	0E0h		; [37].terse_offset
		db 0, 0			; [37].firstMaybe_offset
		db 0, 0			; [37].offset_probably
		db r_control_tower	; [37].north_room
		db 26h			; [37].south_room
		db r_ist_none		; [37].east_room
		db r_ist_none		; [37].west_room
		db r_ist_none		; [37].ne_room
		db r_ist_none		; [37].nw_room
		db r_ist_none		; [37].se_room
		db r_ist_none		; [37].sw_room
		db r_ist_none		; [37].up_room
		db r_ist_none		; [37].down_room
		db r_ist_none1		; [37].cw_room
		db r_ist_none1		; [37].ccw_room
		db r_ist_none1		; [37].enter_room
		db r_ist_none1		; [37].exit_room
		db r_ist_none1		; [37].inward_room
		db r_ist_none1		; [37].outward_room
		db 0			; [38].scoreBonus
		db 80h			; [38].roomFlags
		db 43h,	0A2h		; [38].verbose_offset
		db 43h,	0A2h		; [38].terse_offset
		db 0, 0			; [38].firstMaybe_offset
		db 0, 0			; [38].offset_probably
		db 25h			; [38].north_room
		db r_ist_none		; [38].south_room
		db r_ist_none		; [38].east_room
		db r_ist_none		; [38].west_room
		db r_ist_none		; [38].ne_room
		db r_ist_none		; [38].nw_room
		db r_ist_none		; [38].se_room
		db r_ist_none		; [38].sw_room
		db r_ist_none		; [38].up_room
		db r_ist_none		; [38].down_room
		db r_ist_none1		; [38].cw_room
		db r_ist_none1		; [38].ccw_room
		db r_ist_none1		; [38].enter_room
		db r_ist_none1		; [38].exit_room
		db r_ist_none1		; [38].inward_room
		db r_ist_none1		; [38].outward_room
		db 0			; [39].scoreBonus
		db 80h			; [39].roomFlags
		db 37h,	0E0h		; [39].verbose_offset
		db 37h,	0E0h		; [39].terse_offset
		db 0, 0			; [39].firstMaybe_offset
		db 0, 0			; [39].offset_probably
		db 1Ch			; [39].north_room
		db ri_bubble_39		; [39].south_room
		db r_ist_none		; [39].east_room
		db r_ist_none		; [39].west_room
		db r_ist_none		; [39].ne_room
		db r_ist_none		; [39].nw_room
		db r_ist_none		; [39].se_room
		db r_ist_none		; [39].sw_room
		db r_ist_none		; [39].up_room
		db r_ist_none		; [39].down_room
		db r_ist_none1		; [39].cw_room
		db r_ist_none1		; [39].ccw_room
		db r_ist_none1		; [39].enter_room
		db r_ist_none1		; [39].exit_room
		db r_ist_none1		; [39].inward_room
		db r_ist_none1		; [39].outward_room
		db 0			; [40].scoreBonus
		db 80h			; [40].roomFlags
		db 44h,	19h		; [40].verbose_offset
		db 44h,	19h		; [40].terse_offset
		db 0, 0			; [40].firstMaybe_offset
		db 0, 0			; [40].offset_probably
		db 27h			; [40].north_room
		db 29h			; [40].south_room
		db 2Bh			; [40].east_room
		db r_ist_none		; [40].west_room
		db r_ist_none		; [40].ne_room
		db r_ist_none		; [40].nw_room
		db r_ist_none		; [40].se_room
		db r_ist_none		; [40].sw_room
		db r_ist_none		; [40].up_room
		db r_ist_none		; [40].down_room
		db r_ist_none1		; [40].cw_room
		db r_ist_none1		; [40].ccw_room
		db r_ist_none1		; [40].enter_room
		db r_ist_none1		; [40].exit_room
		db r_ist_none1		; [40].inward_room
		db r_ist_none1		; [40].outward_room
		db 0			; [41].scoreBonus
		db 80h			; [41].roomFlags
		db 37h,	0E0h		; [41].verbose_offset
		db 37h,	0E0h		; [41].terse_offset
		db 0, 0			; [41].firstMaybe_offset
		db 0, 0			; [41].offset_probably
		db ri_bubble_39		; [41].north_room
		db 2Ah			; [41].south_room
		db r_ist_none		; [41].east_room
		db r_ist_none		; [41].west_room
		db r_ist_none		; [41].ne_room
		db r_ist_none		; [41].nw_room
		db r_ist_none		; [41].se_room
		db r_ist_none		; [41].sw_room
		db r_ist_none		; [41].up_room
		db r_ist_none		; [41].down_room
		db r_ist_none1		; [41].cw_room
		db r_ist_none1		; [41].ccw_room
		db r_ist_none1		; [41].enter_room
		db r_ist_none1		; [41].exit_room
		db r_ist_none1		; [41].inward_room
		db r_ist_none1		; [41].outward_room
		db 0			; [42].scoreBonus
		db 80h			; [42].roomFlags
		db 49h,	9Fh		; [42].verbose_offset
		db 49h,	83h		; [42].terse_offset
		db 0, 0			; [42].firstMaybe_offset
		db 0, 0			; [42].offset_probably
		db 29h			; [42].north_room
		db r_ist_none		; [42].south_room
		db r_ist_none		; [42].east_room
		db r_ist_none		; [42].west_room
		db r_ist_none		; [42].ne_room
		db r_ist_none		; [42].nw_room
		db r_ist_none		; [42].se_room
		db r_ist_none		; [42].sw_room
		db r_ist_none		; [42].up_room
		db r_ist_none		; [42].down_room
		db r_ist_none1		; [42].cw_room
		db r_ist_none1		; [42].ccw_room
		db r_ist_none1		; [42].enter_room
		db r_ist_none1		; [42].exit_room
		db r_ist_none1		; [42].inward_room
		db r_ist_none1		; [42].outward_room
		db 0			; [43].scoreBonus
		db 80h			; [43].roomFlags
		db 37h,	0FCh		; [43].verbose_offset
		db 37h,	0FCh		; [43].terse_offset
		db 0, 0			; [43].firstMaybe_offset
		db 0, 0			; [43].offset_probably
		db r_ist_none		; [43].north_room
		db r_ist_none		; [43].south_room
		db 2Ch			; [43].east_room
		db ri_bubble_39		; [43].west_room
		db r_ist_none		; [43].ne_room
		db r_ist_none		; [43].nw_room
		db r_ist_none		; [43].se_room
		db r_ist_none		; [43].sw_room
		db r_ist_none		; [43].up_room
		db r_ist_none		; [43].down_room
		db r_ist_none1		; [43].cw_room
		db r_ist_none1		; [43].ccw_room
		db r_ist_none1		; [43].enter_room
		db r_ist_none1		; [43].exit_room
		db r_ist_none1		; [43].inward_room
		db r_ist_none1		; [43].outward_room
		db 0			; [44].scoreBonus
		db 80h			; [44].roomFlags
		db 45h,	1Ch		; [44].verbose_offset
		db 44h,	0F2h		; [44].terse_offset
		db 0, 0			; [44].firstMaybe_offset
		db 0, 0			; [44].offset_probably
		db r_ist_none		; [44].north_room
		db r_ist_none		; [44].south_room
		db r_ist_none2		; [44].east_room
		db 2Bh			; [44].west_room
		db r_ist_none		; [44].ne_room
		db r_ist_none		; [44].nw_room
		db r_ist_none		; [44].se_room
		db r_ist_none		; [44].sw_room
		db r_ist_none		; [44].up_room
		db r_ist_none		; [44].down_room
		db r_ist_none1		; [44].cw_room
		db r_ist_none1		; [44].ccw_room
		db r_ist_none2		; [44].enter_room
		db r_ist_none1		; [44].exit_room
		db r_ist_none1		; [44].inward_room
		db r_ist_none1		; [44].outward_room
		db 5			; [45].scoreBonus
		db 80h			; [45].roomFlags
		db 45h,	0F5h		; [45].verbose_offset
		db 45h,	0F5h		; [45].terse_offset
		db 0, 0			; [45].firstMaybe_offset
		db 0, 0			; [45].offset_probably
		db r_ist_none		; [45].north_room
		db r_ist_none		; [45].south_room
		db 6Bh			; [45].east_room
		db 2Ch			; [45].west_room
		db r_ist_none		; [45].ne_room
		db r_ist_none		; [45].nw_room
		db r_ist_none		; [45].se_room
		db r_ist_none		; [45].sw_room
		db r_ist_none		; [45].up_room
		db r_ist_none		; [45].down_room
		db r_ist_none1		; [45].cw_room
		db r_ist_none1		; [45].ccw_room
		db 6Bh			; [45].enter_room
		db 2Ch			; [45].exit_room
		db r_ist_none1		; [45].inward_room
		db r_ist_none1		; [45].outward_room
		db 5			; [46].scoreBonus
		db 80h			; [46].roomFlags
		db 46h,	81h		; [46].verbose_offset
		db 46h,	81h		; [46].terse_offset
		db 0, 0			; [46].firstMaybe_offset
		db 0, 0			; [46].offset_probably
		db r_ist_none1		; [46].north_room
		db r_ist_none1		; [46].south_room
		db r_ist_none1		; [46].east_room
		db r_gamma_control	; [46].west_room
		db r_ist_none1		; [46].ne_room
		db r_ist_none1		; [46].nw_room
		db r_ist_none1		; [46].se_room
		db r_ist_none1		; [46].sw_room
		db r_ist_none1		; [46].up_room
		db r_ist_none1		; [46].down_room
		db r_ist_none1		; [46].cw_room
		db r_ist_none1		; [46].ccw_room
		db r_ist_none1		; [46].enter_room
		db r_gamma_control	; [46].exit_room
		db r_ist_none1		; [46].inward_room
		db r_ist_none1		; [46].outward_room
gcsRoomData:	db 0			; [0].scoreBonus ; DATA	XREF: getBGNRoomAddress+30o
		db 80h			; [0].roomFlags
		db 0A6h, 74h		; [0].verbose_offset
		db 0A6h, 74h		; [0].terse_offset
		db 0, 0			; [0].firstMaybe_offset
		db 0, 0			; [0].offset_probably
		db r_gcs_none		; [0].north_room
		db r_gcs_none		; [0].south_room
		db r_gcs_none		; [0].east_room
		db r_gcs_none		; [0].west_room
		db r_gcs_none		; [0].ne_room
		db r_gcs_none		; [0].nw_room
		db r_gcs_none		; [0].se_room
		db r_gcs_none		; [0].sw_room
		db r_gcs_none		; [0].up_room
		db r_gcs_none		; [0].down_room
		db r_gcs_none		; [0].cw_room
		db r_gcs_none		; [0].ccw_room
		db r_gcs_none		; [0].enter_room
		db r_gcs_none		; [0].exit_room
		db r_gcs_none		; [0].inward_room
		db r_gcs_none		; [0].outward_room
		db 10			; [1].scoreBonus
		db 80h			; [1].roomFlags
		db 57h,	0DEh		; [1].verbose_offset
		db 57h,	0C2h		; [1].terse_offset
		db 0, 0			; [1].firstMaybe_offset
		db 0, 0			; [1].offset_probably
		db r_gcs_none		; [1].north_room
		db r_gcs_none		; [1].south_room
		db r_gcs_none		; [1].east_room
		db r_gcs_none		; [1].west_room
		db r_gcs_none		; [1].ne_room
		db r_gcs_none		; [1].nw_room
		db r_gcs_none		; [1].se_room
		db r_gcs_none		; [1].sw_room
		db r_gcs_none		; [1].up_room
		db r_gcs_none		; [1].down_room
		db r_gcs_none		; [1].cw_room
		db r_gcs_none		; [1].ccw_room
		db r_gcs_none		; [1].enter_room
		db r_landing_bay	; [1].exit_room
		db r_gcs_none		; [1].inward_room
		db r_gcs_none		; [1].outward_room
		db 0			; [2].scoreBonus
		db 0A0h			; [2].roomFlags
		db 5Ah,	0D9h		; [2].verbose_offset
		db 5Ah,	0BDh		; [2].terse_offset
		db 5Bh,	73h		; [2].firstMaybe_offset
		db 0, 0			; [2].offset_probably
		db r_gcs_none		; [2].north_room
		db r_gcs_none		; [2].south_room
		db r_gcs_none		; [2].east_room
		db r_gcs_none		; [2].west_room
		db r_gcs_none		; [2].ne_room
		db r_gcs_none		; [2].nw_room
		db r_gcs_none		; [2].se_room
		db r_gcs_none		; [2].sw_room
		db r_gcs_none		; [2].up_room
		db r_gcs_none		; [2].down_room
		db r_gcs_none1		; [2].cw_room
		db r_gcs_none1		; [2].ccw_room
		db 1			; [2].enter_room
		db r_airless_passage	; [2].exit_room
		db r_airless_passage	; [2].inward_room
		db r_gcs_none		; [2].outward_room
		db 0			; [3].scoreBonus
		db 84h			; [3].roomFlags
		db 5Eh,	0F3h		; [3].verbose_offset
		db 5Eh,	0F3h		; [3].terse_offset
		db 0, 0			; [3].firstMaybe_offset
		db 0, 0			; [3].offset_probably
		db r_gcs_none		; [3].north_room
		db r_gcs_none		; [3].south_room
		db r_gcs_none		; [3].east_room
		db r_gcs_none		; [3].west_room
		db r_gcs_none		; [3].ne_room
		db r_gcs_none		; [3].nw_room
		db r_gcs_none		; [3].se_room
		db r_gcs_none		; [3].sw_room
		db r_gcs_none		; [3].up_room
		db r_gcs_none		; [3].down_room
		db r_gcs_none		; [3].cw_room
		db r_gcs_none		; [3].ccw_room
		db 4			; [3].enter_room
		db 6Eh			; [3].exit_room
		db 4			; [3].inward_room
		db r_landing_bay	; [3].outward_room
		db 0			; [4].scoreBonus
		db 80h			; [4].roomFlags
		db 64h,	2Ch		; [4].verbose_offset
		db 64h,	9		; [4].terse_offset
		db 0, 0			; [4].firstMaybe_offset
		db 0, 0			; [4].offset_probably
		db r_gcs_none		; [4].north_room
		db r_gcs_none		; [4].south_room
		db r_gcs_none		; [4].east_room
		db r_gcs_none		; [4].west_room
		db r_gcs_none		; [4].ne_room
		db r_gcs_none		; [4].nw_room
		db r_gcs_none		; [4].se_room
		db r_gcs_none		; [4].sw_room
		db r_gcs_none		; [4].up_room
		db r_gcs_none		; [4].down_room
		db 6Fh			; [4].cw_room
		db 6Fh			; [4].ccw_room
		db 5			; [4].enter_room
		db r_airless_passage	; [4].exit_room
		db 5			; [4].inward_room
		db r_airless_passage	; [4].outward_room
		db 0			; [5].scoreBonus
		db 80h			; [5].roomFlags
		db 65h,	67h		; [5].verbose_offset
		db 65h,	44h		; [5].terse_offset
		db 0, 0			; [5].firstMaybe_offset
		db 0, 0			; [5].offset_probably
		db r_gcs_none		; [5].north_room
		db r_gcs_none		; [5].south_room
		db r_gcs_none		; [5].east_room
		db r_gcs_none		; [5].west_room
		db r_gcs_none		; [5].ne_room
		db r_gcs_none		; [5].nw_room
		db r_gcs_none		; [5].se_room
		db r_gcs_none		; [5].sw_room
		db r_gcs_none		; [5].up_room
		db r_gcs_none		; [5].down_room
		db 6Fh			; [5].cw_room
		db 6Fh			; [5].ccw_room
		db rg_storage_space	; [5].enter_room
		db 4			; [5].exit_room
		db rg_storage_space	; [5].inward_room
		db 4			; [5].outward_room
		db 0			; [6].scoreBonus
		db 88h			; [6].roomFlags
		db 68h,	0A1h		; [6].verbose_offset
		db 68h,	7Eh		; [6].terse_offset
		db 0, 0			; [6].firstMaybe_offset
		db 0, 0			; [6].offset_probably
		db r_gcs_none		; [6].north_room
		db r_gcs_none		; [6].south_room
		db r_gcs_none		; [6].east_room
		db r_gcs_none		; [6].west_room
		db r_gcs_none		; [6].ne_room
		db r_gcs_none		; [6].nw_room
		db r_gcs_none		; [6].se_room
		db r_gcs_none		; [6].sw_room
		db r_gcs_none		; [6].up_room
		db r_gcs_none		; [6].down_room
		db r_gcs_none1		; [6].cw_room
		db 0DEh			; [6].ccw_room
		db r_gcs_none		; [6].enter_room
		db 70h			; [6].exit_room
		db 24h			; [6].inward_room
		db 1Ch			; [6].outward_room
		db 10			; [7].scoreBonus
		db 84h			; [7].roomFlags
		db 9Eh,	39h		; [7].verbose_offset
		db 9Eh,	39h		; [7].terse_offset
		db 0, 0			; [7].firstMaybe_offset
		db 0, 0			; [7].offset_probably
		db r_gcs_none		; [7].north_room
		db r_gcs_none		; [7].south_room
		db r_gcs_none		; [7].east_room
		db r_gcs_none		; [7].west_room
		db r_gcs_none		; [7].ne_room
		db r_gcs_none		; [7].nw_room
		db r_gcs_none		; [7].se_room
		db r_gcs_none		; [7].sw_room
		db r_gcs_none		; [7].up_room
		db r_gcs_none		; [7].down_room
		db 18h			; [7].cw_room
		db 17h			; [7].ccw_room
		db 0DDh			; [7].enter_room
		db 17h			; [7].exit_room
		db 0DDh			; [7].inward_room
		db 17h			; [7].outward_room
		db 10			; [8].scoreBonus
		db 0A0h			; [8].roomFlags
		db 8Dh,	30h		; [8].verbose_offset
		db 8Dh,	30h		; [8].terse_offset
		db 92h,	0EEh		; [8].firstMaybe_offset
		db 0, 0			; [8].offset_probably
		db r_gcs_none		; [8].north_room
		db r_restaurant		; [8].south_room
		db r_gcs_none		; [8].east_room
		db r_gcs_none		; [8].west_room
		db r_gcs_none		; [8].ne_room
		db r_gcs_none		; [8].nw_room
		db r_gcs_none		; [8].se_room
		db r_gcs_none		; [8].sw_room
		db r_gcs_none		; [8].up_room
		db r_gcs_none		; [8].down_room
		db 6Fh			; [8].cw_room
		db 6Fh			; [8].ccw_room
		db 6Fh			; [8].enter_room
		db 70h			; [8].exit_room
		db 25h			; [8].inward_room
		db 1Dh			; [8].outward_room
		db 10			; [9].scoreBonus
		db 80h			; [9].roomFlags
		db 90h,	2Bh		; [9].verbose_offset
		db 90h,	2Bh		; [9].terse_offset
		db 0, 0			; [9].firstMaybe_offset
		db 0, 0			; [9].offset_probably
		db r_gcs_none		; [9].north_room
		db r_gcs_none		; [9].south_room
		db r_gcs_none		; [9].east_room
		db r_gcs_none		; [9].west_room
		db r_gcs_none		; [9].ne_room
		db r_gcs_none		; [9].nw_room
		db r_gcs_none		; [9].se_room
		db r_gcs_none		; [9].sw_room
		db r_gcs_none		; [9].up_room
		db r_gcs_none		; [9].down_room
		db 6Fh			; [9].cw_room
		db 6Fh			; [9].ccw_room
		db 6Fh			; [9].enter_room
		db 70h			; [9].exit_room
		db 25h			; [9].inward_room
		db 1Dh			; [9].outward_room
		db 10			; [10].scoreBonus
		db 0A0h			; [10].roomFlags
		db 89h,	39h		; [10].verbose_offset
		db 89h,	39h		; [10].terse_offset
		db 73h,	67h		; [10].firstMaybe_offset
		db 0, 0			; [10].offset_probably
		db r_gcs_none		; [10].north_room
		db r_gcs_none		; [10].south_room
		db r_gcs_none		; [10].east_room
		db r_gcs_none		; [10].west_room
		db r_gcs_none		; [10].ne_room
		db r_gcs_none		; [10].nw_room
		db r_gcs_none		; [10].se_room
		db r_gcs_none		; [10].sw_room
		db r_gcs_none		; [10].up_room
		db r_gcs_none		; [10].down_room
		db 6Fh			; [10].cw_room
		db 6Fh			; [10].ccw_room
		db 6Fh			; [10].enter_room
		db 70h			; [10].exit_room
		db 25h			; [10].inward_room
		db 1Dh			; [10].outward_room
		db 10			; [11].scoreBonus
		db 0A0h			; [11].roomFlags
		db 85h,	0E3h		; [11].verbose_offset
		db 85h,	65h		; [11].terse_offset
		db 73h,	67h		; [11].firstMaybe_offset
		db 0, 0			; [11].offset_probably
		db r_gcs_none		; [11].north_room
		db r_gcs_none		; [11].south_room
		db r_gcs_none		; [11].east_room
		db r_gcs_none		; [11].west_room
		db r_gcs_none		; [11].ne_room
		db r_gcs_none		; [11].nw_room
		db r_gcs_none		; [11].se_room
		db r_gcs_none		; [11].sw_room
		db r_gcs_none		; [11].up_room
		db r_gcs_none		; [11].down_room
		db 6Fh			; [11].cw_room
		db 6Fh			; [11].ccw_room
		db r_gcs_none		; [11].enter_room
		db 6Eh			; [11].exit_room
		db 26h			; [11].inward_room
		db 1Eh			; [11].outward_room
		db 10			; [12].scoreBonus
		db 0A8h			; [12].roomFlags
		db 9Bh,	0DFh		; [12].verbose_offset
		db 9Bh,	0DFh		; [12].terse_offset
		db 72h,	56h		; [12].firstMaybe_offset
		db 0, 0			; [12].offset_probably
		db r_gcs_none		; [12].north_room
		db r_gcs_none		; [12].south_room
		db r_gcs_none		; [12].east_room
		db r_gcs_none		; [12].west_room
		db r_gcs_none		; [12].ne_room
		db r_gcs_none		; [12].nw_room
		db r_gcs_none		; [12].se_room
		db r_gcs_none		; [12].sw_room
		db r_gcs_none		; [12].up_room
		db r_gcs_none		; [12].down_room
		db 6Fh			; [12].cw_room
		db 6Fh			; [12].ccw_room
		db r_gcs_none		; [12].enter_room
		db 1Fh			; [12].exit_room
		db r_gcs_none1		; [12].inward_room
		db 1Fh			; [12].outward_room
		db 10			; [13].scoreBonus
		db 0A8h			; [13].roomFlags
		db 9Ch,	0E9h		; [13].verbose_offset
		db 9Ch,	0E9h		; [13].terse_offset
		db 72h,	56h		; [13].firstMaybe_offset
		db 0, 0			; [13].offset_probably
		db r_gcs_none		; [13].north_room
		db r_gcs_none		; [13].south_room
		db r_gcs_none		; [13].east_room
		db r_gcs_none		; [13].west_room
		db r_gcs_none		; [13].ne_room
		db r_gcs_none		; [13].nw_room
		db r_gcs_none		; [13].se_room
		db r_gcs_none		; [13].sw_room
		db r_gcs_none		; [13].up_room
		db r_gcs_none		; [13].down_room
		db 6Fh			; [13].cw_room
		db 6Fh			; [13].ccw_room
		db r_gcs_none		; [13].enter_room
		db 20h			; [13].exit_room
		db r_gcs_none1		; [13].inward_room
		db 20h			; [13].outward_room
		db 0			; [14].scoreBonus
		db 88h			; [14].roomFlags
		db 99h,	46h		; [14].verbose_offset
		db 98h,	9Eh		; [14].terse_offset
		db 0, 0			; [14].firstMaybe_offset
		db 0, 0			; [14].offset_probably
		db r_gcs_none		; [14].north_room
		db r_gcs_none		; [14].south_room
		db r_gcs_none		; [14].east_room
		db r_gcs_none		; [14].west_room
		db r_gcs_none		; [14].ne_room
		db r_gcs_none		; [14].nw_room
		db r_gcs_none		; [14].se_room
		db r_gcs_none		; [14].sw_room
		db r_gcs_none		; [14].up_room
		db r_gcs_none		; [14].down_room
		db 6Fh			; [14].cw_room
		db 6Fh			; [14].ccw_room
		db r_gcs_none		; [14].enter_room
		db 18h			; [14].exit_room
		db 18h			; [14].inward_room
		db r_gcs_none1		; [14].outward_room
		db 0			; [15].scoreBonus
		db 80h			; [15].roomFlags
		db 0A4h, 8Ah		; [15].verbose_offset
		db 0A4h, 60h		; [15].terse_offset
		db 0, 0			; [15].firstMaybe_offset
		db 0, 0			; [15].offset_probably
		db r_gcs_none		; [15].north_room
		db r_gcs_none		; [15].south_room
		db r_gcs_none		; [15].east_room
		db r_gcs_none		; [15].west_room
		db r_gcs_none		; [15].ne_room
		db r_gcs_none		; [15].nw_room
		db r_gcs_none		; [15].se_room
		db r_gcs_none		; [15].sw_room
		db r_gcs_none		; [15].up_room
		db r_gcs_none		; [15].down_room
		db 6Fh			; [15].cw_room
		db 6Fh			; [15].ccw_room
		db r_gcs_none		; [15].enter_room
		db 21h			; [15].exit_room
		db r_gcs_none1		; [15].inward_room
		db 21h			; [15].outward_room
		db 10			; [16].scoreBonus
		db 80h			; [16].roomFlags
		db 0A1h, 7Ah		; [16].verbose_offset
		db 0A1h, 7Ah		; [16].terse_offset
		db 0, 0			; [16].firstMaybe_offset
		db 0, 0			; [16].offset_probably
		db r_gcs_none		; [16].north_room
		db r_gcs_none		; [16].south_room
		db r_gcs_none		; [16].east_room
		db r_gcs_none		; [16].west_room
		db r_gcs_none		; [16].ne_room
		db r_gcs_none		; [16].nw_room
		db r_gcs_none		; [16].se_room
		db r_gcs_none		; [16].sw_room
		db r_gcs_none		; [16].up_room
		db r_gcs_none		; [16].down_room
		db 6Fh			; [16].cw_room
		db 6Fh			; [16].ccw_room
		db r_gcs_none		; [16].enter_room
		db 19h			; [16].exit_room
		db 19h			; [16].inward_room
		db r_gcs_none1		; [16].outward_room
		db 0			; [17].scoreBonus
		db 8Ch			; [17].roomFlags
		db 73h,	0ECh		; [17].verbose_offset
		db 73h,	0D0h		; [17].terse_offset
		db 0, 0			; [17].firstMaybe_offset
		db 0, 0			; [17].offset_probably
		db r_gcs_none		; [17].north_room
		db r_gcs_none		; [17].south_room
		db r_gcs_none		; [17].east_room
		db r_gcs_none		; [17].west_room
		db r_gcs_none		; [17].ne_room
		db r_gcs_none		; [17].nw_room
		db r_gcs_none		; [17].se_room
		db r_gcs_none		; [17].sw_room
		db r_gcs_none		; [17].up_room
		db r_gcs_none		; [17].down_room
		db 6Fh			; [17].cw_room
		db 6Fh			; [17].ccw_room
		db r_gcs_none		; [17].enter_room
		db 1Bh			; [17].exit_room
		db 1Bh			; [17].inward_room
		db r_gcs_none1		; [17].outward_room
		db 0			; [18].scoreBonus
		db 80h			; [18].roomFlags
		db 95h,	9Ch		; [18].verbose_offset
		db 95h,	9Ch		; [18].terse_offset
		db 0, 0			; [18].firstMaybe_offset
		db 0, 0			; [18].offset_probably
		db r_gcs_none		; [18].north_room
		db r_gcs_none		; [18].south_room
		db r_gcs_none		; [18].east_room
		db r_gcs_none		; [18].west_room
		db r_gcs_none		; [18].ne_room
		db r_gcs_none		; [18].nw_room
		db r_gcs_none		; [18].se_room
		db r_gcs_none		; [18].sw_room
		db r_gcs_none		; [18].up_room
		db r_gcs_none		; [18].down_room
		db 6Fh			; [18].cw_room
		db 6Fh			; [18].ccw_room
		db r_gcs_none		; [18].enter_room
		db 1Ah			; [18].exit_room
		db r_gcs_none1		; [18].inward_room
		db 1Ah			; [18].outward_room
		db 25			; [19].scoreBonus
		db 8Ch			; [19].roomFlags
		db 9Fh,	0EBh		; [19].verbose_offset
		db 9Fh,	0EBh		; [19].terse_offset
		db 0, 0			; [19].firstMaybe_offset
		db 0, 0			; [19].offset_probably
		db r_gcs_none		; [19].north_room
		db r_gcs_none		; [19].south_room
		db r_gcs_none		; [19].east_room
		db r_gcs_none		; [19].west_room
		db r_gcs_none		; [19].ne_room
		db r_gcs_none		; [19].nw_room
		db r_gcs_none		; [19].se_room
		db r_gcs_none		; [19].sw_room
		db r_gcs_none		; [19].up_room
		db r_gcs_none		; [19].down_room
		db 6Fh			; [19].cw_room
		db 6Fh			; [19].ccw_room
		db r_gcs_none		; [19].enter_room
		db 7			; [19].exit_room
		db r_gcs_none1		; [19].inward_room
		db 7			; [19].outward_room
		db 0			; [20].scoreBonus
		db 0A8h			; [20].roomFlags
		db 81h,	6Eh		; [20].verbose_offset
		db 81h,	6Eh		; [20].terse_offset
		db 81h,	8Ah		; [20].firstMaybe_offset
		db 0, 0			; [20].offset_probably
		db r_gcs_none		; [20].north_room
		db r_gcs_none		; [20].south_room
		db r_gcs_none		; [20].east_room
		db r_gcs_none		; [20].west_room
		db r_gcs_none		; [20].ne_room
		db r_gcs_none		; [20].nw_room
		db r_gcs_none		; [20].se_room
		db r_gcs_none		; [20].sw_room
		db r_gcs_none		; [20].up_room
		db r_gcs_none		; [20].down_room
		db 6Fh			; [20].cw_room
		db 6Fh			; [20].ccw_room
		db r_gcs_none		; [20].enter_room
		db 23h			; [20].exit_room
		db r_gcs_none1		; [20].inward_room
		db 23h			; [20].outward_room
		db 10			; [21].scoreBonus
		db 88h			; [21].roomFlags
		db 7Dh,	70h		; [21].verbose_offset
		db 7Dh,	54h		; [21].terse_offset
		db 0, 0			; [21].firstMaybe_offset
		db 0, 0			; [21].offset_probably
		db r_gcs_none		; [21].north_room
		db r_gcs_none		; [21].south_room
		db r_gcs_none		; [21].east_room
		db r_gcs_none		; [21].west_room
		db r_gcs_none		; [21].ne_room
		db r_gcs_none		; [21].nw_room
		db r_gcs_none		; [21].se_room
		db r_gcs_none		; [21].sw_room
		db r_gcs_none		; [21].up_room
		db r_gcs_none		; [21].down_room
		db 6Fh			; [21].cw_room
		db 6Fh			; [21].ccw_room
		db r_gcs_none		; [21].enter_room
		db 16h			; [21].exit_room
		db r_gcs_none1		; [21].inward_room
		db 16h			; [21].outward_room
		db 0			; [22].scoreBonus
		db 0A0h			; [22].roomFlags
		db 6Eh,	89h		; [22].verbose_offset
		db 6Bh,	56h		; [22].terse_offset
		db 72h,	56h		; [22].firstMaybe_offset
		db 0, 0			; [22].offset_probably
		db r_gcs_none		; [22].north_room
		db r_gcs_none		; [22].south_room
		db r_gcs_none		; [22].east_room
		db r_gcs_none		; [22].west_room
		db r_gcs_none		; [22].ne_room
		db r_gcs_none		; [22].nw_room
		db r_gcs_none		; [22].se_room
		db r_gcs_none		; [22].sw_room
		db r_gcs_none		; [22].up_room
		db r_gcs_none		; [22].down_room
		db 17h			; [22].cw_room
		db 26h			; [22].ccw_room
		db r_engineering	; [22].enter_room
		db r_gcs_none		; [22].exit_room
		db r_engineering	; [22].inward_room
		db r_gcs_none1		; [22].outward_room
		db 0			; [23].scoreBonus
		db 0A0h			; [23].roomFlags
		db 6Eh,	89h		; [23].verbose_offset
		db 6Bh,	56h		; [23].terse_offset
		db 72h,	56h		; [23].firstMaybe_offset
		db 0, 0			; [23].offset_probably
		db r_gcs_none		; [23].north_room
		db r_gcs_none		; [23].south_room
		db r_gcs_none		; [23].east_room
		db r_gcs_none		; [23].west_room
		db r_gcs_none		; [23].ne_room
		db r_gcs_none		; [23].nw_room
		db r_gcs_none		; [23].se_room
		db r_gcs_none		; [23].sw_room
		db r_gcs_none		; [23].up_room
		db r_gcs_none		; [23].down_room
		db 18h			; [23].cw_room
		db 16h			; [23].ccw_room
		db 7			; [23].enter_room
		db r_gcs_none		; [23].exit_room
		db 7			; [23].inward_room
		db r_gcs_none1		; [23].outward_room
		db 0			; [24].scoreBonus
		db 80h			; [24].roomFlags
		db 6Eh,	89h		; [24].verbose_offset
		db 6Bh,	56h		; [24].terse_offset
		db 0, 0			; [24].firstMaybe_offset
		db 0, 0			; [24].offset_probably
		db r_gcs_none		; [24].north_room
		db r_gcs_none		; [24].south_room
		db r_gcs_none		; [24].east_room
		db r_gcs_none		; [24].west_room
		db r_gcs_none		; [24].ne_room
		db r_gcs_none		; [24].nw_room
		db r_gcs_none		; [24].se_room
		db r_gcs_none		; [24].sw_room
		db r_gcs_none		; [24].up_room
		db r_gcs_none		; [24].down_room
		db 19h			; [24].cw_room
		db 17h			; [24].ccw_room
		db r_gcs_library	; [24].enter_room
		db r_gcs_none		; [24].exit_room
		db r_gcs_none1		; [24].inward_room
		db r_gcs_library	; [24].outward_room
		db 0			; [25].scoreBonus
		db 0A0h			; [25].roomFlags
		db 6Eh,	89h		; [25].verbose_offset
		db 6Bh,	56h		; [25].terse_offset
		db 0A1h, 96h		; [25].firstMaybe_offset
		db 0, 0			; [25].offset_probably
		db r_gcs_none		; [25].north_room
		db r_gcs_none		; [25].south_room
		db r_gcs_none		; [25].east_room
		db r_gcs_none		; [25].west_room
		db r_gcs_none		; [25].ne_room
		db r_gcs_none		; [25].nw_room
		db r_gcs_none		; [25].se_room
		db r_gcs_none		; [25].sw_room
		db r_gcs_none		; [25].up_room
		db r_gcs_none		; [25].down_room
		db 1Ah			; [25].cw_room
		db 18h			; [25].ccw_room
		db 71h			; [25].enter_room
		db r_gcs_none		; [25].exit_room
		db r_gcs_none1		; [25].inward_room
		db 71h			; [25].outward_room
		db 0			; [26].scoreBonus
		db 80h			; [26].roomFlags
		db 6Eh,	89h		; [26].verbose_offset
		db 6Bh,	56h		; [26].terse_offset
		db 0, 0			; [26].firstMaybe_offset
		db 0, 0			; [26].offset_probably
		db r_gcs_none		; [26].north_room
		db r_gcs_none		; [26].south_room
		db r_gcs_none		; [26].east_room
		db r_gcs_none		; [26].west_room
		db r_gcs_none		; [26].ne_room
		db r_gcs_none		; [26].nw_room
		db r_gcs_none		; [26].se_room
		db r_gcs_none		; [26].sw_room
		db r_gcs_none		; [26].up_room
		db r_gcs_none		; [26].down_room
		db 1Bh			; [26].cw_room
		db 19h			; [26].ccw_room
		db r_doctors_office	; [26].enter_room
		db r_gcs_none		; [26].exit_room
		db r_doctors_office	; [26].inward_room
		db r_gcs_none1		; [26].outward_room
		db 0			; [27].scoreBonus
		db 80h			; [27].roomFlags
		db 6Eh,	89h		; [27].verbose_offset
		db 6Bh,	56h		; [27].terse_offset
		db 0, 0			; [27].firstMaybe_offset
		db 0, 0			; [27].offset_probably
		db r_gcs_none		; [27].north_room
		db r_gcs_none		; [27].south_room
		db r_gcs_none		; [27].east_room
		db r_gcs_none		; [27].west_room
		db r_gcs_none		; [27].ne_room
		db r_gcs_none		; [27].nw_room
		db r_gcs_none		; [27].se_room
		db r_gcs_none		; [27].sw_room
		db r_gcs_none		; [27].up_room
		db r_gcs_none		; [27].down_room
		db 23h			; [27].cw_room
		db 1Ah			; [27].ccw_room
		db 11h			; [27].enter_room
		db r_gcs_none		; [27].exit_room
		db r_gcs_none1		; [27].inward_room
		db 11h			; [27].outward_room
		db 0			; [28].scoreBonus
		db 0A0h			; [28].roomFlags
		db 72h,	9		; [28].verbose_offset
		db 6Bh,	79h		; [28].terse_offset
		db 71h,	6		; [28].firstMaybe_offset
		db 0, 0			; [28].offset_probably
		db r_gcs_none		; [28].north_room
		db r_gcs_none		; [28].south_room
		db r_gcs_none		; [28].east_room
		db r_gcs_none		; [28].west_room
		db r_gcs_none		; [28].ne_room
		db r_gcs_none		; [28].nw_room
		db r_gcs_none		; [28].se_room
		db r_gcs_none		; [28].sw_room
		db r_gcs_none		; [28].up_room
		db r_gcs_none		; [28].down_room
		db 1Dh			; [28].cw_room
		db r_gcs_none1		; [28].ccw_room
		db rg_storage_space	; [28].enter_room
		db r_gcs_none1		; [28].exit_room
		db rg_storage_space	; [28].inward_room
		db r_gcs_none1		; [28].outward_room
		db 0			; [29].scoreBonus
		db 0A0h			; [29].roomFlags
		db 72h,	9		; [29].verbose_offset
		db 6Bh,	79h		; [29].terse_offset
		db 73h,	67h		; [29].firstMaybe_offset
		db 0, 0			; [29].offset_probably
		db r_gcs_none		; [29].north_room
		db r_gcs_none		; [29].south_room
		db r_gcs_none		; [29].east_room
		db r_gcs_none		; [29].west_room
		db r_gcs_none		; [29].ne_room
		db r_gcs_none		; [29].nw_room
		db r_gcs_none		; [29].se_room
		db r_gcs_none		; [29].sw_room
		db r_gcs_none		; [29].up_room
		db r_gcs_none		; [29].down_room
		db 1Eh			; [29].cw_room
		db 1Ch			; [29].ccw_room
		db r_bar		; [29].enter_room
		db r_gcs_none1		; [29].exit_room
		db r_bar		; [29].inward_room
		db r_gcs_none1		; [29].outward_room
		db 0			; [30].scoreBonus
		db 0A0h			; [30].roomFlags
		db 72h,	9		; [30].verbose_offset
		db 6Bh,	79h		; [30].terse_offset
		db 73h,	67h		; [30].firstMaybe_offset
		db 0, 0			; [30].offset_probably
		db r_gcs_none		; [30].north_room
		db r_gcs_none		; [30].south_room
		db r_gcs_none		; [30].east_room
		db r_gcs_none		; [30].west_room
		db r_gcs_none		; [30].ne_room
		db r_gcs_none		; [30].nw_room
		db r_gcs_none		; [30].se_room
		db r_gcs_none		; [30].sw_room
		db r_gcs_none		; [30].up_room
		db r_gcs_none		; [30].down_room
		db 1Fh			; [30].cw_room
		db 1Dh			; [30].ccw_room
		db r_restaurant		; [30].enter_room
		db r_gcs_none1		; [30].exit_room
		db r_restaurant		; [30].inward_room
		db r_gcs_none1		; [30].outward_room
		db 0			; [31].scoreBonus
		db 0A0h			; [31].roomFlags
		db 72h,	9		; [31].verbose_offset
		db 6Bh,	79h		; [31].terse_offset
		db 72h,	56h		; [31].firstMaybe_offset
		db 0, 0			; [31].offset_probably
		db r_gcs_none		; [31].north_room
		db r_gcs_none		; [31].south_room
		db r_gcs_none		; [31].east_room
		db r_gcs_none		; [31].west_room
		db r_gcs_none		; [31].ne_room
		db r_gcs_none		; [31].nw_room
		db r_gcs_none		; [31].se_room
		db r_gcs_none		; [31].sw_room
		db r_gcs_none		; [31].up_room
		db r_gcs_none		; [31].down_room
		db 20h			; [31].cw_room
		db 1Eh			; [31].ccw_room
		db 0Ch			; [31].enter_room
		db r_gcs_none1		; [31].exit_room
		db 0Ch			; [31].inward_room
		db r_gcs_none1		; [31].outward_room
		db 0			; [32].scoreBonus
		db 0A0h			; [32].roomFlags
		db 72h,	9		; [32].verbose_offset
		db 6Bh,	79h		; [32].terse_offset
		db 72h,	56h		; [32].firstMaybe_offset
		db 0, 0			; [32].offset_probably
		db r_gcs_none		; [32].north_room
		db r_gcs_none		; [32].south_room
		db r_gcs_none		; [32].east_room
		db r_gcs_none		; [32].west_room
		db r_gcs_none		; [32].ne_room
		db r_gcs_none		; [32].nw_room
		db r_gcs_none		; [32].se_room
		db r_gcs_none		; [32].sw_room
		db r_gcs_none		; [32].up_room
		db r_gcs_none		; [32].down_room
		db 21h			; [32].cw_room
		db 1Fh			; [32].ccw_room
		db r_gymnasium		; [32].enter_room
		db r_gcs_none1		; [32].exit_room
		db r_gymnasium		; [32].inward_room
		db r_gcs_none1		; [32].outward_room
		db 0			; [33].scoreBonus
		db 80h			; [33].roomFlags
		db 72h,	9		; [33].verbose_offset
		db 6Bh,	79h		; [33].terse_offset
		db 0, 0			; [33].firstMaybe_offset
		db 0, 0			; [33].offset_probably
		db r_gcs_none		; [33].north_room
		db r_gcs_none		; [33].south_room
		db r_gcs_none		; [33].east_room
		db r_gcs_none		; [33].west_room
		db r_gcs_none		; [33].ne_room
		db r_gcs_none		; [33].nw_room
		db r_gcs_none		; [33].se_room
		db r_gcs_none		; [33].sw_room
		db r_gcs_none		; [33].up_room
		db r_gcs_none		; [33].down_room
		db 22h			; [33].cw_room
		db 20h			; [33].ccw_room
		db 73h			; [33].enter_room
		db r_gcs_none1		; [33].exit_room
		db 73h			; [33].inward_room
		db r_gcs_none1		; [33].outward_room
		db 0			; [34].scoreBonus
		db 0A0h			; [34].roomFlags
		db 70h,	0C7h		; [34].verbose_offset
		db 6Bh,	79h		; [34].terse_offset
		db 71h,	6		; [34].firstMaybe_offset
		db 0, 0			; [34].offset_probably
		db r_gcs_none		; [34].north_room
		db r_gcs_none		; [34].south_room
		db r_gcs_none		; [34].east_room
		db r_gcs_none		; [34].west_room
		db r_gcs_none		; [34].ne_room
		db r_gcs_none		; [34].nw_room
		db r_gcs_none		; [34].se_room
		db r_gcs_none		; [34].sw_room
		db r_gcs_none		; [34].up_room
		db r_gcs_none		; [34].down_room
		db r_gcs_none1		; [34].cw_room
		db 21h			; [34].ccw_room
		db r_gcs_none1		; [34].enter_room
		db r_gcs_none1		; [34].exit_room
		db r_gcs_none1		; [34].inward_room
		db r_gcs_none1		; [34].outward_room
		db 0			; [35].scoreBonus
		db 0A0h			; [35].roomFlags
		db 6Eh,	89h		; [35].verbose_offset
		db 6Bh,	56h		; [35].terse_offset
		db 6Bh,	17h		; [35].firstMaybe_offset
		db 0, 0			; [35].offset_probably
		db r_gcs_none		; [35].north_room
		db r_gcs_none		; [35].south_room
		db r_gcs_none		; [35].east_room
		db r_gcs_none		; [35].west_room
		db r_gcs_none		; [35].ne_room
		db r_gcs_none		; [35].nw_room
		db r_gcs_none		; [35].se_room
		db r_gcs_none		; [35].sw_room
		db r_gcs_none		; [35].up_room
		db r_gcs_none		; [35].down_room
		db 24h			; [35].cw_room
		db 1Bh			; [35].ccw_room
		db r_hospital		; [35].enter_room
		db r_gcs_none		; [35].exit_room
		db r_hospital		; [35].inward_room
		db r_gcs_none1		; [35].outward_room
		db 0			; [36].scoreBonus
		db 80h			; [36].roomFlags
		db 6Eh,	89h		; [36].verbose_offset
		db 6Bh,	56h		; [36].terse_offset
		db 0, 0			; [36].firstMaybe_offset
		db 0, 0			; [36].offset_probably
		db r_gcs_none		; [36].north_room
		db r_gcs_none		; [36].south_room
		db r_gcs_none		; [36].east_room
		db r_gcs_none		; [36].west_room
		db r_gcs_none		; [36].ne_room
		db r_gcs_none		; [36].nw_room
		db r_gcs_none		; [36].se_room
		db r_gcs_none		; [36].sw_room
		db r_gcs_none		; [36].up_room
		db r_gcs_none		; [36].down_room
		db 25h			; [36].cw_room
		db 23h			; [36].ccw_room
		db rg_storage_space	; [36].enter_room
		db r_gcs_none		; [36].exit_room
		db r_gcs_none1		; [36].inward_room
		db rg_storage_space	; [36].outward_room
		db 0			; [37].scoreBonus
		db 0A0h			; [37].roomFlags
		db 6Eh,	89h		; [37].verbose_offset
		db 6Bh,	56h		; [37].terse_offset
		db 73h,	67h		; [37].firstMaybe_offset
		db 0, 0			; [37].offset_probably
		db r_gcs_none		; [37].north_room
		db r_gcs_none		; [37].south_room
		db r_gcs_none		; [37].east_room
		db r_gcs_none		; [37].west_room
		db r_gcs_none		; [37].ne_room
		db r_gcs_none		; [37].nw_room
		db r_gcs_none		; [37].se_room
		db r_gcs_none		; [37].sw_room
		db r_gcs_none		; [37].up_room
		db r_gcs_none		; [37].down_room
		db 26h			; [37].cw_room
		db 24h			; [37].ccw_room
		db r_bar		; [37].enter_room
		db r_gcs_none		; [37].exit_room
		db r_gcs_none1		; [37].inward_room
		db r_bar		; [37].outward_room
		db 0			; [38].scoreBonus
		db 0A0h			; [38].roomFlags
		db 6Eh,	89h		; [38].verbose_offset
		db 6Bh,	56h		; [38].terse_offset
		db 73h,	8Ah		; [38].firstMaybe_offset
		db 0, 0			; [38].offset_probably
		db r_gcs_none		; [38].north_room
		db r_gcs_none		; [38].south_room
		db r_gcs_none		; [38].east_room
		db r_gcs_none		; [38].west_room
		db r_gcs_none		; [38].ne_room
		db r_gcs_none		; [38].nw_room
		db r_gcs_none		; [38].se_room
		db r_gcs_none		; [38].sw_room
		db r_gcs_none		; [38].up_room
		db r_gcs_none		; [38].down_room
		db 16h			; [38].cw_room
		db 25h			; [38].ccw_room
		db r_restaurant		; [38].enter_room
		db r_gcs_none		; [38].exit_room
		db r_gcs_none1		; [38].inward_room
		db r_restaurant		; [38].outward_room
		db 10			; [39].scoreBonus
		db 80h			; [39].roomFlags
		db 85h,	65h		; [39].verbose_offset
		db 85h,	65h		; [39].terse_offset
		db 0, 0			; [39].firstMaybe_offset
		db 0, 0			; [39].offset_probably
		db r_gcs_none		; [39].north_room
		db r_gcs_none		; [39].south_room
		db r_gcs_none		; [39].east_room
		db r_gcs_none		; [39].west_room
		db r_gcs_none		; [39].ne_room
		db r_gcs_none		; [39].nw_room
		db r_gcs_none		; [39].se_room
		db r_gcs_none		; [39].sw_room
		db r_gcs_none		; [39].up_room
		db r_gcs_none		; [39].down_room
		db r_gcs_none		; [39].cw_room
		db r_gcs_none		; [39].ccw_room
		db 6Fh			; [39].enter_room
		db 70h			; [39].exit_room
		db 26h			; [39].inward_room
		db 1Eh			; [39].outward_room
navierRoomData:	db 0			; [0].scoreBonus ; DATA	XREF: getBGNRoomAddress+3Bo
		db 80h			; [0].roomFlags
		db 0A7h, 5Bh		; [0].verbose_offset
		db 0A7h, 31h		; [0].terse_offset
		db 0, 0			; [0].firstMaybe_offset
		db 0, 0			; [0].offset_probably
		db r_gcs_none		; [0].north_room
		db r_gcs_none		; [0].south_room
		db r_gcs_none		; [0].east_room
		db r_gcs_none		; [0].west_room
		db r_gcs_none		; [0].ne_room
		db r_gcs_none		; [0].nw_room
		db r_gcs_none		; [0].se_room
		db r_gcs_none		; [0].sw_room
		db r_gcs_none		; [0].up_room
		db r_gcs_none		; [0].down_room
		db r_gcs_none		; [0].cw_room
		db r_gcs_none		; [0].ccw_room
		db r_gcs_none		; [0].enter_room
		db r_gcs_none		; [0].exit_room
		db r_gcs_none		; [0].inward_room
		db r_gcs_none		; [0].outward_room
		db 25			; [1].scoreBonus
		db 80h			; [1].roomFlags
		db 0A8h, 1Fh		; [1].verbose_offset
		db 0A7h, 0FCh		; [1].terse_offset
		db 0, 0			; [1].firstMaybe_offset
		db 0, 0			; [1].offset_probably
		db r_gcs_none		; [1].north_room
		db r_gcs_none		; [1].south_room
		db r_gcs_none		; [1].east_room
		db r_gcs_none		; [1].west_room
		db r_gcs_none		; [1].ne_room
		db r_gcs_none		; [1].nw_room
		db r_gcs_none		; [1].se_room
		db r_gcs_none		; [1].sw_room
		db r_gcs_none		; [1].up_room
		db r_gcs_none		; [1].down_room
		db r_gcs_none		; [1].cw_room
		db r_gcs_none		; [1].ccw_room
		db r_gcs_none		; [1].enter_room
		db r_landing_bay	; [1].exit_room
		db r_gcs_none		; [1].inward_room
		db r_gcs_none		; [1].outward_room
		db 0			; [2].scoreBonus
		db 80h			; [2].roomFlags
		db 0A9h, 14h		; [2].verbose_offset
		db 0A7h, 0FCh		; [2].terse_offset
		db 0, 0			; [2].firstMaybe_offset
		db 0, 0			; [2].offset_probably
		db r_airless_passage	; [2].north_room
		db r_gcs_none1		; [2].south_room
		db 1			; [2].east_room
		db r_gcs_none1		; [2].west_room
		db r_gcs_none1		; [2].ne_room
		db r_gcs_none1		; [2].nw_room
		db r_gcs_none1		; [2].se_room
		db r_gcs_none1		; [2].sw_room
		db r_gcs_none1		; [2].up_room
		db r_gcs_none1		; [2].down_room
		db r_gcs_none		; [2].cw_room
		db r_gcs_none		; [2].ccw_room
		db 1			; [2].enter_room
		db r_gcs_none		; [2].exit_room
		db r_gcs_none		; [2].inward_room
		db r_gcs_none		; [2].outward_room
		db 0			; [3].scoreBonus
		db 80h			; [3].roomFlags
		db 0A9h, 92h		; [3].verbose_offset
		db 0A9h, 92h		; [3].terse_offset
		db 0, 0			; [3].firstMaybe_offset
		db 0, 0			; [3].offset_probably
		db 4			; [3].north_room
		db r_landing_bay	; [3].south_room
		db r_gcs_none1		; [3].east_room
		db r_gcs_none1		; [3].west_room
		db r_gcs_none1		; [3].ne_room
		db r_gcs_none1		; [3].nw_room
		db r_gcs_none1		; [3].se_room
		db r_gcs_none1		; [3].sw_room
		db r_gcs_none1		; [3].up_room
		db r_gcs_none1		; [3].down_room
		db r_gcs_none		; [3].cw_room
		db r_gcs_none		; [3].ccw_room
		db r_gcs_none		; [3].enter_room
		db r_gcs_none		; [3].exit_room
		db r_gcs_none		; [3].inward_room
		db r_gcs_none		; [3].outward_room
		db 0			; [4].scoreBonus
		db 80h			; [4].roomFlags
		db 0A9h, 0C3h		; [4].verbose_offset
		db 0A9h, 0C3h		; [4].terse_offset
		db 0, 0			; [4].firstMaybe_offset
		db 0, 0			; [4].offset_probably
		db r_gcs_library	; [4].north_room
		db r_airless_passage	; [4].south_room
		db 5			; [4].east_room
		db r_gcs_none1		; [4].west_room
		db r_gcs_none1		; [4].ne_room
		db r_gcs_none1		; [4].nw_room
		db r_gcs_none1		; [4].se_room
		db r_gcs_none1		; [4].sw_room
		db r_gcs_none1		; [4].up_room
		db r_gcs_none1		; [4].down_room
		db r_gcs_none		; [4].cw_room
		db r_gcs_none		; [4].ccw_room
		db r_gcs_none		; [4].enter_room
		db r_gcs_none		; [4].exit_room
		db r_gcs_none		; [4].inward_room
		db r_gcs_none		; [4].outward_room
		db 0			; [5].scoreBonus
		db 80h			; [5].roomFlags
		db 0ABh, 0F3h		; [5].verbose_offset
		db 0ABh, 0F3h		; [5].terse_offset
		db 0, 0			; [5].firstMaybe_offset
		db 0, 0			; [5].offset_probably
		db r_gcs_none1		; [5].north_room
		db r_gcs_none1		; [5].south_room
		db rg_storage_space	; [5].east_room
		db 4			; [5].west_room
		db r_gcs_none1		; [5].ne_room
		db r_gcs_none1		; [5].nw_room
		db r_gcs_none1		; [5].se_room
		db r_gcs_none1		; [5].sw_room
		db r_gcs_none1		; [5].up_room
		db r_gcs_none1		; [5].down_room
		db r_gcs_none		; [5].cw_room
		db r_gcs_none		; [5].ccw_room
		db r_gcs_none		; [5].enter_room
		db r_gcs_none		; [5].exit_room
		db r_gcs_none		; [5].inward_room
		db r_gcs_none		; [5].outward_room
		db 0			; [6].scoreBonus
		db 80h			; [6].roomFlags
		db 0AAh, 25h		; [6].verbose_offset
		db 0AAh, 9		; [6].terse_offset
		db 0, 0			; [6].firstMaybe_offset
		db 0, 0			; [6].offset_probably
		db 7			; [6].north_room
		db r_gcs_none1		; [6].south_room
		db r_bar		; [6].east_room
		db 5			; [6].west_room
		db r_gcs_none1		; [6].ne_room
		db r_gcs_none1		; [6].nw_room
		db r_gcs_none1		; [6].se_room
		db r_gcs_none1		; [6].sw_room
		db r_gcs_none1		; [6].up_room
		db r_gcs_none1		; [6].down_room
		db r_gcs_none		; [6].cw_room
		db r_gcs_none		; [6].ccw_room
		db r_gcs_none		; [6].enter_room
		db r_gcs_none		; [6].exit_room
		db r_gcs_none		; [6].inward_room
		db r_gcs_none		; [6].outward_room
		db 0			; [7].scoreBonus
		db 80h			; [7].roomFlags
		db 0AAh, 0B8h		; [7].verbose_offset
		db 0AAh, 0B8h		; [7].terse_offset
		db 0, 0			; [7].firstMaybe_offset
		db 0, 0			; [7].offset_probably
		db 8			; [7].north_room
		db rg_storage_space	; [7].south_room
		db r_gcs_none1		; [7].east_room
		db r_gcs_none1		; [7].west_room
		db r_gcs_none1		; [7].ne_room
		db r_gcs_none1		; [7].nw_room
		db r_gcs_none1		; [7].se_room
		db r_gcs_none1		; [7].sw_room
		db r_gcs_none1		; [7].up_room
		db r_gcs_none1		; [7].down_room
		db r_gcs_none		; [7].cw_room
		db r_gcs_none		; [7].ccw_room
		db r_gcs_none		; [7].enter_room
		db r_gcs_none		; [7].exit_room
		db r_gcs_none		; [7].inward_room
		db r_gcs_none		; [7].outward_room
		db 0			; [8].scoreBonus
		db 80h			; [8].roomFlags
		db 0AAh, 0B8h		; [8].verbose_offset
		db 0AAh, 0B8h		; [8].terse_offset
		db 0, 0			; [8].firstMaybe_offset
		db 0, 0			; [8].offset_probably
		db 9			; [8].north_room
		db 7			; [8].south_room
		db r_gcs_none1		; [8].east_room
		db r_gcs_none1		; [8].west_room
		db r_gcs_none1		; [8].ne_room
		db r_gcs_none1		; [8].nw_room
		db r_gcs_none1		; [8].se_room
		db r_gcs_none1		; [8].sw_room
		db r_gcs_none1		; [8].up_room
		db r_gcs_none1		; [8].down_room
		db r_gcs_none		; [8].cw_room
		db r_gcs_none		; [8].ccw_room
		db r_gcs_none		; [8].enter_room
		db r_gcs_none		; [8].exit_room
		db r_gcs_none		; [8].inward_room
		db r_gcs_none		; [8].outward_room
		db 0			; [9].scoreBonus
		db 80h			; [9].roomFlags
		db 0AAh, 0E2h		; [9].verbose_offset
		db 0AAh, 0E2h		; [9].terse_offset
		db 0, 0			; [9].firstMaybe_offset
		db 0, 0			; [9].offset_probably
		db r_gcs_none1		; [9].north_room
		db 8			; [9].south_room
		db r_gcs_none1		; [9].east_room
		db r_gcs_none1		; [9].west_room
		db r_gcs_none1		; [9].ne_room
		db r_gcs_none1		; [9].nw_room
		db r_gcs_none1		; [9].se_room
		db r_gcs_none1		; [9].sw_room
		db r_gcs_none1		; [9].up_room
		db r_gcs_none1		; [9].down_room
		db r_gcs_none		; [9].cw_room
		db r_gcs_none		; [9].ccw_room
		db r_gcs_none		; [9].enter_room
		db r_gcs_none		; [9].exit_room
		db r_gcs_none		; [9].inward_room
		db r_gcs_none		; [9].outward_room
		db 0			; [10].scoreBonus
		db 80h			; [10].roomFlags
		db 0AAh, 9		; [10].verbose_offset
		db 0AAh, 9		; [10].terse_offset
		db 0, 0			; [10].firstMaybe_offset
		db 0, 0			; [10].offset_probably
		db rg_restaurant_0	; [10].north_room
		db r_gcs_none1		; [10].south_room
		db r_gcs_none1		; [10].east_room
		db rg_storage_space	; [10].west_room
		db r_gcs_none1		; [10].ne_room
		db r_gcs_none1		; [10].nw_room
		db r_gcs_none1		; [10].se_room
		db r_gcs_none1		; [10].sw_room
		db r_gcs_none1		; [10].up_room
		db r_gcs_none1		; [10].down_room
		db r_gcs_none		; [10].cw_room
		db r_gcs_none		; [10].ccw_room
		db r_gcs_none		; [10].enter_room
		db r_gcs_none		; [10].exit_room
		db r_gcs_none		; [10].inward_room
		db r_gcs_none		; [10].outward_room
		db 0			; [11].scoreBonus
		db 80h			; [11].roomFlags
		db 0AAh, 0B8h		; [11].verbose_offset
		db 0AAh, 0B8h		; [11].terse_offset
		db 0, 0			; [11].firstMaybe_offset
		db 0, 0			; [11].offset_probably
		db 0Ch			; [11].north_room
		db r_bar		; [11].south_room
		db r_gcs_none1		; [11].east_room
		db r_gcs_none1		; [11].west_room
		db r_gcs_none1		; [11].ne_room
		db r_gcs_none1		; [11].nw_room
		db r_gcs_none1		; [11].se_room
		db r_gcs_none1		; [11].sw_room
		db r_gcs_none1		; [11].up_room
		db r_gcs_none1		; [11].down_room
		db r_gcs_none		; [11].cw_room
		db r_gcs_none		; [11].ccw_room
		db r_gcs_none		; [11].enter_room
		db r_gcs_none		; [11].exit_room
		db r_gcs_none		; [11].inward_room
		db r_gcs_none		; [11].outward_room
		db 0			; [12].scoreBonus
		db 80h			; [12].roomFlags
		db 0AAh, 0B8h		; [12].verbose_offset
		db 0AAh, 0B8h		; [12].terse_offset
		db 0, 0			; [12].firstMaybe_offset
		db 0, 0			; [12].offset_probably
		db r_gymnasium		; [12].north_room
		db rg_restaurant_0	; [12].south_room
		db r_gcs_none1		; [12].east_room
		db r_gcs_none1		; [12].west_room
		db r_gcs_none1		; [12].ne_room
		db r_gcs_none1		; [12].nw_room
		db r_gcs_none1		; [12].se_room
		db r_gcs_none1		; [12].sw_room
		db r_gcs_none1		; [12].up_room
		db r_gcs_none1		; [12].down_room
		db r_gcs_none		; [12].cw_room
		db r_gcs_none		; [12].ccw_room
		db r_gcs_none		; [12].enter_room
		db r_gcs_none		; [12].exit_room
		db r_gcs_none		; [12].inward_room
		db r_gcs_none		; [12].outward_room
		db 0			; [13].scoreBonus
		db 80h			; [13].roomFlags
		db 0AAh, 0FEh		; [13].verbose_offset
		db 0AAh, 0FEh		; [13].terse_offset
		db 0, 0			; [13].firstMaybe_offset
		db 0, 0			; [13].offset_probably
		db r_gcs_none1		; [13].north_room
		db 0Ch			; [13].south_room
		db r_gcs_none1		; [13].east_room
		db r_gcs_none1		; [13].west_room
		db r_gcs_none1		; [13].ne_room
		db r_gcs_none1		; [13].nw_room
		db r_gcs_none1		; [13].se_room
		db r_gcs_none1		; [13].sw_room
		db r_gcs_none1		; [13].up_room
		db r_gcs_none1		; [13].down_room
		db r_gcs_none		; [13].cw_room
		db r_gcs_none		; [13].ccw_room
		db r_gcs_none		; [13].enter_room
		db r_gcs_none		; [13].exit_room
		db r_gcs_none		; [13].inward_room
		db r_gcs_none		; [13].outward_room
		db 0			; [14].scoreBonus
		db 80h			; [14].roomFlags
		db 0ABh, 0ADh		; [14].verbose_offset
		db 0ABh, 0ADh		; [14].terse_offset
		db 0, 0			; [14].firstMaybe_offset
		db 0, 0			; [14].offset_probably
		db r_doctors_office	; [14].north_room
		db 4			; [14].south_room
		db r_gcs_none1		; [14].east_room
		db r_maintenance	; [14].west_room
		db r_gcs_none1		; [14].ne_room
		db r_gcs_none1		; [14].nw_room
		db r_gcs_none1		; [14].se_room
		db r_gcs_none1		; [14].sw_room
		db r_gcs_none1		; [14].up_room
		db r_gcs_none1		; [14].down_room
		db r_gcs_none		; [14].cw_room
		db r_gcs_none		; [14].ccw_room
		db r_gcs_none		; [14].enter_room
		db r_gcs_none		; [14].exit_room
		db r_gcs_none		; [14].inward_room
		db r_gcs_none		; [14].outward_room
		db 0			; [15].scoreBonus
		db 80h			; [15].roomFlags
		db 0ABh, 0F3h		; [15].verbose_offset
		db 0ABh, 0F3h		; [15].terse_offset
		db 0, 0			; [15].firstMaybe_offset
		db 0, 0			; [15].offset_probably
		db r_gcs_none1		; [15].north_room
		db r_gcs_none1		; [15].south_room
		db r_gcs_library	; [15].east_room
		db r_supply_room	; [15].west_room
		db r_gcs_none1		; [15].ne_room
		db r_gcs_none1		; [15].nw_room
		db r_gcs_none1		; [15].se_room
		db r_gcs_none1		; [15].sw_room
		db r_gcs_none1		; [15].up_room
		db r_gcs_none1		; [15].down_room
		db r_gcs_none		; [15].cw_room
		db r_gcs_none		; [15].ccw_room
		db r_gcs_none		; [15].enter_room
		db r_gcs_none		; [15].exit_room
		db r_gcs_none		; [15].inward_room
		db r_gcs_none		; [15].outward_room
		db 0			; [16].scoreBonus
		db 80h			; [16].roomFlags
		db 0ACh, 16h		; [16].verbose_offset
		db 0ACh, 16h		; [16].terse_offset
		db 0, 0			; [16].firstMaybe_offset
		db 0, 0			; [16].offset_probably
		db r_gcs_none1		; [16].north_room
		db r_gcs_none1		; [16].south_room
		db r_maintenance	; [16].east_room
		db 11h			; [16].west_room
		db r_gcs_none1		; [16].ne_room
		db r_gcs_none1		; [16].nw_room
		db r_gcs_none1		; [16].se_room
		db r_gcs_none1		; [16].sw_room
		db r_gcs_none1		; [16].up_room
		db r_gcs_none1		; [16].down_room
		db r_gcs_none		; [16].cw_room
		db r_gcs_none		; [16].ccw_room
		db r_gcs_none		; [16].enter_room
		db r_gcs_none		; [16].exit_room
		db r_gcs_none		; [16].inward_room
		db r_gcs_none		; [16].outward_room
		db 10			; [17].scoreBonus
		db 80h			; [17].roomFlags
		db 0ACh, 7Fh		; [17].verbose_offset
		db 0AEh, 77h		; [17].terse_offset
		db 0, 0			; [17].firstMaybe_offset
		db 0, 0			; [17].offset_probably
		db r_gcs_none1		; [17].north_room
		db r_gcs_none1		; [17].south_room
		db r_supply_room	; [17].east_room
		db r_gcs_none1		; [17].west_room
		db r_gcs_none1		; [17].ne_room
		db r_gcs_none1		; [17].nw_room
		db r_gcs_none1		; [17].se_room
		db r_gcs_none1		; [17].sw_room
		db r_gcs_none1		; [17].up_room
		db r_gcs_none1		; [17].down_room
		db r_gcs_none		; [17].cw_room
		db r_gcs_none		; [17].ccw_room
		db r_gcs_none		; [17].enter_room
		db r_gcs_none		; [17].exit_room
		db r_gcs_none		; [17].inward_room
		db r_gcs_none		; [17].outward_room
		db 0			; [18].scoreBonus
		db 80h			; [18].roomFlags
		db 0AEh, 9Ah		; [18].verbose_offset
		db 0AEh, 9Ah		; [18].terse_offset
		db 0, 0			; [18].firstMaybe_offset
		db 0, 0			; [18].offset_probably
		db r_gcs_computer_center; [18].north_room
		db r_gcs_library	; [18].south_room
		db r_gcs_none1		; [18].east_room
		db r_gcs_none1		; [18].west_room
		db r_gcs_none1		; [18].ne_room
		db r_gcs_none1		; [18].nw_room
		db r_gcs_none1		; [18].se_room
		db r_gcs_none1		; [18].sw_room
		db r_gcs_none1		; [18].up_room
		db r_gcs_none1		; [18].down_room
		db r_gcs_none		; [18].cw_room
		db r_gcs_none		; [18].ccw_room
		db r_gcs_none		; [18].enter_room
		db r_gcs_none		; [18].exit_room
		db r_gcs_none		; [18].inward_room
		db r_gcs_none		; [18].outward_room
		db 0			; [19].scoreBonus
		db 80h			; [19].roomFlags
		db 0AEh, 0BDh		; [19].verbose_offset
		db 0AFh, 96h		; [19].terse_offset
		db 0, 0			; [19].firstMaybe_offset
		db 0, 0			; [19].offset_probably
		db r_gcs_none2		; [19].north_room
		db r_doctors_office	; [19].south_room
		db r_gcs_none1		; [19].east_room
		db r_gcs_none1		; [19].west_room
		db r_gcs_none1		; [19].ne_room
		db r_gcs_none1		; [19].nw_room
		db r_gcs_none1		; [19].se_room
		db r_gcs_none1		; [19].sw_room
		db r_gcs_none1		; [19].up_room
		db r_gcs_none2		; [19].down_room
		db r_gcs_none		; [19].cw_room
		db r_gcs_none		; [19].ccw_room
		db r_gcs_none		; [19].enter_room
		db r_gcs_none		; [19].exit_room
		db r_gcs_none		; [19].inward_room
		db r_gcs_none		; [19].outward_room
		db 30			; [20].scoreBonus
		db 82h			; [20].roomFlags
		db 0B0h, 37h		; [20].verbose_offset
		db 0B0h, 37h		; [20].terse_offset
		db 0, 0			; [20].firstMaybe_offset
		db 0, 0			; [20].offset_probably
		db r_engineering	; [20].north_room
		db r_gcs_computer_center; [20].south_room
		db r_gcs_none1		; [20].east_room
		db r_gcs_none1		; [20].west_room
		db r_gcs_none1		; [20].ne_room
		db r_gcs_none1		; [20].nw_room
		db r_gcs_none1		; [20].se_room
		db r_gcs_none1		; [20].sw_room
		db r_gcs_computer_center; [20].up_room
		db r_engineering	; [20].down_room
		db r_gcs_none		; [20].cw_room
		db r_gcs_none		; [20].ccw_room
		db r_gcs_none		; [20].enter_room
		db r_gcs_none		; [20].exit_room
		db r_gcs_none		; [20].inward_room
		db r_gcs_none		; [20].outward_room
		db 0			; [21].scoreBonus
		db 82h			; [21].roomFlags
		db 0B0h, 53h		; [21].verbose_offset
		db 0B0h, 53h		; [21].terse_offset
		db 0, 0			; [21].firstMaybe_offset
		db 0, 0			; [21].offset_probably
		db 0E7h			; [21].north_room
		db r_hospital		; [21].south_room
		db 1Ah			; [21].east_room
		db 16h			; [21].west_room
		db 1Bh			; [21].ne_room
		db r_gcs_none1		; [21].nw_room
		db r_gcs_none1		; [21].se_room
		db r_gcs_none1		; [21].sw_room
		db r_hospital		; [21].up_room
		db r_gcs_none1		; [21].down_room
		db r_gcs_none		; [21].cw_room
		db r_gcs_none		; [21].ccw_room
		db r_gcs_none		; [21].enter_room
		db r_gcs_none		; [21].exit_room
		db r_gcs_none		; [21].inward_room
		db r_gcs_none		; [21].outward_room
		db 0			; [22].scoreBonus
		db 82h			; [22].roomFlags
		db 0B0h, 8Bh		; [22].verbose_offset
		db 0B0h, 6Fh		; [22].terse_offset
		db 0, 0			; [22].firstMaybe_offset
		db 0, 0			; [22].offset_probably
		db r_gcs_none1		; [22].north_room
		db r_gcs_none1		; [22].south_room
		db r_engineering	; [22].east_room
		db 19h			; [22].west_room
		db r_gcs_none1		; [22].ne_room
		db r_gcs_none1		; [22].nw_room
		db r_gcs_none1		; [22].se_room
		db 17h			; [22].sw_room
		db r_gcs_none1		; [22].up_room
		db r_gcs_none1		; [22].down_room
		db r_gcs_none		; [22].cw_room
		db r_gcs_none		; [22].ccw_room
		db r_gcs_none		; [22].enter_room
		db r_gcs_none		; [22].exit_room
		db r_gcs_none		; [22].inward_room
		db r_gcs_none		; [22].outward_room
		db 0			; [23].scoreBonus
		db 82h			; [23].roomFlags
		db 0B1h, 8Eh		; [23].verbose_offset
		db 0B1h, 8Eh		; [23].terse_offset
		db 0, 0			; [23].firstMaybe_offset
		db 0, 0			; [23].offset_probably
		db r_gcs_none1		; [23].north_room
		db r_gcs_none1		; [23].south_room
		db r_gcs_none1		; [23].east_room
		db r_gcs_none1		; [23].west_room
		db 16h			; [23].ne_room
		db r_gcs_none1		; [23].nw_room
		db r_gcs_none1		; [23].se_room
		db 18h			; [23].sw_room
		db r_gcs_none1		; [23].up_room
		db r_gcs_none1		; [23].down_room
		db r_gcs_none		; [23].cw_room
		db r_gcs_none		; [23].ccw_room
		db 18h			; [23].enter_room
		db r_gcs_none		; [23].exit_room
		db r_gcs_none		; [23].inward_room
		db r_gcs_none		; [23].outward_room
		db 0			; [24].scoreBonus
		db 82h			; [24].roomFlags
		db 0B1h, 0E9h		; [24].verbose_offset
		db 0B1h, 0C6h		; [24].terse_offset
		db 0, 0			; [24].firstMaybe_offset
		db 0, 0			; [24].offset_probably
		db r_gcs_none1		; [24].north_room
		db r_gcs_none1		; [24].south_room
		db r_gcs_none1		; [24].east_room
		db r_gcs_none1		; [24].west_room
		db 17h			; [24].ne_room
		db r_gcs_none1		; [24].nw_room
		db r_gcs_none1		; [24].se_room
		db r_gcs_none1		; [24].sw_room
		db r_gcs_none1		; [24].up_room
		db r_gcs_none1		; [24].down_room
		db r_gcs_none		; [24].cw_room
		db r_gcs_none		; [24].ccw_room
		db r_gcs_none		; [24].enter_room
		db 17h			; [24].exit_room
		db r_gcs_none		; [24].inward_room
		db r_gcs_none		; [24].outward_room
		db 0			; [25].scoreBonus
		db 82h			; [25].roomFlags
		db 0B1h, 1Eh		; [25].verbose_offset
		db 0B1h, 2		; [25].terse_offset
		db 0, 0			; [25].firstMaybe_offset
		db 0, 0			; [25].offset_probably
		db r_gcs_none1		; [25].north_room
		db r_gcs_none1		; [25].south_room
		db 16h			; [25].east_room
		db r_gcs_none1		; [25].west_room
		db r_gcs_none1		; [25].ne_room
		db r_gcs_none1		; [25].nw_room
		db r_gcs_none1		; [25].se_room
		db r_gcs_none1		; [25].sw_room
		db r_gcs_none1		; [25].up_room
		db r_gcs_none1		; [25].down_room
		db r_gcs_none		; [25].cw_room
		db r_gcs_none		; [25].ccw_room
		db r_gcs_none		; [25].enter_room
		db r_gcs_none		; [25].exit_room
		db r_gcs_none		; [25].inward_room
		db r_gcs_none		; [25].outward_room
		db 0			; [26].scoreBonus
		db 82h			; [26].roomFlags
		db 0B2h, 91h		; [26].verbose_offset
		db 0B2h, 91h		; [26].terse_offset
		db 0, 0			; [26].firstMaybe_offset
		db 0, 0			; [26].offset_probably
		db r_gcs_none1		; [26].north_room
		db r_gcs_none1		; [26].south_room
		db r_gcs_none1		; [26].east_room
		db r_engineering	; [26].west_room
		db 1Ch			; [26].ne_room
		db r_gcs_none1		; [26].nw_room
		db r_gcs_none1		; [26].se_room
		db r_gcs_none1		; [26].sw_room
		db r_gcs_none1		; [26].up_room
		db r_gcs_none1		; [26].down_room
		db r_gcs_none		; [26].cw_room
		db r_gcs_none		; [26].ccw_room
		db r_gcs_none		; [26].enter_room
		db r_gcs_none		; [26].exit_room
		db r_gcs_none		; [26].inward_room
		db r_gcs_none		; [26].outward_room
		db 0			; [27].scoreBonus
		db 82h			; [27].roomFlags
		db 0B2h, 0ADh		; [27].verbose_offset
		db 0B2h, 0ADh		; [27].terse_offset
		db 0, 0			; [27].firstMaybe_offset
		db 0, 0			; [27].offset_probably
		db r_gcs_none1		; [27].north_room
		db r_gcs_none1		; [27].south_room
		db 1Ch			; [27].east_room
		db r_gcs_none1		; [27].west_room
		db r_gcs_none1		; [27].ne_room
		db r_gcs_none1		; [27].nw_room
		db r_gcs_none1		; [27].se_room
		db r_engineering	; [27].sw_room
		db r_gcs_none1		; [27].up_room
		db r_gcs_none1		; [27].down_room
		db r_gcs_none		; [27].cw_room
		db r_gcs_none		; [27].ccw_room
		db r_gcs_none		; [27].enter_room
		db r_gcs_none		; [27].exit_room
		db r_gcs_none		; [27].inward_room
		db r_gcs_none		; [27].outward_room
		db 0			; [28].scoreBonus
		db 82h			; [28].roomFlags
		db 0B2h, 0ADh		; [28].verbose_offset
		db 0B2h, 0ADh		; [28].terse_offset
		db 0, 0			; [28].firstMaybe_offset
		db 0, 0			; [28].offset_probably
		db r_gcs_none1		; [28].north_room
		db r_gcs_none1		; [28].south_room
		db 1Dh			; [28].east_room
		db 1Bh			; [28].west_room
		db r_gcs_none1		; [28].ne_room
		db r_gcs_none1		; [28].nw_room
		db r_gcs_none1		; [28].se_room
		db 1Ah			; [28].sw_room
		db r_gcs_none1		; [28].up_room
		db r_gcs_none1		; [28].down_room
		db r_gcs_none		; [28].cw_room
		db r_gcs_none		; [28].ccw_room
		db r_gcs_none		; [28].enter_room
		db r_gcs_none		; [28].exit_room
		db r_gcs_none		; [28].inward_room
		db r_gcs_none		; [28].outward_room
		db 0			; [29].scoreBonus
		db 82h			; [29].roomFlags
		db 0B2h, 0F3h		; [29].verbose_offset
		db 0B2h, 0D0h		; [29].terse_offset
		db 0, 0			; [29].firstMaybe_offset
		db 0, 0			; [29].offset_probably
		db r_gcs_none1		; [29].north_room
		db r_gcs_none1		; [29].south_room
		db 1Fh			; [29].east_room
		db 1Ch			; [29].west_room
		db 20h			; [29].ne_room
		db r_gcs_none1		; [29].nw_room
		db 1Eh			; [29].se_room
		db r_gcs_none1		; [29].sw_room
		db r_gcs_none1		; [29].up_room
		db r_gcs_none1		; [29].down_room
		db r_gcs_none		; [29].cw_room
		db r_gcs_none		; [29].ccw_room
		db r_gcs_none		; [29].enter_room
		db r_gcs_none		; [29].exit_room
		db r_gcs_none		; [29].inward_room
		db r_gcs_none		; [29].outward_room
		db 0			; [30].scoreBonus
		db 82h			; [30].roomFlags
		db 0B3h, 0D3h		; [30].verbose_offset
		db 0B3h, 5Ch		; [30].terse_offset
		db 0, 0			; [30].firstMaybe_offset
		db 0, 0			; [30].offset_probably
		db r_gcs_none1		; [30].north_room
		db r_gcs_none1		; [30].south_room
		db r_gcs_none1		; [30].east_room
		db r_gcs_none1		; [30].west_room
		db r_gcs_none1		; [30].ne_room
		db 1Dh			; [30].nw_room
		db r_gcs_none1		; [30].se_room
		db r_gcs_none1		; [30].sw_room
		db r_gcs_none1		; [30].up_room
		db r_gcs_none1		; [30].down_room
		db r_gcs_none		; [30].cw_room
		db r_gcs_none		; [30].ccw_room
		db r_gcs_none		; [30].enter_room
		db 1Dh			; [30].exit_room
		db r_gcs_none		; [30].inward_room
		db r_gcs_none		; [30].outward_room
		db 0			; [31].scoreBonus
		db 82h			; [31].roomFlags
		db 0B3h, 78h		; [31].verbose_offset
		db 0B3h, 5Ch		; [31].terse_offset
		db 0, 0			; [31].firstMaybe_offset
		db 0, 0			; [31].offset_probably
		db r_gcs_none1		; [31].north_room
		db r_gcs_none1		; [31].south_room
		db r_gcs_none1		; [31].east_room
		db 1Dh			; [31].west_room
		db r_gcs_none1		; [31].ne_room
		db r_gcs_none1		; [31].nw_room
		db r_gcs_none1		; [31].se_room
		db r_gcs_none1		; [31].sw_room
		db r_gcs_none1		; [31].up_room
		db r_gcs_none1		; [31].down_room
		db r_gcs_none		; [31].cw_room
		db r_gcs_none		; [31].ccw_room
		db r_gcs_none		; [31].enter_room
		db 1Dh			; [31].exit_room
		db r_gcs_none		; [31].inward_room
		db r_gcs_none		; [31].outward_room
		db 0			; [32].scoreBonus
		db 82h			; [32].roomFlags
		db 0B3h, 78h		; [32].verbose_offset
		db 0B3h, 5Ch		; [32].terse_offset
		db 0, 0			; [32].firstMaybe_offset
		db 0, 0			; [32].offset_probably
		db r_gcs_none1		; [32].north_room
		db r_gcs_none1		; [32].south_room
		db r_gcs_none1		; [32].east_room
		db r_gcs_none1		; [32].west_room
		db r_gcs_none1		; [32].ne_room
		db r_gcs_none1		; [32].nw_room
		db r_gcs_none1		; [32].se_room
		db 1Dh			; [32].sw_room
		db r_gcs_none1		; [32].up_room
		db r_gcs_none1		; [32].down_room
		db r_gcs_none		; [32].cw_room
		db r_gcs_none		; [32].ccw_room
		db r_gcs_none		; [32].enter_room
		db 1Dh			; [32].exit_room
		db r_gcs_none		; [32].inward_room
		db r_gcs_none		; [32].outward_room
		db 0			; [33].scoreBonus
		db 0A2h			; [33].roomFlags
		db 0B4h, 58h		; [33].verbose_offset
		db 0B4h, 35h		; [33].terse_offset
		db 0B4h, 97h		; [33].firstMaybe_offset
		db 0, 0			; [33].offset_probably
		db 22h			; [33].north_room
		db r_engineering	; [33].south_room
		db r_gcs_none1		; [33].east_room
		db r_gcs_none1		; [33].west_room
		db r_gcs_none1		; [33].ne_room
		db r_gcs_none1		; [33].nw_room
		db r_gcs_none1		; [33].se_room
		db r_gcs_none1		; [33].sw_room
		db r_gcs_none1		; [33].up_room
		db r_gcs_none1		; [33].down_room
		db r_gcs_none		; [33].cw_room
		db r_gcs_none		; [33].ccw_room
		db r_gcs_none		; [33].enter_room
		db r_gcs_none		; [33].exit_room
		db r_gcs_none		; [33].inward_room
		db r_gcs_none		; [33].outward_room
		db 24			; [34].scoreBonus
		db 82h			; [34].roomFlags
		db 0B5h, 62h		; [34].verbose_offset
		db 0B5h, 62h		; [34].terse_offset
		db 0, 0			; [34].firstMaybe_offset
		db 0, 0			; [34].offset_probably
		db 26h			; [34].north_room
		db 21h			; [34].south_room
		db 2Bh			; [34].east_room
		db 23h			; [34].west_room
		db r_gcs_none1		; [34].ne_room
		db r_gcs_none1		; [34].nw_room
		db r_gcs_none1		; [34].se_room
		db r_gcs_none1		; [34].sw_room
		db r_gcs_none1		; [34].up_room
		db r_gcs_none1		; [34].down_room
		db r_gcs_none		; [34].cw_room
		db r_gcs_none		; [34].ccw_room
		db r_gcs_none		; [34].enter_room
		db r_gcs_none		; [34].exit_room
		db r_gcs_none		; [34].inward_room
		db r_gcs_none		; [34].outward_room
		db 0			; [35].scoreBonus
		db 82h			; [35].roomFlags
		db 0B5h, 85h		; [35].verbose_offset
		db 0B5h, 85h		; [35].terse_offset
		db 0, 0			; [35].firstMaybe_offset
		db 0, 0			; [35].offset_probably
		db r_gcs_none1		; [35].north_room
		db r_gcs_none1		; [35].south_room
		db 22h			; [35].east_room
		db 24h			; [35].west_room
		db r_gcs_none1		; [35].ne_room
		db r_gcs_none1		; [35].nw_room
		db r_gcs_none1		; [35].se_room
		db r_gcs_none1		; [35].sw_room
		db r_gcs_none1		; [35].up_room
		db r_gcs_none1		; [35].down_room
		db r_gcs_none		; [35].cw_room
		db r_gcs_none		; [35].ccw_room
		db r_gcs_none		; [35].enter_room
		db r_gcs_none		; [35].exit_room
		db r_gcs_none		; [35].inward_room
		db r_gcs_none		; [35].outward_room
		db 0			; [36].scoreBonus
		db 82h			; [36].roomFlags
		db 0B5h, 0C4h		; [36].verbose_offset
		db 0B5h, 0A8h		; [36].terse_offset
		db 0, 0			; [36].firstMaybe_offset
		db 0, 0			; [36].offset_probably
		db r_gcs_none1		; [36].north_room
		db 25h			; [36].south_room
		db 23h			; [36].east_room
		db r_gcs_none1		; [36].west_room
		db r_gcs_none1		; [36].ne_room
		db r_gcs_none1		; [36].nw_room
		db r_gcs_none1		; [36].se_room
		db r_gcs_none1		; [36].sw_room
		db r_gcs_none1		; [36].up_room
		db r_gcs_none1		; [36].down_room
		db r_gcs_none		; [36].cw_room
		db r_gcs_none		; [36].ccw_room
		db r_gcs_none		; [36].enter_room
		db r_gcs_none		; [36].exit_room
		db r_gcs_none		; [36].inward_room
		db r_gcs_none		; [36].outward_room
		db 0			; [37].scoreBonus
		db 82h			; [37].roomFlags
		db 0B6h, 9Dh		; [37].verbose_offset
		db 0B6h, 7Ah		; [37].terse_offset
		db 0, 0			; [37].firstMaybe_offset
		db 0, 0			; [37].offset_probably
		db 24h			; [37].north_room
		db r_gcs_none1		; [37].south_room
		db r_gcs_none1		; [37].east_room
		db r_gcs_none1		; [37].west_room
		db r_gcs_none1		; [37].ne_room
		db r_gcs_none1		; [37].nw_room
		db r_gcs_none1		; [37].se_room
		db r_gcs_none1		; [37].sw_room
		db r_gcs_none1		; [37].up_room
		db r_gcs_none1		; [37].down_room
		db r_gcs_none		; [37].cw_room
		db r_gcs_none		; [37].ccw_room
		db r_gcs_none		; [37].enter_room
		db r_gcs_none		; [37].exit_room
		db r_gcs_none		; [37].inward_room
		db r_gcs_none		; [37].outward_room
		db 0			; [38].scoreBonus
		db 82h			; [38].roomFlags
		db 0B8h, 10h		; [38].verbose_offset
		db 0B7h, 0F4h		; [38].terse_offset
		db 0, 0			; [38].firstMaybe_offset
		db 0, 0			; [38].offset_probably
		db r_gcs_none1		; [38].north_room
		db 22h			; [38].south_room
		db r_gcs_none1		; [38].east_room
		db r_restaurant		; [38].west_room
		db r_gcs_none1		; [38].ne_room
		db 29h			; [38].nw_room
		db r_gcs_none1		; [38].se_room
		db r_gcs_none1		; [38].sw_room
		db r_gcs_none1		; [38].up_room
		db r_gcs_none1		; [38].down_room
		db r_gcs_none		; [38].cw_room
		db r_gcs_none		; [38].ccw_room
		db r_gcs_none		; [38].enter_room
		db r_gcs_none		; [38].exit_room
		db r_gcs_none		; [38].inward_room
		db r_gcs_none		; [38].outward_room
		db 0			; [39].scoreBonus
		db 82h			; [39].roomFlags
		db 0B8h, 6Bh		; [39].verbose_offset
		db 0B8h, 6Bh		; [39].terse_offset
		db 0, 0			; [39].firstMaybe_offset
		db 0, 0			; [39].offset_probably
		db r_gcs_none1		; [39].north_room
		db r_gcs_none1		; [39].south_room
		db 26h			; [39].east_room
		db 28h			; [39].west_room
		db r_gcs_none1		; [39].ne_room
		db r_gcs_none1		; [39].nw_room
		db r_gcs_none1		; [39].se_room
		db r_gcs_none1		; [39].sw_room
		db r_gcs_none1		; [39].up_room
		db r_gcs_none1		; [39].down_room
		db r_gcs_none		; [39].cw_room
		db r_gcs_none		; [39].ccw_room
		db r_gcs_none		; [39].enter_room
		db r_gcs_none		; [39].exit_room
		db r_gcs_none		; [39].inward_room
		db r_gcs_none		; [39].outward_room
		db 5			; [40].scoreBonus
		db 82h			; [40].roomFlags
		db 0B8h, 0AAh		; [40].verbose_offset
		db 0B8h, 8Eh		; [40].terse_offset
		db 0, 0			; [40].firstMaybe_offset
		db 0, 0			; [40].offset_probably
		db r_gcs_none1		; [40].north_room
		db r_gcs_none1		; [40].south_room
		db r_restaurant		; [40].east_room
		db r_gcs_none1		; [40].west_room
		db r_gcs_none1		; [40].ne_room
		db r_gcs_none1		; [40].nw_room
		db r_gcs_none1		; [40].se_room
		db r_gcs_none1		; [40].sw_room
		db r_gcs_none1		; [40].up_room
		db r_gcs_none1		; [40].down_room
		db r_gcs_none		; [40].cw_room
		db r_gcs_none		; [40].ccw_room
		db r_gcs_none		; [40].enter_room
		db r_gcs_none		; [40].exit_room
		db r_gcs_none		; [40].inward_room
		db r_gcs_none		; [40].outward_room
		db 0			; [41].scoreBonus
		db 82h			; [41].roomFlags
		db 0B9h, 36h		; [41].verbose_offset
		db 0B9h, 36h		; [41].terse_offset
		db 0, 0			; [41].firstMaybe_offset
		db 0, 0			; [41].offset_probably
		db 2Ah			; [41].north_room
		db r_gcs_none1		; [41].south_room
		db r_gcs_none1		; [41].east_room
		db r_gcs_none1		; [41].west_room
		db r_gcs_none1		; [41].ne_room
		db r_gcs_none1		; [41].nw_room
		db 26h			; [41].se_room
		db r_gcs_none1		; [41].sw_room
		db r_gcs_none1		; [41].up_room
		db r_gcs_none1		; [41].down_room
		db r_gcs_none		; [41].cw_room
		db r_gcs_none		; [41].ccw_room
		db r_gcs_none		; [41].enter_room
		db r_gcs_none		; [41].exit_room
		db r_gcs_none		; [41].inward_room
		db r_gcs_none		; [41].outward_room
		db 5			; [42].scoreBonus
		db 82h			; [42].roomFlags
		db 0B9h, 59h		; [42].verbose_offset
		db 0EAh, 0D7h		; [42].terse_offset
		db 0, 0			; [42].firstMaybe_offset
		db 0, 0			; [42].offset_probably
		db r_gcs_none1		; [42].north_room
		db 29h			; [42].south_room
		db r_gcs_none1		; [42].east_room
		db r_gcs_none1		; [42].west_room
		db r_gcs_none1		; [42].ne_room
		db r_gcs_none1		; [42].nw_room
		db r_gcs_none1		; [42].se_room
		db r_gcs_none1		; [42].sw_room
		db r_gcs_none1		; [42].up_room
		db r_gcs_none1		; [42].down_room
		db r_gcs_none		; [42].cw_room
		db r_gcs_none		; [42].ccw_room
		db r_gcs_none		; [42].enter_room
		db r_gcs_none		; [42].exit_room
		db r_gcs_none		; [42].inward_room
		db r_gcs_none		; [42].outward_room
		db 5			; [43].scoreBonus
		db 82h			; [43].roomFlags
		db 0BBh, 74h		; [43].verbose_offset
		db 0BBh, 58h		; [43].terse_offset
		db 0, 0			; [43].firstMaybe_offset
		db 0, 0			; [43].offset_probably
		db r_gcs_none2		; [43].north_room
		db r_gcs_none1		; [43].south_room
		db r_gcs_none1		; [43].east_room
		db 22h			; [43].west_room
		db r_gcs_none1		; [43].ne_room
		db r_gcs_none1		; [43].nw_room
		db r_gcs_none1		; [43].se_room
		db r_gcs_none1		; [43].sw_room
		db r_gcs_none1		; [43].up_room
		db r_gcs_none1		; [43].down_room
		db r_gcs_none		; [43].cw_room
		db r_gcs_none		; [43].ccw_room
		db r_gcs_none		; [43].enter_room
		db r_gcs_none		; [43].exit_room
		db r_gcs_none		; [43].inward_room
		db r_gcs_none		; [43].outward_room
		db 27			; [44].scoreBonus
		db 82h			; [44].roomFlags
		db 0BCh, 0		; [44].verbose_offset
		db 0BBh, 0D6h		; [44].terse_offset
		db 0, 0			; [44].firstMaybe_offset
		db 0, 0			; [44].offset_probably
		db 2Dh			; [44].north_room
		db r_gcs_none1		; [44].south_room
		db 33h			; [44].east_room
		db 2Bh			; [44].west_room
		db r_gcs_none1		; [44].ne_room
		db r_gcs_none1		; [44].nw_room
		db r_gcs_none1		; [44].se_room
		db r_gcs_none1		; [44].sw_room
		db r_gcs_none1		; [44].up_room
		db r_gcs_none1		; [44].down_room
		db r_gcs_none		; [44].cw_room
		db r_gcs_none		; [44].ccw_room
		db r_gcs_none		; [44].enter_room
		db r_gcs_none		; [44].exit_room
		db r_gcs_none		; [44].inward_room
		db r_gcs_none		; [44].outward_room
		db 0			; [45].scoreBonus
		db 82h			; [45].roomFlags
		db 0BDh, 11h		; [45].verbose_offset
		db 0BDh, 11h		; [45].terse_offset
		db 0, 0			; [45].firstMaybe_offset
		db 0, 0			; [45].offset_probably
		db 6Ah			; [45].north_room
		db 2Ch			; [45].south_room
		db r_gcs_none1		; [45].east_room
		db r_gcs_none1		; [45].west_room
		db r_gcs_none1		; [45].ne_room
		db r_gcs_none1		; [45].nw_room
		db r_gcs_none1		; [45].se_room
		db r_gcs_none1		; [45].sw_room
		db r_gcs_none1		; [45].up_room
		db r_gcs_none1		; [45].down_room
		db r_gcs_none		; [45].cw_room
		db r_gcs_none		; [45].ccw_room
		db r_gcs_none		; [45].enter_room
		db r_gcs_none		; [45].exit_room
		db r_gcs_none		; [45].inward_room
		db r_gcs_none		; [45].outward_room
		db 5			; [46].scoreBonus
		db 82h			; [46].roomFlags
		db 0EAh, 44h		; [46].verbose_offset
		db 0EAh, 7Ch		; [46].terse_offset
		db 0, 0			; [46].firstMaybe_offset
		db 0, 0			; [46].offset_probably
		db r_gcs_none2		; [46].north_room
		db 2Dh			; [46].south_room
		db r_gcs_none1		; [46].east_room
		db r_gcs_none1		; [46].west_room
		db r_gcs_none1		; [46].ne_room
		db r_gcs_none1		; [46].nw_room
		db r_gcs_none1		; [46].se_room
		db r_gcs_none1		; [46].sw_room
		db r_gcs_none1		; [46].up_room
		db r_gcs_none1		; [46].down_room
		db r_gcs_none		; [46].cw_room
		db r_gcs_none		; [46].ccw_room
		db r_gcs_none		; [46].enter_room
		db 2Dh			; [46].exit_room
		db r_gcs_none		; [46].inward_room
		db r_gcs_none		; [46].outward_room
		db 0			; [47].scoreBonus
		db 82h			; [47].roomFlags
		db 0EAh, 98h		; [47].verbose_offset
		db 0EAh, 7Ch		; [47].terse_offset
		db 0, 0			; [47].firstMaybe_offset
		db 0, 0			; [47].offset_probably
		db 30h			; [47].north_room
		db r_gcs_none2		; [47].south_room
		db r_gcs_none1		; [47].east_room
		db r_gcs_none1		; [47].west_room
		db r_gcs_none1		; [47].ne_room
		db r_gcs_none1		; [47].nw_room
		db r_gcs_none1		; [47].se_room
		db r_gcs_none1		; [47].sw_room
		db r_gcs_none1		; [47].up_room
		db r_gcs_none1		; [47].down_room
		db r_gcs_none		; [47].cw_room
		db r_gcs_none		; [47].ccw_room
		db r_gcs_none		; [47].enter_room
		db 30h			; [47].exit_room
		db r_gcs_none		; [47].inward_room
		db r_gcs_none		; [47].outward_room
		db 0			; [48].scoreBonus
		db 82h			; [48].roomFlags
		db 0BEh, 68h		; [48].verbose_offset
		db 0BEh, 68h		; [48].terse_offset
		db 0BEh, 0D1h		; [48].firstMaybe_offset
		db 0, 0			; [48].offset_probably
		db 31h			; [48].north_room
		db 2Fh			; [48].south_room
		db r_gcs_none1		; [48].east_room
		db r_gcs_none1		; [48].west_room
		db r_gcs_none1		; [48].ne_room
		db r_gcs_none1		; [48].nw_room
		db r_gcs_none1		; [48].se_room
		db r_gcs_none1		; [48].sw_room
		db r_gcs_none1		; [48].up_room
		db r_gcs_none1		; [48].down_room
		db r_gcs_none		; [48].cw_room
		db r_gcs_none		; [48].ccw_room
		db 2Fh			; [48].enter_room
		db r_gcs_none		; [48].exit_room
		db r_gcs_none		; [48].inward_room
		db r_gcs_none		; [48].outward_room
		db 14			; [49].scoreBonus
		db 82h			; [49].roomFlags
		db 0C1h, 0EFh		; [49].verbose_offset
		db 0C1h, 5Ch		; [49].terse_offset
		db 0, 0			; [49].firstMaybe_offset
		db 0, 0			; [49].offset_probably
		db 6Bh			; [49].north_room
		db 6Bh			; [49].south_room
		db r_gcs_none1		; [49].east_room
		db r_gcs_none1		; [49].west_room
		db r_gcs_none1		; [49].ne_room
		db r_gcs_none1		; [49].nw_room
		db r_gcs_none1		; [49].se_room
		db r_gcs_none1		; [49].sw_room
		db r_gcs_none1		; [49].up_room
		db r_gcs_none1		; [49].down_room
		db r_gcs_none		; [49].cw_room
		db r_gcs_none		; [49].ccw_room
		db 6Bh			; [49].enter_room
		db 6Bh			; [49].exit_room
		db r_gcs_none		; [49].inward_room
		db r_gcs_none		; [49].outward_room
		db 17			; [50].scoreBonus
		db 82h			; [50].roomFlags
		db 0C3h, 54h		; [50].verbose_offset
		db 0C3h, 0AFh		; [50].terse_offset
		db 0, 0			; [50].firstMaybe_offset
		db 0, 0			; [50].offset_probably
		db r_gcs_none1		; [50].north_room
		db 31h			; [50].south_room
		db r_gcs_none1		; [50].east_room
		db r_gcs_none1		; [50].west_room
		db r_gcs_none1		; [50].ne_room
		db r_gcs_none1		; [50].nw_room
		db r_gcs_none1		; [50].se_room
		db r_gcs_none1		; [50].sw_room
		db r_gcs_none1		; [50].up_room
		db r_gcs_none1		; [50].down_room
		db r_gcs_none		; [50].cw_room
		db r_gcs_none		; [50].ccw_room
		db r_gcs_none		; [50].enter_room
		db 31h			; [50].exit_room
		db r_gcs_none		; [50].inward_room
		db r_gcs_none		; [50].outward_room
		db 0			; [51].scoreBonus
		db 82h			; [51].roomFlags
		db 0C4h, 3		; [51].verbose_offset
		db 0C4h, 3		; [51].terse_offset
		db 0, 0			; [51].firstMaybe_offset
		db 0, 0			; [51].offset_probably
		db r_gcs_none1		; [51].north_room
		db r_gcs_none1		; [51].south_room
		db 34h			; [51].east_room
		db 2Ch			; [51].west_room
		db r_gcs_none1		; [51].ne_room
		db r_gcs_none1		; [51].nw_room
		db r_gcs_none1		; [51].se_room
		db r_gcs_none1		; [51].sw_room
		db r_gcs_none1		; [51].up_room
		db r_gcs_none1		; [51].down_room
		db r_gcs_none		; [51].cw_room
		db r_gcs_none		; [51].ccw_room
		db r_gcs_none		; [51].enter_room
		db r_gcs_none		; [51].exit_room
		db r_gcs_none		; [51].inward_room
		db r_gcs_none		; [51].outward_room
		db 0			; [52].scoreBonus
		db 82h			; [52].roomFlags
		db 0C4h, 3		; [52].verbose_offset
		db 0C4h, 3		; [52].terse_offset
		db 0, 0			; [52].firstMaybe_offset
		db 0, 0			; [52].offset_probably
		db r_gcs_none1		; [52].north_room
		db r_gcs_none1		; [52].south_room
		db 35h			; [52].east_room
		db 33h			; [52].west_room
		db r_gcs_none1		; [52].ne_room
		db r_gcs_none1		; [52].nw_room
		db r_gcs_none1		; [52].se_room
		db r_gcs_none1		; [52].sw_room
		db r_gcs_none1		; [52].up_room
		db r_gcs_none1		; [52].down_room
		db r_gcs_none		; [52].cw_room
		db r_gcs_none		; [52].ccw_room
		db r_gcs_none		; [52].enter_room
		db r_gcs_none		; [52].exit_room
		db r_gcs_none		; [52].inward_room
		db r_gcs_none		; [52].outward_room
		db 0			; [53].scoreBonus
		db 82h			; [53].roomFlags
		db 0C4h, 2Dh		; [53].verbose_offset
		db 0C4h, 3		; [53].terse_offset
		db 0, 0			; [53].firstMaybe_offset
		db 0, 0			; [53].offset_probably
		db 36h			; [53].north_room
		db 37h			; [53].south_room
		db 38h			; [53].east_room
		db 34h			; [53].west_room
		db r_gcs_none1		; [53].ne_room
		db r_gcs_none1		; [53].nw_room
		db r_gcs_none1		; [53].se_room
		db r_gcs_none1		; [53].sw_room
		db r_gcs_none1		; [53].up_room
		db 38h			; [53].down_room
		db r_gcs_none		; [53].cw_room
		db r_gcs_none		; [53].ccw_room
		db r_gcs_none		; [53].enter_room
		db r_gcs_none		; [53].exit_room
		db r_gcs_none		; [53].inward_room
		db r_gcs_none		; [53].outward_room
		db 0			; [54].scoreBonus
		db 82h			; [54].roomFlags
		db 0C4h, 0A4h		; [54].verbose_offset
		db 0C4h, 0A4h		; [54].terse_offset
		db 0, 0			; [54].firstMaybe_offset
		db 0, 0			; [54].offset_probably
		db r_gcs_none1		; [54].north_room
		db 35h			; [54].south_room
		db r_gcs_none1		; [54].east_room
		db r_gcs_none1		; [54].west_room
		db r_gcs_none1		; [54].ne_room
		db r_gcs_none1		; [54].nw_room
		db r_gcs_none1		; [54].se_room
		db r_gcs_none1		; [54].sw_room
		db r_gcs_none1		; [54].up_room
		db r_gcs_none1		; [54].down_room
		db r_gcs_none		; [54].cw_room
		db r_gcs_none		; [54].ccw_room
		db r_gcs_none		; [54].enter_room
		db 35h			; [54].exit_room
		db r_gcs_none		; [54].inward_room
		db r_gcs_none		; [54].outward_room
		db 0			; [55].scoreBonus
		db 82h			; [55].roomFlags
		db 0C4h, 0C7h		; [55].verbose_offset
		db 0C4h, 0C7h		; [55].terse_offset
		db 0, 0			; [55].firstMaybe_offset
		db 0, 0			; [55].offset_probably
		db 35h			; [55].north_room
		db r_gcs_none1		; [55].south_room
		db r_gcs_none1		; [55].east_room
		db r_gcs_none1		; [55].west_room
		db r_gcs_none1		; [55].ne_room
		db r_gcs_none1		; [55].nw_room
		db r_gcs_none1		; [55].se_room
		db r_gcs_none1		; [55].sw_room
		db r_gcs_none1		; [55].up_room
		db r_gcs_none1		; [55].down_room
		db r_gcs_none		; [55].cw_room
		db r_gcs_none		; [55].ccw_room
		db r_gcs_none		; [55].enter_room
		db 35h			; [55].exit_room
		db r_gcs_none		; [55].inward_room
		db r_gcs_none		; [55].outward_room
		db 0			; [56].scoreBonus
		db 82h			; [56].roomFlags
		db 0C5h, 30h		; [56].verbose_offset
		db 0C5h, 0Dh		; [56].terse_offset
		db 0, 0			; [56].firstMaybe_offset
		db 0, 0			; [56].offset_probably
		db r_gcs_none1		; [56].north_room
		db r_gcs_none1		; [56].south_room
		db 3Ah			; [56].east_room
		db 35h			; [56].west_room
		db 39h			; [56].ne_room
		db r_gcs_none1		; [56].nw_room
		db 3Bh			; [56].se_room
		db r_gcs_none1		; [56].sw_room
		db 35h			; [56].up_room
		db r_gcs_none1		; [56].down_room
		db r_gcs_none		; [56].cw_room
		db r_gcs_none		; [56].ccw_room
		db r_gcs_none		; [56].enter_room
		db r_gcs_none		; [56].exit_room
		db r_gcs_none		; [56].inward_room
		db r_gcs_none		; [56].outward_room
		db 0			; [57].scoreBonus
		db 82h			; [57].roomFlags
		db 0C5h, 76h		; [57].verbose_offset
		db 0C7h, 1Ah		; [57].terse_offset
		db 0, 0			; [57].firstMaybe_offset
		db 0, 0			; [57].offset_probably
		db r_gcs_none1		; [57].north_room
		db r_gcs_none1		; [57].south_room
		db r_gcs_none1		; [57].east_room
		db r_gcs_none1		; [57].west_room
		db r_gcs_none1		; [57].ne_room
		db r_gcs_none1		; [57].nw_room
		db r_gcs_none1		; [57].se_room
		db 38h			; [57].sw_room
		db r_gcs_none1		; [57].up_room
		db r_gcs_none1		; [57].down_room
		db r_gcs_none		; [57].cw_room
		db r_gcs_none		; [57].ccw_room
		db r_gcs_none		; [57].enter_room
		db 38h			; [57].exit_room
		db r_gcs_none		; [57].inward_room
		db r_gcs_none		; [57].outward_room
		db 0			; [58].scoreBonus
		db 82h			; [58].roomFlags
		db 0C7h, 60h		; [58].verbose_offset
		db 0C7h, 3Dh		; [58].terse_offset
		db 0, 0			; [58].firstMaybe_offset
		db 0, 0			; [58].offset_probably
		db r_gcs_none1		; [58].north_room
		db r_gcs_none1		; [58].south_room
		db r_gcs_none1		; [58].east_room
		db 38h			; [58].west_room
		db r_gcs_none1		; [58].ne_room
		db r_gcs_none1		; [58].nw_room
		db r_gcs_none1		; [58].se_room
		db r_gcs_none1		; [58].sw_room
		db r_gcs_none1		; [58].up_room
		db r_gcs_none1		; [58].down_room
		db r_gcs_none		; [58].cw_room
		db r_gcs_none		; [58].ccw_room
		db r_gcs_none		; [58].enter_room
		db 38h			; [58].exit_room
		db r_gcs_none		; [58].inward_room
		db r_gcs_none		; [58].outward_room
		db 0			; [59].scoreBonus
		db 82h			; [59].roomFlags
		db 0C8h, 4Eh		; [59].verbose_offset
		db 0C8h, 32h		; [59].terse_offset
		db 0, 0			; [59].firstMaybe_offset
		db 0, 0			; [59].offset_probably
		db r_gcs_none1		; [59].north_room
		db 3Ch			; [59].south_room
		db r_gcs_none1		; [59].east_room
		db r_gcs_none1		; [59].west_room
		db r_gcs_none1		; [59].ne_room
		db 38h			; [59].nw_room
		db r_gcs_none1		; [59].se_room
		db r_gcs_none1		; [59].sw_room
		db r_gcs_none1		; [59].up_room
		db r_gcs_none1		; [59].down_room
		db r_gcs_none		; [59].cw_room
		db r_gcs_none		; [59].ccw_room
		db r_gcs_none		; [59].enter_room
		db r_gcs_none		; [59].exit_room
		db r_gcs_none		; [59].inward_room
		db r_gcs_none		; [59].outward_room
		db 0			; [60].scoreBonus
		db 82h			; [60].roomFlags
		db 0C8h, 86h		; [60].verbose_offset
		db 0C8h, 86h		; [60].terse_offset
		db 0, 0			; [60].firstMaybe_offset
		db 0, 0			; [60].offset_probably
		db 3Bh			; [60].north_room
		db r_gcs_none1		; [60].south_room
		db r_gcs_none1		; [60].east_room
		db 3Dh			; [60].west_room
		db r_gcs_none1		; [60].ne_room
		db r_gcs_none1		; [60].nw_room
		db r_gcs_none1		; [60].se_room
		db r_gcs_none1		; [60].sw_room
		db 3Eh			; [60].up_room
		db r_gcs_none1		; [60].down_room
		db r_gcs_none		; [60].cw_room
		db r_gcs_none		; [60].ccw_room
		db r_gcs_none		; [60].enter_room
		db r_gcs_none		; [60].exit_room
		db r_gcs_none		; [60].inward_room
		db r_gcs_none		; [60].outward_room
		db 0			; [61].scoreBonus
		db 82h			; [61].roomFlags
		db 0C8h, 0A9h		; [61].verbose_offset
		db 0C8h, 0A9h		; [61].terse_offset
		db 0, 0			; [61].firstMaybe_offset
		db 0, 0			; [61].offset_probably
		db r_gcs_none1		; [61].north_room
		db r_gcs_none1		; [61].south_room
		db 3Ch			; [61].east_room
		db r_gcs_none1		; [61].west_room
		db r_gcs_none1		; [61].ne_room
		db r_gcs_none1		; [61].nw_room
		db r_gcs_none1		; [61].se_room
		db r_gcs_none1		; [61].sw_room
		db r_gcs_none1		; [61].up_room
		db r_gcs_none1		; [61].down_room
		db r_gcs_none		; [61].cw_room
		db r_gcs_none		; [61].ccw_room
		db r_gcs_none		; [61].enter_room
		db r_gcs_none		; [61].exit_room
		db r_gcs_none		; [61].inward_room
		db r_gcs_none		; [61].outward_room
		db 0			; [62].scoreBonus
		db 82h			; [62].roomFlags
		db 0C8h, 0C5h		; [62].verbose_offset
		db 0C8h, 0C5h		; [62].terse_offset
		db 0, 0			; [62].firstMaybe_offset
		db 0, 0			; [62].offset_probably
		db r_gcs_none1		; [62].north_room
		db r_gcs_none1		; [62].south_room
		db r_gcs_none1		; [62].east_room
		db r_gcs_none1		; [62].west_room
		db r_gcs_none1		; [62].ne_room
		db r_gcs_none1		; [62].nw_room
		db r_gcs_none1		; [62].se_room
		db r_gcs_none1		; [62].sw_room
		db r_gcs_none1		; [62].up_room
		db 3Ch			; [62].down_room
		db r_gcs_none		; [62].cw_room
		db r_gcs_none		; [62].ccw_room
		db r_gcs_none		; [62].enter_room
		db r_gcs_none		; [62].exit_room
		db r_gcs_none		; [62].inward_room
		db r_gcs_none		; [62].outward_room
stru_5F65:	db 12			; [0].scoreBonus
					; DATA XREF: getBGNRoomAddress:loc_1EEBo
		db 80h			; [0].roomFlags
		db 0CDh, 8Eh		; verbose_offset
		db 0CFh, 40h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none1		; [0].north_room
		db r_none1		; [0].south_room
		db r_none1		; [0].east_room
		db r_none1		; [0].west_room
		db r_none1		; [0].ne_room
		db r_none1		; [0].nw_room
		db r_none1		; [0].se_room
		db r_none1		; [0].sw_room
		db r_none1		; [0].up_room
		db r_none1		; [0].down_room
		db r_none1		; [0].cw_room
		db r_none1		; [0].ccw_room
		db r_none1		; [0].enter_room
		db r_none1		; [0].exit_room
		db r_none1		; [0].inward_room
		db r_none1		; [0].outward_room
		db 9			; [1].scoreBonus
		db 80h			; [1].roomFlags
		db 0CFh, 6Ah		; verbose_offset
		db 0CFh, 0E1h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [1].north_room
		db r_none		; [1].south_room
		db r_none		; [1].east_room
		db 2			; [1].west_room
		db r_none		; [1].ne_room
		db r_none		; [1].nw_room
		db r_none		; [1].se_room
		db r_none		; [1].sw_room
		db r_none		; [1].up_room
		db r_none		; [1].down_room
		db r_none1		; [1].cw_room
		db r_none1		; [1].ccw_room
		db r_none1		; [1].enter_room
		db 2			; [1].exit_room
		db r_none1		; [1].inward_room
		db r_none1		; [1].outward_room
		db 0			; [2].scoreBonus
		db 80h			; [2].roomFlags
		db 0D0h, 4		; verbose_offset
		db 0CFh, 0E1h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [2].north_room
		db r_none		; [2].south_room
		db 1			; [2].east_room
		db re_circular_hallway_low; [2].west_room
		db r_none		; [2].ne_room
		db r_none		; [2].nw_room
		db r_none		; [2].se_room
		db r_none		; [2].sw_room
		db r_none		; [2].up_room
		db r_none		; [2].down_room
		db r_none1		; [2].cw_room
		db r_none1		; [2].ccw_room
		db 1			; [2].enter_room
		db r_none1		; [2].exit_room
		db r_none1		; [2].inward_room
		db r_none1		; [2].outward_room
		db 4			; [3].scoreBonus
		db 0A0h			; [3].roomFlags
		db 0D0h, 7Bh		; verbose_offset
		db 0D0h, 0F2h		; terse_offset
		db 0D0h, 9Eh		; firstMaybe_offset
		db 0, 0			; offset_probably
		db 6			; [3].north_room
		db r_none		; [3].south_room
		db 2			; [3].east_room
		db 4			; [3].west_room
		db r_none		; [3].ne_room
		db r_none		; [3].nw_room
		db r_none		; [3].se_room
		db r_none		; [3].sw_room
		db r_none		; [3].up_room
		db r_none		; [3].down_room
		db r_none1		; [3].cw_room
		db r_none1		; [3].ccw_room
		db r_none1		; [3].enter_room
		db r_none1		; [3].exit_room
		db r_none1		; [3].inward_room
		db r_none1		; [3].outward_room
		db 0			; [4].scoreBonus
		db 80h			; [4].roomFlags
		db 0D1h, 15h		; verbose_offset
		db 0D1h, 15h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [4].north_room
		db r_none		; [4].south_room
		db re_circular_hallway_low; [4].east_room
		db 5			; [4].west_room
		db r_none		; [4].ne_room
		db r_none		; [4].nw_room
		db r_none		; [4].se_room
		db r_none		; [4].sw_room
		db r_none		; [4].up_room
		db r_none		; [4].down_room
		db r_none1		; [4].cw_room
		db r_none1		; [4].ccw_room
		db 5			; [4].enter_room
		db r_none1		; [4].exit_room
		db r_none1		; [4].inward_room
		db r_none1		; [4].outward_room
		db 15			; [5].scoreBonus
		db 0A0h			; [5].roomFlags
		db 0D1h, 0CBh		; verbose_offset
		db 0D1h, 0A1h		; terse_offset
		db 0D2h, 2Dh		; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [5].north_room
		db r_none		; [5].south_room
		db 4			; [5].east_room
		db r_none		; [5].west_room
		db r_none		; [5].ne_room
		db r_none		; [5].nw_room
		db r_none		; [5].se_room
		db r_none		; [5].sw_room
		db r_none		; [5].up_room
		db r_none		; [5].down_room
		db r_none1		; [5].cw_room
		db r_none1		; [5].ccw_room
		db r_none1		; [5].enter_room
		db 4			; [5].exit_room
		db r_none1		; [5].inward_room
		db r_none1		; [5].outward_room
		db 0			; [6].scoreBonus
		db 80h			; [6].roomFlags
		db 0D5h, 0Ch		; verbose_offset
		db 0D6h, 8Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_your_room		; [6].north_room
		db re_circular_hallway_low; [6].south_room
		db r_pirates_room	; [6].east_room
		db 7			; [6].west_room
		db r_none		; [6].ne_room
		db r_none		; [6].nw_room
		db r_none		; [6].se_room
		db r_none		; [6].sw_room
		db r_none		; [6].up_room
		db r_none		; [6].down_room
		db r_none1		; [6].cw_room
		db r_none1		; [6].ccw_room
		db r_none1		; [6].enter_room
		db r_none1		; [6].exit_room
		db r_none1		; [6].inward_room
		db r_none1		; [6].outward_room
		db 0			; [7].scoreBonus
		db 80h			; [7].roomFlags
		db 0D6h, 0B0h		; verbose_offset
		db 0D6h, 0B0h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [7].north_room
		db r_none		; [7].south_room
		db 6			; [7].east_room
		db r_none		; [7].west_room
		db r_none		; [7].ne_room
		db 8			; [7].nw_room
		db r_none		; [7].se_room
		db r_none		; [7].sw_room
		db r_none		; [7].up_room
		db r_none		; [7].down_room
		db r_none1		; [7].cw_room
		db r_none1		; [7].ccw_room
		db r_none1		; [7].enter_room
		db r_none1		; [7].exit_room
		db r_none1		; [7].inward_room
		db r_none1		; [7].outward_room
		db 0			; [8].scoreBonus
		db 80h			; [8].roomFlags
		db 0D6h, 0B0h		; verbose_offset
		db 0D6h, 0B0h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 9			; [8].north_room
		db r_none		; [8].south_room
		db r_none		; [8].east_room
		db r_none		; [8].west_room
		db r_none		; [8].ne_room
		db r_none		; [8].nw_room
		db 7			; [8].se_room
		db r_none		; [8].sw_room
		db r_none		; [8].up_room
		db r_none		; [8].down_room
		db r_none1		; [8].cw_room
		db r_none1		; [8].ccw_room
		db r_none1		; [8].enter_room
		db r_none1		; [8].exit_room
		db r_none1		; [8].inward_room
		db r_none1		; [8].outward_room
		db 0			; [9].scoreBonus
		db 90h			; [9].roomFlags
		db 0D6h, 0D3h		; verbose_offset
		db 0D6h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0D7h, 4		; offset_probably
		db 6Ch			; [9].north_room
		db 8			; [9].south_room
		db r_none		; [9].east_room
		db r_none		; [9].west_room
		db r_none		; [9].ne_room
		db r_none		; [9].nw_room
		db r_none		; [9].se_room
		db r_none		; [9].sw_room
		db r_none		; [9].up_room
		db r_none		; [9].down_room
		db r_none1		; [9].cw_room
		db r_none1		; [9].ccw_room
		db 6Ch			; [9].enter_room
		db r_none1		; [9].exit_room
		db r_none1		; [9].inward_room
		db r_none1		; [9].outward_room
		db 29			; [10].scoreBonus
		db 80h			; [10].roomFlags
		db 0DCh, 3Dh		; verbose_offset
		db 0DCh, 21h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [10].north_room
		db 9			; [10].south_room
		db r_none		; [10].east_room
		db r_none		; [10].west_room
		db r_none		; [10].ne_room
		db r_none		; [10].nw_room
		db r_none		; [10].se_room
		db r_none		; [10].sw_room
		db r_none		; [10].up_room
		db r_none		; [10].down_room
		db r_none1		; [10].cw_room
		db r_none1		; [10].ccw_room
		db r_none1		; [10].enter_room
		db 9			; [10].exit_room
		db r_none1		; [10].inward_room
		db r_none1		; [10].outward_room
		db 0			; [11].scoreBonus
		db 80h			; [11].roomFlags
		db 0DCh, 98h		; verbose_offset
		db 0DCh, 98h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_parson		; [11].north_room
		db 6			; [11].south_room
		db r_none		; [11].east_room
		db r_none		; [11].west_room
		db r_none		; [11].ne_room
		db r_none		; [11].nw_room
		db r_none		; [11].se_room
		db r_none		; [11].sw_room
		db r_none		; [11].up_room
		db r_none		; [11].down_room
		db r_none1		; [11].cw_room
		db r_none1		; [11].ccw_room
		db r_none1		; [11].enter_room
		db r_none1		; [11].exit_room
		db r_none1		; [11].inward_room
		db r_none1		; [11].outward_room
		db 0			; [12].scoreBonus
		db 80h			; [12].roomFlags
		db 0DDh, 32h		; verbose_offset
		db 0DDh, 8		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 6Dh			; [12].north_room
		db re_your_room		; [12].south_room
		db r_none		; [12].east_room
		db r_none		; [12].west_room
		db r_none		; [12].ne_room
		db r_none		; [12].nw_room
		db r_none		; [12].se_room
		db r_none		; [12].sw_room
		db r_none		; [12].up_room
		db r_none		; [12].down_room
		db r_none1		; [12].cw_room
		db r_none1		; [12].ccw_room
		db 6Dh			; [12].enter_room
		db r_none1		; [12].exit_room
		db r_none1		; [12].inward_room
		db r_none1		; [12].outward_room
		db 34			; [13].scoreBonus
		db 80h			; [13].roomFlags
		db 0E1h, 0Dh		; verbose_offset
		db 0E1h, 29h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [13].north_room
		db r_parson		; [13].south_room
		db r_none		; [13].east_room
		db r_none		; [13].west_room
		db r_none		; [13].ne_room
		db r_none		; [13].nw_room
		db r_none		; [13].se_room
		db r_none		; [13].sw_room
		db r_none		; [13].up_room
		db r_none		; [13].down_room
		db r_none1		; [13].cw_room
		db r_none1		; [13].ccw_room
		db r_none1		; [13].enter_room
		db r_none1		; [13].exit_room
		db r_none1		; [13].inward_room
		db r_none1		; [13].outward_room
		db 0			; [14].scoreBonus
		db 80h			; [14].roomFlags
		db 0E1h, 7Dh		; verbose_offset
		db 0E1h, 7Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [14].north_room
		db r_none		; [14].south_room
		db 0Fh			; [14].east_room
		db 6			; [14].west_room
		db r_none		; [14].ne_room
		db r_none		; [14].nw_room
		db r_none		; [14].se_room
		db r_none		; [14].sw_room
		db r_none		; [14].up_room
		db r_none		; [14].down_room
		db r_none1		; [14].cw_room
		db r_none1		; [14].ccw_room
		db r_none1		; [14].enter_room
		db r_none1		; [14].exit_room
		db r_none1		; [14].inward_room
		db r_none1		; [14].outward_room
		db 3			; [15].scoreBonus
		db 80h			; [15].roomFlags
		db 0E1h, 0A0h		; verbose_offset
		db 0E3h, 9Fh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [15].north_room
		db r_none		; [15].south_room
		db 10h			; [15].east_room
		db r_pirates_room	; [15].west_room
		db r_none		; [15].ne_room
		db r_none		; [15].nw_room
		db r_none		; [15].se_room
		db r_none		; [15].sw_room
		db r_none		; [15].up_room
		db r_none		; [15].down_room
		db r_none1		; [15].cw_room
		db r_none1		; [15].ccw_room
		db 10h			; [15].enter_room
		db r_none1		; [15].exit_room
		db r_none1		; [15].inward_room
		db r_none1		; [15].outward_room
		db 5			; [16].scoreBonus
		db 80h			; [16].roomFlags
		db 0E3h, 0C9h		; verbose_offset
		db 0E4h, 1Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_library		; [16].north_room
		db r_none		; [16].south_room
		db r_comm_center	; [16].east_room
		db 6Bh			; [16].west_room
		db r_none1		; [16].ne_room
		db r_none1		; [16].nw_room
		db r_none1		; [16].se_room
		db r_none1		; [16].sw_room
		db r_none1		; [16].up_room
		db r_none1		; [16].down_room
		db r_none1		; [16].cw_room
		db r_none1		; [16].ccw_room
		db r_none1		; [16].enter_room
		db 6Bh			; [16].exit_room
		db r_none1		; [16].inward_room
		db r_none1		; [16].outward_room
		db 0			; [17].scoreBonus
		db 80h			; [17].roomFlags
		db 0E3h, 0C9h		; verbose_offset
		db 0E4h, 1Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_customs		; [17].north_room
		db r_none		; [17].south_room
		db r_port_commander_foyer; [17].east_room
		db 10h			; [17].west_room
		db r_none1		; [17].ne_room
		db r_none1		; [17].nw_room
		db r_none1		; [17].se_room
		db r_none1		; [17].sw_room
		db r_none1		; [17].up_room
		db r_none1		; [17].down_room
		db r_none1		; [17].cw_room
		db r_none1		; [17].ccw_room
		db r_none1		; [17].enter_room
		db r_none1		; [17].exit_room
		db r_none1		; [17].inward_room
		db r_none1		; [17].outward_room
		db 0			; [18].scoreBonus
		db 80h			; [18].roomFlags
		db 0E3h, 0C9h		; verbose_offset
		db 0E4h, 1Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_supply		; [18].north_room
		db r_none		; [18].south_room
		db r_port_commander_office; [18].east_room
		db r_comm_center	; [18].west_room
		db r_none1		; [18].ne_room
		db r_none1		; [18].nw_room
		db r_none1		; [18].se_room
		db r_none1		; [18].sw_room
		db r_none1		; [18].up_room
		db r_none1		; [18].down_room
		db r_none1		; [18].cw_room
		db r_none1		; [18].ccw_room
		db r_none1		; [18].enter_room
		db r_none1		; [18].exit_room
		db r_none1		; [18].inward_room
		db r_none1		; [18].outward_room
		db 0			; [19].scoreBonus
		db 80h			; [19].roomFlags
		db 0E3h, 0C9h		; verbose_offset
		db 0E4h, 1Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_starlightLounge	; [19].north_room
		db r_none		; [19].south_room
		db r_foyer		; [19].east_room
		db r_port_commander_foyer; [19].west_room
		db r_none1		; [19].ne_room
		db r_none1		; [19].nw_room
		db r_none1		; [19].se_room
		db r_none1		; [19].sw_room
		db r_none1		; [19].up_room
		db r_none1		; [19].down_room
		db r_none1		; [19].cw_room
		db r_none1		; [19].ccw_room
		db r_none1		; [19].enter_room
		db r_none1		; [19].exit_room
		db r_none1		; [19].inward_room
		db r_none1		; [19].outward_room
		db 0			; [20].scoreBonus
		db 80h			; [20].roomFlags
		db 0E3h, 0C9h		; verbose_offset
		db 0E4h, 1Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Ah			; [20].north_room
		db r_none		; [20].south_room
		db r_infirmary		; [20].east_room
		db r_port_commander_office; [20].west_room
		db r_none1		; [20].ne_room
		db r_none1		; [20].nw_room
		db r_none1		; [20].se_room
		db r_none1		; [20].sw_room
		db r_none1		; [20].up_room
		db r_none1		; [20].down_room
		db r_none1		; [20].cw_room
		db r_none1		; [20].ccw_room
		db r_none1		; [20].enter_room
		db r_none1		; [20].exit_room
		db r_none1		; [20].inward_room
		db r_none1		; [20].outward_room
		db 0			; [21].scoreBonus
		db 80h			; [21].roomFlags
		db 0E3h, 0C9h		; verbose_offset
		db 0E4h, 1Dh		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Bh			; [21].north_room
		db r_none		; [21].south_room
		db r_none		; [21].east_room
		db r_foyer		; [21].west_room
		db r_none1		; [21].ne_room
		db r_none1		; [21].nw_room
		db r_none1		; [21].se_room
		db r_none1		; [21].sw_room
		db r_none1		; [21].up_room
		db r_none1		; [21].down_room
		db r_none1		; [21].cw_room
		db r_none1		; [21].ccw_room
		db r_none1		; [21].enter_room
		db r_none1		; [21].exit_room
		db r_none1		; [21].inward_room
		db r_none1		; [21].outward_room
		db 0			; [22].scoreBonus
		db 80h			; [22].roomFlags
		db 0E5h, 51h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Ch			; [22].north_room
		db 10h			; [22].south_room
		db 0D3h			; [22].east_room
		db r_none		; [22].west_room
		db r_none1		; [22].ne_room
		db r_none1		; [22].nw_room
		db r_none1		; [22].se_room
		db r_none1		; [22].sw_room
		db r_none1		; [22].up_room
		db r_none1		; [22].down_room
		db r_none1		; [22].cw_room
		db r_none1		; [22].ccw_room
		db r_none1		; [22].enter_room
		db r_none1		; [22].exit_room
		db r_none1		; [22].inward_room
		db r_none1		; [22].outward_room
		db 0			; [23].scoreBonus
		db 80h			; [23].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Dh			; [23].north_room
		db r_comm_center	; [23].south_room
		db 0D3h			; [23].east_room
		db 0D3h			; [23].west_room
		db r_none1		; [23].ne_room
		db r_none1		; [23].nw_room
		db r_none1		; [23].se_room
		db r_none1		; [23].sw_room
		db r_none1		; [23].up_room
		db r_none1		; [23].down_room
		db r_none1		; [23].cw_room
		db r_none1		; [23].ccw_room
		db r_none1		; [23].enter_room
		db r_none1		; [23].exit_room
		db r_none1		; [23].inward_room
		db r_none1		; [23].outward_room
		db 0			; [24].scoreBonus
		db 80h			; [24].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Eh			; [24].north_room
		db r_port_commander_foyer; [24].south_room
		db 0D3h			; [24].east_room
		db 0D3h			; [24].west_room
		db r_none1		; [24].ne_room
		db r_none1		; [24].nw_room
		db r_none1		; [24].se_room
		db r_none1		; [24].sw_room
		db r_none1		; [24].up_room
		db r_none1		; [24].down_room
		db r_none1		; [24].cw_room
		db r_none1		; [24].ccw_room
		db r_none1		; [24].enter_room
		db r_none1		; [24].exit_room
		db r_none1		; [24].inward_room
		db r_none1		; [24].outward_room
		db 0			; [25].scoreBonus
		db 80h			; [25].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 1Fh			; [25].north_room
		db r_port_commander_office; [25].south_room
		db 0D3h			; [25].east_room
		db 0D3h			; [25].west_room
		db r_none1		; [25].ne_room
		db r_none1		; [25].nw_room
		db r_none1		; [25].se_room
		db r_none1		; [25].sw_room
		db r_none1		; [25].up_room
		db r_none1		; [25].down_room
		db r_none1		; [25].cw_room
		db r_none1		; [25].ccw_room
		db r_none1		; [25].enter_room
		db r_none1		; [25].exit_room
		db r_none1		; [25].inward_room
		db r_none1		; [25].outward_room
		db 0			; [26].scoreBonus
		db 80h			; [26].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_front_sheriff	; [26].north_room
		db r_foyer		; [26].south_room
		db 0D3h			; [26].east_room
		db 0D3h			; [26].west_room
		db r_none1		; [26].ne_room
		db r_none1		; [26].nw_room
		db r_none1		; [26].se_room
		db r_none1		; [26].sw_room
		db r_none1		; [26].up_room
		db r_none1		; [26].down_room
		db r_none1		; [26].cw_room
		db r_none1		; [26].ccw_room
		db r_none1		; [26].enter_room
		db r_none1		; [26].exit_room
		db r_none1		; [26].inward_room
		db r_none1		; [26].outward_room
		db 0			; [27].scoreBonus
		db 80h			; [27].roomFlags
		db 0E5h, 4		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 21h			; [27].north_room
		db r_infirmary		; [27].south_room
		db r_none		; [27].east_room
		db 0D3h			; [27].west_room
		db r_none1		; [27].ne_room
		db r_none1		; [27].nw_room
		db r_none1		; [27].se_room
		db r_none1		; [27].sw_room
		db r_none1		; [27].up_room
		db r_none1		; [27].down_room
		db r_none1		; [27].cw_room
		db r_none1		; [27].ccw_room
		db r_none1		; [27].enter_room
		db r_none1		; [27].exit_room
		db r_none1		; [27].inward_room
		db r_none1		; [27].outward_room
		db 0			; [28].scoreBonus
		db 80h			; [28].roomFlags
		db 0E5h, 51h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 22h			; [28].north_room
		db r_library		; [28].south_room
		db 0D3h			; [28].east_room
		db r_none		; [28].west_room
		db r_none1		; [28].ne_room
		db r_none1		; [28].nw_room
		db r_none1		; [28].se_room
		db r_none1		; [28].sw_room
		db r_none1		; [28].up_room
		db r_none1		; [28].down_room
		db r_none1		; [28].cw_room
		db r_none1		; [28].ccw_room
		db r_none1		; [28].enter_room
		db r_none1		; [28].exit_room
		db r_none1		; [28].inward_room
		db r_none1		; [28].outward_room
		db 0			; [29].scoreBonus
		db 80h			; [29].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [29].north_room
		db r_customs		; [29].south_room
		db 0D3h			; [29].east_room
		db 0D3h			; [29].west_room
		db r_none1		; [29].ne_room
		db r_none1		; [29].nw_room
		db r_none1		; [29].se_room
		db r_none1		; [29].sw_room
		db r_none1		; [29].up_room
		db r_none1		; [29].down_room
		db r_none1		; [29].cw_room
		db r_none1		; [29].ccw_room
		db r_none1		; [29].enter_room
		db r_none1		; [29].exit_room
		db r_none1		; [29].inward_room
		db r_none1		; [29].outward_room
		db 0			; [30].scoreBonus
		db 80h			; [30].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [30].north_room
		db r_supply		; [30].south_room
		db 0D3h			; [30].east_room
		db 0D3h			; [30].west_room
		db r_none1		; [30].ne_room
		db r_none1		; [30].nw_room
		db r_none1		; [30].se_room
		db r_none1		; [30].sw_room
		db r_none1		; [30].up_room
		db r_none1		; [30].down_room
		db r_none1		; [30].cw_room
		db r_none1		; [30].ccw_room
		db r_none1		; [30].enter_room
		db r_none1		; [30].exit_room
		db r_none1		; [30].inward_room
		db r_none1		; [30].outward_room
		db 0			; [31].scoreBonus
		db 80h			; [31].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [31].north_room
		db re_starlightLounge	; [31].south_room
		db 0D3h			; [31].east_room
		db 0D3h			; [31].west_room
		db r_none1		; [31].ne_room
		db r_none1		; [31].nw_room
		db r_none1		; [31].se_room
		db r_none1		; [31].sw_room
		db r_none1		; [31].up_room
		db r_none1		; [31].down_room
		db r_none1		; [31].cw_room
		db r_none1		; [31].ccw_room
		db r_none1		; [31].enter_room
		db r_none1		; [31].exit_room
		db r_none1		; [31].inward_room
		db r_none1		; [31].outward_room
		db 0			; [32].scoreBonus
		db 80h			; [32].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_sheriffs_office	; [32].north_room
		db 1Ah			; [32].south_room
		db 0D3h			; [32].east_room
		db 0D3h			; [32].west_room
		db r_none1		; [32].ne_room
		db r_none1		; [32].nw_room
		db r_none1		; [32].se_room
		db r_none1		; [32].sw_room
		db r_none1		; [32].up_room
		db r_none1		; [32].down_room
		db r_none1		; [32].cw_room
		db r_none1		; [32].ccw_room
		db r_none1		; [32].enter_room
		db r_none1		; [32].exit_room
		db r_none1		; [32].inward_room
		db r_none1		; [32].outward_room
		db 0			; [33].scoreBonus
		db 80h			; [33].roomFlags
		db 0E5h, 4		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 27h			; [33].north_room
		db 1Bh			; [33].south_room
		db r_none		; [33].east_room
		db 0D3h			; [33].west_room
		db r_none1		; [33].ne_room
		db r_none1		; [33].nw_room
		db r_none1		; [33].se_room
		db r_none1		; [33].sw_room
		db r_none1		; [33].up_room
		db r_none1		; [33].down_room
		db r_none1		; [33].cw_room
		db r_none1		; [33].ccw_room
		db r_none1		; [33].enter_room
		db r_none1		; [33].exit_room
		db r_none1		; [33].inward_room
		db r_none1		; [33].outward_room
		db 0			; [34].scoreBonus
		db 80h			; [34].roomFlags
		db 0E5h, 51h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_pirates_campsite	; [34].north_room
		db 1Ch			; [34].south_room
		db 0D3h			; [34].east_room
		db r_none		; [34].west_room
		db r_none1		; [34].ne_room
		db r_none1		; [34].nw_room
		db r_none1		; [34].se_room
		db r_none1		; [34].sw_room
		db r_none1		; [34].up_room
		db r_none1		; [34].down_room
		db r_none1		; [34].cw_room
		db r_none1		; [34].ccw_room
		db r_none1		; [34].enter_room
		db r_none1		; [34].exit_room
		db r_none1		; [34].inward_room
		db r_none1		; [34].outward_room
		db 0			; [35].scoreBonus
		db 80h			; [35].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 29h			; [35].north_room
		db 0D3h			; [35].south_room
		db re_deserted_house	; [35].east_room
		db 0D3h			; [35].west_room
		db r_none1		; [35].ne_room
		db r_none1		; [35].nw_room
		db r_none1		; [35].se_room
		db r_none1		; [35].sw_room
		db r_none1		; [35].up_room
		db r_none1		; [35].down_room
		db r_none1		; [35].cw_room
		db r_none1		; [35].ccw_room
		db r_none1		; [35].enter_room
		db r_none1		; [35].exit_room
		db r_none1		; [35].inward_room
		db r_none1		; [35].outward_room
		db 0			; [36].scoreBonus
		db 80h			; [36].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [36].north_room
		db 0D3h			; [36].south_room
		db 25h			; [36].east_room
		db 23h			; [36].west_room
		db r_none1		; [36].ne_room
		db r_none1		; [36].nw_room
		db r_none1		; [36].se_room
		db r_none1		; [36].sw_room
		db r_none1		; [36].up_room
		db r_none1		; [36].down_room
		db r_none1		; [36].cw_room
		db r_none1		; [36].ccw_room
		db r_none1		; [36].enter_room
		db r_none1		; [36].exit_room
		db r_none1		; [36].inward_room
		db r_none1		; [36].outward_room
		db 0			; [37].scoreBonus
		db 80h			; [37].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [37].north_room
		db 0D3h			; [37].south_room
		db re_sheriffs_office	; [37].east_room
		db re_deserted_house	; [37].west_room
		db r_none1		; [37].ne_room
		db r_none1		; [37].nw_room
		db r_none1		; [37].se_room
		db r_none1		; [37].sw_room
		db r_none1		; [37].up_room
		db r_none1		; [37].down_room
		db r_none1		; [37].cw_room
		db r_none1		; [37].ccw_room
		db r_none1		; [37].enter_room
		db r_none1		; [37].exit_room
		db r_none1		; [37].inward_room
		db r_none1		; [37].outward_room
		db 0			; [38].scoreBonus
		db 80h			; [38].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [38].north_room
		db re_front_sheriff	; [38].south_room
		db 0D3h			; [38].east_room
		db 25h			; [38].west_room
		db r_none1		; [38].ne_room
		db r_none1		; [38].nw_room
		db r_none1		; [38].se_room
		db r_none1		; [38].sw_room
		db r_none1		; [38].up_room
		db r_none1		; [38].down_room
		db r_none1		; [38].cw_room
		db r_none1		; [38].ccw_room
		db r_none1		; [38].enter_room
		db r_none1		; [38].exit_room
		db r_none1		; [38].inward_room
		db r_none1		; [38].outward_room
		db 0			; [39].scoreBonus
		db 80h			; [39].roomFlags
		db 0E5h, 4		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 2Dh			; [39].north_room
		db 21h			; [39].south_room
		db r_none		; [39].east_room
		db 0D3h			; [39].west_room
		db r_none1		; [39].ne_room
		db r_none1		; [39].nw_room
		db r_none1		; [39].se_room
		db r_none1		; [39].sw_room
		db r_none1		; [39].up_room
		db r_none1		; [39].down_room
		db r_none1		; [39].cw_room
		db r_none1		; [39].ccw_room
		db r_none1		; [39].enter_room
		db r_none1		; [39].exit_room
		db r_none1		; [39].inward_room
		db r_none1		; [39].outward_room
		db 0			; [40].scoreBonus
		db 80h			; [40].roomFlags
		db 0E5h, 51h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db re_vast_wasteland	; [40].north_room
		db 22h			; [40].south_room
		db 0D3h			; [40].east_room
		db r_none		; [40].west_room
		db r_none1		; [40].ne_room
		db r_none1		; [40].nw_room
		db r_none1		; [40].se_room
		db r_none1		; [40].sw_room
		db r_none1		; [40].up_room
		db r_none1		; [40].down_room
		db r_none1		; [40].cw_room
		db r_none1		; [40].ccw_room
		db r_none1		; [40].enter_room
		db r_none1		; [40].exit_room
		db r_none1		; [40].inward_room
		db r_none1		; [40].outward_room
		db 0			; [41].scoreBonus
		db 80h			; [41].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [41].north_room
		db 23h			; [41].south_room
		db re_bomb_shelter	; [41].east_room
		db 0D3h			; [41].west_room
		db r_none1		; [41].ne_room
		db r_none1		; [41].nw_room
		db r_none1		; [41].se_room
		db r_none1		; [41].sw_room
		db r_none1		; [41].up_room
		db r_none1		; [41].down_room
		db r_none1		; [41].cw_room
		db r_none1		; [41].ccw_room
		db r_none1		; [41].enter_room
		db r_none1		; [41].exit_room
		db r_none1		; [41].inward_room
		db r_none1		; [41].outward_room
		db 0			; [42].scoreBonus
		db 80h			; [42].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [42].north_room
		db 0D3h			; [42].south_room
		db 2Bh			; [42].east_room
		db 29h			; [42].west_room
		db r_none1		; [42].ne_room
		db r_none1		; [42].nw_room
		db r_none1		; [42].se_room
		db r_none1		; [42].sw_room
		db r_none1		; [42].up_room
		db r_none1		; [42].down_room
		db r_none1		; [42].cw_room
		db r_none1		; [42].ccw_room
		db r_none1		; [42].enter_room
		db r_none1		; [42].exit_room
		db r_none1		; [42].inward_room
		db r_none1		; [42].outward_room
		db 0			; [43].scoreBonus
		db 80h			; [43].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 31h			; [43].north_room
		db 0D3h			; [43].south_room
		db 0D3h			; [43].east_room
		db re_bomb_shelter	; [43].west_room
		db r_none1		; [43].ne_room
		db r_none1		; [43].nw_room
		db r_none1		; [43].se_room
		db r_none1		; [43].sw_room
		db r_none1		; [43].up_room
		db r_none1		; [43].down_room
		db r_none1		; [43].cw_room
		db r_none1		; [43].ccw_room
		db r_none1		; [43].enter_room
		db r_none1		; [43].exit_room
		db r_none1		; [43].inward_room
		db r_none1		; [43].outward_room
		db 0			; [44].scoreBonus
		db 80h			; [44].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [44].north_room
		db 0D3h			; [44].south_room
		db 2Dh			; [44].east_room
		db 0D3h			; [44].west_room
		db r_none1		; [44].ne_room
		db r_none1		; [44].nw_room
		db r_none1		; [44].se_room
		db r_none1		; [44].sw_room
		db r_none1		; [44].up_room
		db r_none1		; [44].down_room
		db r_none1		; [44].cw_room
		db r_none1		; [44].ccw_room
		db r_none1		; [44].enter_room
		db r_none1		; [44].exit_room
		db r_none1		; [44].inward_room
		db r_none1		; [44].outward_room
		db 0			; [45].scoreBonus
		db 80h			; [45].roomFlags
		db 0E5h, 4		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [45].north_room
		db 27h			; [45].south_room
		db r_none		; [45].east_room
		db 2Ch			; [45].west_room
		db r_none1		; [45].ne_room
		db r_none1		; [45].nw_room
		db r_none1		; [45].se_room
		db r_none1		; [45].sw_room
		db r_none1		; [45].up_room
		db r_none1		; [45].down_room
		db r_none1		; [45].cw_room
		db r_none1		; [45].ccw_room
		db r_none1		; [45].enter_room
		db r_none1		; [45].exit_room
		db r_none1		; [45].inward_room
		db r_none1		; [45].outward_room
		db 0			; [46].scoreBonus
		db 80h			; [46].roomFlags
		db 0E5h, 51h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 34h			; [46].north_room
		db re_pirates_campsite	; [46].south_room
		db 2Fh			; [46].east_room
		db r_none		; [46].west_room
		db r_none1		; [46].ne_room
		db r_none1		; [46].nw_room
		db r_none1		; [46].se_room
		db r_none1		; [46].sw_room
		db r_none1		; [46].up_room
		db r_none1		; [46].down_room
		db r_none1		; [46].cw_room
		db r_none1		; [46].ccw_room
		db r_none1		; [46].enter_room
		db r_none1		; [46].exit_room
		db r_none1		; [46].inward_room
		db r_none1		; [46].outward_room
		db 0			; [47].scoreBonus
		db 80h			; [47].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [47].north_room
		db 0D3h			; [47].south_room
		db 30h			; [47].east_room
		db re_vast_wasteland	; [47].west_room
		db r_none1		; [47].ne_room
		db r_none1		; [47].nw_room
		db r_none1		; [47].se_room
		db r_none1		; [47].sw_room
		db r_none1		; [47].up_room
		db r_none1		; [47].down_room
		db r_none1		; [47].cw_room
		db r_none1		; [47].ccw_room
		db r_none1		; [47].enter_room
		db r_none1		; [47].exit_room
		db r_none1		; [47].inward_room
		db r_none1		; [47].outward_room
		db 0			; [48].scoreBonus
		db 80h			; [48].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 36h			; [48].north_room
		db 0D3h			; [48].south_room
		db 0D3h			; [48].east_room
		db 2Fh			; [48].west_room
		db r_none1		; [48].ne_room
		db r_none1		; [48].nw_room
		db r_none1		; [48].se_room
		db r_none1		; [48].sw_room
		db r_none1		; [48].up_room
		db r_none1		; [48].down_room
		db r_none1		; [48].cw_room
		db r_none1		; [48].ccw_room
		db r_none1		; [48].enter_room
		db r_none1		; [48].exit_room
		db r_none1		; [48].inward_room
		db r_none1		; [48].outward_room
		db 0			; [49].scoreBonus
		db 80h			; [49].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 37h			; [49].north_room
		db 2Bh			; [49].south_room
		db 0D3h			; [49].east_room
		db 0D3h			; [49].west_room
		db r_none1		; [49].ne_room
		db r_none1		; [49].nw_room
		db r_none1		; [49].se_room
		db r_none1		; [49].sw_room
		db r_none1		; [49].up_room
		db r_none1		; [49].down_room
		db r_none1		; [49].cw_room
		db r_none1		; [49].ccw_room
		db r_none1		; [49].enter_room
		db r_none1		; [49].exit_room
		db r_none1		; [49].inward_room
		db r_none1		; [49].outward_room
		db 0			; [50].scoreBonus
		db 80h			; [50].roomFlags
		db 0E4h, 86h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 38h			; [50].north_room
		db 0D3h			; [50].south_room
		db 33h			; [50].east_room
		db 0D3h			; [50].west_room
		db r_none1		; [50].ne_room
		db r_none1		; [50].nw_room
		db r_none1		; [50].se_room
		db r_none1		; [50].sw_room
		db r_none1		; [50].up_room
		db r_none1		; [50].down_room
		db r_none1		; [50].cw_room
		db r_none1		; [50].ccw_room
		db r_none1		; [50].enter_room
		db r_none1		; [50].exit_room
		db r_none1		; [50].inward_room
		db r_none1		; [50].outward_room
		db 39			; [51].scoreBonus
		db 80h			; [51].roomFlags
		db 0E5h, 4		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db 0D3h			; [51].north_room
		db 0D3h			; [51].south_room
		db r_none		; [51].east_room
		db 32h			; [51].west_room
		db r_none1		; [51].ne_room
		db r_none1		; [51].nw_room
		db r_none1		; [51].se_room
		db r_none1		; [51].sw_room
		db r_none1		; [51].up_room
		db r_none1		; [51].down_room
		db r_none1		; [51].cw_room
		db r_none1		; [51].ccw_room
		db r_none1		; [51].enter_room
		db r_none1		; [51].exit_room
		db r_none1		; [51].inward_room
		db r_none1		; [51].outward_room
		db 0			; [52].scoreBonus
		db 80h			; [52].roomFlags
		db 0E5h, 0E4h		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [52].north_room
		db re_vast_wasteland	; [52].south_room
		db 0D3h			; [52].east_room
		db r_none		; [52].west_room
		db r_none1		; [52].ne_room
		db r_none1		; [52].nw_room
		db r_none1		; [52].se_room
		db r_none1		; [52].sw_room
		db r_none1		; [52].up_room
		db r_none1		; [52].down_room
		db r_none1		; [52].cw_room
		db r_none1		; [52].ccw_room
		db r_none1		; [52].enter_room
		db r_none1		; [52].exit_room
		db r_none1		; [52].inward_room
		db r_none1		; [52].outward_room
		db 0			; [53].scoreBonus
		db 80h			; [53].roomFlags
		db 0E5h, 9Eh		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [53].north_room
		db 0D3h			; [53].south_room
		db 36h			; [53].east_room
		db 34h			; [53].west_room
		db r_none1		; [53].ne_room
		db r_none1		; [53].nw_room
		db r_none1		; [53].se_room
		db r_none1		; [53].sw_room
		db r_none1		; [53].up_room
		db r_none1		; [53].down_room
		db r_none1		; [53].cw_room
		db r_none1		; [53].ccw_room
		db r_none1		; [53].enter_room
		db r_none1		; [53].exit_room
		db r_none1		; [53].inward_room
		db r_none1		; [53].outward_room
		db 0			; [54].scoreBonus
		db 80h			; [54].roomFlags
		db 0E5h, 9Eh		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [54].north_room
		db 30h			; [54].south_room
		db 0D3h			; [54].east_room
		db 35h			; [54].west_room
		db r_none1		; [54].ne_room
		db r_none1		; [54].nw_room
		db r_none1		; [54].se_room
		db r_none1		; [54].sw_room
		db r_none1		; [54].up_room
		db r_none1		; [54].down_room
		db r_none1		; [54].cw_room
		db r_none1		; [54].ccw_room
		db r_none1		; [54].enter_room
		db r_none1		; [54].exit_room
		db r_none1		; [54].inward_room
		db r_none1		; [54].outward_room
		db 0			; [55].scoreBonus
		db 80h			; [55].roomFlags
		db 0E5h, 9Eh		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [55].north_room
		db 31h			; [55].south_room
		db 38h			; [55].east_room
		db 0D3h			; [55].west_room
		db r_none1		; [55].ne_room
		db r_none1		; [55].nw_room
		db r_none1		; [55].se_room
		db r_none1		; [55].sw_room
		db r_none1		; [55].up_room
		db r_none1		; [55].down_room
		db r_none1		; [55].cw_room
		db r_none1		; [55].ccw_room
		db r_none1		; [55].enter_room
		db r_none1		; [55].exit_room
		db r_none1		; [55].inward_room
		db r_none1		; [55].outward_room
		db 0			; [56].scoreBonus
		db 80h			; [56].roomFlags
		db 0E5h, 9Eh		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; [56].north_room
		db 32h			; [56].south_room
		db 39h			; [56].east_room
		db 37h			; [56].west_room
		db r_none1		; [56].ne_room
		db r_none1		; [56].nw_room
		db r_none1		; [56].se_room
		db r_none1		; [56].sw_room
		db r_none1		; [56].up_room
		db r_none1		; [56].down_room
		db r_none1		; [56].cw_room
		db r_none1		; [56].ccw_room
		db r_none1		; [56].enter_room
		db r_none1		; [56].exit_room
		db r_none1		; [56].inward_room
		db r_none1		; [56].outward_room
		db 0			; scoreBonus
		db 80h			; roomFlags
		db 0E6h, 2Ah		; verbose_offset
		db 0E4h, 0D3h		; terse_offset
		db 0, 0			; firstMaybe_offset
		db 0, 0			; offset_probably
		db r_none		; north_room
		db 0D3h			; south_room
		db r_none		; east_room
		db 38h			; west_room
		db r_none1		; ne_room
		db r_none1		; nw_room
		db r_none1		; se_room
		db r_none1		; sw_room
		db r_none1		; up_room
		db r_none1		; down_room
		db r_none1		; cw_room
		ds 1			; ccw_room
		ds 1			; enter_room
		ds 1			; exit_room
		ds 1			; inward_room
		ds 1			; outward_room
