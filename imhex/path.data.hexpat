#pragma description Ether Saga Odyssey Elements Data Structure
#pragma Author ArcaneDisgea

#pragma endian little
#pragma encoding gbk

struct Entry {
    u32 ID;
    u32 PathLength;
    char FilePath[PathLength];
};

struct Path {
    u32 Magic;
    u32 TotalPaths;
    Entry Entries[TotalPaths];
};

Path path @ $;