/obj/structure/closet/kitchen
	name = "kitchen cabinet"

/obj/structure/closet/kitchen/WillContain()
	return list(
		/obj/item/reagent_containers/food/condiment/salt = 1,
		/obj/item/reagent_containers/food/condiment/flour = 2,
		/obj/item/reagent_containers/food/condiment/sugar = 1,
		/obj/item/reagent_containers/glass/bottle/dye/polychromic = 2
	)

/obj/structure/closet/fridge
	name = "refrigerator"
	desc = "It's a refrigerated storage unit."
	icon = 'icons/obj/closets/fridge.dmi'
	icon_state = "closed_unlocked"
	closet_appearance = null

/obj/structure/closet/fridge/WillContain()
	return list(
		/obj/item/reagent_containers/food/drinks/milk = 4,
		/obj/item/reagent_containers/food/drinks/soymilk = 2,
		/obj/item/storage/fancy/egg_box/full = 1
	)

/obj/structure/closet/fridge/meat/WillContain()
	return list(
		/obj/item/reagent_containers/food/snacks/meat/beef = 3,
		/obj/random/fish = 2,
		/obj/item/storage/fancy/bugmeat = 2
	)
