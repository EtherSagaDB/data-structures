#pragma description GShop Data Format (Ether Saga Odyssey)
#pragma author ArcaneDisgea
#pragma endian little

/*
ImHex port of ItsMeMario1 (Zimcia)'s 010 Template.
https://forum.ragezone.com/threads/prepping-eso-v504-v655-server-revival-tools.1247636/post-9366475
*/

struct Item {
    s32 Price;
    s32 EndTime;
    s32 Time;
    s32 StartTime;
    s32 Type;
    s32 Day;
    s32 Status;
    s32 Flag;
    s32 ReputationType;
    s32 Reputation;
    s32 SellStatus;
    s32 Discount;
};

struct Listing {
    s32 ID;
    s32 Number;
    char TexturePath[128];
    Item Buy[4];
    s32 Type;
    s32 SubType;
    s32 LocalID;
    char16 Description[512];
    char16 Name[32];
    u8 bHasPresent;
    // Comment the following if a v466 gshop:
    s32 Presentid;
    s32 Presentcount;
    u8 bPresentBind;
    u8 Unknown1[10];
    u8 Unknown2[1206];
};

struct SubCategory {
    char16 Name[48];
    char16 FilePath[8];
    u32 Unknown1;
    u32 Unknown2;
    u32 Unknown3;
    u32 Unknown4;
};

struct Category {
    s32 ID;
    char16 Name[64];
    s32 SubCategoryCount;
    SubCategory SubCategories[SubCategoryCount];
};

struct Header {
    s32 Timestamp;
    s32 ItemCount;
};

struct GSHOP {
    Header Header;
    Listing Items[Header.ItemCount];

    s32 CategoryCount;
    Category Categories[CategoryCount];
};

GSHOP gshop @ 0x00;