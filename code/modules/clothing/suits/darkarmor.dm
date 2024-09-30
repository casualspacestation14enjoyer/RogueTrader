// Special 40k Armors that are non modular. E.G. Ceramite, power armors that provide full body protection and should not have removable chestpieces.

/obj/item/clothing/suit/armor/astartes
	name = "adeptus astartes scout carapace" // Note to self. Make astartes under uniform not allow utility slots. Alongside other heavily armored ones to avoid bodyglove stacking.
	desc = "The sturdy armour, issued to Adeptus Astartes Scouts for their service until they prove themselves worthy to become full-fledged Battlebrothers."
	icon_state = "fharmor"
	item_state = "fharmor"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO // Remember to make power gloves and booties.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-2,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_MINOR+26,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
		bomb = ARMOR_BOMB_PADDED+5
		)


// Tau
/obj/item/clothing/suit/armor/tau
	name = "fire warrior battle suit"
	desc = "The impeccable yellow and brown armor of the Tau warrior caste"
	icon_state = "fw_armor"
	item_state = "fw_armor"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.11
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-2,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-2,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_MINOR+26,
		rad = ARMOR_RAD_MINOR+55,
		bio = ARMOR_BIO_MINOR+35,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/tau/breacher
	name = "fire warrior breacher suit"
	desc = "The white and bright armor of a Tau Breacher."
	icon_state = "tbrea"
	item_state = "tbrea"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.125
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_MINOR+26,
		rad = ARMOR_RAD_MINOR+65,
		bio = ARMOR_BIO_MINOR+45,
		bomb = ARMOR_BOMB_PADDED+15
		)

/obj/item/clothing/suit/armor/tau/scout
	name = "fire warrior scout suit"
	desc = "The impeccable yellow and brown armor of the Tau warrior caste. This one is specially modified for use by recon elements of the Tau warriors."
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	slowdown_general = 0.09
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-3,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-3,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_MINOR+26,
		rad = ARMOR_RAD_MINOR+55,
		bio = ARMOR_BIO_MINOR+35,
		bomb = ARMOR_BOMB_PADDED
		)

// Eldar
/obj/item/clothing/suit/armor/eldar
	name = "guardian armour"
	desc = "A ancient armor. It looks like it's made from Thermoplas in a scale like pattern."
	icon_state = "eldarmor"
	item_state = "eldarmor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.1 // Marshal's carapace is 0.11
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_MINOR+30,
		rad = ARMOR_RAD_MINOR+65,
		bio = ARMOR_BIO_MINOR+65,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/eldar/drukhari
	name = "dark plate armour"
	desc = "A ancient armor. It looks as if made from hardened resin in a thin-scale like pattern. It cackles with electrical power."
	icon_state = "deldarmor"
	item_state = "deldarmor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.085
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_MINOR+30,
		rad = ARMOR_RAD_MINOR+55,
		bio = ARMOR_BIO_MINOR+55,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/eldar/corsair
	name = "corsair armour"
	desc = "The dark and shadowy armor of a voidscarred Corsair.."
	icon_state = "aeldar_armor"
	item_state = "aeldar_armor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.08 // Faster. But weaker to rad/primitive weapons.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_MINOR+30,
		rad = ARMOR_RAD_MINOR+55,
		bio = ARMOR_BIO_MINOR+55,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/eldar/ranger
	name = "ranger armour"
	desc = "An Eldar Ranger's Armour, comprised of many layers of cameoline materials with an underlying thermoplas player.."
	icon_state = "ranger"
	item_state = "ranger"
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	slowdown_general = 0.1 // Marshal's carapace is 0.11
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-50
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_CARAPACE+1,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_MINOR+30,
		rad = ARMOR_RAD_MINOR+65,
		bio = ARMOR_BIO_MINOR+65,
		bomb = ARMOR_BOMB_PADDED+5
		)

/obj/item/clothing/suit/armor/eldar/ranger/verb/toggle_eldar_camo()
	set name = "Toggle Eldar Camo"
	set category = "Eldar"
	var/stealth_alpha = 15
	if(alpha == stealth_alpha)
		to_chat(usr,"You disable your armour's stealth features.")
		animate(src, alpha = 255, time = 1.5 SECONDS)
	else
		to_chat(usr,"You enable your armour's stealth features.")
		animate(src, alpha = stealth_alpha, time = 1.5 SECONDS)

/mob/living/carbon/human/proc/eldar_active_camo()
	set category = "Abilities"
	set name = "Active Camo"
	set desc = "Camouflage yourself"
	var/stealth_alpha = 15

	if(alpha == stealth_alpha)
		animate(src, alpha = 255, time = 1.5 SECONDS)
	else
		animate(src, alpha = stealth_alpha, time = 1.5 SECONDS)

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
