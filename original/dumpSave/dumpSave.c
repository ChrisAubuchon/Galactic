#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include "endian.h"
#include "data.h"

static void usage(void);
static void usage(void)
{
	fprintf(stderr, "dumpSave -i inputFile [-o outputFile]\n\n");
	exit(1);
}

static void printRoom(FILE *, char **, char *, char);
static void printRoom(FILE *fp, char **rooms, char *dir, char value)
{
	unsigned char	c = (unsigned char)value;

	if (c >= 0x65)
		return;

	fprintf(fp, "  %-5s:	%s\n", dir, rooms[c]);
}


int main(int argc, char **argv)
{
	extern int	optind;
	extern char	*optarg;
	int		c;
	FILE		*inFp, *outFp;
	char		*inName = NULL;
	char		*outName = NULL;
	char		buffer[0x1c00];
	int		i, j;

	while ((c = getopt(argc, argv, "i:o:")) != EOF) {
		switch (c) {
		case 'i':
			inName = optarg;
			break;
		case 'o':
			outName = optarg;
			break;
		default:
			usage();
			break;
		}
	}

	if (inName == NULL) {
		fprintf(stderr, "Must supply input file\n");
		usage();
	}
	inFp = fopen(inName, "rb");
	if (inFp == NULL) {
		fprintf(stderr, "Unable to open '%s'\n\n", inName);
		exit(1);
	}

	if (outName == NULL) {
		outFp = stdout;
	} else {
		outFp = fopen(outName, "w");
		if (outFp == NULL) {
			fprintf(stderr, "Unable to open '%s'\n\n", outName);
			exit(1);
		}
	}

	fread(buffer, 0x1c00, 1, inFp);
	fclose(inFp);

	i = 20;
	fprintf(outFp, "Score:		%d\n", str_read16le(&buffer[i]));
	i += 5;
	fprintf(outFp, "Location:	%d\n", buffer[i++]);
	fprintf(outFp, "Room Number:	%d\n", buffer[i]);
	i += 63;
	fprintf(outFp, "Computer installed:	%d\n", buffer[i++]);
	fprintf(outFp, "Analyzer installed:	%d\n", buffer[i++]);
	fprintf(outFp, "Computer bought:	%d\n", buffer[i++]);
	fprintf(outFp, "Analyzer bought:	%d\n", buffer[i++]);
	fprintf(outFp, "Neutralizer bought:	%d\n", buffer[i++]);
	fprintf(outFp, "P-Suit bought:		%d\n", buffer[i++]);
	i += 56;
	j = 0;
	fprintf(outFp, "\nItems:\n");
	while (strcmp(items[j], "")) {
		fprintf(outFp, "%s:\n",	items[j++]);
		fprintf(outFp, "  Location:	%s\n", locations[buffer[i+4]]);
		if (buffer[i+4] == LOCATION_EARTH)
			fprintf(outFp, "  Room:		%s\n", earthRooms[buffer[i+5]]);
		if (buffer[i+4] == LOCATION_ISTHUR)
			fprintf(outFp, "  Room:		%s\n", isthurRooms[buffer[i+5]]);
		if (buffer[i+4] == LOCATION_GCS)
			fprintf(outFp, "  Room:		%s\n", gcsRooms[buffer[i+5]]);
		if (buffer[i+4] == LOCATION_NAVIER)
			fprintf(outFp, "  Room:		%s\n", navierRooms[buffer[i+5]]);
		if (buffer[i+4] == LOCATION_SOLOMAW)
			fprintf(outFp, "  Room:		%s\n", solomawRooms[buffer[i+5]]);
		i += 6;
		fprintf(outFp, "\n");
	}

	fprintf(outFp, "\nEarth Room Data:\n");
	for (j = 0; j < 0x36; j++) {
		fprintf(outFp, "%s:\n", earthRooms[j]);
		fprintf(outFp, "  Score Bonus:		%d\n", buffer[i]);
		i += 10;
		printRoom(outFp, earthRooms, "North", buffer[i++]);
		printRoom(outFp, earthRooms, "South", buffer[i++]);
		printRoom(outFp, earthRooms, "East", buffer[i++]);
		printRoom(outFp, earthRooms, "West", buffer[i++]);
		printRoom(outFp, earthRooms, "NE", buffer[i++]);
		printRoom(outFp, earthRooms, "NW", buffer[i++]);
		printRoom(outFp, earthRooms, "SE", buffer[i++]);
		printRoom(outFp, earthRooms, "SW", buffer[i++]);
		printRoom(outFp, earthRooms, "Up", buffer[i++]);
		printRoom(outFp, earthRooms, "Down", buffer[i++]);
		printRoom(outFp, earthRooms, "CW", buffer[i++]);
		printRoom(outFp, earthRooms, "CCW", buffer[i++]);
		printRoom(outFp, earthRooms, "Enter", buffer[i++]);
		printRoom(outFp, earthRooms, "Exit", buffer[i++]);
		printRoom(outFp, earthRooms, "Inward", buffer[i++]);
		printRoom(outFp, earthRooms, "Outward", buffer[i++]);
	}


	if (outName != NULL)
		fclose(outFp);

}
