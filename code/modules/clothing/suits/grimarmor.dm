//Modular plate carriers
// Flak armor only protects limbs. Requires plate for further protection. Bodyglove accessories protect both arms/legs. Leg/Arm Guard and Plate accessories all use the same CHEST slot to avoid stacking armor.
/obj/item/clothing/suit/armor/grim
	name = "Flak Jacket"
	desc = "A lightweight flak plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_CHEST, ACCESSORY_SLOT_UTILITY, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS, ACCESSORY_SLOT_ARMOR_STORAGE, ACCESSORY_SLOT_ARMOR_MISC)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMOR_CHEST, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS, ACCESSORY_SLOT_UTILITY, ACCESSORY_SLOT_ARMOR_STORAGE)
	blood_overlay_type = "armor"
	accessories = list(/obj/item/clothing/accessory/armor_plate/padding)
	flags_inv = CLOTHING_BULKY // DO NOT USE THIS IF YOU DONT KNOW HOW PLATE CARRIER CODE WORKS
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON
	body_parts_covered = LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-8,
		laser = ARMOR_LASER_FLAK-8,
		energy = ARMOR_ENERGY_MINOR-8,
		rad = ARMOR_RAD_MINOR-10,
		bomb = ARMOR_BOMB_MINOR-8
		)

/obj/item/clothing/suit/armor/grim/light
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	accessories = list(/obj/item/clothing/accessory/armor_plate)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/grim/medium
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	accessories = list(/obj/item/clothing/accessory/armor_plate/medium, /obj/item/clothing/accessory/storage/pouches)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON


/obj/item/clothing/suit/armor/grim/flak // Make all 40k armors children of somethin else.
	name = "Mercenary Flak Armour"
	desc = "An altered fabrication of Imperial Pattern Flak Armor - this particular version is commonly used by mercenaries guilds in service to the renegade houses of the frontier."
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "merc"
	item_state = "merc"
	body_parts_covered = LEGS|ARMS
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	accessories = list(/obj/item/clothing/accessory/armor_plate/medium) // All flak armors should use plate/medium unless shoddy
	flags_inv = 0 // Change to 2048 if the sprite looks weird with other gear on.
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-6,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-6,
		rad = ARMOR_RAD_MINOR-5,
		bomb = ARMOR_BOMB_MINOR-6
		)

/obj/item/clothing/suit/armor/grim/aascout
	name = "Adeptus Astartes Scout's Carapace"
	desc = "The sturdy armour, issued to Adeptus Astartes Scouts for their service until they prove themselves worthy to become full-fledged Battlebrothers."
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "fharmor"
	item_state = "fharmor"

// SS13 PLATE SYSTEMS

/obj/item/clothing/suit/armor/grim/blue
	name = "blue plate carrier"
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	desc = "A lightweight blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_blue"

/obj/item/clothing/suit/armor/grim/green
	name = "green plate carrier"
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	desc = "A lightweight green plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_green"

/obj/item/clothing/suit/armor/grim/navy
	name = "navy plate carrier"
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	desc = "A lightweight navy blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_navy"

/obj/item/clothing/suit/armor/grim/tan
	name = "tan plate carrier"
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	desc = "A lightweight tan plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_tan"

/obj/item/clothing/suit/armor/grim/tan/tactical
	name = "tactical plate carrier"
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace, /obj/item/clothing/accessory/storage/pouches/large/tan)

/obj/item/clothing/suit/armor/grim/merc
	accessories = list(/obj/item/clothing/accessory/armor_plate/merc, /obj/item/clothing/accessory/arm_guards/merc, /obj/item/clothing/accessory/leg_guards/merc, /obj/item/clothing/accessory/storage/pouches/large)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/riot
	name = "riot vest"
	desc = "An armored vest with heavy padding to protect against melee attacks."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	icon_state = "riotcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-6,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-6,
		rad = ARMOR_RAD_MINOR-5,
		bomb = ARMOR_BOMB_MINOR-6
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.5
	siemens_coefficient = 0.5
	accessories = list(/obj/item/clothing/accessory/arm_guards/riot)

/obj/item/clothing/suit/armor/bulletproof
	name = "ballistic vest"
	desc = "An armored vest with heavy plates to protect against ballistic projectiles."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	icon_state = "ballisticcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.5
	siemens_coefficient = 0.7
	accessories = list(/obj/item/clothing/accessory/arm_guards/ballistic, /obj/item/clothing/accessory/leg_guards/ballistic)

/obj/item/clothing/suit/armor/bulletproof/vest //because apparently some map uses this somewhere and I'm too lazy to go looking for and replacing it.
	accessories = null
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/laserproof
	name = "ablative vest"
	desc = "An armored vest with advanced shielding to protect against energy weapons."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	icon_state = "ablativecarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_RESISTANT
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.5
	siemens_coefficient = 0
	accessories = list(/obj/item/clothing/accessory/arm_guards/ablative, /obj/item/clothing/accessory/leg_guards/ablative)

/obj/item/clothing/suit/armor/laserproof/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile/energy) || istype(damage_source, /obj/item/projectile/beam))
		var/obj/item/projectile/P = damage_source

		var/reflectchance = 40 - round(damage/3)
		if(!(def_zone in list(BP_CHEST, BP_GROIN))) //not changing this so arm and leg shots reflect, gives some incentive to not aim center-mass
			reflectchance /= 2
		if(P.starting && prob(reflectchance))
			visible_message(SPAN_DANGER("\The [user]'s [src.name] reflects [attack_text]!"))

			// Find a turf near or on the original location to bounce to
			var/new_x = P.starting.x + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/new_y = P.starting.y + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/turf/curloc = get_turf(user)

			// redirect the projectile
			P.redirect(new_x, new_y, curloc, user)

			return PROJECTILE_CONTINUE // complete projectile permutation
