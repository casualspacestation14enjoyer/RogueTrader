



/obj/item/gun/projectile/automatic/autogun
	name = "Rugged Autogun"
	desc = "A mass-produced slum forged autogun with a simple folding stock, this design loosely based on standard patterns of autogun lacks the embroidery or reliability of it's militarum sisters."
	icon_state = "machinepistol"
	item_state = "machinepistol"
	wielded_item_state = "machinepistol-wielded"
	slot_flags = SLOT_BACK|SLOT_BELT
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty = 1
	accuracy = 0
	fire_delay = 2.5
	sales_price = 8
	caliber = list(
    CALIBER_AUTOGUN,
    CALIBER_AUTOGUN_TECH
)
	fire_sound = 'sound/warhammer/guns/fire/smg_fire.ogg' // reminder sounds are under warhammer/
	ammo_type = /obj/item/ammo_casing/pistol
	magazine_type = /obj/item/ammo_magazine/autogun
	allowed_magazines = /obj/item/ammo_magazine/autogun
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3, burst_delay=1.5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3, burst_delay=1.5, burst_accuracy=list(0,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/machine_pistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "machinepistol"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"
	else
		icon_state = "machinepistol-e"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"

/obj/item/gun/projectile/automatic/boltrifle
	name = "Godwyn Mark Vb Pattern Bolter" // For future, create carbine, heavy bolter versions. Carbine smaller magazine, size, slowdown and one-handed handling.
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in XIIIth Chapter Ultramarines's colour scheme."
	icon_state = "ultrabolter"
	item_state = "hbolter"
	wielded_item_state = "hbolter"
	w_class = ITEM_SIZE_HUGE
	force = 30
	slot_flags = SLOT_BACK
	max_shells = 35 // SM2.
	caliber = ".95"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2, TECH_ILLEGAL = 2)
	ammo_type = /obj/item/ammo_casing/bolter/astartes
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/bolt_rifle_magazine_astartes
	allowed_magazines = list(/obj/item/ammo_magazine/bolt_rifle_magazine_astartes)
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	mag_remove_sound = 'sound/warhammer/guns/interact/ltrifle_magout.ogg'
	mag_insert_sound = 'sound/warhammer/guns/interact/ltrifle_magin.ogg'
	load_sound = 'sound/warhammer/guns/interact/ltrifle_cock.ogg'
	fire_delay = 4
	one_hand_penalty = 2
	accuracy = 0.5
	sales_price = 60

	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=4, burst_delay=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=4, burst_delay=2, burst_accuracy=list(0,-1,-1), dispersion=null)
		)


/obj/item/gun/projectile/automatic/boltrifle/New()
	..()
	slowdown_per_slot[slot_back] = 0.1
	slowdown_per_slot[slot_belt] = 0.2
	slowdown_per_slot[slot_r_hand] = 0.4
	slowdown_per_slot[slot_l_hand] = 0.4

/obj/item/gun/projectile/automatic/boltrifle/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ultrabolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		icon_state = "ultrabolter-e"
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/raven
	name = "Godwyn Mark Vb Pattern Bolter"
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in XIXth Chapter Raven Guards's colour scheme."
	icon_state = "ravenbolter"

/obj/item/gun/projectile/automatic/boltrifle/ravenbolter/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ravenbolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/sally
	name = "Godwyn Mark Vb Pattern Bolter"
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in XVIIIth Chapter Salamanders's colour scheme."
	icon_state = "sallybolter"

/obj/item/gun/projectile/automatic/boltrifle/sally/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "sallybolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		icon_state = "sallybolter-e"
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/bang
	name = "Baal Mark Vb Pattern Bolter"
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in IXth Chapter Blood Angels's colour scheme."
	icon_state = "bangbolter"

/obj/item/gun/projectile/automatic/boltrifle/bang/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "bangbolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		icon_state = "bangbolter-e"
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/lockebolter //needs lots of work and love, ok standin for now
	name = "Locke Pattern bolter"
	desc = "The Locke Pattern Bolter, designed for Adeptus Arbites personnel when heavier firepower are required. Can also be found in hands of Astra Militarum officers, veterans and Commissar, Though relatively uncommon. It is a human-sized Bolter, Thus it's very popular among the troops and the lucky ones who get their hands on one of these bad boy."
	icon_state = "lockebolter"
	item_state = "autoshotty"
	wielded_item_state = "autoshotty-wielded"
	w_class = ITEM_SIZE_HUGE
	force = 15
	slot_flags = SLOT_BACK
	max_shells = 30
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1, TECH_ILLEGAL = 2)
	load_method = MAGAZINE
	one_hand_penalty = 3 //its a bolter not a toy gun
	caliber = ".75"
	ammo_type = /obj/item/ammo_casing/bolter
	magazine_type = /obj/item/ammo_magazine/bolt_rifle_magazine
	allowed_magazines = list(/obj/item/ammo_magazine/bolt_rifle_magazine)
	fire_delay = 2.45
	burst = 1
	accuracy = -0.5
	sales_price = 70

/obj/item/gun/projectile/automatic/boltrifle/lockebolter/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "lockebolter"
		item_state = "autoshotty"
		wielded_item_state = "autoshotty-wielded"
	else
		icon_state = "lockebolter-e"
		item_state = "autoshotty-e"
		wielded_item_state = "autoshotty-wielded-e"
