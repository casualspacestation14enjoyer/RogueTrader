

/obj/item/clothing/suit/armor/prince
	name = "Prince's Plate"
	desc = "The Border Prince's personal Plate Armor"
	icon_state = "prince"
	item_state = "prince"

// ORDOS INQUISITION
/obj/item/clothing/suit/armor/grim/agent
	name = "carapace coat"
	desc = "A brilliantly made carapace coat for Inquisitorial Agents, adorned with holy seals and the Rosette to ward off Chaos corruption."
	icon_state = "acolytecoat"
	item_state = "acolytecoat"
	body_parts_covered = LEGS | ARMS
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapaceheavy)
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +100
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE + 1,
		bullet = ARMOR_BALLISTIC_CARAPACE + 1,
		laser = ARMOR_LASER_CARAPACE + 1,
		energy = ARMOR_ENERGY_MINOR + 25,
		bio = ARMOR_BIO_MINOR + 30,
		rad = ARMOR_RAD_MINOR + 40,
		bomb = ARMOR_BOMB_PADDED + 20
	)

/obj/item/clothing/suit/armor/grim/agent/inquisitor
	name = "masterwork carapace coat"
	desc = "The formidable, brilliantly made Carapace Armour for the Inquisitorial Agent, bearing the holy symbol of the Inquisition, the Rosette."
	icon_state = "inqcoat"
	item_state = "inqcoat"
	body_parts_covered = LEGS | ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +150
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE + 1,
		bullet = ARMOR_BALLISTIC_CARAPACE + 2,
		laser = ARMOR_LASER_CARAPACE + 2,
		energy = ARMOR_ENERGY_MINOR + 35,
		bio = ARMOR_BIO_MINOR + 40,
		rad = ARMOR_RAD_MINOR + 50,
		bomb = ARMOR_BOMB_PADDED + 30
	)

/obj/item/clothing/suit/armor/grim/agent/hereticus
	name = "masterwork carapace coat"
	desc = "The Inquisitor's holy coat, forged from a Tech-priest of Mars for his use in his path of holy fire toward enemies of our Emperor, Hanging from the coat a Inquisitorial Rosette, It shines brightly as if it is the Emperor himself is present, For he'll cleanse the darkness."
	icon_state = "hereticuscoat"
	item_state = "hereticuscoat"
	body_parts_covered = LEGS | ARMS
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	accessories = list(/obj/item/clothing/accessory/armor_plate/carapacemaster)
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -60
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +150
	slowdown_general = 0.06
	armor = list(
		melee = ARMOR_MELEE_CARAPACE + 1,
		bullet = ARMOR_BALLISTIC_CARAPACE + 2,
		laser = ARMOR_LASER_CARAPACE + 2,
		energy = ARMOR_ENERGY_MINOR + 35,
		bio = ARMOR_BIO_MINOR + 40,
		rad = ARMOR_RAD_MINOR + 50,
		bomb = ARMOR_BOMB_PADDED + 30
	)

/obj/item/clothing/suit/armor/grim/storage/hooded/inqparmor
	name = "relic power armour"
	desc = "This ancient and sacred power armour was forged by the tech-priests of Mars, sanctified for the Inquisitor's righteous crusade against the enemies of the Emperor. Bearing the engraved Inquisitorial Rosette, its gleaming surface radiates with the Emperor's divine light, as if his presence guides the wearer to purge the darkness."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	valid_accessory_slots = null // So you can't remove or attach armor acceesories.
	restricted_accessory_slots = null
	accessories = null
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	slowdown_general = 0.12 // Tiny bit slow. Design wise power armor is more rare then a lemun russ tank, it has no downsides. It simply is superior to all other armor.
	hoodtype = /obj/item/clothing/head/inqhood
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR,
		laser = ARMOR_LASER_POWER_ARMOUR,
		energy = ARMOR_ENERGY_MINOR + 55,
		bio = ARMOR_BIO_MINOR + 84,
		rad = ARMOR_RAD_MINOR + 86,
		bomb = ARMOR_BOMB_PADDED + 45
	)
/obj/item/clothing/head/inqhood
	name = "inquisitor's hood"
	desc = "A blood red hood with golden trim"
	icon_state = "inqhood"
	item_state = "inqhood"
	max_pressure_protection = RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE -100
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +1500
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS|BLOCKHAIR|BLOCKHEADHAIR
	unacidable = 1
	slowdown_general = 0.005
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-1,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-1,
		laser = ARMOR_LASER_POWER_ARMOUR-1,
		energy = ARMOR_ENERGY_MINOR + 55,
		bio = ARMOR_BIO_MINOR + 84,
		rad = ARMOR_RAD_MINOR + 86,
		bomb = ARMOR_BOMB_PADDED + 45
	)



/obj/item/clothing/suit/armor/orkarmor
	name = "'Eavy Metal Ork Armor"
	desc = "Scavenged 'eavy bitz to keep ya' krumpin' longa'!"
	icon_state = "ork_m_armor"
	item_state = "ork_m_armor"
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	body_parts_covered = LEGS|ARMS|FULL_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE-45
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	slowdown_general = 0.4 // Make sure to set ork speed to match this slowdown. So it only slows down non-orks wearing it.
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_MINOR+10,
		bio = ARMOR_BIO_MINOR+20,
		rad = ARMOR_RAD_MINOR+40,
		bomb = ARMOR_BOMB_MINOR+20
	)

/*

// Ork



/obj/item/clothing/suit/armor/orkarmor/snazzy
	name = "Snazzy Shoota Armor"
	desc = "Snazzy Armor of em ranged shoota boy types. Gud all rounda. Wat eva dat wurd means..."
	icon_state = "snazzya"
	item_state = "snazzya"
	armor = list(melee = 8, bullet = 39, laser = 35, energy = 25, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/orkarmor/freeb
	name = "Freeboota Coat"
	desc = "Freeboota Coat of em ranged merc boy types. Gud all rounda. Wat eva dat wurd means..."
	icon_state = "freeboota"
	item_state = "freeboota"
	armor = list(melee = 8, bullet = 35, laser = 39, energy = 25, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/orkarmor/snazzy/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.1

/obj/item/clothing/suit/armor/orkarmor/skullza
	name = "Orky Boy Skull Armor"
	desc = "Da armor of a real lova of humie skullz'. Dis Boy 'oves gettin' in klose kombat, it's defeenses help loads in da maylays!"
	icon_state = "ork_skullza"
	item_state = "ork_skullza"
	armor = list(melee = 12, bullet = 35, laser = 35, energy = 25, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/orkarmor/skullza/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.1

/obj/item/clothing/suit/armor/orkarmor/zog
	name = "Zogging Ork Boy Armor"
	desc = "Da buttom of de barrel, dis one. Won't protek ya much. Betta dun nuffin, me guesses..."
	icon_state = "zoga"
	item_state = "zoga"
	armor = list(melee = 8, bullet = 35, laser = 35, energy = 25, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/orkarmor/zog/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.1

/obj/item/clothing/suit/armor/orkarmor/warboss
	name = "War Boss Arma'"
	desc = "DA BOSS WEARS THIS!"
	icon_state = "ork_m_armor"
	item_state = "ork_m_armor"
	armor = list(melee = 12, bullet = 45, laser = 45, energy = 25, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/orkarmor/warboss/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

// NOBLES & SERVANTS
/obj/item/clothing/suit/armor/rtcloak
	name = "Rogue Trader's Cloak"
	desc = "The distinguished cloak of a Rogue Trader"
	icon_state = "lccoat"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 5, bullet = 38, laser = 38, energy = 25, bomb = 40, bio = 20, rad = 20) //Hidden armoured plates
	sales_price = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS |ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/rtcloak2
	name = "Rogue Trader's Armor"
	desc = "The distinguished armor of a Rogue Trader"
	icon_state = "rtarm"
	item_state = "rtarm"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 5, bullet = 38, laser = 38, energy = 25, bomb = 40, bio = 20, rad = 20)
	sales_price = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS |ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/rtcloak/mechanicus
	name = "Rogue Trader's Cloak(M)"
	desc = "The distinguished cloak of a Rogue Trader, improved by the Mechanicus."
	armor = list(melee = 7, bullet = 39, laser = 41, energy = 25, bomb = 40, bio = 20, rad = 20) //Hidden armoured plates

/obj/item/clothing/suit/armor/governor
	name = "Planetary Governor's Mantle"
	desc = "The extra, extra, extra large exotic mantle of the Governor of Messina. Custom tailor made for his superb frame. It is interwoven into his flesh and unremovable"
	icon_state = "taxstomach"
	item_state = "taxstomach"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 7, bullet = 39, laser = 41, energy = 25, bomb = 40, bio = 20, rad = 20) //Hidden armoured plates
	sales_price = 30
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE


/obj/item/clothing/suit/armor/governor/mechanicus
	name = "Planetary Governor's Mantle(M)"
	desc = "The extra, extra, extra large exotic mantle of the Governor of Messina, improved by the Mechanicus. Custom tailor made for his superb frame. It is interwoven into his flesh and unremovable"
	armor = list(melee = 8, bullet = 41, laser = 43, energy = 25, bomb = 60, bio = 20, rad = 20) //Hidden armoured plates

/obj/item/clothing/suit/armor/rtdrip
	name = "Rogue Trader's Fancy Robes"
	desc = "The stylish robes of a Rogue Trader"
	icon_state = "rtdrip"
	item_state = "rtdrip"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 7, bullet = 39, laser = 41, energy = 25, bomb = 40, bio = 20, rad = 20) //Hidden armoured plates
	sales_price = 5
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/slanclothing/femaleslan
	name = "Noble Red Dress"
	desc = "Elegant, fashionable, lavish!"
	icon_state = "baroness"
	item_state = "baroness"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun,/obj/item/melee/whip/lashoftorment,)
	armor = list(melee = 5, bullet = 15, laser = 15, energy = 15, bomb = 10, bio = 10, rad = 10)
	sales_price = 5
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE


/obj/item/clothing/suit/storage/senkhalat
	name = "ornate khalat"
	desc = "The ornate khalat of the Steward. It is made from the finest fabrics this side of the galaxy and interwoven with real gold. Very fancy and well armored."
	icon_state = "senkhalat"
	item_state = "senkhalat"
	armor = list(melee = 4, bullet = 30, laser = 35, energy = 0, bomb = 50, bio = 15, rad = 15)
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 40

/obj/item/clothing/suit/storage/traderpirate
	name = "rugged and regal trader coat"
	desc = "A rugged, regal, trader coat. It is dyed with the finest of dyes and made from durable and armored fabric. For when you need to plunder and pillage the galactic seas."
	icon_state = "traderpirate"
	item_state = "traderpirate"
	armor = list(melee = 5, bullet = 35, laser = 35, energy = 20, bomb = 40, bio = 15, rad = 15)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 30

/obj/item/clothing/suit/armor/vest/leather/tailcoat
	name = "tailcoat"
	desc = "A fancy tailcoat to make your suit seem even more lavish."
	icon_state = "tailcoat"
	item_state = "tailcoat"
	armor = list(melee = 2, BULLET = 20, LASER = 30, ENERGY = 10, BOMB = 15, BIO = 0, FIRE = 20, ACID = 15)
//	pocket_storage_component_path = /datum/component/storage/concrete/pockets/tailcoat

/obj/item/clothing/suit/armor/vest/leather/tailcoat/ladycoat
	name = "lady coat"
	desc = "Fancy lady coat."
	icon = 'icons/mob/onmob/suit.dmi'
	icon_state = "tailcoatgirlblack"
	item_state = "tailcoatgirlblack"
	armor = list(melee = 5, BULLET = 30, LASER = 22, energy = 30, BOMB = 15, BIO = 0, FIRE = 10, ACID = 5)

/obj/item/clothing/suit/armor/vest/leather/tailcoat/ladycoat/red
	icon_state = "tailcoatladiesred"
	item_state = "tailcoatladiesred"

/obj/item/clothing/suit/armor/vest/leather/tailcoat/black
	icon_state = "tailcoatb"
	item_state = "tailcoatb"

/obj/item/clothing/suit/armor/vest/leather/tailcoat/ladycoat/grey
	icon_state = "ladiesvictoriancoatg"
	item_state = "ladiesvictoriancoatg"


/obj/item/clothing/suit/storage/hooded/miner
	name = "Mining Robes"
	desc = "Black mining robes commonly worn by the nascent workers of underhives."
	icon_state = "mortician"
	item_state = "mortician"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun, /obj/item/pickaxe)
	armor = list(melee = 7, bullet = 25, laser = 25, energy = 30, bomb = 0, bio = 0, rad = 0)
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/mininghood

/obj/item/clothing/suit/armor/slanclothing/maleslan
	name = "Studded Coat"
	desc = "An ellegant studded coat worn by the illustrious servants of noble courts."
	icon_state = "castellan"
	item_state = "castellan"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun,/obj/item/melee/whip/lashoftorment,)
	armor = list(melee = 8, bullet = 28, laser = 20, energy = 30, bomb = 10, bio = 10, rad = 10)
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/militia
	name = "Heavy Overcoat"
	desc = "A durable and heavy overcoat designed to protect against indirect blast and small arms fire."
	icon_state = "bluecoat"
	item_state = "bluecoat"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun,/obj/item/melee/whip/lashoftorment,)
	armor = list(melee = 8, bullet = 20, laser = 28, energy = 30, bomb = 10, bio = 10, rad = 10)
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/cloak
	name = "Mysterious Cloak"
	desc = "A tough black cloak made from animal leather."
	icon_state = "bluecoat_sniper"
	item_state = "bluecoat_sniper"
	armor = list(melee = 8, bullet = 20, laser = 28, energy = 30, bomb = 10, bio = 10, rad = 10)
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE




// NEW ARMORS

/obj/item/clothing/suit/armor/heavyflaksuit
	name = "Heavy Flak Suit"
	desc = "A custom made flak suit used for close quarters fighting, it's restrictive nature is made up by it's excessive protection from small arms and explosive damage."
	icon_state = "meister"
	item_state = "meister"
	armor = list(melee = 9, bullet = 34, laser = 34, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 28
/obj/item/clothing/suit/armor/heavyflaksuit/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/fraterisarmor
	name = "Frateris Robes"
	desc = "Robes of the faithful concealing aged flak plates stitched into the front and back."
	icon_state = "syndievest"
	item_state = "syndievest"
	armor = list(melee = 9, bullet = 30, laser = 30, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/witch
	name = "Witch Hunter's Gambeson"
	desc = "The gambeson chosen by the fanatical Frateris Witch Hunters of the Ecclesiarchy"
	icon_state = "preacherarmor"
	item_state = "preacherarmor"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 11, bullet = 32, laser = 32, energy = 30, bomb = 40, bio = 30, rad = 30)
	sales_price = 5
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/trinet
	name = "Iron Cuirass"
	desc = "An iron-alloy breastplate forged by local hands, it's craftsmanship is questionable but the exotic alloy is remarkbly unique to Messina."
	icon_state = "trinet"
	item_state = "trinet"
	armor = list(melee = 11, bullet = 25, laser = 25, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/trinet/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.2

/obj/item/clothing/suit/armor/breastplate
	name = "Iron Breastplate"
	desc = "An iron-alloy breastplate forged by local hands, it's craftsmanship is questionable but the exotic alloy is remarkbly unique to Messina."
	icon_state = "bmerc2"
	item_state = "bmerc2"
	armor = list(melee = 11, bullet = 25, laser = 25, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/heavyduster
	name = "Mysterious Duster"
	desc = "This strange duster fits snugly against your back, heavily padded and made of fire-retardent materials."
	icon_state = "chemsis"
	item_state = "chemsis"
	armor = list(melee = 8, bullet = 28, laser = 28, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/iplate
	name = "Heavy Plate Cuirass"
	desc = "An iron-alloy heavy plate cuirass forged by local hands, it's craftsmanship is remarkable and benefits from the exotic alloy unique to Messina."
	icon_state = "iplate"
	item_state = "iplate"
	armor = list(melee = 11, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/iplate/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/templar
	name = "Full Plate Armor"
	desc = "An iron-alloy heavy plate cuirass forged by local hands, it's craftsmanship is remarkable and benefits from the exotic alloy unique to Messina."
	icon_state = "templar"
	item_state = "templar"
	armor = list(melee = 11, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/templar/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/knighthosp
	name = "Frateris Plate"
	desc = "An iron-alloy heavy plate cuirass forged by local hands, it's craftsmanship is remarkable and benefits from the exotic alloy unique to Messina."
	icon_state = "knight_hospitaller"
	item_state = "knight_hospitaller"
	armor = list(melee = 11, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/knighthosp/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/hauberk
	name = "Hauberk"
	desc = "A light chain hauberk worn over padded cloth, it's comfortable and protects against slashes."
	icon_state = "hauberk"
	item_state = "hauberk"
	armor = list(melee = 8, bullet = 25, laser = 25, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/hauberk/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.2

/obj/item/clothing/suit/armor/slaverobe
	name = "Serf Robes"
	desc = "Disgusting filthy robes worn by gutter trash like you."
	icon_state = "slaverobe"
	item_state = "slaverobe"
	armor = list(melee = 8, bullet = 29, laser = 29, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/slaverobe/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.1

/obj/item/clothing/suit/armor/armoredtrench
	name = "Armored Trenchcoat"
	desc = "A heavy armored trenchcoat with carapace plates inserted into the front and back. Attached also are iron-alloy chausses and pauldrons, a true masterwork of Messina."
	icon_state = "towntrench_heavy"
	item_state = "towntrench_heavy"
	armor = list(melee = 8, bullet = 32, laser = 32, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/armoredtrench/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.2

/obj/item/clothing/suit/armor/vanpa
	name = "Van Saar Power Armor"
	desc = "A heavy set of Necromundan Power Armor manufactured by the House of Van Saar, the quality despite it's status as technical power armor is quite poor."
	icon_state = "lightpa2"
	item_state = "lightpa2"
	armor = list(melee = 9, bullet = 38, laser = 38, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 70
/obj/item/clothing/suit/armor/vanpa/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.7

/obj/item/clothing/suit/armor/berserker
	name = "Berserker Power Armor"
	desc = "A heavy set of Berserker Power Armor manufactured by unknown smiths of ruinous origin, it radiates with incredible energy and a wrath that infests your very soul. The touch of fire has no effect on you."
	icon_state = "berserker"
	item_state = "berserker"
	armor = list(melee = 12, bullet = 40, laser = 40, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	sales_price = 0
/obj/item/clothing/suit/armor/berserker/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.8

/obj/item/clothing/suit/armor/goliathplate
	name = "Barbarian Plate"
	desc = "A heavy set of Goliath Plate manufactured by the Goliath House of Necromunda, the quality is terrible but is forged of rare metals from the Necromunda smelteries."
	icon_state = "paladin"
	item_state = "paladin"
	armor = list(melee = 9, bullet = 32, laser = 32, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 10
/obj/item/clothing/suit/armor/goliathplate/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.3

/obj/item/clothing/suit/armor/goliatharmor
	name = "Raider Cuirass"
	desc = "A light set of Goliath armor manufactured by the Goliath House of Necromunda, the quality is terrible but is forged of rare metals from the Necromunda smelteries."
	icon_state = "venator"
	item_state = "venator"
	armor = list(melee = 8, bullet = 30, laser = 30, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/goliatharmor/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.2

/obj/item/clothing/suit/armor/sniper
	name = "Ghillie Suit"
	desc = "A strange ghillie suit uniquely lacking in any camoflauge that would hide you on an ice-world."
	icon_state = "fox"
	item_state = "fox"
	armor = list(melee = 5, bullet = 34, laser = 34, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/seolarmor
	name = "Seolite Robes"
	desc = "Armored Robes of the xenos species of Seol. It seems the protective layers are designed to prevent lasburns or... even worse."
	icon_state = "scribe"
	item_state = "scribe"
	armor = list(melee = 5, bullet = 31, laser = 39, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 10

/obj/item/clothing/suit/armor/seolsuit
	name = "Seolite Anomaly Suit"
	desc = "Forged by the strange xenos of this barren ice-world, it seeems to have an advanced protective field wrapping around it."
	icon_state = "spacer"
	item_state = "spacer"
	armor = list(melee = 11, bullet = 34, laser = 39, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	sales_price = 60
/obj/item/clothing/suit/armor/seolsuit/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.8

/obj/item/clothing/suit/armor/flak1
	name = "Necromundan Flak Armor"
	desc = "Unmarked flak armor manufactured by the underhives of Necromunda."
	icon_state = "flak1"
	item_state = "flak1"
	armor = list(melee = 5, bullet = 31, laser = 31, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 9
/obj/item/clothing/suit/armor/flak1/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.2

/obj/item/clothing/suit/armor/flak2
	name = "Necromundan Flak Vest" // Protects chest only.
	desc = "Unmarked flak vest manufactured by the underhives of Necromunda."
	icon_state = "flak2"
	item_state = "flak2"
	armor = list(melee = 4, bullet = 28, laser = 28, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 7

/obj/item/clothing/suit/armor/carapace2
	name = "Necromundan Carapace Armor"
	desc = "Unmarked carapace armor manufactured by the underhives of Necromunda."
	icon_state = "carapace2"
	item_state = "carapace2"
	armor = list(melee = 7, bullet = 33, laser = 33, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 25
/obj/item/clothing/suit/armor/carapace2/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.3

/obj/item/clothing/suit/armor/carapace3
	name = "Necromundan Carapace Armor"
	desc = "Unmarked carapace armor manufactured by the underhives of Necromunda."
	icon_state = "carapace3"
	item_state = "carapace3"
	armor = list(melee = 7, bullet = 33, laser = 33, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 25
/obj/item/clothing/suit/armor/carapace3/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.3

/obj/item/clothing/suit/armor/carapace4
	name = "Heavy Carapace Armor"
	desc = "Unmarked carapace armor manufactured by the underhives of Necromunda."
	icon_state = "carapace4"
	item_state = "carapace4"
	armor = list(melee = 8, bullet = 35, laser = 35, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 35
/obj/item/clothing/suit/armor/carapace4/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/goliath2
	name = "Goliath Flak Armor"
	desc = "Shoddy flak armor worn by members of House Goliath, it seems unlikely to protect you from much more then a blade."
	icon_state = "raider_combat"
	item_state = "raider_combat"
	armor = list(melee = 7, bullet = 31, laser = 31, energy = 25, bomb = 30, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 15
/obj/item/clothing/suit/armor/goliath2/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.2

/obj/item/clothing/suit/armor/greypa
	name = "Mechanicus Power Armour"
	desc = "Mechanicus power armour, forged by the Tech-priest of Mars and blessed with runes of blankness, a potent tool against the great enemy."
	icon_state = "knight_grey"
	item_state = "knight_grey"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 10, bullet = 38, laser = 38, energy = 30, bomb = 60, bio = 60, rad = 90)
	sales_price = 90
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
/obj/item/clothing/suit/armor/greypa/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/rpowerarmor
	name = "Renegade Power Armour"
	desc = "Masterwork power armor forged and used by the renegade navigator houses."
	icon_state = "t51bgs"
	item_state = "t51bgs"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 9, bullet = 40, laser = 40, energy = 30, bomb = 40, bio = 30, rad = 30)
	sales_price = 85
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
/obj/item/clothing/suit/armor/rpowerarmor/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/scum2
	name = "Mysterious Garb"
	desc = "These clothes belong to the most mystical of folk."
	icon_state = "gothcoat"
	item_state = "gothcoat"
	armor = list(melee = 8, bullet = 28, laser = 28, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/leather
	name = "Leather Armor"
	desc = "Shoddy armor sewn from shafra leather, it protects you more from the cold then anything else."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	armor = list(melee = 8, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/hjacket
	name = "Heavy Jacket"
	desc = "A heavy leather jacket."
	icon_state = "wornmfp"
	item_state = "wornmfp"
	armor = list(melee = 8, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/hjacket2
	name = "Cool Jacket"
	desc = "A light jacket worn by gangers."
	icon_state = "biker_jacket"
	item_state = "biker_jacket"
	armor = list(melee = 5, bullet = 27, laser = 31, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/slumcoat
	name = "Slum Coat"
	desc = "A heavy leather coat made of a strange leather, it's incredibly durable."
	icon_state = "ghostechoe"
	item_state = "ghostechoe"
	armor = list(melee = 8, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/towntrench
	name = "Trench Coat"
	desc = "A trench coat underpiece to wear with your trench coat!"
	icon_state = "towntrench_special"
	item_state = "towntrench_special"
	armor = list(melee = 8, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/vessor
	name = "Vessorine Carapace"
	desc = "A light bodysuit with carapace plates overlayn like an exterior scale-mail, the suit appears to be powered."
	icon_state = "uegarmor"
	item_state = "uegarmor"
	armor = list(melee = 9, bullet = 34, laser = 33, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 40

/obj/item/clothing/suit/armor/exile
	name = "Vessorine Armor"
	desc = "Ritual combat armor worn by the natives of Vessor."
	icon_state = "exile"
	item_state = "exile"
	armor = list(melee = 11, bullet = 28, laser = 28, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/exile/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.3

/obj/item/clothing/suit/armor/tribalarmor
	name = "Tribal Armor"
	desc = "Ritual combat armor worn by the nomadic clansmen predating the colony."
	icon_state = "tribal_armor"
	item_state = "tribal_armor"
	armor = list(melee = 9, bullet = 27, laser = 27, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/bonearmor
	name = "Boneplate Armor"
	desc = "Shoddy bone armor constructed from the gigantic bones of a local beast, the materials are surprisingly durable."
	icon_state = "bonearmor"
	item_state = "bonearmor"
	armor = list(melee = 10, bullet = 29, laser = 29, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/bonearmor/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/brigandine
	name = "Brigandine"
	desc = "A heavy set of plated leather overlayn to protect against the sturdiest of thrown rocks."
	icon_state = "brigandine"
	item_state = "brigandine"
	armor = list(melee = 9, bullet = 29, laser = 29, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/brigandine/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.3

/obj/item/clothing/suit/armor/brigandine/palace
	name = "Honour Guard Cuirass"
	desc = "A heavy set of fine plat with carapace inserts to protect against even the most unconventional of weapons. Worn by the Honour Guard of Messina."
	icon_state = "templar"
	item_state = "templar"
	color = "#ad9b30"
	armor = list(melee = 8, bullet = 31, laser = 31, energy = 30, bomb = 40, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
/obj/item/clothing/suit/armor/brigandine/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.3

/obj/item/clothing/suit/armor/kasrkin
	name = "Kasrkin Carapace"
	desc = "The Carapace Armor of an Elite Kasrkin, a reliable stormtrooper armor."
	icon_state = "kasrkinarmor"
	item_state = "kasrkinarmor"
	armor = list(melee = 9, bullet = 38, laser = 38, energy = 30, bomb = 40, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 40

/obj/item/clothing/suit/armor/royalguard
	name = "Captain's Carapace"
	desc = "The Carapace Armor of the local Messian Captain."
	icon_state = "royalgc"
	item_state = "royalgc"
	armor = list(melee = 9, bullet = 38, laser = 38, energy = 30, bomb = 40, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 60

/obj/item/clothing/suit/armor/pdfcapt
	name = "Captain's Carapace"
	desc = "The Carapace Armor of the local Messian Captain."
	icon_state = "PDF-CaptainT"
	item_state = "PDF-CaptainT"
	armor = list(melee = 9, bullet = 38, laser = 38, energy = 30, bomb = 40, bio = 30, rad = 50)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 60

/obj/item/clothing/suit/armor/tduster
	name = "Armored Duster"
	desc = "A duster with a flak plate insert, sewn together with shafra leather."
	icon_state = "talon_duster"
	item_state = "talon_duster"
	armor = list(melee = 7, bullet = 29, laser = 29, energy = 25, bomb = 30, bio = 30, rad = 20)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/carapaceduster
	name = "Armored Duster"
	desc = "A duster with carapace plate inserts, sewn together with shafra leather."
	icon_state = "ranger"
	item_state = "ranger"
	armor = list(melee = 7, bullet = 32, laser = 32, energy = 25, bomb = 38, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

// ARMORS PHASE TWO

/obj/item/clothing/suit/armor/necromundaflak1
	name = "Heavy Flak Armor"
	desc = "Unmarked heavy flak armor manufactured by the underhives of Necromunda."
	icon_state = "necromundaflak"
	item_state = "necromundaflak"
	armor = list(melee = 8, bullet = 31, laser = 31, energy = 25, bomb = 38, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 15
/obj/item/clothing/suit/armor/necromundaflak1/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/necromundacarapace1
	name = "Heavy Carapace Armor"
	desc = "Unmarked heavy carapace armor manufactured by the underhives of Necromunda."
	icon_state = "necromundacarapace"
	item_state = "necromundacarapace"
	armor = list(melee = 7, bullet = 33, laser = 33, energy = 25, bomb = 38, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 31
/obj/item/clothing/suit/armor/necromundacarapace1/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

/obj/item/clothing/suit/armor/ranger2
	name = "Colonial Duster"
	desc = "A duster with a flak plate insert, sewn together with grox leather."
	icon_state = "ranger2"
	item_state = "ranger2"
	armor = list(melee = 7, bullet = 31, laser = 31, energy = 31, bomb = 38, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/ranger3
	name = "Ganger Duster"
	desc = "A duster with a flak plate insert, sewn together with grox leather."
	icon_state = "ranger3"
	item_state = "ranger3"
	armor = list(melee = 7, bullet = 32, laser = 32, energy = 32, bomb = 38, bio = 30, rad = 30)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/bondsman
	name = "Mechanicus Hazard Suit"
	desc = "A heavy protective suit made from chemically treated fabrics that protect the wearer from toxic death world environment, this particular set is fitted with carapace pauldrons and plate to protect it's wearer from dangers only the Cogboys seem wise enough to prepare for."
	icon_state = "MineWorkerS"
	item_state = "MineWorkerS"
	armor = list(melee = 8, bullet = 34, laser = 31, energy = 31, bomb = 45, bio = 70, rad = 79)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/armor/bondsman/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0.4

// admeme only

/obj/item/clothing/suit/armor/ogryn1 // only give this to ogryns. it cannot be removed and has head protection.
	name = "Ogryn Armor"
	desc = "Protects ya stomach from dem flashie stingy things."
	icon_state = "ogryn1"
	item_state = "ogryn1"
	armor = list(melee = 8, bullet = 31, laser = 31, energy = 31, bomb = 30, bio = 30, rad = 20)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 0
	canremove = 0

/obj/item/clothing/suit/armor/ogryn2
	name = "Ogryn Armor"
	desc = "Protects ya stomach from dem flashie stingy things."
	icon_state = "ogryn2"
	item_state = "ogryn2"
	armor = list(melee = 10, bullet = 30, laser = 30, energy = 30, bomb = 30, bio = 30, rad = 20)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 0
	canremove = 0

/obj/item/clothing/suit/armor/shadowbeast // ADMIN ONLY DONT FUKKIN GIVE ANYONE THIS.
	name = "Beastly garb."
	desc = "DO YOU SEE ME."
	icon_state = "shadow"
	item_state = "shadow"
	armor = list(melee = 12, bullet = 49, laser = 49, energy = 39, bomb = 50, bio = 100, rad = 100)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|HANDS|FEET|HEAD
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	sales_price = 0
/obj/item/clothing/suit/armor/shadowbeast/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -1

/obj/item/clothing/suit/armor/vindicare
	name = "Vindicare armour"
	desc = "The armoured bodysuit of a Vindicare assassin."
	armor = list(melee = 12, bullet = 46, laser = 46, energy = 35, bomb = 20, bio = 100, rad = 100)
	icon_state = "s-ninja"
	item_state = "s-ninja"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	str_requirement = 18
	canremove = 0
	siemens_coefficient = 0
	sales_price = 250
/obj/item/clothing/suit/armor/vindicare/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5

/obj/item/clothing/suit/armor/thallax
	name = "Thallax Armour"
	desc = "Heavy armour which makes up the main body of a Thallax Warrior"
	icon_state = "lightpa2"
	item_state = "lightpa2"
	armor = list(melee = 12, bullet = 46, laser = 46, energy = 34, bomb = 20, bio = 100, rad = 100)
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	canremove = 0

obj/item/clothing/suit/armor/scion
	name = "Tempestus Scion Carapace"
	desc = "Solid Carapace armour, belonging to the elite forces of the Tempestus Scions."
	icon_state = "ScionArmour"
	item_state = "ScionArmour"
	armor = list(melee = 9, bullet = 39, laser = 39, energy = 39, bomb = 40, bio = 100, rad = 90)
	allowed = list(/obj/item/gun/energy,/obj/item/device/radio,/obj/item/reagent_containers/spray/pepper,/obj/item/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/handcuffs)
	cold_protection = UPPER_TORSO|LOWER_TORSO
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET

obj/item/clothing/suit/armor/scion/trooper
	name = "Stormtrooper Carapace"
	desc = "Solid Carapace armour, belonging to the inquisitorial stormtrooper."
	icon_state = "i-Stormtrooper Armor"
	item_state = "i-Stormtrooper Armor"


/obj/item/clothing/suit/armor/grot // only give this to gretchin, tiny sprite
	name = "Tiny plate armor"
	desc = "A scavenged metal plate made for the training of local children now worn by a grot."
	icon_state = "Grotarmor"
	item_state = "Grotarmor"
	armor = list(melee = 5, bullet = 20, laser = 18, energy = 20, bomb = 30, bio = 30, rad = 20)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE


/obj/item/clothing/suit/armor/grot/grccooat
	name = "GRC Coat"
	desc = "A coat worn by the leaders of the GRC rising up against their ork opressors."
	icon_state = "GRCcoat"
	item_state = "GRCcoat"

/obj/item/clothing/suit/armor/grot/grcplate
	name = "GRC Plate armor"
	desc = "Suit of a true freedom fighter, fight with your fellow GRC members against your greenskin opressors."
	icon_state = "GRCarmor"
	item_state = "GRCarmor"

/obj/item/clothing/suit/armor/necron
	name = "Necron Armour"
	desc = "The main armoured body of a Necron."
	armor = list(melee = 12, bullet = 49, laser = 49, energy = 49, bomb = 20, bio = 100, rad = 100)
	icon_state = null
	item_state = null
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	canremove = 0
	unacidable = 1
	siemens_coefficient = 0
	species_restricted = list(SPECIES_NECRON)

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos
	name = "Ordo Chronos Armour"
	desc = "Mysterious armour belonging to the strange Inquisitors of the ordo Chronos, this suit seems to warp space around it."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100) //Ordo Chronos bullshit, and it's event armour.
	sales_price = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD| FACE | EYES
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/inqhood

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Initialize()
	. = ..()


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, "sparks", 50, 1)
		user.visible_message("<span class='danger'>[user]'s shields deflect [attack_text] in a shower of sparks!</span>")
		START_PROCESSING(SSobj, src)
		del(P)
	else
		user.visible_message("<span class='danger'>\The [user]'s temporal field warps the [attack_text] around them!</span>")
		return 100


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Process()
	return ..()

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos
	name = "Ordo Chronos Armour"
	desc = "Mysterious armour belonging to the strange Inquisitors of the ordo Chronos, this suit seems to warp space around it."
	icon_state = "inqarmor"
	item_state = "inqarmor"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100) //Ordo Chronos bullshit, and it's event armour.
	sales_price = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD| FACE | EYES
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/inqhood

/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5


/obj/item/clothing/suit/storage/hooded/inquisitor/chronos/Initialize()
	. = ..()


/obj/item/clothing/suit/storage/hooded/archeotech
	name = "Archeotech Armour"
	desc = "This armour is clearly antique, seemingly predating the Imperium entirely."
	icon_state = "military_rig_sealed"
	item_state = "military_rig_sealed"
	allowed = list(/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/cell,/obj/item/gun/energy/las/lasgun)
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100) //Archeotech, and it's event armour.
	sales_price = 0
	canremove = 0
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS | HEAD| FACE | EYES
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	action_button_name = "Toggle Helmet"
	hoodtype = /obj/item/clothing/head/helmet/archoetech
	var/displaced = 0

/obj/item/clothing/suit/storage/hooded/archeotech/New()
	..()
	slowdown_per_slot[slot_wear_suit] = -0.5

/obj/item/clothing/suit/storage/hooded/archeotech/update_icon()
	if(suittoggled)
		icon_state = "military_rig_sealed"
	else
		icon_state = "military_rig_sealed"


/obj/item/clothing/suit/storage/hooded/archeotech/Initialize()
	. = ..()

/obj/item/clothing/suit/storage/hooded/archeotech/handle_shield(mob/user, var/damage, atom/damage_source = null, mob/attacker = null, var/def_zone = null, var/attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile))
		var/obj/item/projectile/P = damage_source
		user.visible_message("<span class='danger'>[attack_text] splashes harmlessly against [user]'s armour!</span>")
		START_PROCESSING(SSobj, src)
		del(P)
	else
		user.visible_message("<span class='danger'>\The [attack_text] splashes harmlessly against [user]'s armour!</span>")
		return 100


/obj/item/clothing/suit/storage/hooded/archeotech/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/storage/hooded/archeotech/Process()
	return ..()

/obj/item/clothing/suit/storage/hooded/archeotech/verb/activaterifle()
	set name = "Activate Archeotech Rifle"
	set category = "Weapons"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	else
		to_chat(usr,"You activate your integrated Storm Bolter.")
		usr.put_in_hands(new /obj/item/gun/energy/archeotech/integrated(usr))

/obj/item/clothing/head/helmet/archoetech
	name = "Archeotech Helmet"
	desc = "An ancient looking helmet."
	icon_state = "military_rig"
	item_state = "military_rig"
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100)
	siemens_coefficient = 0
	canremove = 0
	siemens_coefficient = 0
	unacidable = 1
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/suit/storage/hooded/archeotech/verb/temporaldisplace()
	set name = "Toggle Temporal Displacement"
	set category = "Abilities"
	set src in usr
	if(displaced == 0)
		usr.transforming = 1 //protects the mob from being transformed (replaced) midjaunt and getting stuck in bluespace
		if(usr.buckled)
			usr.buckled.unbuckle_mob()
		spawn(0)
			var/mobloc = get_turf(usr.loc)
			var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
			var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
			animation.SetName("water")
			animation.set_density(0)
			animation.anchored = 1
			animation.icon = 'icons/mob/mob.dmi'
			animation.layer = 5
			animation.master = holder
			if(usr.buckled)
				usr.buckled = null
			displace_disappear(animation, usr)
			usr.loc = holder
			usr.transforming=0 //mob is safely inside holder now, no need for protection.
			to_chat(usr, "<span class='notice'>You seperate yourself from the timestream, displacing yourself a fraction out of time.</span>")
			displaced = 1
	else
		var/mobloc = get_turf(usr.loc)
		var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
		var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
		mobloc = holder.last_valid_turf
		animation.loc = mobloc
		usr.canmove = 0
		holder.reappearing = 1
		//sleep(20)
		displace_reappear(animation, usr)
		sleep(5)
		if(!usr.forceMove(mobloc))
			for(var/direction in list(1,2,4,8,5,6,9,10))
				var/turf/T = get_step(mobloc, direction)
				if(T)
					if(usr.forceMove(T))
						break
		usr.canmove = 1
		usr.client.eye = usr
		to_chat(usr, "<span class='notice'>You return yourself to normal time.</span>")
		displaced = 0
		qdel(animation)
		qdel(holder)



/obj/item/clothing/suit/storage/hooded/archeotech/proc/displace_disappear(var/atom/movable/overlay/animation, usr)
	animation.icon_state = "liquify"
	flick("liquify",animation)

/obj/item/clothing/suit/storage/hooded/archeotech/proc/displace_reappear(var/atom/movable/overlay/animation, usr)
	flick("reappear",animation)

/obj/item/clothing/suit/storage/hooded/archeotech/verb/archeocloak(mob/user)
	set name = "Toggle Photonic Distortion Field"
	set category = "Abilities"
	set src in usr
	if(user.alpha == 255)
		var/mobloc = get_turf(user.loc)
		var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
		var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
		mobloc = holder.last_valid_turf
		animation.loc = mobloc
		to_chat(user, "<span class='notice'>You activate the Photonic Distortion Field.</span>")
		user.alpha = 0
		animation.icon_state = "cloak"
		flick("liquify",animation)
	else
		var/mobloc = get_turf(user.loc)
		var/obj/effect/dummy/spell_jaunt/holder = new /obj/effect/dummy/spell_jaunt( mobloc )
		var/atom/movable/overlay/animation = new /atom/movable/overlay( mobloc )
		mobloc = holder.last_valid_turf
		animation.loc = mobloc
		to_chat(user, "<span class='notice'>You disable the Photonic Distortion Field.</span>")
		user.alpha = 255
		animation.icon_state = "uncloak"
		flick("liquify",animation)

/obj/item/storage/backpack/ert
	name = "Archeotech Backpack"
	desc = "An ancient looking backpack."
	icon_state = "ert_commander"
	item_state_slots = list(
		slot_l_hand_str = "securitypack",
		slot_r_hand_str = "securitypack",
		)
	canremove = 0
	max_storage_space = 36


*/
