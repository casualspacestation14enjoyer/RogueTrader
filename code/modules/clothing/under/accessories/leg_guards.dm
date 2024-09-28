/obj/item/clothing/accessory/leg_guards
	name = "crude legplates"
	desc = "Heavy armor reinforcement, similar in design to a bodyglove but worn on the outside for maximum protection covering the legs."
	icon_override = 'icons/mob/onmob/onmob_suit.dmi'
	icon = 'icons/obj/clothing/obj_suit.dmi'
	accessory_icons = list(
		slot_tie_str = 'icons/mob/onmob/onmob_suit.dmi',
		slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi'
	)
	icon_state = "legguards"
	gender = PLURAL
	body_parts_covered = LEGS // Don't assign melee defense to leg_guards unless absolutely necessary. Can break the meta.
	slowdown = 0.04
	armor = list(
		melee = 0,
		bullet = 1,
		laser = 1,
		energy = 1,
		rad = 5,
		bomb = 5
	)
	slot = ACCESSORY_SLOT_ARMOR_LEGS
	body_location = LEGS
	flags_inv = CLOTHING_BULKY


/obj/item/clothing/accessory/leg_guards/blue
	icon_state = "legguards_blue"


/obj/item/clothing/accessory/leg_guards/navy
	icon_state = "legguards_navy"


/obj/item/clothing/accessory/leg_guards/green
	icon_state = "legguards_green"


/obj/item/clothing/accessory/leg_guards/tan
	icon_state = "legguards_tan"


/obj/item/clothing/accessory/leg_guards/merc
	name = "carapace legplates"
	desc = "A pair of extra light red-trimmed black carapace legplates."
	icon_state = "legguards_merc"
	slowdown = 0.03
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 1,
		energy = 1,
		rad = 7,
		bomb = 7
	)


/obj/item/clothing/accessory/leg_guards/flak
	name = "flak legplates"
	desc = "A pair of heavy armored flak legplates."
	icon_state = "legguards_riot"
	slowdown = 0.04
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 1,
		energy = 1,
		rad = 5,
		bomb = 5
	)
	siemens_coefficient = 0.5


/obj/item/clothing/accessory/leg_guards/reactiveslug
	name = "heavy legplates"
	desc = "A pair of reactive armor tech legplates. Designed to stop slug rounds."
	icon_state = "legguards_ballistic"
	slowdown = 0.06
	armor = list(
		melee = 1,
		bullet = 2,
		laser = 1,
		rad = 6,
		energy = 3,
		bomb = 10
	)
	siemens_coefficient = 0.7


/obj/item/clothing/accessory/leg_guards/reactivelas
	name = "heavy legplates"
	desc = "A pair of reactive armor tech legplates. Designed to stop energy weapons."
	icon_state = "legguards_ablative"
	slowdown = 0.06
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 2,
		rad = 10,
		energy = 10,
		bomb = 15
	)
	siemens_coefficient = 0
