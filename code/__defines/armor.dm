// Armor will turn attacks into less dangerous (e.g. turning cut into bruise), so keep that in mind when decided what armor value to use.
// Some levels are marked with what they intend to block in such way.

#define  ARMOR_BALLISTIC_BASIC		18
#define  ARMOR_BALLISTIC_PRIMAL		21
#define  ARMOR_BALLISTIC_FLAK		25	//Blocks some stub rounds.
#define  ARMOR_BALLISTIC_CARAPACE	30
#define  ARMOR_BALLISTIC_XENOS		32	// Blocks most autogun rounds.
#define  ARMOR_BALLISTIC_POWER_ARMOUR			38
#define  ARMOR_BALLISTIC_ASTARTES		41 // Blocks heavy autogun rounds.

#define  ARMOR_LASER_BASIC			19
#define  ARMOR_LASER_PRIMAL			23	//Blocks undercharged las shots.
#define  ARMOR_LASER_FLAK		28	//Blocks laspistols.
#define  ARMOR_LASER_CARAPACE			31
#define  ARMOR_LASER_POWER_ARMOUR			35	//Blocks lasguns.
#define  ARMOR_LASER_ASTARTES			41 // Blocks overcharged lasguns.

#define  ARMOR_MELEE_BASIC			3 // Note: consider raising all armor values by 1. Experiment by testing armor pen.
#define  ARMOR_MELEE_MINOR			4 // Heavy clothing
#define  ARMOR_MELEE_FLAK			5 // Flak armor. Machetes. Knives.
#define  ARMOR_MELEE_CARAPACE		6 // Medieval armor. Swords.
#define  ARMOR_MELEE_POWER_ARM			7 // Elite carapace. Adamantine Primitive Weapons.
#define  ARMOR_MELEE_ASTARTES		8 // Power armor. Power Blades. Chainswords.
#define  ARMOR_MELEE_PRIMARCH		9 // Astartes power armor. Astartes/Chaos Weapons.

#define  ARMOR_BIO_MINOR			15
#define  ARMOR_BIO_SMALL			35
#define  ARMOR_BIO_RESISTANT		50
#define  ARMOR_BIO_STRONG			75
#define  ARMOR_BIO_SHIELDED			99

#define  ARMOR_RAD_MINOR			30
#define  ARMOR_RAD_SMALL			45
#define  ARMOR_RAD_RESISTANT		50
#define  ARMOR_RAD_SHIELDED			99

#define  ARMOR_BOMB_MINOR			10
#define  ARMOR_BOMB_PADDED			30
#define  ARMOR_BOMB_RESISTANT		55
#define  ARMOR_BOMB_SHIELDED		65

#define  ARMOR_ENERGY_MINOR			10
#define  ARMOR_ENERGY_SMALL			25
#define  ARMOR_ENERGY_RESISTANT		40
#define  ARMOR_ENERGY_STRONG		55
#define  ARMOR_ENERGY_SHIELDED		65
