#pragma description Ether Saga Odyssey Elements Data Structure
#pragma Author ArcaneDisgea

#pragma pattern_limit 4100000
#pragma endian little
#include <std/io.pat>

struct RGBA8 {
    u8 r, g, b, a;
} [[color(std::format("{:02X}{:02X}{:02X}", r, g, b))]];

struct SheetMeta {
    u32 RowDataLength;
    u32 RowCount;
};

struct EquipmentAddonsRow {
    u32 Id;
    char16 Name[32];
    u32 Type;
    u32 AddonAmount;
    u32 Addons[3];
};

struct EquipmentTypeRow {
    u32 Id;
    char16 Name[32];
};

struct EquipmentSubTypeRow {
    u32 Id;
    char16 Name[32];
};

struct EquipmentRow {
    u32 Id;
    u32 Type;
    u32 SubType;
    char16 Name[32];
    u32 EquipType;
    u32 EquipMask;
    u32 PathIdMale;
    u32 PathIdFemale;
    u32 PathIdMaleI;
    u32 PathIdFemaleI;
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 EquipLocation;
    u32 ActionType;
    u32 ShowType;
    char16 ShowLevel[16];
    u32 Level;
    u32 CharacterComboId;
    u32 RequireGender;
    u32 RequireLevel;
    u32 SectMask;
    u32 RequireLevel2;
    u32 RaceMask;
    u32 Hp;
    u32 Mp;
    u32 MinimumPhysicalDamage;
    u32 MaximumPhysicalDamage;
    u32 MinimumMagicalDamage;
    u32 MaximumMagicalDamage;
    u32 PhysicalDefense;
    u32 MagicalDefense;
    u32 Attack;
    u32 Armor;
    float AttackRange;
    u32 Price;
    u32 ShopPrice;
    u32 Addons[5];
    u32 RandomAddonGroups[5];
    u32 FeeEstone;
    u32 FeeInstallPstone;
    u32 FeeUninstallPstone;
    u32 FeeInstallSstone;
    u32 FeeUninstallSstone;
    u32 EstoneId;
    u32 AddonProp;
    float BasicRank;
    u32 EnhancedValues[20];
    u32 BasicShowLevel;
    u32 PstoneAmount;
    u32 PstoneVar;
    u32 CanUpgrade;
    u32 IdUpgrade;
    u32 AddonSkills[2];
    u32 SuiteConditions[8];
    u32 SuiteExtProps[5];
    u32 AddedLevelRequire;
    u32 GenEstoneMax;
    u32 GenEstoneMin;
    u32 CanInstallHole;
    u32 MaxHoleNum;
    u32 ItemInstallHole;
    u32 CanAddRune;
    u32 StackSize;
    u32 Proctype;
};

struct PotionTypeRow {
    u32 Id;
    char16 Name[32];
};

struct PotionSubtypeRow {
    u32 Id;
    char16 Name[32];
};

struct PotionRow {
    u32 Id;
    u32 Type_Dup1;
    u32 SubType;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 LevelRequirement;
    u32 CoolTypeMask;
    u32 CoolTime;
    u32 OnlyInWar;
    u32 Type_Dup2;
    u32 HpRecovery[4];
    u32 MpRecovery[4];
    u32 VpRecovery[4];
    u32 AngerRecovery[4];
    u32 PhysiqueAdd;
    u32 PhysiqueDecrease;
    u32 Physique;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct MaterialTypeRow {
    u32 Id;
    char16 Name[32];
};

struct MaterialSubTypeRow {
    u32 Id;
    char16 Name[32];
};

struct MaterialRow {
    u32 Id;
    u32 Type;
    u32 SubType;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Price;
    u32 ShopPrice;
    u32 PackIndex;
    u32 DecomposePrice;
    u32 DecomposeTime;
    u32 ElementId;
    u32 Amount;
    u32 StackSize;
    u32 Proctype;
};

struct RefineTicketRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 EquipMask;
    u32 EquipClass;
    u32 RefineTimes;
    u32 SocketTimes;
    u32 TransferRefineTimes;
    float ExtReservedProb;
    float ExtSucceedProb;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct SkillTomeTypeRow {
    u32 Id;
    char16 Name[32];
};

struct SkillTomeRow {
    u32 Id;
    u32 Type;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct TeleportScrollRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 WorldTag;
    float X;
    float Y;
    float Z;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct LuckyScrollRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Type;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct TownScrollRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    float UseTime;
    u32 Price;
    u32 ShopPrice;
    u32 Blank;
    u32 StackSize;
    u32 Proctype;
};

struct RevivalScrollRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    float UseTime;
    u32 CoolTime;
    float HpResume;
    float MpResume;
    float VpResume;
    float ExpConsumed;
    float SpConsumed;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct TaskItemsRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdIcon;
    u32 StackSize;
    u32 Proctype;
};

struct DroptableTypeRow {
    u32 Id;
    char16 Name[32];
};

struct DroptableDropsElement {
    u32 Id;
    float Probability;
};

struct DroptableRow {
    u32 Id;
    u32 Type;
    char16 Name[32];
    float DropItems[5];
    DroptableDropsElement Drops[64];
};

struct MonsterTypeRow {
    u32 Id;
    char16 Name[32];
};

struct MonsterSkillsElement {
    u32 Id;
    u32 Level;
};

struct MonsterCapturesElement {
    u32 Id;
    float Probability;
};

struct MonsterKilledReputationElement {
    u32 KilledQuantity;
    u32 ReputationType;
    u32 ReputationValue;
};

struct MonsterKilledReputationLimitsElement {
    u32 Type;
    u32 LimitValue;
    float LimitCounter;
    u32 Value;
};

struct MonsterRow {
    u32 Id;
    u32 Type;
    char16 Name[32];
    char16 Prop[16];
    char16 Desc[16];
    u32 Faction;
    u32 EnemyFaction;
    u32 MonsterFaction;
    u32 MonsterRace;
    u32 PathIdMatter;
    float Size;
    u32 NameColor;
    u32 StrategyId;
    u32 Level;
    u32 ShowLevel;
    u32 IsBoss;
    u32 KilledExperience;
    u32 KilledDrops;
    u32 ImmuneType;
    u32 ShowAsFlag;
    float SightRange;
    float AttackRange;
    u32 AggressionMode;
    u32 MonsterFactionAskHelp;
    u32 MonsterFactionCanHelp;
    float AggressionRange;
    float AggressionTime;
    float DeadAggressionTime;
    u32 PatrolMode;
    u32 StandMode;
    u32 InhabitType;
    float WalkSpeed;
    float RunSpeed;
    u32 CommonStrategy;
    u32 AfterDeath;
    u32 Experience;
    u32 Spirit;
    u32 AverageMoney;
    u32 MoneyVariable;
    u32 Hp;
    u32 Mp;
    u32 Faint;
    u32 PhysicalDamage;
    u32 MagicalDamage;
    u32 PhysicalDefense;
    u32 MagicalDefense;
    u32 ExtraDamage;
    u32 ExtraDefense;
    u32 Attack;
    u32 Armor;
    float PhysicalCritRate;
    float PhysicalCritDamage;
    float MagicalCritRate;
    float MagicalCritDamage;
    u32 AdjustGold;
    u32 AdjustWood;
    u32 AdjustWater;
    u32 AdjustFire;
    u32 AdjustEarth;
    u32 AdjustNone;
    u32 AdjustPhysical;
    u32 HpGenerations[2];
    u32 MpGenerations[2];
    u32 FaintGenerationTime;
    float FaintGenerationSpeed;
    u32 WarRole;
    u32 DropTimes;
    u32 Droptable;
    u32 AttackSkill;
    MonsterSkillsElement Skills[32];
    float CaptureProb;
    MonsterCapturesElement Captures[2];
    u32 Captureable;
    u32 NascentSkill;
    float CaptureHpRatio;
    u32 NotAttackPlayer;
    u32 UseTargetList;
    u32 TargetList[32];
    u32 HighestFrequency;
    u32 Score;
    MonsterKilledReputationElement KilledReputation[4];
    u32 AntiGold;
    u32 AntiWood;
    u32 AntiWater;
    u32 AntiFire;
    u32 AntiEarth;
    u32 AntiPhysical;
    u32 AntiNone;
    float AntiPhysicalCritRate;
    float AntiPhysicalCritDamage;
    float AntiMagicalCritRate;
    float AntiMagicalCritDamage;
    float PoisonRate;
    float InjureRate;
    float StunRate;
    float SleepRate;
    float ImmobiliseRate;
    float SlowRate;
    float SilenceRate;
    float BlindRate;
    float WeakenRate;
    float ImmunityRate;
    float BeatbackRate;
    float ReserveRate;
    float AntiPoisonRate;
    float AntiInjureRate;
    float AntiStunRate;
    float AntiSleepRate;
    float AntiImmobiliseRate;
    float AntiSlowRate;
    float AntiSilenceRate;
    float AntiBlindRate;
    float AntiWeakenRate;
    float AntiImmunityRate;
    float AntiBeatbackRate;
    float AntiReserveRate;
    MonsterKilledReputationLimitsElement KilledReputationLimits[4];
    u32 BattlePointDeduction;
    u32 MonsterClass;
};

struct EquipmentUpgradeRow {
    u32 Id;
    char16 Name[32];
    u32 MaxLevel;
    u32 UpgradeSpiritRequirement[10];
    u32 PhyDmg;
    u32 PhyDmgVar;
    u32 MagicDmg;
    u32 MagicDmgVar;
    u32 PhyDefence;
    u32 PhyDefenceVar;
    u32 MagicDefence;
    u32 MagicDefenceVar;
    u32 Hp;
    u32 HpVar;
    u32 Mp;
    u32 MpVar;
    u32 Attack;
    u32 AttackVar;
    u32 Armor;
    u32 ArmorVar;
    u32 AdjustGold;
    u32 AdjustGoldVar;
    u32 AdjustWood;
    u32 AdjustWoodVar;
    u32 AdjustWater;
    u32 AdjustWaterVar;
    u32 AdjustFire;
    u32 AdjustFireVar;
    u32 AdjustEarth;
    u32 AdjustEarthVar;
    u32 AdjustPhy;
    u32 AdjustPhyVar;
    u32 AdjustNone;
    u32 AdjustNoneVar;
    float Speed;
    float SpeedVar;
    u32 UpgradePhyDmg;
    u32 UpgradePhyDmgVar;
    u32 UpgradeMagicDmg;
    u32 UpgradeMagicDmgVar;
    u32 UpgradePhyDefence;
    u32 UpgradePhyDefenceVar;
    u32 UpgradeMagicDefence;
    u32 UpgradeMagicDefenceVar;
    u32 UpgradeHp;
    u32 UpgradeHpVar;
    u32 UpgradeMp;
    u32 UpgradeMpVar;
    u32 UpgradeAttack;
    u32 UpgradeAttackVar;
    u32 UpgradeArmor;
    u32 UpgradeArmorVar;
    u32 UpgradeAdjustGold;
    u32 UpgradeAdjustGoldVar;
    u32 UpgradeAdjustWood;
    u32 UpgradeAdjustWoodVar;
    u32 UpgradeAdjustWater;
    u32 UpgradeAdjustWaterVar;
    u32 UpgradeAdjustFire;
    u32 UpgradeAdjustFireVar;
    u32 UpgradeAdjustEarth;
    u32 UpgradeAdjustEarthVar;
    u32 UpgradeAdjustPhy;
    u32 UpgradeAdjustPhyVar;
    u32 UpgradeAdjustNone;
    u32 UpgradeAdjustNoneVar;
    float UpgradeSpeed;
    float UpgradeSpeedVar;
    u32 Addons[80];
};

struct AircraftAddonsElement {
    u32 Id;
    u32 Level;
};

struct AircraftRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdModel;
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Price;
    u32 ShopPrice;
    char16 Description[16];
    u32 LevelRequirement;
    u32 CharacterComboId;
    u32 OnlyInWar;
    u32 FlyMode;
    float Speed;
    u32 MpUsed;
    float SprintSpeed;
    u32 VpUsed;
    u32 CanAttack;
    AircraftAddonsElement Addons[5];
    u32 StackSize;
    u32 Proctype;
};

struct ChangeShapeBuffActionsElement {
    char16 BuffAction[16];
};

struct ChangeShapeDebuffActionsElement {
    char16 DebuffAction[16];
};

struct ChangeShapeAttackActionsElement {
    char16 AttackAction[16];
};

struct ChangeShapeAddonSkillsElement {
    u32 Id;
    u32 Level;
};

struct ChangeShapePetEvaluationElement {
    u32 Id;
    u32 Evaluation;
};

struct ChangeShapePetSkillsElement {
    u32 Id;
    u32 Level;
};

struct ChangeShapePetRaceElement {
    u32 Id;
    u32 Level;
};

struct ChangeShapeRow {
    u32 Id;
    char16 Name[32];
    char16 Collection[16];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PathIdModel;
    char16 Description[256];
    u32 ValidTime;
    u32 LevelRequirement;
    u32 StandMode;
    u32 MonsterRace;
    float AdvantageParam;
    u32 UsedVp;
    u32 UsedTime;
    float Height;
    float Speed;
    u32 CanAttack;
    u32 HideName;
    u32 CanFly;
    u32 AircraftId;
    ChangeShapeBuffActionsElement BuffActions[3];
    ChangeShapeDebuffActionsElement DebuffActions[3];
    ChangeShapeAttackActionsElement AttackActions[3];
    u32 RequiredShapes[3];
    ChangeShapeAddonSkillsElement AddonSkills[3];
    u32 Addons[6];
    ChangeShapePetEvaluationElement PetEvaluation[3];
    ChangeShapePetSkillsElement PetSkills[3];
    u32 PetRaceEvaluation;
    ChangeShapePetRaceElement PetRace[3];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct SummonMonsterMonstersElement {
    u32 Id;
    u32 LifeSpan;
    u32 Amount;
};

struct SummonMonsterRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 LevelRequirement;
    SummonMonsterMonstersElement Monsters[2];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PetBadgeMeldValuesElement {
    float PropValue;
    float ValueVar;
    float MergeValueMax;
    float PValue;
    float PValueVar;
    float MergePValueMax;
};

struct PetBadgePetSkillsElement {
    u32 Id;
    u32 Level;
};

struct PetBadgeRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PathIdIconUnidentified;
    u32 PathIdHeadIcons[3];
    u32 PathIdModel[16];
    float Size;
    u32 PetType;
    u32 PetFood;
    u32 Level;
    u32 Life;
    u32 Faint;
    u32 ExpLvlupId;
    u32 InitEvaluation;
    u32 FightType;
    u32 MonsterFaction;
    u32 SummonMpUsed;
    u32 CombineMpUsed;
    u32 MpPerSecond;
    u32 CombineSkill;
    u32 MergeSpConsume;
    float SightRange;
    float AttackRange;
    float AggroRange;
    float AggroTime;
    u32 StandMode;
    float WalkSpeed;
    float RunSpeed;
    u32 MaxSkills;
    u32 MinSkills;
    u32 HpGenerations[2];
    u32 FaintGenTime;
    float FaintGenSpeed;
    PetBadgeMeldValuesElement MeldValues[18];
    PetBadgePetSkillsElement PetSkills[2];
    u32 PetMeldAddons[4];
    char16 Description[16];
    u32 HpGrowAverage;
    u32 PhyDmgGrowAverage;
    u32 MagicDmgGrowAverage;
    u32 PhyDefenceGrowAverage;
    u32 MagicDefenceGrowAverage;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PetFoodRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PetLevelRequirement;
    u32 FoodType;
    u32 FoodUsage;
    u32 FoodValue;
    u32 CoolTime;
    u32 UseOnce;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PetSkillsRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 SkillId;
    u32 SkillLevel;
    u32 PetLevel;
    u32 PetType;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PetArmorPropertiesElement {
    float Max;
    float Min;
    float Ultimate;
};

struct PetArmorRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    char16 Description[16];
    u32 PetLevel;
    u32 PetType;
    u32 MonsterFaction;
    PetArmorPropertiesElement Properties[18];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct MergeRecipeCraftProbabilitiesElementItemsElement {
    u32 Id;
    u32 Amount;
};

struct MergeRecipeCraftProbabilitiesElement {
    float Probability;
    MergeRecipeCraftProbabilitiesElementItemsElement Items[2];
};

struct MergeRecipeRequirementsElement {
    u32 Id;
    u32 Amount;
    u32 Rank;
};

struct MergeRecipeHelpersElement {
    u32 Id;
    float Probability;
};

struct MergeRecipeRow {
    u32 Id;
    char16 Name[32];
    u32 KeepTimeProp;
    u32 KeepBindProp;
    u32 KeepRefineProp;
    u32 KeepPstoneProp;
    MergeRecipeCraftProbabilitiesElement CraftProbabilities[4];
    MergeRecipeRequirementsElement Requirements[6];
    float BaseProbability;
    u32 Fee;
    MergeRecipeHelpersElement Helpers[4];
    u32 RecipeId;
};

struct NpcHotelServiceRow {
    u32 Id;
    char16 Name[32];
    u32 WorldId;
    float X;
    float Y;
    float Z;
};

struct ProduceTypeConfigRow {
    u32 Id;
    char16 Name[32];
    u32 ProduceId;
};

struct NpcLearnProductionSkillsProductionSkillsElement {
    u32 Id;
    u32 Cost;
};

struct NpcLearnProductionSkillsRow {
    u32 Id;
    char16 Name[32];
    NpcLearnProductionSkillsProductionSkillsElement ProductionSkills[32];
};

struct AiHelperRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Duration;
    u32 AutoHookType;
    u32 AddonSkill;
    u32 NoQuestion;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PetProductionProbabilitiesElement {
    float Probability;
    u32 ItemId;
    u32 MinAmount;
    u32 MaxAmount;
};

struct PetProductionMaterialsElement {
    u32 Id;
    u32 Amount;
};

struct PetProductionRow {
    u32 Id;
    char16 Name[32];
    u32 Level;
    PetProductionProbabilitiesElement Probabilities[64];
    PetProductionMaterialsElement Materials[8];
    u32 PetProduceType;
    u32 ProficiencyNeed;
    u32 ProficiencyGot;
};

struct PetMeldRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PetMask;
    u32 PackIndex;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct ChangeRecoverRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 RecoverAll;
    u32 MonsterRace;
    u32 ChangeShape[10];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct HatcherTypeRow {
    u32 Id;
    char16 Name[32];
};

struct HatchersItemsElement {
    u32 Id;
    float Rate;
};

struct HatchersRow {
    u32 Id;
    u32 Type;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    double NeedExp;
    u32 NeedLevel;
    u32 ExpIncType;
    u32 MonsterId;
    u32 MonsterExp;
    u32 WeaponId;
    u32 SkillId;
    u32 TaskId;
    u32 TaskExp;
    u32 ProduceId;
    u32 ProduceExp;
    u32 OreId;
    u32 OreExp;
    u32 RecipeId;
    u32 RecipeExp;
    HatchersItemsElement Items[64];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct BooksPagesElement {
    char16 Page[256];
};

struct BooksRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Disappear;
    u32 MaxPage;
    BooksPagesElement Pages[32];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct SpecialSpeakersRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Channel;
    u32 OnlyFactionMaster;
    u32 OccupyRegion;
    u32 OccupyCity;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct GardensGardenLevelsElement {
    u32 FarmlandNum;
    u32 LovelandNum;
    u32 ArableLovelandNum;
    u32 NewFarmlandCost;
    u32 NewLovelandCost;
    float ExpRatio;
    u32 ExtraExp;
    u32 ExpTime;
    u32 BagLength;
    u32 BagWidth;
    u32 PathIdModel;
    u32 HangerMask;
    u32 NeedExp;
    u32 LevelUpReward;
};

struct GardensRow {
    u32 Id;
    char16 Name[32];
    u32 InitLevel;
    u32 MaxLevel;
    u32 ExpListId;
    GardensGardenLevelsElement GardenLevels[10];
    u32 PlowWard;
};

struct GardenOrnamentsRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdIcon_Dup1;
    u32 HangerIndex;
    u32 Type;
    u32 GardenLevelMin;
    u32 Level;
    u32 PathIdModel;
    u32 ExpTime;
    u32 ExpRatio;
    u32 ExtraExp;
    char16 BagShape[4];
    u32 BagColour;
    u32 PathIdIcon_Dup2;
    u32 SellPrice;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct SeedsStageModelTimesElement {
    u32 Time;
    u32 PathIdModel;
};

struct SeedsRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdIcon;
    u32 Level;
    u32 GardenLvlMin;
    u32 SeasonNum;
    SeedsStageModelTimesElement StageModelTimes[5];
    u32 PathIdWitherModel;
    u32 ProtectTime;
    u32 OutputMin;
    u32 OutputMax;
    u32 HarvestExp;
    u32 HarvestMoney;
    u32 StealExp;
    u32 StealMoney;
    u32 WaterExp;
    u32 WaterMoney;
    u32 WeedExp;
    u32 WeedMoney;
    u32 DewormExp;
    u32 DewormMoney;
    u32 SeedExp;
    u32 SeedMoney;
    u32 PlowExp;
    u32 PlowMoney;
    float StealRatio;
    u32 MinPerSteal;
    u32 MaxPerSteal;
    u32 SellPrice;
    u32 BuyPrice;
    u32 FruitId;
    u32 StackSize;
    u32 Proctype;
};

struct FruitsRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdIcon;
    u32 Level;
    u32 SellPrice;
    u32 BuyPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PetboxExpListConfigRow {
    u32 Id;
    char16 Name[32];
    u32 ExperienceGains[200];
};

struct GardenToolsRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdIcon;
    u32 Level;
    u32 GardenLevelMin;
    u32 Functions[5];
    u32 HasTarget;
    u32 SellPrice;
    u32 BuyPrice;
    u32 StackSize;
    u32 Proctype;
};

struct GardenFunctionRow {
    u32 Id;
    char16 Name[32];
    u32 Type;
    u32 Time;
    u32 Prop;
    u32 PathIdDogModel;
};

struct GardenAwardsItemChanceElement {
    u32 Id;
    u32 Amount;
    float Probability;
};

struct GardenAwardsRow {
    u32 Id;
    char16 Name[32];
    float AwardPercent;
    u32 MaxKind;
    u32 ActualKind;
    u32 Money;
    float MoneyPercent;
    GardenAwardsItemChanceElement ItemChance[24];
};

struct SpeakerLevelAmountRow {
    u32 Id;
    char16 Name[32];
    u32 CostPerLevel[14];
};

struct SpeakNumMoneyRow {
    u32 Id;
    char16 Name[32];
    u32 Costs[100];
};

struct BirthskillResetRow {
    u32 Id;
    char16 Name[32];
    u32 Requirements[8];
};

struct BirthskillCandidateRow {
    u32 Id;
    char16 Name[32];
    u32 BirthSkills[24];
    u32 FixedBirthSkills[32];
};

struct UpgradeTransferRequirementsElement {
    u32 ObjectRequired;
    float SuccessRate;
    u32 Fee;
};

struct UpgradeTransferRow {
    u32 Id;
    char16 Name[32];
    UpgradeTransferRequirementsElement Requirements[20];
};

struct GardenExchangeConfigRow {
    u32 Id;
    u8 Unknown[7808];
};

struct RuneCombinationConfigReputationCostElement {
    u32 Id;
    u32 Amount;
};

struct RuneCombinationConfigItemRequirementElement {
    u32 Id;
    u32 Amount;
};

struct RuneCombinationConfigFixedAddonsElement {
    u32 Id;
    u32 Prop;
};

struct RuneCombinationConfigRow {
    u32 Id;
    char16 Name[32];
    u32 Effective;
    u32 PathIdShowGfx;
    u32 LevelRequirement;
    u32 ProfessionRequirement;
    u32 Gender;
    u32 Race;
    u32 WeaponRuneLvl;
    u32 HelmetRuneLvl;
    u32 ArmourRuneLvl;
    u32 ShoeRuneLvl;
    u32 Money;
    RuneCombinationConfigReputationCostElement ReputationCost[4];
    u32 Sp;
    RuneCombinationConfigItemRequirementElement ItemRequirement[4];
    u32 AddonUpperlimit;
    RuneCombinationConfigFixedAddonsElement FixedAddons[8];
    u32 RandomAddons[8];
};

struct NpcSuperUpgradeUpgradesElementItemRequirementsElement {
    u32 Id;
    u32 Amount;
};

struct NpcSuperUpgradeUpgradesElementReputationCostsElement {
    u32 Id;
    u32 Cost;
};

struct NpcSuperUpgradeUpgradesElement {
    u32 Level;
    NpcSuperUpgradeUpgradesElementItemRequirementsElement ItemRequirements[4];
    u32 Money;
    NpcSuperUpgradeUpgradesElementReputationCostsElement ReputationCosts[4];
};

struct NpcSuperUpgradeRow {
    u32 Id;
    char16 Name[32];
    NpcSuperUpgradeUpgradesElement Upgrades[6];
};

struct RunesFixedAddonsElement {
    u32 Id;
    float Prop;
};

struct RunesRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PathIdShowGfx;
    u32 Level;
    char16 ShowLevel[16];
    u32 PackIndex;
    RunesFixedAddonsElement FixedAddons[4];
    u32 RandomAddons[4];
    u32 RemovalAuxItems[2];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct EquipmentExchangeAuxillaryItemsElement {
    u32 Id;
    u32 Amount;
};

struct EquipmentExchangeRow {
    u32 Id;
    char16 Name[32];
    u32 GenItemId;
    u32 GenItemLvl;
    u32 MainItemId;
    u32 MainItemLevel;
    EquipmentExchangeAuxillaryItemsElement AuxillaryItems[3];
    float SuccessRate;
    u32 Fee;
};

struct NpcTalkServiceRow {
    u32 Id;
    char16 Name[32];
    u32 DialogueId;
};

struct NpcSellServiceShopTabElement {
    char16 Title[8];
    u32 Items[48];
};

struct NpcSellServiceRow {
    u32 Id;
    char16 Name[32];
    NpcSellServiceShopTabElement ShopTab[8];
    u32 DialogueId;
};

struct NpcBuyServiceRow {
    u32 Id;
    char16 Name[32];
    u32 DialogueId;
};

struct NpcReceiveQuestRow {
    u32 Id;
    char16 Name[32];
    u32 Tasks[256];
};

struct NpcActivateQuestRow {
    u32 Id;
    char16 Name[32];
    u32 TaskSet;
    u32 Tasks[256];
};

struct NpcTaskMatterServiceTasksElementItemsElement {
    u32 Id;
    u32 Amount;
};

struct NpcTaskMatterServiceTasksElement {
    u32 Id;
    NpcTaskMatterServiceTasksElementItemsElement Items[4];
};

struct NpcTaskMatterServiceRow {
    u32 Id;
    char16 Name[32];
    NpcTaskMatterServiceTasksElement Tasks[16];
};

struct NpcHealServiceRow {
    u32 Id;
    char16 Name[32];
    u32 DialogueId;
};

struct NpcTransmitServiceTeleportLocationsElement {
    u32 WorldId;
    char16 Name[16];
    float X;
    float Y;
    float Z;
    u32 Fee;
    u32 RequiredLevel;
};

struct NpcTransmitServiceRow {
    u32 Id;
    char16 Name[32];
    NpcTransmitServiceTeleportLocationsElement TeleportLocations[16];
    u32 DialogueId;
};

struct NpcProxyServiceRow {
    u32 Id;
    char16 Name[32];
    u32 DialogueId;
};

struct NpcStorageServiceRow {
    u32 Id;
    char16 Name[32];
};

struct NpcTypeRow {
    u32 Id;
    char16 Name[32];
};

struct NpcRow {
    u32 Id;
    char16 Name[32];
    u32 Unknown1;
    u32 Unknown2;
    u32 Unknown3;
    u32 Unknown4;
    u32 Unknown5;
    char16 HelloMsg[256];
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
    u32 Unknown20;
    u32 Unknown21;
    u32 Unknown22;
    u32 Unknown23;
    u32 Unknown24;
    u32 Unknown25;
    u32 Unknown26;
    u32 Unknown27;
    u32 Unknown28;
    u32 Unknown29;
    u32 Unknown30;
    u32 Unknown31;
    u32 Unknown32;
    u32 Unknown33;
    u32 Unknown34;
    u32 Unknown35;
    u32 Unknown36;
    u32 Unknown37;
    u32 Unknown38;
    u32 Unknown39;
    u32 Unknown40;
};

struct RecipeTypeRow {
    u32 Id;
    char16 Name[32];
};

struct RecipeSubTypeRow {
    u32 Id;
    char16 Name[32];
};

struct RecipeItemChanceElement {
    float Probability;
    u32 Item;
    u32 MinimumAmount;
    u32 MaximumAmount;
};

struct RecipeItemsElement {
    u32 Id;
    u32 Amount;
};

struct RecipeRequirementsElement {
    u32 Id;
    u32 Amount;
};

struct RecipeProducedItemsElement {
    u32 Id;
    u32 Amount;
};

struct RecipeRow {
    u32 Id;
    u32 Type;
    u32 SubType;
    char16 Name[32];
    u32 Level;
    RecipeItemChanceElement ItemChance[3];
    u32 Price;
    float Duration;
    u32 Cycle;
    u32 Times;
    RecipeItemsElement Items[6];
    u32 ProduceType;
    RecipeRequirementsElement Requirements[3];
    char16 Action[16];
    RecipeProducedItemsElement ProducedItems[3];
};

struct EnemyFactionRow {
    u8 Unknown[196];
};

struct CharacterClassConfigRow {
    u32 Id;
    char16 Name[32];
    u32 ClassId;
    u32 Faction;
    u32 EnemyFaction;
    u32 LevelRequirement;
    u32 SectMask;
    u32 Level;
    u32 AttackSkill;
    float AttackRange;
    float PetRank;
    u32 PetAdapt;
    u32 Hp;
    u32 Mp;
    u32 Anger;
    u32 Vp;
    u32 Faint;
    u32 PhysicalDamage;
    u32 MagicalDamage;
    u32 PhysicalDefense;
    u32 MagicalDefense;
    u32 Attack;
    u32 Armor;
    float PhysicalCritRate;
    float PhysicalCritDamage;
    float MagicalCritRate;
    float MagicalCritDamage;
    u32 AntiPhysical;
    u32 AntiGold;
    u32 AntiWood;
    u32 AntiWater;
    u32 AntiFire;
    u32 AntiEarth;
    u32 AntiNone;
    u32 Vitality;
    u32 Intelligence;
    u32 Strength;
    u32 Agility;
    u32 P5th;
    float LevelupPetAdapt;
    float LevelupPetRank;
    float LevelupHp;
    float LevelupMp;
    float LevelupAnger;
    float LevelupVp;
    float LevelupFaint;
    float LevelupPhysicalDamage;
    float LevelupMagicalDamage;
    float LevelupPhysicalDefense;
    float LevelupMagicalDefense;
    float LevelupAttack;
    float LevelupArmor;
    float LevelupPhysicalCritRate;
    float LevelupPhysicalCritDamage;
    float LevelupMagicalCritRate;
    float LevelupMagicalCritDamage;
    float LevelupAntiPhysical;
    float LevelupAntiGold;
    float LevelupAntiWood;
    float LevelupAntiWater;
    float LevelupAntiFire;
    float LevelupAntiEarth;
    float LevelupAntiNone;
    float WalkSpeed;
    float RunSpeed;
    float RidingSpeed;
    u32 HpGeneration[4];
    u32 MpGeneration[4];
    u32 AngerGeneration[2];
    u32 VpGenerationTime;
    float VpGenerationSpeed;
    u32 FaintGenerationTime;
    float FaintGenerationSpeed;
    u32 PlayerStatusPointId;
    u32 CharacterComboId;
    u32 P6th;
    u32 P7th;
    u32 P8th;
    u32 P9th;
    u32 P10th;
    u32 AntiGold2;
    u32 AntiWood2;
    u32 AntiWater2;
    u32 AntiFire2;
    u32 AntiEarth2;
    u32 AntiPhysical2;
    u32 AntiNone2;
    float AntiPhysicalCritRate2;
    float AntiPhysicalCritDamage2;
    float AntiMagicalCritRate2;
    float AntiMagicalCritDamage2;
    float PoisonRate;
    float InjureRate;
    float StunRate;
    float SleepRate;
    float ImmobiliseRate;
    float SlowRate;
    float SilenceRate;
    float BlindRate;
    float WeakenRate;
    float ImmunityRate;
    float BeatbackRate;
    float ReserveRate;
    float AntiPoisonRate;
    float AntiInjureRate;
    float AntiStunRate;
    float AntiSleepRate;
    float AntiImmobiliseRate;
    float AntiSlowRate;
    float AntiSilenceRate;
    float AntiBlindRate;
    float AntiWeakenRate;
    float AntiImmunityRate;
    float AntiBeatbackRate;
    float AntiReserveRate;
    float LevelupAntiGold2;
    float LevelupAntiWood2;
    float LevelupAntiWater2;
    float LevelupAntiFire2;
    float LevelupAntiEarth2;
    float LevelupAntiPhysical2;
    float LevelupAntiNone2;
    float LevelupAntiPhysicalCritRate;
    float LevelupAntiPhysicalCritDamage;
    float LevelupAntiMagicalCritRate;
    float LevelupAntiMagicalCritDamage;
    float LevelupPoisonRate;
    float LevelupInjureRate;
    float LevelupStunRate;
    float LevelupSleepRate;
    float LevelupImmobiliseRate;
    float LevelupSlowRate;
    float LevelupSilenceRate;
    float LevelupBlindRate;
    float LevelupWeakenRate;
    float LevelupImmunityRate;
    float LevelupBeatbackRate;
    float LevelupReserveRate;
    float LevelupAntiPoisonRate;
    float LevelupAntiInjureRate;
    float LevelupAntiStunRate;
    float LevelupAntiSleepRate;
    float LevelupAntiImmobiliseRate;
    float LevelupAntiSlowRate;
    float LevelupAntiSilenceRate;
    float LevelupAntiBlindRate;
    float LevelupAntiWeakenRate;
    float LevelupAntiImmunityRate;
    float LevelupAntiBeatbackRate;
    float LevelupAntiReserveRate;
};

struct ParamAdjustConfigLevelDifferenceAdjustmentsElement {
    u32 LevelDifference;
    float ExperienceAdjustment;
    float MoneyAdjustment;
    float ItemDropAdjustment;
    float AttackAdjustment;
};

struct ParamAdjustConfigProduceLevelDifferenceAdjustmentsElement {
    u32 LevelDifference;
    float ExperienceAdjustment;
};

struct ParamAdjustConfigRow {
    u32 Id;
    char16 Name[32];
    ParamAdjustConfigLevelDifferenceAdjustmentsElement LevelDifferenceAdjustments[16];
    float TeamAdjustments[11];
    float ProfessionTeamAdjustments[9];
    ParamAdjustConfigProduceLevelDifferenceAdjustmentsElement ProduceLevelDifferenceAdjustments[9];
    float PetCaptureAdjustments[16];
    u32 PetFightWinnerScores[16];
    u32 PetFightLoserScores[16];
};

struct TaskDiceEssenceTaskListsElement {
    u32 Id;
    float Probability;
};

struct TaskDiceEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    TaskDiceEssenceTaskListsElement TaskLists[32];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct TaskNormalMatterEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PackIndex;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct MineTypeRow {
    u32 Id;
    char16 Name[32];
};

struct MineEssenceMaterialsElement {
    u32 Id;
    float Probability;
};

struct MineEssenceQuantityObtainedElement {
    u32 Quantity;
    float Probability;
};

struct MineEssenceNpcSpawnsElement {
    u32 MonsterId;
    u32 Quantity;
    float Radius;
};

struct MineEssenceMineRltElement {
    u32 Faction;
    u32 OpenControls[4];
    u32 CloseControls[4];
};

struct MineEssenceRow {
    u32 Id;
    u32 Type;
    char16 Name[32];
    u32 Level;
    u32 LevelRequirement;
    u32 ToolRequirement;
    u32 DestroyTool;
    u32 MinimumTime;
    u32 MaximumTime;
    u32 Experience;
    u32 Skillpoints;
    u32 PathIdMatter;
    MineEssenceMaterialsElement Materials[16];
    MineEssenceQuantityObtainedElement QuantityObtained[2];
    u32 TaskIn;
    u32 TaskOut;
    u32 Uninterruptable;
    MineEssenceNpcSpawnsElement NpcSpawns[4];
    u32 AggressiveMonsterFaction;
    float AggressiveMonsterRadius;
    u32 AggressiveMonsterQuantity;
    u32 WarRole;
    u32 Permanent;
    u32 ActivationControllerMode;
    u32 ActivationControllers[4];
    u32 DeactivationControllerMode;
    u32 DeactivationControllers[4];
    char16 Action[16];
    char16 DisplayedType[256];
    u32 IsMultiple;
    u32 RecipeId;
    float PropElimination;
    u32 PathIdOccupyIcon;
    MineEssenceMineRltElement MineRlt[4];
    u32 Faction;
    u32 IsCenterMine;
    u32 OnlyByHost;
};

struct GmGeneratorTypeRow {
    u32 Id;
    char16 Name[32];
};

struct GmGeneratorRow {
    u8 Unknown[92];
};

struct FireworksEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 PathIdFirework;
    u32 Level;
    u32 FireDuration;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PlayerLevelExperienceConfigProductionExperienceGainedElement {
    float Experience[10];
};

struct PlayerLevelExperienceConfigLevelExperience2Element {
    double Experience[200];
};

struct PlayerLevelExperienceConfigRow {
    u32 Id;
    char16 Name[32];
    double LevelExperience[200];
    u32 TalismanExperience[100];
    float ProductionExperienceRequirement[10];
    PlayerLevelExperienceConfigProductionExperienceGainedElement ProductionExperienceGained[10];
    PlayerLevelExperienceConfigLevelExperience2Element LevelExperience2[12];
    double PetExperience[200];
};

struct NpcWarTowerBuildServiceRow {
    u8 Unknown[148];
};

struct PlayerSecondLevelRow {
    u8 Unknown[1092];
};

struct NpcResetPropServiceItemRequirementsElement {
    u32 Id;
    u32 ResetPropType;
};

struct NpcResetPropServiceRow {
    u32 Id;
    char16 Name[32];
    NpcResetPropServiceItemRequirementsElement ItemRequirements[6];
};

struct EstoneEssenceEffectsElement {
    u32 EquipMask;
    u32 AddonType;
};

struct EstoneEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    EstoneEssenceEffectsElement Effects[4];
    u32 Price;
    u32 ShopPrice;
    float Rank;
    u32 StackSize;
    u32 Proctype;
};

struct PstoneEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Type;
    u32 EquipMask;
    u32 Addons[5];
    u32 Price;
    u32 ShopPrice;
    float Rank;
    u32 StackSize;
    u32 Proctype;
};

struct SstoneEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 EquipMask;
    u32 SkillId;
    u32 SkillLevel;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct StatusPointPropConfigRow {
    u32 Id;
    char16 Name[32];
    u32 StatusPointType;
    float AdjustGold;
    float AdjustWood;
    float AdjustWater;
    float AdjustFire;
    float AdjustEarth;
    float AdjustNone;
    float AdjustPhysical;
    float PetAdaptation;
    float PetRank;
    float Hp;
    float Mp;
    float Vp;
    float Faint;
    float PhysicalDamage;
    float MagicalDamage;
    float PhysicalDefense;
    float MagicalDefense;
    float Attack;
    float Armor;
    float PhysicalCritRate;
    float PhysicalCritDamage;
    float MagicalCritRate;
    float MagicalCritDamage;
    float WalkSpeed;
    float RunSpeed;
    float RidingSpeed;
    float HpGeneration[4];
    float MpGeneration[4];
};

struct PlayerStatusPointConfigRow {
    u32 Id;
    char16 Name[32];
    u32 StatusPoints[200];
};

struct RecipeRollTypeRow {
    u32 Id;
    char16 Name[32];
};

struct RecipeRollSubTypeRow {
    u32 Id;
    char16 Name[32];
};

struct RecipeRollEssenceRow {
    u32 Id;
    u32 Type;
    u32 SubType;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 RecipeId;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct SuiteRow {
    u8 Unknown[312];
};

struct DoubleExperienceEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 TypeMask;
    float Coefficient;
    u32 Duration;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct DestroyingEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct NpcEquipBindServiceRow {
    u32 Id;
    char16 Name[32];
    u32 RequiredItem;
    u32 Price;
};

struct NpcEquipDestroyServiceRow {
    u32 Id;
    char16 Name[32];
    u32 RequiredItem;
    u32 Price;
};

struct NpcEquipUndestroyServiceRow {
    u32 Id;
    char16 Name[32];
    u32 RequiredItem;
    u32 Price;
};

struct BirthSkillResetServiceRow {
    u32 Id;
    char16 Name[32];
    u32 RequiredItems[6];
};

struct SkillMatterEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 LevelRequirement;
    u32 SkillId;
    u32 SkillLevel;
    u32 WarOnly;
    u32 CooldownTypeMask;
    u32 CooldownTime;
    u32 Permanent;
    u32 CastSkill;
    u32 TargetId;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct VehicleEssenceAddonsElement {
    u32 Id;
    u32 Level;
};

struct VehicleEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdModel;
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 LevelRequirement;
    u32 WarOnly;
    float Speed;
    float Height;
    char16 Action[16];
    u32 CanAttack;
    VehicleEssenceAddonsElement Addons[5];
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct CoupleTeleportEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct LotteryEssenceCandidatesElement {
    char16 Description[16];
    u32 PatternId;
    u32 Icon;
};

struct LotteryEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 DiceCount;
    u32 ItemConsumption;
    u32 ExtraAward;
    LotteryEssenceCandidatesElement Candidates[32];
    u32 IndexFace;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct CamRecorderEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct TitlePropConfigRow {
    u32 Id;
    char16 Name[32];
    u32 Title;
    u32 Addons[3];
};

struct SpecialIdConfigRow {
    u32 Id;
    char16 Name[32];
    u32 Version;
    float MonsterDropProbability;
    u32 MoneyMatterId;
    u32 SpeakerId;
    u32 DestroyingMatterId;
    u32 TownScrollId;
    u32 AttackerDroptableId;
    u32 DefenderDroptableId;
    u32 TalismanResetMatterId;
    u32 TalismanMergeFee;
    u32 TalismanEnchantFee;
    u32 PetAdoptionFee;
    u32 PetIdentificationFee;
    u32 PetRessurectionFee;
    u32 PetRebornFee;
    u32 PlayerKillTranValue;
    float PlayerKillTranPositionX;
    float PlayerKillTranPositionY;
    float PlayerKillTranPositionZ;
    u32 PlayerKillCurseId;
    u32 PetAdoptionScroll;
    u32 PetIdentificationScrolls[5];
    u32 PetRevivalScroll;
    u32 PetBagExpansionId;
    u32 PetSkillExpansionId;
    u32 PetQuantityExpansionId;
    u32 PetBindId;
    u32 PetCombineQuantityExpansionId;
    u32 PetSkillForgetId;
    u32 PetRenameFee;
    u32 PetFoodFee;
    u32 PetMergeFee;
    u32 PetBineFee;
    u32 PetMarriageFee;
    u32 PetFoodId;
    u32 PetMergeId;
    u32 PetMarriageId;
    u32 SpecialPackItems[4];
    u32 FastSummonItem[2];
    u32 FastCombineItem[2];
    u32 SpeakerLevelNumConfigId;
    u32 SpeakerNumMoneyConfigId;
    u32 BirthSkillCandidateConfigId;
    u32 GardenItemExchangeConfigId;
    u32 CarryonBaguaConsumeId;
};

struct TextFireworksRow {
    u8 Unknown[616];
};

struct TalismanMainPartRow {
    u8 Unknown[200];
};

struct TalismanExperienceFoodRow {
    u8 Unknown[96];
};

struct TalismanMergeCatalystRow {
    u8 Unknown[92];
};

struct TalismanEnergyFoodRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 Energy;
    u32 MinimumEnergyConsumed;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct SpeakerEssenceRow {
    u32 Id;
    char16 Name[32];
    u32 PathIdMatter;
    u32 PathIdIcon;
    u32 IconSetId;
    u32 Price;
    u32 ShopPrice;
    u32 StackSize;
    u32 Proctype;
};

struct PlayerTalentConfigRow {
    u32 Id;
    char16 Name[32];
    u32 TalentPoints[200];
};

struct ItemTradeConfigShopTabElementItemsElementRequiredItemsElement {
    u32 Id;
    u32 Quantity;
};

struct ItemTradeConfigShopTabElementItemsElementRequiredReputationElement {
    u32 Id;
    u32 Quantity;
};

struct ItemTradeConfigShopTabElementItemsElement {
    u32 Id;
    ItemTradeConfigShopTabElementItemsElementRequiredItemsElement RequiredItems[2];
    ItemTradeConfigShopTabElementItemsElementRequiredReputationElement RequiredReputation[2];
};

struct ItemTradeConfigShopTabElement {
    char16 Title[8];
    ItemTradeConfigShopTabElementItemsElement Items[48];
};

struct ItemTradeConfigRow {
    u32 Id;
    char16 Name[32];
    ItemTradeConfigShopTabElement ShopTab[4];
    u32 DialogueId;
};

struct InstanceConfigSidesElementRespawnHoldsElement {
    u32 RespawnId;
    u32 RespawnIncomingSpeed;
};

struct InstanceConfigSidesElement {
    u32 MaxPlayers;
    u32 StartingPlayerQuantity;
    u32 ClosingPlayerQuantity;
    u32 MinimumLevelRequirement;
    u32 MaxLevelRequirement;
    u32 MaxProfPlayers;
    u32 RequiredCamp;
    u32 RequiredItem;
    u32 RequiredMoney;
    u32 InitialSpawnPosition;
    u32 DefenseRevivePosition;
    u32 RevivePositions[8];
    u32 DummyMonster;
    u32 DummyLoot;
    u32 Tasks[5];
    u32 WinKillMonster;
    u32 WinRespawnPoint;
    u32 WinScorePoint;
    InstanceConfigSidesElementRespawnHoldsElement RespawnHolds[16];
    u32 WinRewardId;
    u32 LoseRewardId;
    u32 DrawRewardId;
    float StartAreaMinimums[3];
    float StartAreaMaximums[3];
    u32 BattlePointTaskAwards[10];
    u32 BattlePoints[10];
    u32 InitiateBattlePoint;
    u32 FailBattlePoint;
    u32 RequiredReputationId;
    u32 RequiredReputationAmount;
    u32 BaseReputationDecay;
};

struct InstanceConfigRow {
    u32 Id;
    char16 Name[32];
    u32 PvpType;
    u32 WorldIndex;
    u32 InstanceDuration;
    u32 InstanceReviveDuration;
    u32 MaxCopyQuantity;
    u32 InProgressJoin;
    u32 ZeroPlayerTime;
    u32 MinimumPlayerQuantity;
    u32 MinimumPlayerTime;
    u32 PlayType;
    u32 MonsterLevelAdjustment;
    u32 WinDefenseTime;
    u32 PveLoss;
    u32 GlobalControllerId;
    u32 ControllerPreparationId;
    u32 ControllerBeginId;
    u32 ControllerEndId;
    u32 ScoreTasks[5];
    u32 ScoreAwards[5];
    u32 MaxSpectatorQuantity;
    u32 SpectatorItemId;
    u32 NoSpectatorMinimumX;
    u32 NoSpectatorMinimumY;
    u32 NoSpectatorMinimumZ;
    u32 NoSpectatorMaximumX;
    u32 NoSpectatorMaximumY;
    u32 NoSpectatorMaximumZ;
    InstanceConfigSidesElement Sides[2];
    u32 WaitTime;
    u32 BalancePopulation;
    u32 AutoAssignSide;
    float PopulationRatio;
    u32 TeamMode;
    u32 FamilyMode;
    u32 FactionMode;
};

struct EquipmentRandomAddonsGroupsAddonsElement {
    u32 Id;
    float Probability;
};

struct EquipmentRandomAddonsGroupsRow {
    u32 Id;
    char16 Name[32];
    EquipmentRandomAddonsGroupsAddonsElement Addons[48];
};

struct NpcProfessionDemotionServiceItemsElement {
    u32 Id;
    float ReturnPerItem;
};

struct NpcProfessionDemotionServiceRow {
    u32 Id;
    char16 Name[32];
    u32 RequiredProfessionMask;
    u32 TransformProfessionMask;
    NpcProfessionDemotionServiceItemsElement Items[8];
    u32 Price;
    u32 ReputationId;
    u32 ReputationValue;
};

struct NpcTalkResponseNode {
    u32 Unknown1;
    char16 Content[64];
    u32 Unknown2
};

struct NpcTalkChildNode {
    u32 ID;
    RGBA8 TextColor;
    u32 ContentLength;
    char16 Content[ContentLength];
    u32 ChildCount;
    NpcTalkResponseNode Response[ChildCount];
};

struct NpcTalkRootNode {
    u32 ID;
    char16 Description[64];
    u32 ChildCount;
    NpcTalkChildNode Children[ChildCount];
};

struct NpcTalkTree {
    u32 ChildCount;
    NpcTalkRootNode Root[ChildCount];
};

struct EquipmentAddons {
    SheetMeta Meta;
    EquipmentAddonsRow Rows[Meta.RowCount];
};

struct EquipmentType {
    SheetMeta Meta;
    EquipmentTypeRow Rows[Meta.RowCount];
};

struct EquipmentSubType {
    SheetMeta Meta;
    EquipmentSubTypeRow Rows[Meta.RowCount];
};

struct Equipment {
    SheetMeta Meta;
    EquipmentRow Rows[Meta.RowCount];
};

struct PotionType {
    SheetMeta Meta;
    PotionTypeRow Rows[Meta.RowCount];
};

struct PotionSubtype {
    SheetMeta Meta;
    PotionSubtypeRow Rows[Meta.RowCount];
};

struct Potion {
    SheetMeta Meta;
    PotionRow Rows[Meta.RowCount];
};

struct MaterialType {
    SheetMeta Meta;
    MaterialTypeRow Rows[Meta.RowCount];
};

struct MaterialSubType {
    SheetMeta Meta;
    MaterialSubTypeRow Rows[Meta.RowCount];
};

struct Material {
    SheetMeta Meta;
    MaterialRow Rows[Meta.RowCount];
};

struct RefineTicket {
    SheetMeta Meta;
    RefineTicketRow Rows[Meta.RowCount];
};

struct SkillTomeType {
    SheetMeta Meta;
    SkillTomeTypeRow Rows[Meta.RowCount];
};

struct SkillTome {
    SheetMeta Meta;
    SkillTomeRow Rows[Meta.RowCount];
};

struct TeleportScroll {
    SheetMeta Meta;
    TeleportScrollRow Rows[Meta.RowCount];
};

struct LuckyScroll {
    SheetMeta Meta;
    LuckyScrollRow Rows[Meta.RowCount];
};

struct TownScroll {
    SheetMeta Meta;
    TownScrollRow Rows[Meta.RowCount];
};

struct RevivalScroll {
    SheetMeta Meta;
    RevivalScrollRow Rows[Meta.RowCount];
};

struct TaskItems {
    SheetMeta Meta;
    TaskItemsRow Rows[Meta.RowCount];
};

struct DroptableType {
    SheetMeta Meta;
    DroptableTypeRow Rows[Meta.RowCount];
};

struct Droptable {
    SheetMeta Meta;
    DroptableRow Rows[Meta.RowCount];
};

struct MonsterType {
    SheetMeta Meta;
    MonsterTypeRow Rows[Meta.RowCount];
};

struct Monster {
    SheetMeta Meta;
    MonsterRow Rows[Meta.RowCount];
};

struct EquipmentUpgrade {
    SheetMeta Meta;
    EquipmentUpgradeRow Rows[Meta.RowCount];
};

struct Aircraft {
    SheetMeta Meta;
    AircraftRow Rows[Meta.RowCount];
};

struct ChangeShape {
    SheetMeta Meta;
    ChangeShapeRow Rows[Meta.RowCount];
};

struct SummonMonster {
    SheetMeta Meta;
    SummonMonsterRow Rows[Meta.RowCount];
};

struct PetBadge {
    SheetMeta Meta;
    PetBadgeRow Rows[Meta.RowCount];
};

struct PetFood {
    SheetMeta Meta;
    PetFoodRow Rows[Meta.RowCount];
};

struct PetSkills {
    SheetMeta Meta;
    PetSkillsRow Rows[Meta.RowCount];
};

struct PetArmor {
    SheetMeta Meta;
    PetArmorRow Rows[Meta.RowCount];
};

struct MergeRecipe {
    SheetMeta Meta;
    MergeRecipeRow Rows[Meta.RowCount];
};

struct NpcHotelService {
    SheetMeta Meta;
    NpcHotelServiceRow Rows[Meta.RowCount];
};

struct ProduceTypeConfig {
    SheetMeta Meta;
    ProduceTypeConfigRow Rows[Meta.RowCount];
};

struct NpcLearnProductionSkills {
    SheetMeta Meta;
    NpcLearnProductionSkillsRow Rows[Meta.RowCount];
};

struct AiHelper {
    SheetMeta Meta;
    AiHelperRow Rows[Meta.RowCount];
};

struct PetProduction {
    SheetMeta Meta;
    PetProductionRow Rows[Meta.RowCount];
};

struct PetMeld {
    SheetMeta Meta;
    PetMeldRow Rows[Meta.RowCount];
};

struct ChangeRecover {
    SheetMeta Meta;
    ChangeRecoverRow Rows[Meta.RowCount];
};

struct HatcherType {
    SheetMeta Meta;
    HatcherTypeRow Rows[Meta.RowCount];
};

struct Hatchers {
    SheetMeta Meta;
    HatchersRow Rows[Meta.RowCount];
};

struct Books {
    SheetMeta Meta;
    BooksRow Rows[Meta.RowCount];
};

struct SpecialSpeakers {
    SheetMeta Meta;
    SpecialSpeakersRow Rows[Meta.RowCount];
};

struct Gardens {
    SheetMeta Meta;
    GardensRow Rows[Meta.RowCount];
};

struct GardenOrnaments {
    SheetMeta Meta;
    GardenOrnamentsRow Rows[Meta.RowCount];
};

struct Seeds {
    SheetMeta Meta;
    SeedsRow Rows[Meta.RowCount];
};

struct Fruits {
    SheetMeta Meta;
    FruitsRow Rows[Meta.RowCount];
};

struct PetboxExpListConfig {
    SheetMeta Meta;
    PetboxExpListConfigRow Rows[Meta.RowCount];
};

struct GardenTools {
    SheetMeta Meta;
    GardenToolsRow Rows[Meta.RowCount];
};

struct GardenFunction {
    SheetMeta Meta;
    GardenFunctionRow Rows[Meta.RowCount];
};

struct GardenAwards {
    SheetMeta Meta;
    GardenAwardsRow Rows[Meta.RowCount];
};

struct SpeakerLevelAmount {
    SheetMeta Meta;
    SpeakerLevelAmountRow Rows[Meta.RowCount];
};

struct SpeakNumMoney {
    SheetMeta Meta;
    SpeakNumMoneyRow Rows[Meta.RowCount];
};

struct BirthskillReset {
    SheetMeta Meta;
    BirthskillResetRow Rows[Meta.RowCount];
};

struct BirthskillCandidate {
    SheetMeta Meta;
    BirthskillCandidateRow Rows[Meta.RowCount];
};

struct UpgradeTransfer {
    SheetMeta Meta;
    UpgradeTransferRow Rows[Meta.RowCount];
};

struct GardenExchangeConfig {
    SheetMeta Meta;
    GardenExchangeConfigRow Rows[Meta.RowCount];
};

struct RuneCombinationConfig {
    SheetMeta Meta;
    RuneCombinationConfigRow Rows[Meta.RowCount];
};

struct NpcSuperUpgrade {
    SheetMeta Meta;
    NpcSuperUpgradeRow Rows[Meta.RowCount];
};

struct Runes {
    SheetMeta Meta;
    RunesRow Rows[Meta.RowCount];
};

struct EquipmentExchange {
    SheetMeta Meta;
    EquipmentExchangeRow Rows[Meta.RowCount];
};

struct NpcTalkService {
    SheetMeta Meta;
    NpcTalkServiceRow Rows[Meta.RowCount];
};

struct NpcSellService {
    SheetMeta Meta;
    NpcSellServiceRow Rows[Meta.RowCount];
};

struct NpcBuyService {
    SheetMeta Meta;
    NpcBuyServiceRow Rows[Meta.RowCount];
};

struct NpcReceiveQuest {
    SheetMeta Meta;
    NpcReceiveQuestRow Rows[Meta.RowCount];
};

struct NpcActivateQuest {
    SheetMeta Meta;
    NpcActivateQuestRow Rows[Meta.RowCount];
};

struct NpcTaskMatterService {
    SheetMeta Meta;
    NpcTaskMatterServiceRow Rows[Meta.RowCount];
};

struct NpcHealService {
    SheetMeta Meta;
    NpcHealServiceRow Rows[Meta.RowCount];
};

struct NpcTransmitService {
    SheetMeta Meta;
    NpcTransmitServiceRow Rows[Meta.RowCount];
};

struct NpcProxyService {
    SheetMeta Meta;
    NpcProxyServiceRow Rows[Meta.RowCount];
};

struct NpcStorageService {
    SheetMeta Meta;
    NpcStorageServiceRow Rows[Meta.RowCount];
};

struct NpcType {
    SheetMeta Meta;
    NpcTypeRow Rows[Meta.RowCount];
};

struct Npc {
    SheetMeta Meta;
    NpcRow Rows[Meta.RowCount];
};

struct RecipeType {
    SheetMeta Meta;
    RecipeTypeRow Rows[Meta.RowCount];
};

struct RecipeSubType {
    SheetMeta Meta;
    RecipeSubTypeRow Rows[Meta.RowCount];
};

struct Recipe {
    SheetMeta Meta;
    RecipeRow Rows[Meta.RowCount];
};

struct EnemyFaction {
    SheetMeta Meta;
    EnemyFactionRow Rows[Meta.RowCount];
};

struct CharacterClassConfig {
    SheetMeta Meta;
    CharacterClassConfigRow Rows[Meta.RowCount];
};

struct ParamAdjustConfig {
    SheetMeta Meta;
    ParamAdjustConfigRow Rows[Meta.RowCount];
};

struct TaskDiceEssence {
    SheetMeta Meta;
    TaskDiceEssenceRow Rows[Meta.RowCount];
};

struct TaskNormalMatterEssence {
    SheetMeta Meta;
    TaskNormalMatterEssenceRow Rows[Meta.RowCount];
};

struct MineType {
    SheetMeta Meta;
    MineTypeRow Rows[Meta.RowCount];
};

struct MineEssence {
    SheetMeta Meta;
    MineEssenceRow Rows[Meta.RowCount];
};

struct GmGeneratorType {
    SheetMeta Meta;
    GmGeneratorTypeRow Rows[Meta.RowCount];
};

struct GmGenerator {
    SheetMeta Meta;
    GmGeneratorRow Rows[Meta.RowCount];
};

struct FireworksEssence {
    SheetMeta Meta;
    FireworksEssenceRow Rows[Meta.RowCount];
};

struct PlayerLevelExperienceConfig {
    SheetMeta Meta;
    PlayerLevelExperienceConfigRow Rows[Meta.RowCount];
};

struct NpcWarTowerBuildService {
    SheetMeta Meta;
    NpcWarTowerBuildServiceRow Rows[Meta.RowCount];
};

struct PlayerSecondLevel {
    SheetMeta Meta;
    PlayerSecondLevelRow Rows[Meta.RowCount];
};

struct NpcResetPropService {
    SheetMeta Meta;
    NpcResetPropServiceRow Rows[Meta.RowCount];
};

struct EstoneEssence {
    SheetMeta Meta;
    EstoneEssenceRow Rows[Meta.RowCount];
};

struct PstoneEssence {
    SheetMeta Meta;
    PstoneEssenceRow Rows[Meta.RowCount];
};

struct SstoneEssence {
    SheetMeta Meta;
    SstoneEssenceRow Rows[Meta.RowCount];
};

struct StatusPointPropConfig {
    SheetMeta Meta;
    StatusPointPropConfigRow Rows[Meta.RowCount];
};

struct PlayerStatusPointConfig {
    SheetMeta Meta;
    PlayerStatusPointConfigRow Rows[Meta.RowCount];
};

struct RecipeRollType {
    SheetMeta Meta;
    RecipeRollTypeRow Rows[Meta.RowCount];
};

struct RecipeRollSubType {
    SheetMeta Meta;
    RecipeRollSubTypeRow Rows[Meta.RowCount];
};

struct RecipeRollEssence {
    SheetMeta Meta;
    RecipeRollEssenceRow Rows[Meta.RowCount];
};

struct Suite {
    SheetMeta Meta;
    SuiteRow Rows[Meta.RowCount];
};

struct DoubleExperienceEssence {
    SheetMeta Meta;
    DoubleExperienceEssenceRow Rows[Meta.RowCount];
};

struct DestroyingEssence {
    SheetMeta Meta;
    DestroyingEssenceRow Rows[Meta.RowCount];
};

struct NpcEquipBindService {
    SheetMeta Meta;
    NpcEquipBindServiceRow Rows[Meta.RowCount];
};

struct NpcEquipDestroyService {
    SheetMeta Meta;
    NpcEquipDestroyServiceRow Rows[Meta.RowCount];
};

struct NpcEquipUndestroyService {
    SheetMeta Meta;
    NpcEquipUndestroyServiceRow Rows[Meta.RowCount];
};

struct BirthSkillResetService {
    SheetMeta Meta;
    BirthSkillResetServiceRow Rows[Meta.RowCount];
};

struct SkillMatterEssence {
    SheetMeta Meta;
    SkillMatterEssenceRow Rows[Meta.RowCount];
};

struct VehicleEssence {
    SheetMeta Meta;
    VehicleEssenceRow Rows[Meta.RowCount];
};

struct CoupleTeleportEssence {
    SheetMeta Meta;
    CoupleTeleportEssenceRow Rows[Meta.RowCount];
};

struct LotteryEssence {
    SheetMeta Meta;
    LotteryEssenceRow Rows[Meta.RowCount];
};

struct CamRecorderEssence {
    SheetMeta Meta;
    CamRecorderEssenceRow Rows[Meta.RowCount];
};

struct TitlePropConfig {
    SheetMeta Meta;
    TitlePropConfigRow Rows[Meta.RowCount];
};

struct SpecialIdConfig {
    SheetMeta Meta;
    SpecialIdConfigRow Rows[Meta.RowCount];
};

struct TextFireworks {
    SheetMeta Meta;
    TextFireworksRow Rows[Meta.RowCount];
};

struct TalismanMainPart {
    SheetMeta Meta;
    TalismanMainPartRow Rows[Meta.RowCount];
};

struct TalismanExperienceFood {
    SheetMeta Meta;
    TalismanExperienceFoodRow Rows[Meta.RowCount];
};

struct TalismanMergeCatalyst {
    SheetMeta Meta;
    TalismanMergeCatalystRow Rows[Meta.RowCount];
};

struct TalismanEnergyFood {
    SheetMeta Meta;
    TalismanEnergyFoodRow Rows[Meta.RowCount];
};

struct SpeakerEssence {
    SheetMeta Meta;
    SpeakerEssenceRow Rows[Meta.RowCount];
};

struct PlayerTalentConfig {
    SheetMeta Meta;
    PlayerTalentConfigRow Rows[Meta.RowCount];
};

struct ItemTradeConfig {
    SheetMeta Meta;
    ItemTradeConfigRow Rows[Meta.RowCount];
};

struct InstanceConfig {
    SheetMeta Meta;
    InstanceConfigRow Rows[Meta.RowCount];
};

struct EquipmentRandomAddonsGroups {
    SheetMeta Meta;
    EquipmentRandomAddonsGroupsRow Rows[Meta.RowCount];
};

struct NpcProfessionDemotionService {
    SheetMeta Meta;
    NpcProfessionDemotionServiceRow Rows[Meta.RowCount];
};

struct NpcTalk {
    NpcTalkTree Tree;
};

struct Elements {
    u32 Magic;
    u32 Timestamp;
    EquipmentAddons equipmentAddons;                            // 1
    EquipmentType equipmentType;                                // 2
    EquipmentSubType equipmentSubType;                          // 3
    Equipment equipment;                                        // 4
    PotionType potionType;                                      // 5
    PotionSubtype potionSubtype;                                // 6
    Potion potion;                                              // 7
    MaterialType materialType;                                  // 8
    MaterialSubType materialSubType;                            // 9
    Material material;                                          // 10
    RefineTicket refineTicket;                                  // 11
    SkillTomeType skillTomeType;                                // 12
    SkillTome skillTome;                                        // 13
    TeleportScroll teleportScroll;                              // 14
    LuckyScroll luckyScroll;                                    // 15
    TownScroll townScroll;                                      // 16
    RevivalScroll revivalScroll;                                // 17
    TaskItems taskItems;                                        // 18
    DroptableType droptableType;                                // 19
    Droptable droptable;                                        // 20
    padding[8];
    MonsterType monsterType;                                    // 21
    Monster monster;                                            // 22
    EquipmentUpgrade equipmentUpgrade;                          // 23
    Aircraft aircraft;                                          // 24
    ChangeShape changeShape;                                    // 25
    SummonMonster summonMonster;                                // 26
    PetBadge petBadge;                                          // 27
    PetFood petFood;                                            // 28
    PetSkills petSkills;                                        // 29
    PetArmor petArmor;                                          // 30
    MergeRecipe mergeRecipe;                                    // 31
    NpcHotelService npcHotelService;                            // 32
    ProduceTypeConfig produceTypeConfig;                        // 33
    NpcLearnProductionSkills npcLearnProductionSkills;          // 34
    AiHelper aiHelper;                                          // 35
    PetProduction petProduction;                                // 36
    PetMeld petMeld;                                            // 37
    ChangeRecover changeRecover;                                // 38
    HatcherType hatcherType;                                    // 39
    Hatchers hatchers;                                          // 40
    Books books;                                                // 41
    SpecialSpeakers specialSpeakers;                            // 42
    Gardens gardens;                                            // 43
    GardenOrnaments gardenOrnaments;                            // 44
    Seeds seeds;                                                // 45
    Fruits fruits;                                              // 46
    PetboxExpListConfig petboxExpListConfig;                    // 47
    GardenTools gardenTools;                                    // 48
    GardenFunction gardenFunction;                              // 49
    GardenAwards gardenAwards;                                  // 50
    SpeakerLevelAmount speakerLevelAmount;                      // 51
    SpeakNumMoney speakNumMoney;                                // 52
    BirthskillReset birthskillReset;                            // 53
    BirthskillCandidate birthskillCandidate;                    // 54
    UpgradeTransfer upgradeTransfer;                            // 55
    GardenExchangeConfig gardenExchangeConfig;                  // 56
    RuneCombinationConfig runeCombinationConfig;                // 57
    NpcSuperUpgrade npcSuperUpgrade;                            // 58
    Runes runes;                                                // 59
    EquipmentExchange equipmentExchange;                        // 60
    padding[20];
    NpcTalkService npcTalkService;                              // 61
    NpcSellService npcSellService;                              // 62
    NpcBuyService npcBuyService;                                // 63
    NpcReceiveQuest npcReceiveQuest;                            // 64
    NpcActivateQuest npcActivateQuest;                          // 65
    NpcTaskMatterService npcTaskMatterService;                  // 66
    NpcHealService npcHealService;                              // 67
    NpcTransmitService npcTransmitService;                      // 68
    NpcProxyService npcProxyService;                            // 69
    NpcStorageService npcStorageService;                        // 70
    NpcType npcType;                                            // 71
    Npc npc;                                                    // 72
    RecipeType recipeType;                                      // 73
    RecipeSubType recipeSubType;                                // 74
    Recipe recipe;                                              // 75
    EnemyFaction enemyFaction;                                  // 76
    CharacterClassConfig characterClassConfig;                  // 77
    padding[8];         
    ParamAdjustConfig paramAdjustConfig;                        // 78
    TaskDiceEssence taskDiceEssence;                            // 79
    TaskNormalMatterEssence taskNormalMatterEssence;            // 80
    MineType mineType;                                          // 81
    MineEssence mineEssence;                                    // 82
    GmGeneratorType gmGeneratorType;                            // 83
    GmGenerator gmGenerator;                                    // 84
    FireworksEssence fireworksEssence;                          // 85
    PlayerLevelExperienceConfig playerLevelExperienceConfig;    // 86
    NpcWarTowerBuildService npcWarTowerBuildService;            // 87
    PlayerSecondLevel playerSecondLevel;                        // 88
    NpcResetPropService npcResetPropService;                    // 89
    EstoneEssence estoneEssence;                                // 90
    padding[8];
    PstoneEssence pstoneEssence;                                // 91
    SstoneEssence sstoneEssence;                                // 92
    StatusPointPropConfig statusPointPropConfig;                // 93
    PlayerStatusPointConfig playerStatusPointConfig;            // 94
    padding[94];
    RecipeRollType recipeRollType;                              // 95
    RecipeRollSubType recipeRollSubType;                        // 96
    RecipeRollEssence recipeRollEssence;                        // 97
    Suite suite;                                                // 98
    DoubleExperienceEssence doubleExperienceEssence;            // 99
    DestroyingEssence destroyingEssence;                        // 100
    NpcEquipBindService npcEquipBindService;                    // 101
    NpcEquipDestroyService npcEquipDestroyService;              // 102
    NpcEquipUndestroyService npcEquipUndestroyService;          // 103
    BirthSkillResetService birthSkillResetService;              // 104
    SkillMatterEssence skillMatterEssence;                      // 105
    VehicleEssence vehicleEssence;                              // 106
    padding[8];
    CoupleTeleportEssence coupleTeleportEssence;                // 107
    LotteryEssence lotteryEssence;                              // 108
    CamRecorderEssence camRecorderEssence;                      // 109
    TitlePropConfig titlePropConfig;                            // 110
    SpecialIdConfig specialIdConfig;                            // 111
    TextFireworks textFireworks;                                // 112
    TalismanMainPart talismanMainPart;                          // 113
    TalismanExperienceFood talismanExperienceFood;              // 114
    TalismanMergeCatalyst talismanMergeCatalyst;                // 115
    TalismanEnergyFood talismanEnergyFood;                      // 116
    SpeakerEssence speakerEssence;                              // 117
    PlayerTalentConfig playerTalentConfig;                      // 118
    padding[8];
    ItemTradeConfig itemTradeConfig;                            // 119
    InstanceConfig instanceConfig;                              // 120
    EquipmentRandomAddonsGroups equipmentRandomAddonsGroups;    // 121
    NpcProfessionDemotionService npcProfessionDemotionService;  // 122
    NpcTalk npcTalk;                                            // 123
};

Elements elements @ $;
