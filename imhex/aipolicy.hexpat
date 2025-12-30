#pragma description GShop Data Format (Ether Saga Odyssey)
#pragma author ArcaneDisgea
#pragma endian little

/*
ImHex port of ItsMeMario1 (Zimcia)'s 010 Template.
https://forum.ragezone.com/threads/aipolicy-structure.1235040/
*/

struct Target {
    u32 target;
    if (target == 6) {
        s32 occupation;
    }
};

struct Operation {
    s32 id;

    if (id == 0) {        // o_attack
        s32 uType;
    } else if (id == 1) { // o_use_skill
        s32 uSkill;
        s32 uLevel;
    } else if (id == 2) { // o_talk
        s32 uSize;
        char16 szData[uSize / 2];
    } else if (id == 3) { // o_reset_hate_list
        // no params
    } else if (id == 4) { // o_run_trigger
        s32 uID;
    } else if (id == 5) { // o_stop_trigger
        s32 uID;
    } else if (id == 6) { // o_active_trigger
        s32 uID;
    } else if (id == 7) { // o_create_timer
        s32 uID;
        s32 uPediod;
        s32 uCounter;
    } else if (id == 8) { // o_kill_timer
        s32 uID;
    } else if (id == 9) { // o_flee
        // no params
    } else if (id == 10) { // o_set_hate_to_first
        // no params
    } else if (id == 11) { // o_set_hate_to_last
        // no params
    } else if (id == 12) { // o_set_hate_fifty_percent
        // no params
    } else if (id == 13) { // o_skip_operation
        // no params
    } else if (id == 14) { // o_active_controller
        u32 ID;
        u8 bStop;
        u8 undefined[3];
    } else if (id == 15) { // o_summon
        s32 uMounsterID;
        s32 uBodyMounsterID;
        s32 uMounsterNum;
        s32 uLife;
        u8 szName[32];
        float fRange;
        u8 bFollow;
        u8 bDissear;
        u8 undefined[2];
    } else if (id == 16) { // o_trigger_task
        s32 uTaskID;
    } else if (id == 17) { // o_change_path
        s32 uPathID;
    } else if (id == 18) { // o_dispear
        // no params
    } else if (id == 19) { // o_sneer_monster
        // no params
    } else if (id == 20) { // o_use_range_skill
        s32 uSkill;
        s32 uLevel;
        float fRange;
    } else if (id == 21) { // o_summon_mine
        s32 uID;
        s32 nNumber;
        s32 nLife;
        float fDistance;
        u8 bBind;
        u8 undefined[3];
    } else if (id == 22) { // o_set_global
        s32 iID;
        s32 iValue;
    } else if (id == 23) { // o_revise_global
        s32 iID;
        s32 iValue;
    } else if (id == 24) { // o_active_pk_region
        s32 iID;
        u8 bActive;
        u8 undefined[3];
    } else if (id == 25) { // o_num
        // no params
    }

    Target target;
};

struct Condition {
    s32 id;
    s32 conditionLength;
    u8 conditionData[conditionLength];
    s32 type;

    if (type == 1) {
        Condition SubNodeL;
        s32 SubNodeL_id;
        Condition SubNodeR;
        s32 SubNodeR_id;
    } else if (type == 2) {
        Condition SubNodeR;
        s32 SubNodeR_id;
    }
};

struct CTriggerData {
    s32 version;
    s32 id;
    u8 bActive;
    u8 bRun;
    u8 bAttackValid;
    char16 Name[64];
    Condition condition;
    s32 count;
    Operation operation[count];
};

struct CPolicyData {
    s32 version;
    s32 id;
    s32 count;
    CTriggerData Triggers[count];
};

struct AIPOLICY_FILE {
    s32 Header;
    s32 count;
    CPolicyData policydata[count];
};

AIPOLICY_FILE file @ 0x00;
