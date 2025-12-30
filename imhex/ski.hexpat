#pragma description SKI Model Format (Ether Saga Odyssey)
#pragma author ArcaneDisgea
#pragma endian little

/*
ImHex port of the PW SKI Hex Workshop Structure Template.
*/

struct ZERO_60 {
    u32 unk_zero_0[15];
};

struct Ski_BONE_NAME {
    u32 bone_len;
    char BoneName[bone_len];
};

struct Ski_TEXTURE {
    u32 tex_len;
    char TextureName[tex_len];
};

struct Ski_MATERIAL {
    char MatHeader[10];      // "MATERIAL: "
    u8 TrailZero;            // Trailing Zero \0

    float MatParams_A[4];
    float MatParams_B[4];
    float MatParams_C[4];
    float MatParams_D[4];

    float ScaleParam;        // spotted: 9.999999 or 19.999998 or 10.0 or ... 0 also spotted

    u8 bIsClothing;          // 0x00(body model) or 0x01(clothing/fashion)
};

struct Ski_VERTEX_A {        // total size: 48 bytes - used for models with bones
    float Position[3];
    float VertexWeight[3];
    u8 BoneIndex[4];
    float Normal[3];
    float UV_coord[2];
};

struct Ski_VERTEX_B {        // total size: 32 bytes - used for models without bones
    float Position[3];
    float Normal[3];
    float UV_coord[2];
};

struct Ski_FACE {            // total size: 6 bytes
    u16 VertIndex[3];
};

struct Ski_MESHOBJECT_A {
    u32 obj_len;
    char ObjectName[obj_len];

    s32 tex_index;
    s32 mat_index;

    u32 vertex_count;
    u32 index_count;

    Ski_VERTEX_A Vertices[vertex_count];
    Ski_FACE Faces[index_count / 3];
};

struct Ski_MESHOBJECT_B {
    u32 obj_len;
    char ObjectName[obj_len];

    s32 tex_index;
    s32 mat_index;

    u8 extraData[4];         // extra 4 bytes when vertex_type == 1

    u32 vertex_count;
    u32 index_count;

    Ski_VERTEX_B Vertices[vertex_count];
    Ski_FACE Faces[index_count / 3];
};

struct pwSki_FILE {
    // File Header
    char signature[8];       // "MOXBIKSA"
    u32 ski_type;
    u32 mesh_count[4];
    u32 tex_count;
    u32 mat_count;
    u32 num_bips;
    u32 unknown_2;
    u32 type_mask;           // 41 (normal) or 43 (rounded?) depends on avatar and fashion

    ZERO_60 unk_zero_0;

    // Bone names for ski_type 9
    if (ski_type == 9) {
        Ski_BONE_NAME BoneNames[num_bips];
    }

    Ski_TEXTURE Textures[tex_count];
    Ski_MATERIAL Materials[mat_count];

    // Mesh objects - counts from mesh_count array
    Ski_MESHOBJECT_A Mesh_A[mesh_count[0]];
    Ski_MESHOBJECT_B Mesh_B[mesh_count[1]];
    Ski_MESHOBJECT_A Mesh_C[mesh_count[2]];
    Ski_MESHOBJECT_A Mesh_D[mesh_count[3]];
};

pwSki_FILE file @ 0x00;
