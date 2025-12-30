#include <std/mem.pat>
#pragma description Angelica Engine PCK Archive (Ether Saga Odyssey)
#pragma endian little

// Ether Saga Odyssey encryption keys
#define KEY_1 -1228069623
#define KEY_2 1822409141

struct FileEntry {
    u32 encSize1;
    u32 encSize2;
    u32 entrySize1 = encSize1 ^ KEY_1;
    u32 entrySize2 = encSize2 ^ KEY_2;
    char compressedData[entrySize1];
};

struct FileHeader {
    u32 magic [[comment("Should be 0x4DCA23EF")]];
    u32 fileSize [[comment("Total PCK file size")]];
    u32 timestamp [[comment("Unix epoch timestamp")]];
    u32 unknown;
} [[color("00FF00")]];

struct FileFooter {
    s32 sig1;
    u16 version1;
    u16 version2;
    u32 encryptedTableOffset [[comment("Decrypt with KEY_1 XOR to get table offset"), color("FFFF00")]];
    u32 decryptedTableOffset = encryptedTableOffset ^ KEY_1;
    u32 separator;
    char copyright[78];
    padding[174];
    s32 sig2;
    u32 entryCount [[comment("Number of files"), color("00FFFF")]];
    u16 versionEnd1;
    u16 versionEnd2;
} [[color("FF0000")]];

struct PCKFile {
    FileHeader header;
    FileFooter footer @ std::mem::size() - 280;
    FileEntry entries[footer.entryCount] @ footer.decryptedTableOffset;
};

PCKFile file @ $;