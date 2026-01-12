#pragma description Ether Saga Odyssey Dynamic Objects Data Structure
#pragma author ArcaneDisgea

#pragma endian little
#pragma encoding gbk

struct DynamicObject {
    u32 ID;
    u32 PathLength;
    char Path[PathLength];
};

struct DynamicObjects {
    u32 Magic;
    u32 TotalCount;
    DynamicObject Objects[TotalCount];
};


DynamicObjects dynamicobjects @ $;
