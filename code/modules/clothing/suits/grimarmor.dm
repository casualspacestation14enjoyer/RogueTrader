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
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-6,
		laser = ARMOR_LASER_FLAK-6,
		energy = ARMOR_ENERGY_MINOR-6,
		bio = ARMOR_BIO_MINOR-6,
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
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR-4,
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
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35 // Merc gear is outfitted for combat not extended ops
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_MINOR,
		rad = ARMOR_RAD_MINOR+15,
		bio = ARMOR_BIO_MINOR+10,
		bomb = ARMOR_BOMB_MINOR+5
		)

// MILITARUM

/obj/item/clothing/suit/armor/grim/cadian
	name = "cadian pattern flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, reinforced with heavy flak inserts for better protection in the field."
	icon_state = "farmor"
	item_state = "farmor"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
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
	name = "cadian medicae flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it light configuration, bearing the Red Cross of a Combat Medicae. This one is made to be lighter to accomodate movement."
	icon_state = "medicae"
	item_state = "medicae"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)

/obj/item/clothing/suit/armor/grim/cadian/heavy
	name = "cadian heavy flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it heavy configuration"
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS // Same as regular Cadian but provides better leg/arm protection.
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR+1,
		bio = ARMOR_BIO_MINOR+4,
		rad = ARMOR_RAD_MINOR+4,
		bomb = ARMOR_BOMB_MINOR+4
	)

/obj/item/clothing/suit/armor/grim/cadian/sergeant
	name = "cadian carapace armour"
	desc = "The reinforced carapace armor worn by Cadian Sergeants, offering enhanced protection with carapace inserts."
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-55
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+10,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+25,
		bomb = ARMOR_BOMB_MINOR+15
	)

/obj/item/clothing/suit/armor/grim/cadian/carapace
	name = "cadian carapace armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, reinforced with carapace plates for enhanced protection in combat zones."
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+10,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+25,
		bomb = ARMOR_BOMB_MINOR+15
	)

/obj/item/clothing/suit/armor/grim/krieger
	name = "krieg flak overcoat"
	desc = "A reinforced Krieg flak overcoat, resistant to environmental hazards like radiation and biohazards, with decent ballistic and thermal protection."
	icon_state = "kriegcoat"
	item_state = "kriegcoat"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR+2,
		rad = ARMOR_RAD_MINOR+40,
		bio = ARMOR_BIO_MINOR+40,
		bomb = ARMOR_BOMB_MINOR+10
	)

/obj/item/clothing/suit/armor/grim/krieger/sergeant
	name = "krieg watchmaster's overcoat"
	desc = "The reinforced carapace overcoat of a Krieg Watchmaster, offering additional protection against hazardous environments and combat damage."
	icon_state = "kriegcoat"
	item_state = "kriegcoat"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.065 // Light carapace.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+15,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
		bomb = ARMOR_BOMB_MINOR+15
	)


/obj/item/clothing/suit/armor/grim/krieger/grenadier
	name = "krieg grenadier overcoat"
	desc = "A Krieg grenadier carapace-plated overcoat, offering excellent protection at the cost of movement."
	icon_state = "grencoat"
	item_state = "grencoat"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.075 // Similar to cadian carapace but heavier. Krieg gear is for slow -- defensive/siege warfare.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+15,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
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
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.025
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR-1,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/suit/armor/grim/valhallan
	name = "valhallan flak overcoat"
	desc = "A thermal flak overcoat designed for Valhallan Ice Warriors, providing standard protection against energy projectiles and blunt force."
	icon_state = "valarmor"
	item_state = "valarmor"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR,
		rad = ARMOR_RAD_MINOR+10,
		bio = ARMOR_BIO_MINOR,
		bomb = ARMOR_BOMB_MINOR-5
	)

/obj/item/clothing/suit/armor/grim/valhallan/medicae
	name = "valhallan medicae vercoat"
	desc = "A lightweight, thermally insulated Valhallan overcoat worn by Combat Medicae, offering basic protection with increased mobility."
	icon_state = "mvalarmor"
	item_state = "mvalarmor"

/obj/item/clothing/suit/armor/grim/valhallan/sergeant
	name = "valhalan carapace overcoat"
	desc = "A Valhallan overcoat with additional markings and improved protection, worn by Sergeants."
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	body_parts_covered = LEGS | ARMS
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+10,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+5,
		bomb = ARMOR_BOMB_MINOR+5
	)

/obj/item/clothing/suit/armor/grim/maccabian
	name = "maccabian carapace armor"
	desc = "The standard carapace armor worn by Maccabian Jannisaries, designed for resilience in the field."
	icon_state = "M_Armor-Icon"
	item_state = "M_Armor-Icon"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+10,
		rad = ARMOR_RAD_MINOR+10,
		bio = ARMOR_BIO_MINOR+5,
		bomb = ARMOR_BOMB_MINOR+5
	)

/obj/item/clothing/suit/armor/grim/maccabian/sergeant
	name = "maccabian carapace armor"
	desc = "The flak armor worn by Maccabian Sergeants, reinforced with carapace plates for enhanced protection."
	icon_state = "M_SArmor-Icon"
	item_state = "M_SArmor-Icon"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+450
	slowdown_general = 0.075
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+10,
		rad = ARMOR_RAD_MINOR+10,
		bio = ARMOR_BIO_MINOR+5,
		bomb = ARMOR_BOMB_MINOR+5
	)

/obj/item/clothing/suit/armor/grim/catachan
	name = "catachan flak vest"
	desc = "A light flak vest worn by Catachan Guardsmen, designed for mobility over protection."
	icon_state = "Catachan_Vest"
	item_state = "Catachan_Vest"
	body_parts_covered = LEGS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR-2,
		rad = ARMOR_RAD_MINOR,
		bio = ARMOR_BIO_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/catachan/sergeant
	name = "catachan flak vest"
	desc = "A decorated Catachan flak vest worn by sergeants, offering slightly better protection without compromising mobility."
	body_parts_covered = LEGS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)

/obj/item/clothing/suit/armor/grim/cadian/conscript
	name = "cadian light flak armour"
	desc = "The standard armour found throughout the Cadian-oriented PDF and Cadian Regiments, It is so common that it became symbol of the Astra Militarum as a whole. This one is in it light configuration, issued to the Whiteshields."
	icon_state = "fvest"
	item_state = "fvest"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-25
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-1,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/cadian/conscript/pdf
	name = "PDF flak armour"
	desc = "A non standard pattern of flak armour issued to planetary defense forces, this particular variant being inferior to guard issue kit."
	icon_state = "PDF-T"
	item_state = "PDF-T"

/obj/item/clothing/suit/armor/grim/cadian/conscript/medic
	name = "PDF medicae armour"
	icon_state = "PDF-MedicT"
	item_state = "PDF-MedicT"

/obj/item/clothing/suit/armor/grim/cadian/conscript/spec
	name = "PDF heavy armour"
	icon_state = "PDF-SpecialT"
	item_state = "PDF-SpecialT"
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/commissar
	name = "commissar's greatcoat"
	desc = "The infamous greatcoat worn by an Imperial Commissar, reinforced with carapace-lamellar lining for additional protection."
	icon_state = "commissar4"
	item_state = "commissar4"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster) // There's only a handful of commissar's to a regiment. They get the good stuff.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.075 // Commissar's aren't fast.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+20,
		bio = ARMOR_BIO_MINOR+25,
		rad = ARMOR_RAD_MINOR+35,
		bomb = ARMOR_BOMB_MINOR+15
	)

/obj/item/clothing/suit/armor/grim/commissar/krieg
	name = "commissar's breastplate"
	desc = "The Commissar's iconic coat, this out tailored to match more of the uniform theme of the Officers of Krieg. Though the Krieg Guardsmen don't fear you, the others certainly will."
	icon_state = "Kriegissarplate"
	item_state = "Kriegissarplate"
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+15,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
		bomb = ARMOR_BOMB_MINOR+15
	)

/obj/item/clothing/suit/armor/grim/commissar/catachan
	name = "commissar's trenchjacket"
	desc = "What used to be a decorated and custom tailored coat of the Officio Prefectus is now crudely stripped of decoration and cut down to be lighter and more breathable for the jungles of Catachan, although, also padded to be more resistant to melee attacks. Though, wearing something like this out here is more of a power move."
	icon_state = "catacommissar"
	item_state = "catacommissar"

/obj/item/clothing/suit/armor/grim/commissar/mordian
	name = "commissar's dress formals"
	desc = "A Mordian Commissar's formal uniform, tailored to specifically meet regulation standards. The wearer shall make guardsman follow orders to the letter."
	icon_state = "MordianC"
	item_state = "MordianC"

/obj/item/clothing/suit/armor/stormtrooper
	name = "stormtrooper's carapace armour"
	desc = "The carapace armor worn by Inquisitorial Stormtroopers, designed for heavy frontline combat. Shows signs of extensive use."
	icon_state = "i-Stormtrooper Armor"
	item_state = "i-Stormtrooper Armor"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	slowdown_general = 0.10
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1, // No wasted weight on melee protection for Stormtroopers.
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+15,
		rad = ARMOR_RAD_MINOR+35,
		bio = ARMOR_BIO_MINOR+25,
		bomb = ARMOR_BOMB_PADDED+15
		)

/obj/item/clothing/suit/armor/grim/cadian/officer
	name = "militarum officer's coat"
	desc = "A formal coat worn by command staff of the Imperial Guard, reinforced with integrated carapace and armourplas plates. It has an insignia spear belonging to that of the general staff for the local Lord General Militant."
	icon_state = "officertanjacket"
	item_state = "officertanjacket"
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	body_parts_covered = LEGS | ARMS
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_MINOR+5,
		bomb = ARMOR_BOMB_MINOR+15,
		rad = ARMOR_RAD_MINOR+10,
		bio = ARMOR_BIO_MINOR+10
	)
	slowdown_general = 0.045

// ORDOS / HERETIC
/obj/item/clothing/suit/armor/grim/agent
	name = "carapace coat"
	desc = "A brilliantly made carapace coat for Inquisitorial Agents, adorned with holy seals and the Rosette to ward off Chaos corruption."
	icon_state = "acolytecoat"
	item_state = "acolytecoat"
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +400
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE + 1,
		bullet = ARMOR_BALLISTIC_CARAPACE + 1,
		laser = ARMOR_LASER_CARAPACE + 1,
		energy = ARMOR_ENERGY_MINOR + 25,
		bio = ARMOR_BIO_MINOR + 30,
		rad = ARMOR_RAD_MINOR + 40,
		bomb = ARMOR_BOMB_PADDED + 20
	)

/obj/item/clothing/suit/armor/grim/agent/inquisitor
	name = "masterwork carapace coat"
	desc = "The formidable, brilliantly made Carapace Armour for the Inquisitorial Agent, bearing the holy symbol of the Inquisition, the Rosette."
	icon_state = "inqcoat"
	item_state = "inqcoat"
	body_parts_covered = LEGS | ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE + 1,
		bullet = ARMOR_BALLISTIC_CARAPACE + 2,
		laser = ARMOR_LASER_CARAPACE + 2,
		energy = ARMOR_ENERGY_MINOR + 35,
		bio = ARMOR_BIO_MINOR + 40,
		rad = ARMOR_RAD_MINOR + 50,
		bomb = ARMOR_BOMB_PADDED + 30
	)

/obj/item/clothing/suit/armor/grim/agent/hereticus
	name = "masterwork carapace coat"
	desc = "The Inquisitor's holy coat, forged from a Tech-priest of Mars for his use in his path of holy fire toward enemies of our Emperor, Hanging from the coat a Inquisitorial Rosette, It shines brightly as if it is the Emperor himself is present, For he'll cleanse the darkness."
	icon_state = "hereticuscoat"
	item_state = "hereticuscoat"
	body_parts_covered = LEGS | ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE + 1,
		bullet = ARMOR_BALLISTIC_CARAPACE + 2,
		laser = ARMOR_LASER_CARAPACE + 2,
		energy = ARMOR_ENERGY_MINOR + 35,
		bio = ARMOR_BIO_MINOR + 40,
		rad = ARMOR_RAD_MINOR + 50,
		bomb = ARMOR_BOMB_PADDED + 30
	)

/obj/item/clothing/suit/armor/inqparmor
	name = "relic power armour"
	desc = "This ancient and sacred power armour was forged by the tech-priests of Mars, sanctified for the Inquisitor's righteous crusade against the enemies of the Emperor. Bearing the engraved Inquisitorial Rosette, its gleaming surface radiates with the Emperor's divine light, as if his presence guides the wearer to purge the darkness."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1000
	slowdown_general = 0.12 // Tiny bit slow. Design wise power armor is more rare then a lemun russ tank, it has no downsides. It simply is superior to all other armor.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_MINOR + 55,
		bio = ARMOR_BIO_MINOR + 84,
		rad = ARMOR_RAD_MINOR + 86,
		bomb = ARMOR_BOMB_PADDED + 45
	)

/obj/item/clothing/suit/armor/grim/bloodpact
	name = "sekite armour"
	desc = "War torn and suited to savage needs. This is the armor of a Sekite warrior. It has certainly seen blood flown upon it."
	icon_state = "heretmil"
	item_state = "heretmil"
	body_parts_covered = LEGS|ARMS // Sekites scavenge and use any armor attachments they can.
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace,/obj/item/clothing/accessory/leg_guards/reactiveslug)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

// ADEPTA SORORITAS
/obj/item/clothing/suit/armor/sister/sacredrosepower
	name = "sacred rose power armour"
	desc = "The Sacred and holy Power Armour adorned by Battle Sister of the Order Of The Sacred Rose, It's illuminate the field with it glorious light, Being near it make you feels safer and secured."
	icon_state = "sister"
	item_state = "sister"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1000
	slowdown_general = 0.11 // Slightly faster then inqisitorial, these relics are icons to the sisters and treated as extensions of the emperor.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_MINOR + 55,
		bio = ARMOR_BIO_MINOR + 84,
		rad = ARMOR_RAD_MINOR + 86,
		bomb = ARMOR_BOMB_PADDED + 45
	)

/obj/item/clothing/suit/armor/sister/repentia
	name = "repentia carapace armour"
	desc = "The tattered garb of a penitent sister of battle. The minimal carapace of armor is a symbol of their faith on the Repentia's deathmarch towards a glorious end."
	icon_state = "repentia_chest"
	item_state = "repentia_chest"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -25 // The temp resistance is more the sisters faith then anything.
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +250
	slowdown_general = 0.07
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_MINOR + 15,
		bio = ARMOR_BIO_MINOR + 14,
		rad = ARMOR_RAD_MINOR + 16,
		bomb = ARMOR_BOMB_MINOR +15
	)

/obj/item/clothing/suit/armor/sister/martyredpower
	name = "ourt martyred lady power armour"
	desc = "The Sacred and holy Power Armour adorned by Battle Sister of the Order Of Our Martyred Lady. Being near it make you feels safer and secured."
	icon_state = "mlsister"
	item_state = "mlsister"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1000
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_MINOR + 55,
		bio = ARMOR_BIO_MINOR + 84,
		rad = ARMOR_RAD_MINOR + 86,
		bomb = ARMOR_BOMB_PADDED + 45
	)

/obj/item/clothing/suit/armor/sister/bloodyrosepower
	name = "bloody rose power armour"
	desc = "The blood red power armor of The Order of the Bloody Rose."
	icon_state = "brsister"
	item_state = "brsister"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1000
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_MINOR + 55,
		bio = ARMOR_BIO_MINOR + 84,
		rad = ARMOR_RAD_MINOR + 86,
		bomb = ARMOR_BOMB_PADDED + 45
	)

/obj/item/clothing/suit/armor/sister/novitae
	name = "novitae ceramite armor"
	desc = "The Ancient and Deconsecrated Ceramite Armour adorned by Novice Militants during their training in Messina' Monastarium. Stripped of almost all iconography and with damaged plating. It has scriptures across it's surface, recounting the triumph and martyrdom of countless saints."
	icon_state = "ooml"
	item_state = "ooml"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +500
	slowdown_general = 0.11 // Same speed as sister but trash stats compared.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-2, // 1 point above carapace
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_MINOR + 35,
		bio = ARMOR_BIO_MINOR + 64,
		rad = ARMOR_RAD_MINOR + 66,
		bomb = ARMOR_BOMB_PADDED + 15
	)

// MECHANICUS
/obj/item/clothing/suit/armor/grim/storage/hooded/magos
	name = "Magos Biologis robes"
	desc = "Green robes riddled with augments, scanners and syringes. The robes look incredibly old and worn, you can tell this magos has lived a long and scholarly life."
	icon_state = "genetor"
	item_state = "genetor"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/mechplate)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -70
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +700
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_CARAPACE-2,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_MINOR+20,
		rad = ARMOR_RAD_RESISTANT+48,
		bio = ARMOR_BIO_RESISTANT+48,
		bomb = ARMOR_BOMB_MINOR+10
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hoodiehood


/obj/item/clothing/suit/armor/grim/storage/hooded/skitarii
	name = "skitarii exoskeleton"
	desc = "Tailored and reinforced by the Adeptus Mechanicus, these sturdy and protective robes are being issued to Skitarii warriors."
	icon_state = "skitsuit"
	item_state = "skitsuit"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -65
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.07 // Skitarii get superior armor stats to tech priests and slowdown since they're engineered to be combat units. Tech priests aren't designed for that.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+20,
		rad = ARMOR_RAD_RESISTANT+48,
		bio = ARMOR_BIO_RESISTANT+48,
		bomb = ARMOR_BOMB_MINOR+10
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hoodiehood

/obj/item/clothing/suit/armor/grim/storage/hooded/stalker
	name = "ruststalker exoskeleton"
	desc = "Tailored and reinforced by the Adeptus Mechanicus, this strange armour is issued to Skitarii Ruststalkers. It shimmers oddly in the light, and seems to have storage pouches for skulls."
	icon_state = "skitsuit"
	item_state = "skitsuit"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -65
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +600
	slowdown_general = 0.055
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_MINOR+10,
		rad = ARMOR_RAD_RESISTANT+48,
		bio = ARMOR_BIO_RESISTANT+48,
		bomb = ARMOR_BOMB_MINOR+5
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hoodiehood

/obj/item/clothing/suit/armor/grim/storage/hooded/vanguard
	name = "vanguard exoskeleton"
	desc = "Tailored and reinforced by the Adeptus Mechanicus, these heavy ceramite plates offer near-complete protection from attack."
	icon_state = "rig-hazardhardsuit"
	item_state = "rig-hazardhardsuit"
	canremove = 0
	unacidable = 1
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -95
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +900
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+20,
		rad = ARMOR_RAD_RESISTANT+48,
		bio = ARMOR_BIO_RESISTANT+48,
		bomb = ARMOR_BOMB_MINOR+10
		)
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hoodiehood

/*

/obj/item/clothing/suit/storage/hooded/genestealer
	name = "tyranid chitin"
	desc = "The hide of a Tyranid Genestealer"
	armor = list(melee = 10, bullet = 30, laser = 30, energy = 20, bomb = 30, bio = 100, rad = 100)
	icon_state = "gsfeet"
	item_state = "gsfeet"
	canremove = 0
	unacidable = 1
	species_restricted = list(SPECIES_TYRANID) */

//// MAGISTRATUM
/obj/item/clothing/suit/armor/grim/bountyhunter
	name = "bounty hunter's armour"
	desc = "Worn by those who make a living tracking down Imperial fugitives or collecting bounties, this armor is built for mobility and resilience."
	icon_state = "valhalla"
	item_state = "valhalla"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	slowdown_general = 0.025
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-25
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-2,
		rad = ARMOR_RAD_MINOR,
		bio = ARMOR_BIO_MINOR,
		bomb = ARMOR_BOMB_MINOR-2
		)

/obj/item/clothing/suit/armor/enforcermarshal
	name = "marshal's patrol armour"
	desc = "The carapace armor worn by Magistratum Marshals, reinforced to provide superior protection against explosions and small arms fire. Lighter than standard carapace suits but still robust."
	icon_state = "MarshalArmor"
	item_state = "MarshalArmor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.11 // Better slowdown then standard modular armors.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+10,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/enforcer2
	name = "enforcer's patrol armour"
	desc = "The flak armor worn by a Magistratum Enforcer. Heavy and robust, its distinctive blue design provides superior protection against explosions and small arms fire in urban combat."
	icon_state = "PalaniteArmor"
	item_state = "PalaniteArmour"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	slowdown_general = 0.09
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR+1,
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
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR-1,
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
	slowdown_general = 0.055
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy) // Heavy cheaper plates. Marshals can't have two sets of masterwork.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-40
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
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
	slowdown_general = 0.035 // Light due to missing parts of the armor.
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-2,
		laser = ARMOR_LASER_CARAPACE-2,
		energy = ARMOR_ENERGY_MINOR-2,
		rad = ARMOR_RAD_MINOR+5,
		bio = ARMOR_BIO_MINOR,
		bomb = ARMOR_BOMB_MINOR-5,
	)

/obj/item/clothing/suit/armor/arbitrator
	name = "arbitrator's carapace armour"
	desc = "Worn by Magistratum Arbitrators, this carapace armor offers exceptional protection against explosives and small arms fire, balancing mobility with heavy-duty defense."
	icon_state = "Judge"
	item_state = "Judge"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.1 // Hard armor sets get more slowdown for having equalized protection. They are fully superior to traditional armors with no weaknesses.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
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
	name = "heavy ganger armour"
	desc = "An armored flak suit with heavy padding to protect against melee attacks."
	icon_state = "riotcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK-3,
		laser = ARMOR_LASER_FLAK-3,
		energy = ARMOR_ENERGY_MINOR-3,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR-5,
		bomb = ARMOR_BOMB_MINOR-6
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.06
	siemens_coefficient = 0.5
	accessories = list(/obj/item/clothing/accessory/arm_guards/flak,/obj/item/clothing/accessory/leg_guards/flak)

/obj/item/clothing/suit/armor/bulletproof
	name = "reactive armor suit"
	desc = "A strange slug resistant reactive suit with heavy plates to protect against ballistic projectiles."
	icon_state = "ballisticcarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR-8,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_PADDED
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.09
	siemens_coefficient = 0.7

/obj/item/clothing/suit/armor/bulletproof/vest //because apparently some map uses this somewhere and I'm too lazy to go looking for and replacing it.
	accessories = null
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/suit/armor/laserproof
	name = "reactive armor suit"
	desc = "A strange energy resistant reactive suit with advanced shielding to protect against energy weapons."
	icon_state = "ablativecarrier"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_ARMS, ACCESSORY_SLOT_ARMOR_LEGS)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+2,
		bio = ARMOR_BIO_MINOR-8,
		rad = ARMOR_RAD_MINOR,
		energy = ARMOR_ENERGY_RESISTANT
		)
	flags_inv = CLOTHING_BULKY
	slowdown_general = 0.1
	siemens_coefficient = 0

/obj/item/clothing/suit/armor/laserproof/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile/energy) || istype(damage_source, /obj/item/projectile/beam))
		var/obj/item/projectile/P = damage_source

		var/reflectchance = 28 - round(damage/3)
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
