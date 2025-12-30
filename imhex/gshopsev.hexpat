#pragma description GShopSev Data Format (Ether Saga Odyssey)
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
    Item Buy[4];
    s32 Type;
    s32 SubType;
    s32 LocalID;
    u8 bHasPresent;
    s32 Presentid;
    s32 Presentcount;
    u8 bPresentBind;
};

struct HEADER {
    s32 Timestamp;
    s32 ItemCount;
};

struct GSHOPSEV {
    HEADER header;
    Listing Listings[header.ItemCount];
};

GSHOPSEV file @ 0x00;
