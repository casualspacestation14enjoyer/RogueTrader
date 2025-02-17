/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "Designed to both hide identities and keep your face comfy and warm."
	icon_state = "balaclava"
	item_state = "balaclava"
	flags_inv = HIDEFACE|BLOCKHAIR|HIDEEARS
	body_parts_covered = FACE|HEAD
	down_body_parts_covered = HEAD
	down_flags_inv = BLOCKHEADHAIR
	down_icon_state = "balaclava_r"
	pull_mask = 1
	w_class = ITEM_SIZE_SMALL
	sprite_sheets = list(
		SPECIES_KROOT = 'icons/mob/species/unathi/onmob_mask_unathi.dmi',
		)

/obj/item/clothing/mask/balaclava/tactical
	name = "green balaclava"
	icon_state = "swatclava"
	down_icon_state = "swatclava_r"

/obj/item/clothing/mask/luchador
	name = "luchador mask"
	desc = "Worn by robust fighters, flying high to defeat their foes!"
	icon_state = "luchag"
	item_state = "luchag"
	flags_inv = HIDEFACE|BLOCKHAIR|HIDEEARS
	body_parts_covered = HEAD|FACE
	w_class = ITEM_SIZE_SMALL
	siemens_coefficient = 3.0

/obj/item/clothing/mask/luchador/tecnicos
	name = "\improper Tecnicos mask"
	desc = "Worn by robust fighters who uphold justice and fight honorably."
	icon_state = "luchador"
	item_state = "luchador"

/obj/item/clothing/mask/luchador/rudos
	name = "\improper Rudos mask"
	desc = "Worn by robust fighters who are willing to do anything to win."
	icon_state = "luchar"
	item_state = "luchar"
