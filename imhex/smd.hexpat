struct Header {
    char FileType[8];
    u32 Version;
    u32 Unknown1;
    u32 Unknown2;
    u32 Unknown3;
    u32 Unknown4;
    u32 Unknown5;
    u32 Unknown6;
    u32 Unknown7;
    u32 Unknown8;
    u32 Unknown9;
    u32 Unknown10;
    u32 Unknown11;
    u32 Unknown12;
    u32 Unknown13;
    u32 Unknown14;
    u32 Unknown15;
    u32 Unknown16;
    u32 Unknown17;
    u32 Unknown18;
    u32 Unknown19;
};

struct SMDEntry {
    u32 PathLength;
    char Path[PathLength];
};

struct SMDFile {
    Header header;
    SMDEntry entries[3]; // unclear how to determine this
};

SMDFile file @ $;