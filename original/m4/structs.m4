object_t		.struct
scoreBonus		.byte
field_1			.byte
floorMessageIndex	.byte
invenMessageIndex	.byte
location		.byte
roomNumber		.byte
			.endstruct

landable_t		.struct
canLandFlag		.byte
message			.word
			.endstruct

hireable_t		.struct
hiredFlag		.byte
message			.word
			.endstruct

cpm_fcb			.struct
drive_num		.byte
filename		.byte		8
filetype		.byte		3
fcb_ex			.byte
reserved_1		.byte
reserved_2		.byte
fcb_rc			.byte
fcb_al			.byte		16
fcb_cr			.byte
fcb_rnd			.byte		3
			.endstruct

room_t			.struct
scoreBonus		.byte				; 00
roomFlags		.byte				; 01
verbose_offset		.word				; 02-03
terse_offset		.word				; 04-05
first_offset		.word				; 06-07
ambient_offset		.word				; 08-09
north_room		.byte				; 0A
south_room		.byte				; 0B
east_room		.byte				; 0C
west_room		.byte				; 0D
ne_room			.byte				; 0E
nw_room			.byte				; 0F
se_room			.byte				; 10
sw_room			.byte				; 11
up_room			.byte				; 12
down_room		.byte				; 13
cw_room			.byte				; 14
ccw_room		.byte				; 15
enter_room		.byte				; 16
exit_room		.byte				; 17
inward_room		.byte				; 18
outward_room		.byte				; 19
			.endstruct
