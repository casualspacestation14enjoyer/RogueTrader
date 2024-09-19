/obj/item/rig/unathi
	name = "\improper NT breacher chassis control module"
	desc = "A Necromundan-made Kroot battle-rig. Looks like a fish, moves like a fish, steers like a cow."
	suit_type = "\improper NT breacher rig"
	icon_state = "breacher_rig_cheap"
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
		)
	emp_protection = -20
	online_slowdown = 3
	offline_slowdown = 4
	offline_vision_restriction = TINT_BLIND

	chest_type = /obj/item/clothing/suit/space/rig/unathi
	helm_type = /obj/item/clothing/head/helmet/space/rig/unathi
	boot_type = /obj/item/clothing/shoes/magboots/rig/unathi
	glove_type = /obj/item/clothing/gloves/rig/unathi

/obj/item/rig/unathi/fancy
	name = "breacher chassis control module"
	desc = "An (outwardly) authentic Kroot breacher chassis. Huge, bulky and absurdly heavy. It must be like wearing a tank."
	suit_type = "breacher chassis"
	icon_state = "breacher_rig"
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL)
	online_slowdown = 2

/obj/item/clothing/head/helmet/space/rig/unathi
	species_restricted = list(SPECIES_KROOT)
	force = 5
	sharp = TRUE

/obj/item/clothing/suit/space/rig/unathi
	species_restricted = list(SPECIES_KROOT)

/obj/item/clothing/shoes/magboots/rig/unathi
	species_restricted = list(SPECIES_KROOT)

/obj/item/clothing/gloves/rig/unathi
	species_restricted = list(SPECIES_KROOT)
