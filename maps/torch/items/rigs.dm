/////////////////////////
//~~Bless this mess~~//
/////////////////////

/*
 * BASE TYPE
 */
/obj/item/rig/command
	name = "command HCM"
	suit_type = "command hardsuit"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	desc = "A specialized hardsuit rig control module issued to command staff of the Imperium and their peers."
	icon_state = "command_rig"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	online_slowdown = 0.75
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/command
	helm_type = /obj/item/clothing/head/helmet/space/rig/command
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	req_access = list(access_bridge)

/obj/item/clothing/head/helmet/space/rig/command
	light_overlay = "helmet_light_dual"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	camera = /obj/machinery/camera/network/helmet
	species_restricted = list(SPECIES_HUMAN, SPECIES_IPC, SPECIES_TAU) //no available icons for aliens

/obj/item/clothing/suit/space/rig/command
	icon = 'maps/torch/icons/obj/obj_suit_solgov.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/onmob_suit_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN, SPECIES_IPC, SPECIES_TAU)
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit,
		/obj/item/storage/secure/briefcase
	)

/obj/item/clothing/shoes/magboots/rig/command
	icon = 'maps/torch/icons/obj/obj_feet_solgov.dmi'
	item_icons = list(slot_shoes_str = 'maps/torch/icons/mob/onmob_feet_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN, SPECIES_IPC, SPECIES_TAU)

/obj/item/clothing/gloves/rig/command
	icon = 'maps/torch/icons/obj/obj_hands_solgov.dmi'
	item_icons = list(slot_gloves_str = 'maps/torch/icons/mob/onmob_hands_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN, SPECIES_IPC, SPECIES_TAU)


/obj/item/rig/command/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/cooling_unit
		)

/*
 * EXECUTIVE OFFICER
 */
/obj/item/rig/command/xo
	name = "officer's command HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to high ranking officers of the Imperium and their peers."
	icon_state = "command_XO_rig"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

	chest_type = /obj/item/clothing/suit/space/rig/command/xo
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/xo
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	req_access = list(access_dauntless)

/obj/item/clothing/head/helmet/space/rig/command/xo
	icon_state = "command_XO_rig"
/obj/item/clothing/suit/space/rig/command/xo
	icon_state = "command_XO_rig"
/obj/item/clothing/shoes/magboots/rig/command/xo
/obj/item/clothing/gloves/rig/command/xo


/obj/item/rig/command/xo/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit
	)

/*
 * COMMANDING OFFICER
 */
/obj/item/rig/command/co
	name = "commanding officer's command HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to commanding officers of the Imperium."
	icon_state = "command_CO_rig"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

	chest_type = /obj/item/clothing/suit/space/rig/command/co
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/co
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	req_access = list(access_roguetrader)

/obj/item/clothing/head/helmet/space/rig/command/co
	icon_state = "command_CO_rig"
/obj/item/clothing/suit/space/rig/command/co
	icon_state = "command_CO_rig"
/obj/item/clothing/shoes/magboots/rig/command/co
/obj/item/clothing/gloves/rig/command/co


/obj/item/rig/command/co/equipped
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit
	)

/*
 * CHIEF MEDICAL OFFICER
 */
/obj/item/rig/command/medical
	name = "medical command HCM"
	suit_type = "medical command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking medical officers of the Imperium and their peers."
	icon_state = "command_med_rig"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

	chest_type = /obj/item/clothing/suit/space/rig/command/medical
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/medical

	req_access = list(access_medical_command)

/obj/item/clothing/head/helmet/space/rig/command/medical
	icon_state = "command_med_rig"
/obj/item/clothing/suit/space/rig/command/medical
	icon_state = "command_med_rig"
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit,
		/obj/item/storage/firstaid,
		/obj/item/device/scanner/health,
		/obj/item/stack/medical,
		/obj/item/roller_bed
	)
/obj/item/clothing/shoes/magboots/rig/command/medical
/obj/item/clothing/gloves/rig/command/medical


/obj/item/rig/command/medical/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/device/defib,
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/rig_module/vision/medhud,
		/obj/item/rig_module/cooling_unit
	)

/*
* CHIEF OF SECURITY
*/
/obj/item/rig/command/security
	name = "militarum command HCM"
	suit_type = "militarum command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking militarum officers of the Imperium and their peers."
	icon_state = "command_sec_rig"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

	chest_type = /obj/item/clothing/suit/space/rig/command/security
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/security

	req_access = list(access_restricted_command)

/obj/item/clothing/head/helmet/space/rig/command/security
	icon_state = "command_sec_rig"
/obj/item/clothing/suit/space/rig/command/security
	icon_state = "command_sec_rig"
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/handcuffs,
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit,
		/obj/item/melee/baton
	)
/obj/item/clothing/shoes/magboots/rig/command/security
/obj/item/clothing/gloves/rig/command/security



/obj/item/rig/command/security/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/cooling_unit
	)

/*
* CHIEF SCIENCE OFFICER
*/
/obj/item/rig/command/science
	name = "research command HCM"
	suit_type = "research command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking research officers of the Imperium."
	icon_state = "command_sci_rig"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	anomaly_protection = 1

	chest_type = /obj/item/clothing/suit/space/rig/command/science
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/science

	req_access = list(access_mechanicus)

/obj/item/clothing/head/helmet/space/rig/command/science
	icon_state = "command_sci_rig"

/obj/item/clothing/suit/space/rig/command/science
	icon_state = "command_sci_rig"
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit,
		/obj/item/stack/flag,
		/obj/item/storage/excavation,
		/obj/item/device/scanner/health,
		/obj/item/device/measuring_tape,
		/obj/item/device/ano_scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/core_sampler,
		/obj/item/device/gps,
		/obj/item/pinpointer/radio,
		/obj/item/pickaxe,
		/obj/item/storage/bag/fossils
	)

/obj/item/clothing/shoes/magboots/rig/command/science
/obj/item/clothing/gloves/rig/command/science


/obj/item/rig/command/science/equipped
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit
	)

/*
* EXPLORATION
*/
/obj/item/rig/exploration
	name = "heavy exploration HCM"
	suit_type = "heavy exploration hardsuit"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	desc = "Imperium' Exoplanet Exploration Armored Unit, A-Unit for short. Built for more hostile (and hungry) environments, it features additional armor and powered exoskeleton."
	icon_state = "command_exp_rig"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_TEN,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

	chest_type = /obj/item/clothing/suit/space/rig/command
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/exploration
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command/exploration


	offline_vision_restriction = TINT_BLIND

	req_access = list(access_dauntless)

/obj/item/clothing/gloves/rig/command/exploration
	siemens_coefficient = 0

/obj/item/clothing/head/helmet/space/rig/command/exploration
	camera = /obj/machinery/camera/network/helmet
	icon_state = "command_exp_rig"
	light_overlay = "helmet_light_wide"
	brightness_on = 0.8

/obj/item/clothing/suit/space/rig/command/exploration
	icon_state = "command_exp_rig"
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/material/twohanded/ravenor,
		/obj/item/melee,
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit,
		/obj/item/stack/flag,
		/obj/item/storage/excavation,
		/obj/item/device/scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/gps,
		/obj/item/pinpointer/radio,
		/obj/item/storage/plants
	)

/obj/item/rig/exploration/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit
	)

/*
 Overrides for standard mapset rig items
 */

/obj/item/clothing/head/helmet/space/rig/industrial
	camera = /obj/machinery/camera/network/helmet
