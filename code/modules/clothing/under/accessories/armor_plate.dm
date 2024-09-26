/obj/item/clothing/accessory/armor_plate
	name = "light flak plate"
	desc = "Constructed from steel-reinforced synthetic fibers, this light flak plate offers basic protection against shrapnel and low-velocity projectiles."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "armor_light"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0.06
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_MINOR-2,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR-2
		)
	slot = ACCESSORY_SLOT_ARMOR_CHEST
	flags_inv = null

/obj/item/clothing/accessory/armor_plate/padding
	name = "light padding"
	desc = "The lining of someone's clothes, it seems like they cut it out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_MINOR-6,
		rad = ARMOR_RAD_MINOR,
		bomb = ARMOR_BOMB_MINOR-6
		)

/obj/item/clothing/accessory/armor_plate/padding2
	name = "heavy padding"
	desc = "The heavy lining of someone's clothes, it seems like they cut it out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	color = COLOR_BEASTY_BROWN
	item_flags = ITEM_FLAG_THICKMATERIAL
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0.02
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-3,
		laser = ARMOR_LASER_FLAK-5,
		energy = ARMOR_ENERGY_MINOR-5,
		rad = ARMOR_RAD_MINOR+10,
		bomb = ARMOR_BOMB_MINOR-4
		)

/obj/item/clothing/accessory/armor_plate/paddingbio
	name = "special padding"
	desc = "The lining of someone's clothing, it seems like they cut it out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	item_flags = ITEM_FLAG_THICKMATERIAL
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0.02
	armor = list(
		melee = 3,
		bullet = ARMOR_BALLISTIC_PRIMAL-5,
		laser = ARMOR_LASER_PRIMAL-7,
		energy = 10,
		rad = ARMOR_RAD_RESISTANT+10,
		bio = ARMOR_BIO_RESISTANT+10,
		bomb = 0
		)

/obj/item/clothing/accessory/armor_plate/paddingbio2
	name = "hazard padding"
	desc = "The lining of someone's biohazard suit, it seems like they cut it out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	item_flags = ITEM_FLAG_THICKMATERIAL
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0.02
	armor = list(
		melee = 3,
		bullet = ARMOR_BALLISTIC_PRIMAL-5,
		laser = ARMOR_LASER_PRIMAL-7,
		energy = 10,
		rad = ARMOR_RAD_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		bomb = 0
		)

/obj/item/clothing/accessory/armor_plate/medium
	name = "medium flak plate"
	desc = "A plasteel-reinforced flak plate, providing enhanced protection against ballistic impacts and energy discharge. Lightweight but durable."
	icon_state = "armor_medium"
	item_flags = ITEM_FLAG_THICKMATERIAL
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_MINOR+2,
		rad = ARMOR_RAD_MINOR+10,
		bomb = ARMOR_BOMB_MINOR+2
		)


/obj/item/clothing/accessory/armor_plate/carapace
	name = "carapace plate"
	desc = "A carapace plate reinforced with ablative coatings, designed to dissipate energy and deflect high-velocity rounds. Provides robust defense in high-risk environments."
	icon_state = "armor_tactical"
	item_flags = ITEM_FLAG_THICKMATERIAL
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_MINOR+10,
		rad = ARMOR_RAD_MINOR+10,
		bomb = ARMOR_BOMB_PADDED-5
		)

	slowdown = 0.07


/obj/item/clothing/accessory/armor_plate/merc
	name = "heavy carapace plate"
	desc = "Crafted with ceramic composites and advanced synthetic materials, this heavy carapace plate maximizes protection against ballistic and energy-based attacks."
	icon_state = "armor_merc"
	item_flags = ITEM_FLAG_THICKMATERIAL
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = ARMOR_ENERGY_MINOR+12,
		rad = ARMOR_RAD_MINOR+20,
		bomb = ARMOR_BOMB_PADDED
		)
	slowdown = 0.08


/obj/item/clothing/accessory/armor_plate/bio
	name = "biohazard bodyglove"
	desc = "Composed of layered polymer fibers, this chemical bodyglove offers lightweight and flexible protection, suitable for menial mechanicus duties and light exploration."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	siemens_coefficient = 0.1
	color = COLOR_DARK_GREEN_GRAY
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_under.dmi')
	item_flags = ITEM_FLAG_THICKMATERIAL
	slot_flags = SLOT_OCLOTHING //can wear in suit slot as well
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "jensen_s"
	item_state = "jensen_s"
	slowdown = 0.06
	flags_inv = null
	armor = list(
		melee = 0,
		bullet = 1,
		laser = 1,
		energy = 6,
		rad = 30,
		bio = 30,
		bomb = 5
		)

/obj/item/clothing/accessory/armor_plate/biomech
	name = "mechanicus bodyglove"
	desc = "Composed of advanced tech polymer fibers, this carapace-mesh bodyglove offers lightweight and flexible protection, suitable for all mechanicus duties and exploration of death-worlds."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	siemens_coefficient = 0.1
	color = COLOR_DARK_GREEN_GRAY
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = 'icons/mob/onmob/onmob_under.dmi'
	item_flags = ITEM_FLAG_THICKMATERIAL
	slot_flags = SLOT_OCLOTHING //can wear in suit slot as well
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "jensen_s"
	item_state = "jensen_s"
	slowdown = 0.06
	flags_inv = null
	armor = list(
		melee = 0,
		bullet = 2,
		laser = 2,
		energy = 8,
		rad = 50,
		bio = 50,
		bomb = 15
		)

/obj/item/clothing/accessory/armor_plate/sneaky
	name = "low-profile bodyglove"
	desc = "Composed of layered polymer fibers, this low-profile bodyglove offers lightweight and flexible protection, suitable for minimizing bulk without sacrificing defense."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	siemens_coefficient = 0.1
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = 'icons/mob/onmob/onmob_under.dmi'
	slot_flags = SLOT_OCLOTHING
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "jensen_s"
	item_state = "jensen_s"
	slowdown = 0.06
	flags_inv = null
	armor = list(
		melee = 0,
		bullet = 3,
		laser = 3,
		energy = 3,
		rad = 20,
		bomb = 10
		)

/obj/item/clothing/accessory/armor_plate/sneakytech
	name = "low-profile experimental bodyglove"
	desc = "Made from tech polymers, this experimental bodyglove balances flexibility with advanced defensive capabilities, providing enhanced protection at the cost of more cumbersome movement."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_under.dmi')
	item_flags = ITEM_FLAG_THICKMATERIAL
	slot_flags = SLOT_OCLOTHING
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "jensen_s"
	item_state = "jensen_s"
	slowdown = 0.08
	flags_inv = null
	armor = list(
		melee = 1, // Do not ever make a bodyglove give more then +1 melee. Theoretically this is already broken when used with carapace.
		bullet = 6,
		laser = 6,
		energy = 6,
		rad = 30,
		bomb = 15
		)
