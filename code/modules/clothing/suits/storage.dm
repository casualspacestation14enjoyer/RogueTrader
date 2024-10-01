/obj/item/clothing/suit/armor/grim/storage
	var/obj/item/storage/internal/pockets/pockets
	var/slots = 2
	body_parts_covered = LEGS|ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/padding)
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-8,
		laser = ARMOR_LASER_FLAK-8,
		energy = ARMOR_ENERGY_TEN-8,
		rad = ARMOR_RAD_MINOR-5,
		bio = ARMOR_BIO_MINOR-15,
		bomb = ARMOR_BOMB_MINOR-10
		)

/obj/item/clothing/suit/armor/grim/storage/Initialize()
	. = ..()
	pockets = new/obj/item/storage/internal/pockets(src, slots, ITEM_SIZE_SMALL) //fit only pocket sized items

/obj/item/clothing/suit/armor/grim/storage/Destroy()
	QDEL_NULL(pockets)
	. = ..()

/obj/item/clothing/suit/armor/grim/storage/attack_hand(mob/user as mob)
	if (pockets.handle_attack_hand(user))
		..(user)

/obj/item/clothing/suit/armor/grim/storage/MouseDrop(obj/over_object as obj)
	if (pockets.handle_mousedrop(usr, over_object))
		..(over_object)


/obj/item/clothing/suit/armor/grim/storage/emp_act(severity)
	pockets.emp_act(severity)
	..()

/obj/item/clothing/suit/armor/grim/storage/vest/merc
	slots = 4

/obj/item/clothing/suit/armor/grim/storage/vest/tactical
	slots = 4
