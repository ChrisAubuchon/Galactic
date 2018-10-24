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
scoreBonus		.byte
roomFlags		.byte
verbose_offset		.word
terse_offset		.word
first_offset		.word
ambient_offset		.word
north_room		.byte
south_room		.byte
east_room		.byte
west_room		.byte
ne_room			.byte
nw_room			.byte
se_room			.byte
sw_room			.byte
up_room			.byte
down_room		.byte
cw_room			.byte
ccw_room		.byte
enter_room		.byte
exit_room		.byte
inward_room		.byte
outward_room		.byte
			.endstruct
