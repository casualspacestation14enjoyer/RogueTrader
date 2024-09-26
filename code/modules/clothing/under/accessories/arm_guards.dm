/obj/item/clothing/accessory/arm_guards
	name = "Heavy Reinforcements"
	desc = "Heavy armor reinforcement, similar in design to a bodyglove but worn on the outside for maximum protection covering the arms."
	icon_override = 'icons/mob/onmob/onmob_suit.dmi'
	icon = 'icons/obj/clothing/obj_suit.dmi'
	accessory_icons = list(
		slot_tie_str = 'icons/mob/onmob/onmob_suit.dmi',
		slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi'
	)
	icon_state = "armguards"
	gender = PLURAL
	body_parts_covered = ARMS // Don't assign melee defense to arm_guards unless absolutely necessary. Can break the meta.
	slowdown = 0.06
	armor = list(
		melee = 0,
		bullet = 3,
		laser = 3,
		energy = 3,
		rad = 6,
		bomb = 6
		)
	slot = ACCESSORY_SLOT_ARMOR_ARMS
	body_location = ARMS
	flags_inv = CLOTHING_BULKY


/obj/item/clothing/accessory/arm_guards/blue
	desc = "A pair of blue arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_blue"


/obj/item/clothing/accessory/arm_guards/navy
	desc = "A pair of navy blue arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_navy"


/obj/item/clothing/accessory/arm_guards/green
	desc = "A pair of green arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_green"


/obj/item/clothing/accessory/arm_guards/tan
	desc = "A pair of tan arm pads reinforced with armor plating. Attaches to a plate carrier."
	icon_state = "armguards_tan"


/obj/item/clothing/accessory/arm_guards/merc
	name = "heavy arm guards"
	desc = "A pair of red-trimmed black arm pads reinforced with heavy armor plating. Attaches to a plate carrier."
	icon_state = "armguards_merc"
	armor = list(
		melee = 0,
		bullet = 4,
		laser = 4,
		energy = 4,
		rad = 8,
		bomb = 6
		)


/obj/item/clothing/accessory/arm_guards/riot
	name = "riot arm guards"
	desc = "A pair of armored arm pads with heavy padding to protect against melee attacks."
	icon_state = "armguards_riot"
	armor = list(
		melee = 1,
		bullet = 2,
		laser = 2,
		energy = 2,
		bomb = 4
	)
	siemens_coefficient = 0.5


/obj/item/clothing/accessory/arm_guards/ballistic
	name = "ballistic arm guards"
	desc = "A pair of armored arm pads with heavy plates to protect against ballistic projectiles."
	icon_state = "armguards_ballistic"
	armor = list(
		melee = 0,
		bullet = 5,
		laser = 3,
		rad = 6,
		energy = 3,
		bomb = 6
	)
	siemens_coefficient = 0.7


/obj/item/clothing/accessory/arm_guards/ablative
	name = "ablative arm guards"
	desc = "A pair of armored arm pads with advanced shielding to protect against energy weapons."
	icon_state = "armguards_ablative" // Super cool tech.
	armor = list(
		melee = 0,
		bullet = 4,
		laser = 6,
		rad = 10,
		energy = 6,
		bomb = 8
	)
	siemens_coefficient = 0
