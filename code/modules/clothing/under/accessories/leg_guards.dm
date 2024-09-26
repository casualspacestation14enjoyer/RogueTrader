/obj/item/clothing/accessory/leg_guards
	name = "Leg Reinforcements"
	desc = "A pair of armored leg pads in black. Attaches to a plate carrier."
	icon_override = 'icons/mob/onmob/onmob_suit.dmi'
	icon = 'icons/obj/clothing/obj_suit.dmi'
	accessory_icons = list(slot_tie_str = 'icons/mob/onmob/onmob_suit.dmi', slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	icon_state = "legguards"
	gender = PLURAL
	body_parts_covered = LEGS
	slowdown = 0.07
	armor = list(
		melee = 0,
		bullet = 3,
		laser = 3,
		energy = 3,
		rad = 6,
		bomb = 6
		)
	slot = ACCESSORY_SLOT_ARMOR_LEGS
	body_location = LEGS
	flags_inv = CLOTHING_BULKY


/obj/item/clothing/accessory/leg_guards/blue
	desc = "A pair of armored leg pads in blue. Attaches to a plate carrier."
	icon_state = "legguards_blue"


/obj/item/clothing/accessory/leg_guards/navy
	desc = "A pair of armored leg pads in navy blue. Attaches to a plate carrier."
	icon_state = "legguards_navy"


/obj/item/clothing/accessory/leg_guards/green
	desc = "A pair of armored leg pads in green. Attaches to a plate carrier."
	icon_state = "legguards_green"


/obj/item/clothing/accessory/leg_guards/tan
	desc = "A pair of armored leg pads in tan. Attaches to a plate carrier."
	icon_state = "legguards_tan"


/obj/item/clothing/accessory/leg_guards/merc
	name = "heavy leg guards"
	desc = "A pair of heavily armored leg pads in red-trimmed black. Attaches to a plate carrier."
	icon_state = "legguards_merc"
	armor = list(
		melee = 0,
		bullet = 6,
		laser = 6,
		energy = 6,
		rad = 8,
		bomb = 6
		)


/obj/item/clothing/accessory/leg_guards/riot
	name = "riot leg guards"
	desc = "A pair of armored leg pads with heavy padding to protect against melee attacks. Looks like they might impair movement."
	icon_state = "legguards_riot"
	armor = list(
		melee = 1,
		bullet = 3,
		laser = 3,
		energy = 4,
		bomb = 4
	)
	siemens_coefficient = 0.5


/obj/item/clothing/accessory/leg_guards/ballistic
	name = "ballistic leg guards"
	desc = "A pair of armored leg pads with heavy plates to protect against ballistic projectiles. Looks like they might impair movement."
	icon_state = "legguards_ballistic"
	armor = list(
		melee = 0,
		bullet = 6,
		laser = 6,
		rad = 6,
		energy = 6,
		bomb = 6
	)
	siemens_coefficient = 0.7


/obj/item/clothing/accessory/leg_guards/ablative
	name = "ablative leg guards"
	desc = "A pair of armored leg pads with advanced shielding to protect against energy weapons. Looks like they might impair movement."
	icon_state = "legguards_ablative"
	armor = list(
		melee = 0,
		bullet = 8,
		laser = 8,
		rad = 10,
		energy = 15,
		bomb = 8
	)
	siemens_coefficient = 0
