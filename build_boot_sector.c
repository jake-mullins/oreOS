#include <stdio.h>
#include <stdlib.h>

#define BOOT_SECTOR_SIZE_IN_CHARS 256

// Creates a 512 byte boot sector
int main(int argc, char **argv)
{

    FILE* fp = fopen(argv[1], "w");

    // Set aside 512 bytes all initialized to zero
    unsigned char* memoryBlock = calloc(BOOT_SECTOR_SIZE_IN_CHARS, sizeof(unsigned char));

    ((unsigned short *)memoryBlock)[127] = 0xaa55;

    for (size_t i = 0; i < 16; ++i)
    {
        for (size_t j = 0; j < 16; ++j)
        {
            printf("%02x ", memoryBlock[16 * i + j]);
        }
        printf("\n");
    }

    fwrite(memoryBlock, sizeof(unsigned char), BOOT_SECTOR_SIZE_IN_CHARS, fp);
    fclose(fp);

    return 0;
}