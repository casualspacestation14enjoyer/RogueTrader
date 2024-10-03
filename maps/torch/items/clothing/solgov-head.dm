/obj/item/clothing/head/solgov
	name = "master imperialhat"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	siemens_coefficient = 0.9
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi'
	)

//Utility
/obj/item/clothing/head/soft/solgov
	name = "\improper Imperial Government cap"
	desc = "It's a ballcap in Imperial colors."
	icon_state = "solsoft"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_NABBER = 'maps/torch/icons/mob/nabber/onmob_head_solgov_gas.dmi'
	)

/obj/item/clothing/head/soft/solgov/veteranhat
	name = "veteran hat"
	desc = "It's a tacky black ballcap bearing the yellow service ribbon of the Ultramar Conflict."
	icon_state = "cap_veteran"

/obj/item/clothing/head/soft/solgov/expedition
	name = "\improper Imperial cap"
	desc = "It's a black ballcap bearing the Expeditonary Corps crest."
	icon_state = "expeditionsoft"

/obj/item/clothing/head/soft/solgov/expedition/co
	name = "\improper Imperial captain's cap"
	desc = "It's a black ballcap bearing the Expeditonary Corps crest. The brim has gold trim."
	icon_state = "expeditioncomsoft"

/obj/item/clothing/head/soft/solgov/fleet
	name = "fleet cap"
	desc = "It's a navy blue field cap with the Imperial Navy crest in a silver colour."
	icon_state = "fleetsoft"

/obj/item/clothing/head/solgov/utility
	name = "utility cover"
	desc = "An eight-point utility cover."
	icon_state = "greyutility"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	body_parts_covered = 0

/obj/item/clothing/head/solgov/utility/fleet
	name = "fleet utility cover"
	desc = "A navy blue utility cover bearing the crest of the Imperial Fleet."
	icon_state = "navyutility"


//Service

/obj/item/clothing/head/solgov/service
	name = "service cover"
	desc = "A service uniform cover."
	icon_state = "greenwheelcap"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/solgov/service/expedition
	name = "militarum peaked cap"
	desc = "A peaked black uniform cap belonging to the Imperial."
	icon_state = "ecdresscap"

/obj/item/clothing/head/solgov/service/expedition/command
	name = "militarum officer's peaked cap"
	desc = "A peaked black uniform cap belonging to the Imperial. This one is trimmed in gold."
	icon_state = "ecdresscap_ofcr"

/obj/item/clothing/head/solgov/service/expedition/captain
	name = "militarum captain's peaked cap"
	desc = "A gold-trimmed peaked black uniform cap belonging to a Captain of the Imperial."
	icon_state = "ecdresscap_capt"

/obj/item/clothing/head/solgov/service/expedition/senior_command
	name = "senior expedition officer's peaked cap"
	desc = "A peaked grey uniform cap belonging to the Imperial. This one is trimmed in gold and blue."
	icon_state = "greydresscap_senior"


//Dress

/obj/item/clothing/head/solgov/dress
	name = "dress cover"
	desc = "A dress uniform cover."
	icon_state = "greenwheelcap"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/solgov/dress/fleet/garrison
	name = "fleet garrison cap"
	desc = "A white dress uniform cap. The classic sailor's choice."
	icon_state = "whitegarrisoncap"

/obj/item/clothing/head/solgov/dress/fleet
	name = "fleet dress wheel cover"
	desc = "A white dress uniform cover. This one has an Imperial Navy crest."
	icon_state = "whitepeakcap"

/obj/item/clothing/head/solgov/dress/fleet/command
	name = "fleet officer's dress wheel cover"
	desc = "A white dress uniform cover. This one has a gold stripe and an Imperial Navy crest."
	icon_state = "whitepeakcap_com"


//Berets

/obj/item/clothing/head/beret/solgov
	name = "peacekeeper beret"
	desc = "A beret in Imperial Government colors. For peacekeepers that are more inclined towards style than safety."
	icon_state = "beret_lightblue"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi'
	)

/obj/item/clothing/head/beret/solgov/equipped(mob/user, slot)
	..()
	switch(slot)
		if(slot_belt)
			sprite_sheets = list()
		if(slot_head)
			sprite_sheets = list(
				SPECIES_VOX = 'icons/mob/species/vox/onmob_head_vox.dmi',
				SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
				SPECIES_NABBER = 'icons/mob/species/nabber/onmob_head_gas.dmi'
				)
	return

/obj/item/clothing/head/beret/solgov/homeguard
	name = "home guard beret"
	desc = "A red beret denoting service in the Sol Home Guard. For personnel that are more inclined towards style than safety."
	icon_state = "beret_red"

/obj/item/clothing/head/beret/solgov/gateway
	name = "gateway administration beret"
	desc = "An orange beret denoting service in the Gateway Administration. For personnel that are more inclined towards style than safety."
	icon_state = "beret_orange"

/obj/item/clothing/head/beret/solgov/customs
	name = "customs and trade beret"
	desc = "A purple beret denoting service in the Customs and Trade Bureau. For personnel that are more inclined towards style than safety."
	icon_state = "beret_purpleyellow"

/obj/item/clothing/head/beret/solgov/orbital
	name = "orbital assault beret"
	desc = "A blue beret denoting orbital assault training. For helljumpers that are more inclined towards style than safety."
	icon_state = "beret_blue"

/obj/item/clothing/head/beret/solgov/research
	name = "government research beret"
	desc = "A green beret denoting service in the Bureau of Research. For scientists that are more inclined towards style than safety."
	icon_state = "beret_green"

/obj/item/clothing/head/beret/solgov/health
	name = "health service beret"
	desc = "A white beret denoting service in the Interstellar Health Service. For medics that are more inclined towards style than safety."
	icon_state = "beret_white"

/obj/item/clothing/head/beret/solgov/marcom
	name = "\improper Munitorum beret"
	desc = "A red beret with a gold insignia, denoting service in the IMPDF Sancor Central Command. For brass who are more inclined towards style than safety."
	icon_state = "beret_redgold"

/obj/item/clothing/head/beret/solgov/stratcom
	name = "\improper Administratum beret"
	desc = "A grey beret with a silver insignia, denoting service in the IMPDF Strategic Command. For intelligence personnel who are more inclined towards style than safety."
	icon_state = "beret_graysilver"

/obj/item/clothing/head/beret/solgov/borderguard
	name = "border militarum beret"
	desc = "A green beret with a silver emblem, denoting service in the Bureau of Border Security. For border guards who are more inclined towards style than safety."
	icon_state = "beret_greensilver"

/obj/item/clothing/head/beret/solgov/expedition
	name = "militarum beret"
	desc = "A black beret belonging to the Imperial. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black"

/obj/item/clothing/head/beret/solgov/expedition/security
	name = "militarum beret"
	desc = "An Imperial beret with a militarum crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_security"

/obj/item/clothing/head/beret/solgov/expedition/medical
	name = "militarum medical beret"
	desc = "An Imperial beret with a medical crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_medical"

/obj/item/clothing/head/beret/solgov/expedition/engineering
	name = "militarum engineering beret"
	desc = "An Imperial beret with an engineering crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_engineering"

/obj/item/clothing/head/beret/solgov/expedition/supply
	name = "militarum supply beret"
	desc = "An Imperial beret with a supply crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_supply"

/obj/item/clothing/head/beret/solgov/expedition/service
	name = "militarum service beret"
	desc = "An Imperial beret with a service crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_service"

/obj/item/clothing/head/beret/solgov/expedition/exploration
	name = "militarum exploration beret"
	desc = "An Imperial beret with an exploration crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_exploration"

/obj/item/clothing/head/beret/solgov/expedition/command
	name = "militarum officer's beret"
	desc = "An Imperial beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_command"

/obj/item/clothing/head/beret/solgov/expedition/branch
	name = "\improper Field Operations beret"
	desc = "An Imperial beret carrying the insignia of the Field Operations section. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_fieldOps"

/obj/item/clothing/head/beret/solgov/expedition/branch/observatory
	name = "\improper Observatory beret"
	desc = "An Imperial beret carrying the insignia of the Observatory section. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_observatory"

/obj/item/clothing/head/beret/solgov/fleet
	name = "fleet beret"
	desc = "A navy blue beret belonging to the Imperial Fleet. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy"

/obj/item/clothing/head/beret/solgov/fleet/security
	name = "fleet militarum beret"
	desc = "An Imperial Navy beret with a militarum crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_security"

/obj/item/clothing/head/beret/solgov/fleet/medical
	name = "fleet medical beret"
	desc = "An Imperial Navy beret with a medical crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_medical"

/obj/item/clothing/head/beret/solgov/fleet/engineering
	name = "fleet engineering beret"
	desc = "An Imperial Navy with an engineering crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_engineering"

/obj/item/clothing/head/beret/solgov/fleet/supply
	name = "fleet supply beret"
	desc = "An Imperial Navy beret with a supply crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_supply"

/obj/item/clothing/head/beret/solgov/fleet/service
	name = "fleet service beret"
	desc = "An Imperial Navy beret with a service crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_service"

/obj/item/clothing/head/beret/solgov/fleet/exploration
	name = "fleet exploration beret"
	desc = "An Imperial Navy beret with an exploration crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_exploration"

/obj/item/clothing/head/beret/solgov/fleet/command
	name = "fleet officer's beret"
	desc = "An Imperial Navy beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_command"

/obj/item/clothing/head/beret/solgov/fleet/dress
	name = "fleet dress beret"
	desc = "A white Imperial Navy beret. For personnel that are more inclined towards style than safety."
	icon_state = "beret_whiterim"

/obj/item/clothing/head/beret/solgov/fleet/dress/command
	name = "fleet officer's dress beret"
	desc = "A white Imperial Navy beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_whiterim_com"

/obj/item/clothing/head/beret/solgov/fleet/branch
	name = "first militarum beret"
	desc = "An Imperial Navy beret carrying the insignia of the First Fleet, the Sol Guard, stationed in Sol. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_first"

/obj/item/clothing/head/beret/solgov/fleet/branch/second
	name = "second militarum beret"
	desc = "An Imperial Navy beret carrying the insignia of the Second Fleet, the Home Defense Group, tasked with defense of Sol territories. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_second"

/obj/item/clothing/head/beret/solgov/fleet/branch/third
	name = "third militarum beret"
	desc = "An Imperial Navy beret carrying the insignia of the Third Fleet, the Border Guard, guarding borders of Sol territory against Xenos and pirates. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_third"

/obj/item/clothing/head/beret/solgov/fleet/branch/fourth
	name = "fourth militarum beret"
	desc = "An Imperial Navy beret carrying the insignia of the Fourth Fleet, stationed on Skrell border. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_fourth"

/obj/item/clothing/head/beret/solgov/fleet/branch/fifth
	name = "fifth militarum beret"
	desc = "An Imperial Navy beret carrying the insignia of the Fifth Fleet, the Quick Reaction Force, recently formed and outfitted with the latest tech. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_fifth"

//ushanka

/obj/item/clothing/head/ushanka/solgov
	name = "militarum fur hat"
	desc = "An Imperial synthfur-lined hat for operating in cold environments."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	icon_state = "ecushankadown"
	icon_state_up = "ecushankaup"
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi'
	)

/obj/item/clothing/head/ushanka/solgov/fleet
	name = "fleet fur hat"
	desc = "An Imperial Navy synthfur-lined hat for operating in cold environments."
	icon_state = "flushankadown"
	icon_state_up = "flushankaup"

//helmets and other such trash

/obj/item/clothing/head/helmet/solgov
	accessories = list(/obj/item/clothing/accessory/helmet_cover/blue/sol)
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi'
		)

/obj/item/clothing/head/helmet/solgov/security
	name = "militarum helmet"
	desc = "A helmet with 'POLICE' printed on the back in silver lettering."
	icon_state = "helmet_security"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	accessories = null

/obj/item/clothing/head/helmet/solgov/command
	name = "command helmet"
	desc = "A helmet with 'SOL CENTRAL GOVERNMENT' printed on the back in gold lettering."
	icon_state = "helmet_command"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	accessories = null

/obj/item/clothing/head/helmet/solgov/pilot
	name = "pilot's helmet"
	desc = "A pilot's helmet for operating the cockpit in style. For when you want to protect your noggin AND look stylish."
	icon_state = "pilotgov"
	accessories = null

/obj/item/clothing/head/helmet/solgov/pilot/fleet
	name = "fleet pilot's helmet"
	desc = "A pilot's helmet for operating the cockpit in style. This one is worn by members of the Imperial Fleet."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	icon_state = "pilotfleet"
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	accessories = null

/obj/item/clothing/head/helmet/space/void/exploration
	camera = /obj/machinery/camera/network/helmet

//SolGov Hardsuits

/obj/item/clothing/head/helmet/space/void/engineering/alt/sol
	light_overlay = "helmet_light_alt"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_spacesuits_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_KROOT = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/atmos/alt/sol
	light_overlay = "helmet_light_alt"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_spacesuits_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_KROOT = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/pilot/sol
	light_overlay = "helmet_light_alt"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_spacesuits_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_KROOT = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/medical/alt/sol
	light_overlay = "helmet_light_green_alt"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_spacesuits_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_KROOT = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/command
	name = "command voidsuit helmet"
	desc = "A light, radiation resistant voidsuit helmet commonly used among Imperial uniformed services."
	icon_state = "rig0_command"
	item_state = "command_helm"
	light_overlay = "helmet_light_green_alt"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_spacesuits_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_KROOT = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)

/obj/item/clothing/head/helmet/space/void/exploration
	name = "exploration voidsuit helmet"
	desc = "A helmet of Exoplanet Exploration Unit, standard issue for Imperial away missions. It has an armored glass dome for superiour visibility and extra anti-radiation lining."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	icon_state = "rig0_explorer"
	item_state = "explorer_helm"
	sprite_sheets = list(
		SPECIES_KROOT = 'maps/torch/icons/mob/unathi/onmob_head_spacesuits_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_KROOT = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_TAU = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_BASIC,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_FIFTY
		)
	light_overlay = "helmet_light_dual_alt"
	tinted = FALSE
	valid_accessory_slots = null
	restricted_accessory_slots = null
