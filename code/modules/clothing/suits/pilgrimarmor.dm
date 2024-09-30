
// CULTISTS

/obj/item/clothing/suit/armor/grim/cult
	name = "heavy overcoat" // name a lot of generic armors this so only experienced players recognise them as chaos.
	desc = "A rough overcoat made from leather and poorly forged steel plates. It appears unremarkable at first glance."
	icon_state = "heretmil"
	item_state = "heretmil"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+15,
		bomb = ARMOR_BOMB_MINOR+10
	)

/obj/item/clothing/suit/armor/grim/cult/tzee
	name = "heavy overcoat"
	desc = "This robe is woven from an unnatural silk-like material, covered in crude runes and symbols. Being near it fills you with the eerie sensation of being observed."
	icon_state = "tzeecult"
	item_state = "tzeecult"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/tzeentch)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR+2,
		bio = ARMOR_BIO_MINOR+35,
		rad = ARMOR_RAD_MINOR+25,
		bomb = ARMOR_BOMB_MINOR+15
	)

/obj/item/clothing/suit/armor/grim/cult/nurgle
	name = "heavy overcoat"
	desc = "A decaying leather coat smeared in filth, exuding a foul stench of rot, vomit, and waste. Even approaching it tests your willpower."
	icon_state = "nurgc"
	item_state = "nurgc"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/nurgle)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR+10,
		bio = ARMOR_BIO_MINOR+25,
		rad = ARMOR_RAD_MINOR+25,
		bomb = ARMOR_BOMB_MINOR+25
	)

/obj/item/clothing/suit/armor/grim/cult/nurgleheavy
	name = "heavy overcoat"
	desc = "This heavy leather coat reeks of filth, covered in the same nauseating mixture of rot and human waste. Its stench precedes its presence."
	icon_state = "nurgc"
	item_state = "nurgc"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/nurgleheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+150
	slowdown_general = 0.08
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_MINOR+15,
		bio = ARMOR_BIO_MINOR+35,
		rad = ARMOR_RAD_MINOR+35,
		bomb = ARMOR_BOMB_MINOR+35
	)

/obj/item/clothing/suit/armor/grim/cult/renegade
	name = "renegade armour"
	desc = "Makeshift steel armor, while not refined, it will protect you vital organs. It has strange marks carved into it"
	icon_state = "renegade_militia_armor"
	item_state = "renegade_militia_armor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+35
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/cult/bloodpact
	name = "bloodpact armor"
	desc = "Makeshift steel armor, while not refined, it will protect you vital organs. It has strange marks carved into it devoted to Khorne."
	icon_state = "BP_Armor"
	item_state = "BP_Armor"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy,/obj/item/clothing/accessory/leg_guards/flak) // Bloodpact are heavily armoured shock troops.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+35
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

/obj/item/clothing/suit/armor/grim/cult/sekite
	name = "sekite armour"
	desc = "War torn and suited to savage needs. This is the armor of a Sekite warrior. It has certainly seen blood flown upon it."
	icon_state = "heretmil"
	item_state = "heretmil"
	body_parts_covered = LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapace,/obj/item/clothing/accessory/leg_guards/reactiveslug)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-35
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+35
	slowdown_general = 0.05
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR
	)

// ECCLESIARCHY
/obj/item/clothing/suit/armor/sister/sacredrosepower
	name = "sacred rose power armour"
	desc = "The Sacred and holy Power Armour adorned by Battle Sister of the Order Of The Sacred Rose, It's illuminate the field with it glorious light, Being near it make you feels safer and secured."
	icon_state = "sister"
	item_state = "sister"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
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

/obj/item/clothing/suit/armor/sister/martyredpower
	name = "martyred power armour"
	desc = "The Sacred and holy Power Armour adorned by Battle Sister of the Order Of Our Martyred Lady. Being near it make you feels safer and secured."
	icon_state = "mlsister"
	item_state = "mlsister"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
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
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
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
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1100
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

/obj/item/clothing/suit/armor/sister/repentia
	name = "repentia carapace armour"
	desc = "The tattered garb of a penitent sister of battle. The minimal carapace of armor is a symbol of their faith on the Repentia's deathmarch towards a glorious end."
	icon_state = "repentia_chest"
	item_state = "repentia_chest"
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
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

/obj/item/clothing/suit/armor/grim/pilgrim/medicae
	name = "practioner robes"
	desc = "Worn by practioners and other surgoens."
	icon_state = "prac_robes"
	item_state = "prac_robes"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingmech)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR+2,
		bio = ARMOR_BIO_MINOR+30,
		rad = ARMOR_RAD_MINOR+40,
		bomb = ARMOR_BOMB_MINOR+5
		)

/obj/item/clothing/suit/storage/sistersuperiorsuit
	name = "sister hospitaller's suit"
	desc = "The holy garments marking the wearer as sister hospitaller"
	icon_state = "hospitaller"
	item_state = "hospitaller"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingmech)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR+2,
		bio = ARMOR_BIO_MINOR+50,
		rad = ARMOR_RAD_MINOR+60,
		bomb = ARMOR_BOMB_MINOR+20
		)

/obj/item/clothing/suit/storage/sistersuit
	name = "sister discipulus's suit"
	desc = "The holy garments marking the wearer as a discipulus hospitaller"
	icon_state = "hospitallerold"
	item_state = "hospitallerold"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingmech)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.04
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_MINOR+2,
		bio = ARMOR_BIO_MINOR+40,
		rad = ARMOR_RAD_MINOR+50,
		bomb = ARMOR_BOMB_MINOR+10
		)

/obj/item/clothing/suit/armor/grim/zealot
	name = "heavy mantle"
	desc = "An imperial cult mantle with heavy flak plates blessed by the Ecceliarchy to protect the wearer from threats to aid in protecting the faithful and to repel the heretic."
	icon_state = "zealot"
	item_state = "zealot"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flakheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.06 // heavy crude armor. better then conscript but considerable slowdown.
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-1,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+15,
		bomb = ARMOR_BOMB_MINOR+10
	)

/obj/item/clothing/suit/armor/grim/ministorumrobes
	name = "ministorum robes"
	desc = "Gorgeous robes littered  with holy seals and writs. Smells faintly of incense. This one has been fitted with a special hidden armor plate for extra protection."
	icon_state = "ministorum_priest"
	item_state = "ministorum_priest"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-150
	slowdown_general = 0.065
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-1,
		bio = ARMOR_BIO_MINOR+15,
		rad = ARMOR_RAD_MINOR+15,
		bomb = ARMOR_BOMB_MINOR+10
	)

// MERCANTILE

/obj/item/clothing/suit/armor/grim/merc
	name = "mercenary flak armour"
	desc = "An altered fabrication of Imperial Pattern Flak Armor - this particular version is commonly used by mercenaries guilds in service to the renegade houses of the frontier."
	icon_state = "merc"
	item_state = "merc"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak) // All flak armors should use plate/medium unless shoddy
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-25
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-100 // Consider militarum patterns to have good rad and temp resistance so we don't get guardsmen in EVA suits
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
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
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15 // Merc gear is outfitted for combat not extended ops
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
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


// PILGRIMS

/obj/item/clothing/suit/armor/grim/pilgrim/musician
	name = "musician's garb"
	desc = "A colorful yet somewhat tattered uniform."
	icon_state = "xomrobe"
	item_state = "xomrobe"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL+1,
		laser = ARMOR_LASER_PRIMAL+1,
		energy = ARMOR_ENERGY_MINOR-3,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR+10,
		bomb = ARMOR_BOMB_MINOR-4
		)

/obj/item/clothing/suit/armor/grim/pilgrim/admin
	name = "administrator's garb"
	desc = "Elegant clothing for a wealthy administrator, this one seems to have a hidden carapace armor plate in it... the plate seems to be of a cheap quality..."
	icon_state = "robes"
	item_state = "robes_item"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.04 // High quality cloth
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-3,
		bio = ARMOR_BIO_MINOR+10,
		rad = ARMOR_RAD_MINOR+20,
		bomb = ARMOR_BOMB_MINOR
		)


/obj/item/clothing/suit/armor/grim/pilgrim/merchant
	name = "mercantile suit"
	desc = "Elegant clothing for a wealthy trader."
	icon_state = "male2"
	item_state = "male2"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flak) // Trader's got monei
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+10,
		rad = ARMOR_RAD_MINOR+20, // no rads for the money man
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/suit/armor/grim/pilgrim/penitent
	name = "ragged robes"
	desc = "Stinking, torn robes"
	icon_state = "grosthrobe"
	item_state = "grosthrobe"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL+1,
		laser = ARMOR_LASER_PRIMAL+1,
		energy = ARMOR_ENERGY_MINOR-3,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR+10,
		bomb = ARMOR_BOMB_MINOR-4
		)

/obj/item/clothing/suit/armor/grim/pilgrim/innapron
	name = "heavy overcoat"
	desc = "An amasec and caff stained apron."
	icon_state = "mapron"
	item_state = "mapron"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+10,
		rad = ARMOR_RAD_MINOR+20, // no rads for the money man
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/suit/armor/grim/pilgrim/stalker
	name = "light overcoat"
	desc = "A red hunters uniform"
	icon_state = "chokha"
	item_state = "chokha"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/flaklamellar)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.045
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1, // Good overall defense but slow.
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+10,
		rad = ARMOR_RAD_MINOR+20,
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/suit/armor/grim/pilgrim/pathfinder
	name = "light overcoat"
	desc = "A pathfinder's vestaments"
	icon_state = "sherpa"
	item_state = "sherpa"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.035
	armor = list(
		melee = ARMOR_MELEE_FLAK, // Good melee.
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+10,
		rad = ARMOR_RAD_MINOR+20,
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/suit/armor/grim/pilgrim/smuggler
	name = "light overcoat"
	desc = "A jacket that only the shadiest of characters would wear, this one has two light flak armor plates glued to it's internal pockets."
	icon_state = "scum"
	item_state = "scum"
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/paddingheavy)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-15
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-300
	slowdown_general = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR,
		bio = ARMOR_BIO_MINOR+10,
		rad = ARMOR_RAD_MINOR+20,
		bomb = ARMOR_BOMB_MINOR
		)
