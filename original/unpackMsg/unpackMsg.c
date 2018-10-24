#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>

#define LAST_INDEX	0xfde6

static void	usage(void);
static uint8_t	rrca(uint8_t);
static uint8_t	rlca(uint8_t);
static void	unpackFile(char *, char *);

static void usage(void)
{
	fprintf(stderr, "unpackMsg -i msgFile [-o outputFile]\n");
	fprintf(stderr, "Where:\n");
	fprintf(stderr, "\t-i\tPath to Galactic message file\n");
	fprintf(stderr, "\t-o\tPath to output file\n");
	exit(1);
}

static uint8_t rrca(uint8_t ch)
{
	if (ch & 1) 
		return ((ch >> 1) | 0x80);
	else
		return (ch >> 1);
}

static uint8_t rlca(uint8_t ch)
{
	if (ch & 0x80)
		return ((ch << 1) | 1) & 0xff;
	else
		return (ch << 1) & 0xff;
}

static void unpackFile(char *inName, char *outName)
{
	FILE		*inFp;
	FILE		*outFp		= stdout;
	uint8_t		inBuf[7];
	uint8_t		outBuf[8];
	uint32_t	index		= 0x11;

	inFp = fopen(inName, "rb");
	if (inFp == NULL) {
		perror("Unable to open file: ");
		exit(1);
	}

	if (outName != NULL) {
		outFp = fopen(outName, "wb");
		if (outFp == NULL) {
			perror("Unable to create file: ");
			exit(1);
		}
	}

	fseek(inFp, 0x11, SEEK_SET);
	do {
		if (index > LAST_INDEX)
			break;

		fprintf(outFp, "\n0x%04x:\n", index);

		do {
			fread(inBuf, sizeof(uint8_t), 7, inFp);
			outBuf[0] = rrca(inBuf[0]) & 0x7f;
			outBuf[1] = ((rrca(rrca(inBuf[0])) & 0x40) | (rrca(rrca(inBuf[1])) & 0x3f));
			outBuf[2] = ((rrca(rrca(rrca(inBuf[1]))) & 0x60) | (rrca(rrca(rrca(inBuf[2]))) & 0x1f));
			outBuf[3] = ((rrca(rrca(rrca(rrca(inBuf[2])))) & 0x70) | (rrca(rrca(rrca(rrca(inBuf[3])))) & 0x0f));
			outBuf[4] = ((rlca(rlca(rlca(inBuf[3]))) & 0x78) | (rlca(rlca(rlca(inBuf[4]))) & 7));
			outBuf[5] = ((rlca(rlca(inBuf[4])) & 0x7c) | (rlca(rlca(inBuf[5])) & 3));
			outBuf[6] = ((rlca(inBuf[5]) & 0x7e) | (rlca(inBuf[6]) & 1));
			outBuf[7] = inBuf[6] & 0x7f;

			fprintf(outFp, "%.8s", outBuf);

			index += 7;
			if (outBuf[7] == 0)
				break;
		} while(1);

	} while(1);
}

int main(int argc, char *argv[])
{
	extern int	optind;
	extern char	*optarg;
	int		c;
	char		*inName = NULL;
	char		*outName = NULL;

	while ((c = getopt(argc, argv, "hi:o:")) != EOF) {
		switch(c) {
		case 'h':
			usage();
			break;
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
		fprintf(stderr, "Must supply message file\n");
		usage();
	}

	unpackFile(inName, outName);
}
