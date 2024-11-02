/obj/item/clothing/shoes/galoshes
	desc = "Rubber boots."
	name = "galoshes"
	icon_state = "galoshes"
	permeability_coefficient = 0.05
	item_flags = ITEM_FLAG_NOSLIP
	species_restricted = null

/obj/item/clothing/shoes/galoshes/Initialize()
	. = ..()
	slowdown_per_slot[slot_shoes] = 0.5

/obj/item/clothing/shoes/jackboots
	name = "jackboots"
	desc = "Tall synthleather boots with an artificial shine -- along the bottom are sleek inbuilt magsoles."
	icon_state = "jackboots"
	item_state = "jackboots"
	force = 3
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_BASIC,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY
		)
	siemens_coefficient = 0.7
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	cold_protection = FEET
	body_parts_covered = FEET
	heat_protection = FEET
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	var/magpulse = 0
	var/icon_base = "magboots"
	action_button_name = "Toggle Magboots"
	var/obj/item/clothing/shoes/shoes = null
	var/mob/living/carbon/human/wearer = null	//For shoe procs
	randpixel = 0
	var/online_slowdown = 1
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/shoes/jackboots/proc/set_slowdown()
	slowdown_per_slot[slot_shoes] = shoes? max(0, shoes.slowdown_per_slot[slot_shoes]): 0	//So you can't put on magboots to make you walk faster.
	if (magpulse)
		slowdown_per_slot[slot_shoes] += online_slowdown

/obj/item/clothing/shoes/jackboots/attack_self(mob/user)
	if(magpulse)
		item_flags &= ~ITEM_FLAG_NOSLIP
		magpulse = 0
		set_slowdown()
		force = 3
		if(icon_base) icon_state = "[icon_base]0"
		to_chat(user, "You disable the mag-pulse traction system.")
	else
		item_flags |= ITEM_FLAG_NOSLIP
		magpulse = 1
		set_slowdown()
		force = 5
		if(icon_base) icon_state = "[icon_base]1"
		playsound(get_turf(src), 'sound/effects/magnetclamp.ogg', 20)
		to_chat(user, "You enable the mag-pulse traction system.")
	user.update_inv_shoes()	//so our mob-overlays update
	user.update_action_buttons()
	user.update_floating()

/obj/item/clothing/shoes/jackboots/mob_can_equip(mob/user)
	var/mob/living/carbon/human/H = user

	if(H.shoes)
		shoes = H.shoes
		if(shoes.overshoes)
			to_chat(user, "You are unable to wear \the [src] as \the [H.shoes] are in the way.")
			shoes = null
			return 0
		if(!H.unEquip(shoes, src))//Remove the old shoes so you can put on the magboots.
			shoes = null
			return 0

	if(!..())
		if(shoes) 	//Put the old shoes back on if the check fails.
			if(H.equip_to_slot_if_possible(shoes, slot_shoes))
				src.shoes = null
		return 0

	if (shoes)
		to_chat(user, "You slip \the [src] on over \the [shoes].")
	set_slowdown()
	wearer = H //TODO clean this up
	return 1

/obj/item/clothing/shoes/jackboots/equipped()
	..()
	var/mob/M = src.loc
	if(istype(M))
		M.update_floating()

/obj/item/clothing/shoes/jackboots/dropped()
	..()
	if(!wearer)
		return

	var/mob/living/carbon/human/H = wearer
	if(shoes && istype(H))
		if(!H.equip_to_slot_if_possible(shoes, slot_shoes))
			shoes.dropInto(loc)
		src.shoes = null
	wearer.update_floating()
	wearer = null

/obj/item/clothing/shoes/jackboots/examine(mob/user)
	. = ..()
	var/state = "disabled"
	if(item_flags & ITEM_FLAG_NOSLIP)
		state = "enabled"
	to_chat(user, "Its mag-pulse traction system appears to be [state].")

/obj/item/clothing/shoes/jackboots/unathi
	name = "toe-less jackboots"
	desc = "Modified pair of jackboots, particularly comfortable for those species whose toes hold claws."
	item_state = "digiboots"
	icon_state = "digiboots"
	species_restricted = null

/obj/item/clothing/shoes/workboots
	name = "workboots"
	desc = "A pair of steel-toed work boots designed for use in industrial settings. Safety first."
	icon_state = "workboots"
	item_state = "workboots"
	item_flags = ITEM_FLAG_WASHER_ALLOWED | ITEM_FLAG_THICKMATERIAL
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY
		)
	siemens_coefficient = 0.7
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	body_parts_covered = FEET
	heat_protection = FEET
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE

/obj/item/clothing/shoes/workboots/toeless
	name = "toe-less workboots"
	desc = "A pair of toeless work boots designed for use in industrial settings. Modified for species whose toes have claws."
	icon_state = "workbootstoeless"
	species_restricted = null
	item_flags = ITEM_FLAG_WASHER_ALLOWED
