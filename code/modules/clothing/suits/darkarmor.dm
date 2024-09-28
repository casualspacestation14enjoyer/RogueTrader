// Special 40k Armors that are non modular. E.G. Ceramite, power armors that provide full body protection and should not have removable chestpieces.

/obj/item/clothing/suit/armor/astartes
	name = "adeptus astartes scout carapace" // Note to self. Make astartes under uniform not allow utility slots. Alongside other heavily armored ones to avoid bodyglove stacking.
	desc = "The sturdy armour, issued to Adeptus Astartes Scouts for their service until they prove themselves worthy to become full-fledged Battlebrothers."
	icon_state = "fharmor"
	item_state = "fharmor"
	body_parts_covered = LEGS|ARMS|FULL_TORSO // Remember to make power gloves and booties.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	slowdown_general = 0.13
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+4,
		laser = ARMOR_LASER_CARAPACE+4,
		energy = ARMOR_ENERGY_MINOR+16,
		rad = ARMOR_RAD_MINOR+25,
		bio = ARMOR_BIO_MINOR+15,
		bomb = ARMOR_BOMB_PADDED+5
		)
