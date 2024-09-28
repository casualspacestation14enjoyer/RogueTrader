/obj/item/clothing/accessory/arm_guards
	name = "crude armplates"
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
	slowdown = 0.04
	armor = list(
		melee = 0,
		bullet = 1,
		laser = 1,
		energy = 1,
		rad = 5,
		bomb = 5
		)
	slot = ACCESSORY_SLOT_ARMOR_ARMS
	body_location = ARMS
	flags_inv = CLOTHING_BULKY


/obj/item/clothing/accessory/arm_guards/blue
	icon_state = "armguards_blue"


/obj/item/clothing/accessory/arm_guards/navy
	icon_state = "armguards_navy"


/obj/item/clothing/accessory/arm_guards/green
	icon_state = "armguards_green"


/obj/item/clothing/accessory/arm_guards/tan
	icon_state = "armguards_tan"


/obj/item/clothing/accessory/arm_guards/merc
	name = "carapace armplates"
	desc = "A pair of extra light red-trimmed black carapace armplates."
	icon_state = "armguards_merc"
	slowdown = 0.03
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 1,
		energy = 1,
		rad = 7,
		bomb = 7
		)


/obj/item/clothing/accessory/arm_guards/flak
	name = "flak armplates"
	desc = "A pair of heavy armored flak armplates."
	icon_state = "armguards_riot"
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


/obj/item/clothing/accessory/arm_guards/reactiveslug
	name = "heavy arm guards"
	desc = "A pair of reactive armor tech armplates. Designed to stop slug rounds."
	icon_state = "armguards_ballistic"
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


/obj/item/clothing/accessory/arm_guards/reactivelas
	name = "heavy arm guards"
	desc = "A pair of reactive armor tech armplates. Designed to stop energy weapons."
	icon_state = "armguards_ablative"
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
