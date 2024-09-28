//Modular plate carriers
// Flak armor only protects limbs. Requires plate for further protection. Bodyglove accessories protect both arms/legs. Leg/Arm Guard and Plate accessories all use the same CHEST slot to avoid stacking armor.
/obj/item/clothing/suit/armor/grim
	name = "flak jacket"
	desc = "A lightweight flak plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_CHEST, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS, ACCESSORY_SLOT_ARMOR_STORAGE, ACCESSORY_SLOT_ARMOR_MISC)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMOR_CHEST, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS, ACCESSORY_SLOT_ARMOR_STORAGE)
	blood_overlay_type = "armor"
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	flags_inv = CLOTHING_BULKY // DO NOT USE THIS IF YOU DONT KNOW HOW PLATE CARRIER CODE WORKS
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON
	body_parts_covered = LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-8,
		laser = ARMOR_LASER_FLAK-8,
		energy = ARMOR_ENERGY_MINOR-8,
		bio = ARMOR_BIO_MINOR-8,
		rad = ARMOR_RAD_MINOR-10,
		bomb = ARMOR_BOMB_MINOR-8
		)

/obj/item/clothing/suit/armor/grim/light
	accessories = list(/obj/item/clothing/accessory/armor_plate)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/grim/medium
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak, /obj/item/clothing/accessory/storage/pouches)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON


/obj/item/clothing/suit/armor/grim/merc
	name = "mercenary flak armour"
	desc = "An altered fabrication of Imperial Pattern Flak Armor - this particular version is commonly used by mercenaries guilds in service to the renegade houses of the frontier."
	icon_state = "merc"
	item_state = "merc"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak) // All flak armors should use plate/medium unless shoddy
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-25
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+250 // Consider militarum patterns to have good rad and temp resistance so we don't get guardsmen in EVA suits
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-6,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-6,
		rad = ARMOR_RAD_MINOR-5,
		bio = ARMOR_BIO_MINOR-5,
		bomb = ARMOR_BOMB_MINOR-6
		)

/obj/item/clothing/suit/armor/grim/merc/carapace
	name = "mercenary carapace armour"
	desc = "An altered fabrication of Imperial Pattern Carapace Armor - this particular version is commonly used by mercenaries guilds in service to the renegade houses of the frontier."
	icon_state = "explorer"
	item_state = "explorer"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40 // Merc gear is outfitted for combat not extended ops
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-6,
		laser = ARMOR_LASER_CARAPACE-6,
		energy = ARMOR_ENERGY_MINOR,
		rad = ARMOR_RAD_MINOR+15,
		bio = ARMOR_BIO_MINOR+10,
		bomb = ARMOR_BOMB_MINOR+5
		)

// MILITARUM

/obj/item/clothing/suit/armor/grim/cadian
	name = "cadian pattern flak armor"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, reinforced with heavy flak inserts for better protection in the field."
	icon_state = "farmor"
	item_state = "farmor"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+450
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/cadian/medicae
	name = "cadian medicae flak armor"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it light configuration, bearing the Red Cross of a Combat Medicae. This one is made to be lighter to accomodate movement."
	icon_state = "medicae"
	item_state = "medicae"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak) // Lighter. More mobile.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-3,
		laser = ARMOR_LASER_FLAK-3,
		energy = ARMOR_ENERGY_MINOR-3,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/cadian/conscript
	name = "cadian light flak armor"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it light configuration, issued to the Whiteshields."
	icon_state = "fvest"
	item_state = "fvest"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+350
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-5,
		laser = ARMOR_LASER_FLAK-5,
		energy = ARMOR_ENERGY_MINOR-5,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/cadian/heavy
	name = "cadian heavy flak armor"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it heavy configuration"
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS // Same as regular Cadian but provides better leg/arm protection.
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-55
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.07
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+4,
		laser = ARMOR_LASER_FLAK+4,
		energy = ARMOR_ENERGY_MINOR+4,
		bio = ARMOR_BIO_MINOR+4,
		rad = ARMOR_RAD_MINOR+4,
		bomb = ARMOR_BOMB_MINOR+4
	)

/obj/item/clothing/suit/armor/grim/cadian/carapace
	name = "cadian pattern carapace armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, reinforced with carapace plates for enhanced protection in combat zones."
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+25,
		bomb = ARMOR_BOMB_MINOR+15
	)

/obj/item/clothing/suit/armor/grim/mordian
	name = "mordian patrol jacket"
	desc = "The fatigues worn by a Mordian Iron Guardsman. Light and robust in the colour blue, designed to protect against blast and small arms fire."
	icon_state = "enforcercoat"
	item_state = "enforcercoat"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar) // Flak Padding. lighter and weaker.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+350
	slowdown_general = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-2,
		bio = ARMOR_BIO_MINOR-2,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR-2
		)

/obj/item/clothing/suit/armor/grim/bloodpact
	name = "Sekite Armor"
	desc = "War torn and suited to savage needs. This is the armor of a Sekite warrior. It has certainly seen blood flown upon it."
	icon_state = "heretmil"
	item_state = "heretmil"
	body_parts_covered = LEGS|ARMS // Sekites scavenge and use any armor attachments they can.
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace,/obj/item/clothing/accessory/leg_guards/ballistic)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+450
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)



//// ADMINISTRATUM
/obj/item/clothing/suit/armor/grim/bountyhunter
	name = "bounty hunter's armor"
	desc = "Worn by those who make a living tracking down Imperial fugitives or collecting bounties, this armor is built for mobility and resilience."
	icon_state = "valhalla"
	item_state = "valhalla"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+350
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-6,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-6,
		rad = ARMOR_RAD_MINOR-5,
		bio = ARMOR_BIO_MINOR-5,
		bomb = ARMOR_BOMB_MINOR-6
		)

/obj/item/clothing/suit/armor/enforcermarshal
	name = "marshal's patrol armor"
	desc = "The carapace armor worn by Magistratum Marshals, reinforced to provide superior protection against explosions and small arms fire. Lighter than standard carapace suits but still robust."
	icon_state = "MarshalArmor"
	item_state = "MarshalArmor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	slowdown_general = 0.12 // Hard armor sets get more slowdown for having equalized protection. They are fully superior to traditional armors with no weaknesses.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_MINOR+14,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/enforcer2
	name = "enforcer's patrol armor"
	desc = "The flak armor worn by a Magistratum Enforcer. Heavy and robust, its distinctive blue design provides superior protection against explosions and small arms fire in urban combat."
	icon_state = "PalaniteArmor"
	item_state = "PalaniteArmour"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.10
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_MINOR+2,
		bio = ARMOR_BIO_MINOR+8,
		rad = ARMOR_RAD_MINOR+15,
		bomb = ARMOR_BOMB_MINOR+8
		)

/obj/item/clothing/suit/armor/grim/enforcer
	name = "enforcer patrol jacket"
	desc = "The lightweight flak jacket worn by a Messina Enforcer. It’s a low-profile, black coat designed to provide moderate protection against blasts and small arms fire while maintaining mobility."
	icon_state = "enforcercoat"
	item_state = "enforcercoat"
	body_parts_covered = LEGS|ARMS // Low profile armor but still highly protective.
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-30
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-5,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-5,
		rad = ARMOR_RAD_MINOR+10,
		bio = ARMOR_BIO_MINOR+5,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/enforcer/marshal
	name = "marshal's patrol jacket"
	desc = "A flak jacket worn by Messina Enforcer Marshals. Black and streamlined, it provides mobility while offering enhanced protection against blasts and small arms fire."
	icon_state = "enforcercoat"
	item_state = "enforcercoat"
	body_parts_covered = LEGS|ARMS
	slowdown_general = 0.06
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy) // Heavy cheaper plates. Marshals can't have two sets of masterwork.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+350
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-5,
		laser = ARMOR_LASER_CARAPACE-5,
		energy = ARMOR_ENERGY_MINOR,
		rad = ARMOR_RAD_MINOR+15,
		bio = ARMOR_BIO_MINOR+10,
		bomb = ARMOR_BOMB_MINOR+5,
	)

/obj/item/clothing/suit/armor/grim/carapacejacket
	name = "carapace jacket"
	desc = "The carapace patrol jacket was once worn by some frontier marshal of an unnamed world... it looks centuries old."
	icon_state = "towntrench_heavy"
	item_state = "towntrench_heavy"
	body_parts_covered = LEGS|ARMS
	slowdown_general = 0.05
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+350
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-7,
		laser = ARMOR_LASER_CARAPACE-7,
		energy = ARMOR_ENERGY_MINOR-2,
		rad = ARMOR_RAD_MINOR+5,
		bio = ARMOR_BIO_MINOR,
		bomb = ARMOR_BOMB_MINOR-5,
	)

/obj/item/clothing/suit/armor/arbitrator
	name = "arbitrator's carapace armor"
	desc = "Worn by Magistratum Arbitrators, this carapace armor offers exceptional protection against explosives and small arms fire, balancing mobility with heavy-duty defense."
	icon_state = "Judge"
	item_state = "Judge"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	slowdown_general = 0.11 // Hard armor sets get more slowdown for having equalized protection. They are fully superior to traditional armors with no weaknesses.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+4,
		laser = ARMOR_LASER_CARAPACE+4,
		energy = ARMOR_ENERGY_MINOR+16,
		rad = ARMOR_RAD_MINOR+35,
		bio = ARMOR_BIO_MINOR+25,
		bomb = ARMOR_BOMB_PADDED+15
		)

// SS13 PLATE SYSTEMS

/obj/item/clothing/suit/armor/grim/blue
	name = "blue plate carrier"
	desc = "A lightweight blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_blue"

/obj/item/clothing/suit/armor/grim/green
	name = "green plate carrier"
	desc = "A lightweight green plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_green"

/obj/item/clothing/suit/armor/grim/navy
	name = "navy plate carrier"
	desc = "A lightweight navy blue plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_navy"

/obj/item/clothing/suit/armor/grim/tan
	name = "tan plate carrier"
	desc = "A lightweight tan plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon_state = "pcarrier_tan"

/obj/item/clothing/suit/armor/grim/tan/tactical
	name = "tactical plate carrier"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace, /obj/item/clothing/accessory/storage/pouches/large/tan)

/obj/item/clothing/suit/armor/grim/merc
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy, /obj/item/clothing/accessory/arm_guards/merc, /obj/item/clothing/accessory/leg_guards/merc, /obj/item/clothing/accessory/storage/pouches/large)
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/riot
	name = "riot vest"
	desc = "An armored vest with heavy padding to protect against melee attacks."
	icon_state = "riotcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-6,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-6,
		bio = ARMOR_BIO_MINOR,
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
	icon_state = "ballisticcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR-8,
		rad = ARMOR_RAD_MINOR,
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
	icon_state = "ablativecarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_CARAPACE,
		bio = ARMOR_BIO_MINOR-8,
		rad = ARMOR_RAD_MINOR,
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
