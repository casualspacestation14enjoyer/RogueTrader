
/datum/job/chaplain_militant
	title = "Chaplain Militant"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 40
	economic_power = 6
	minimal_player_age = 0
	supervisors = "the Executive Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ)
	min_skill = list( // 1 point
		SKILL_BUREAUCRACY = SKILL_BASIC // 1 point
	)

	access = list(
		access_morgue, access_chapel_office,
		access_crematorium, access_solgov_crew,
		access_radio_serv
	)

/datum/job/chamber_assistant
	title = "Sanitation Technician"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Steward"
	create_record = FALSE
	minimum_character_age = list(SPECIES_HUMAN = 20)
	ideal_character_age = 20
	alt_titles = list(
		"Custodian",
		"Janitor")
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	min_skill = list( // 1 point
		SKILL_VIGOR = SKILL_BASIC // 1 point
	)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_janitor, access_solgov_crew,
		access_radio_serv
	)


/datum/job/chamber_magister
	title = "Steward"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 20)
	supervisors = "the Chief Steward"
	alt_titles = list(
		"Bartender",
		"Cook",
		"Culinary Specialist"
	)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/cook
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	min_skill = list( // 7 points
		SKILL_BOTANY = SKILL_BASIC, // 1 point
		SKILL_CHEMISTRY = SKILL_BASIC, // 4 points
		SKILL_COOKING = SKILL_TRAINED // 2 points
	)
	access = list(
		access_commissary,
		access_hydroponics,
		access_kitchen,
		access_radio_serv,
		access_solgov_crew,
		access_o_mess
	)

/datum/job/deck_scum/get_description_blurb()
	return "As Deck Scum, you’re the bottom rung, drifting through whatever job you’re handed next. Your service may be a punishment for a crime, it may be that you were stolen from your world and enslaved, or worse... that you chose this life for yourself. You are a dredge of society now, an outcast, surviving in the underbelly of the Rogue Trader's corvette."

/datum/job/deck_scum/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Penitent" || current_title == "Deck Scum" || current_title == "Pathfinder" || current_title == "Miner")
		if(current_title == "Penitent")
			if(prob(80))
				to_chat(H,"<span class='danger'><b><font size=4>THE PENITENT</font></b></span>")
				to_chat(H, "<span class='notice'><b><font size=2>As the Penitent, you are condemned to suffer for your past crimes, undertaking the most dangerous and brutal tasks, hoping to earn absolution through relentless service to the Imperium.</font></b></span>")
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/penitent, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/penitent, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimcap/pleb, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
				H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
				H.species.weaken_mod = 0.75
				H.species.stun_mod = 0.75
			else
				to_chat(H,"<span class='danger'><b><font size=4>THE OPERATIVE</font></b></span>")
				to_chat(H, "<span class='notice'><b><font size=2>As the operative you are here under false pretense, masquerading as a Crewman. In this role you must further the aims of your secret benefactor by whatever means necessary(make something up)</font></b></span>")
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/metal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/duster, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)

/datum/job/noble_guest
	title = "Noble Heir"
	department = "Supply"
	department_flag = SUP
	create_record = FALSE
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer"
	economic_power = 5
	minimal_player_age = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/guest
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8
	)
	skill_points = 22
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	access = list(
		access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
		access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_mining, access_mining_office, access_mining_station, access_commissary, access_teleporter, access_eva, access_torch_fax,
		access_radio_sup, access_radio_exp, access_radio_comm
	)

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/unexpected_guest
	title = "Gang Boss"
	department = "Supply" // Gang Leader, etc.
	department_flag = SUP
	create_record = FALSE
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Deck Chief"
	economic_power = 7
	skill_points = 24
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_PILOT = SKILL_MASTER)

	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/crewman
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(
		access_mining, access_mining_office, access_mining_station,
		access_expedition_shuttle, access_guppy, access_hangar,
		access_guppy_helm, access_solgov_crew, access_eva, access_radio_sup
	)

/datum/job/unexpected_guest/get_description_blurb()
	return "An Unexpected Guest, you’re an outsider here on the Dauntless. Whether a stowaway or here on legitamete business, you’re here with your own purpose unknown to the rest of the crew."

/datum/job/unexpected_guest/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE GANG BOSS</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/dufflebag/gangerloot, slot_l_hand)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/metal, slot_head)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/duster, slot_wear_suit)
	H.species.brute_mod = 0.7
	H.species.weaken_mod = 0.7
	H.species.stun_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.toxins_mod = 0.75
	H.species.radiation_mod = 0.65

/datum/job/deck_scum
	title = "Deck Scum"
	department = "Supply"
	department_flag = SUP
	total_positions = 14
	spawn_positions = 14
	create_record = FALSE
	supervisors = "..."
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/crewman
	alt_titles = list(
		"Penitent",
		"Pathfinder",
		"Miner"

	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_solgov_crew, access_radio_serv
	)

	skill_points = 18
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/deck_scum/get_description_blurb()
	return "As Deck Scum, you’re the bottom rung, drifting through whatever job you’re handed next. Your service may be a punishment for a crime, it may be that you were stolen from your world and enslaved, or worse... that you chose this life for yourself. You are a dredge of society now, an outcast, surviving in the underbelly of the Rogue Trader's corvette."

/datum/job/deck_scum/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Penitent" || current_title == "Deck Scum" || current_title == "Pathfinder" || current_title == "Miner")
		if(current_title == "Penitent")
			if(prob(80))
				to_chat(H,"<span class='danger'><b><font size=4>THE PENITENT</font></b></span>")
				to_chat(H, "<span class='notice'><b><font size=2>As the Penitent, you are condemned to suffer for your past crimes, undertaking the most dangerous and brutal tasks, hoping to earn absolution through relentless service to the Imperium.</font></b></span>")
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/penitent, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/penitent, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimcap/pleb, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
				H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
				H.species.weaken_mod = 0.75
				H.species.stun_mod = 0.75
			else
				to_chat(H,"<span class='danger'><b><font size=4>THE OPERATIVE</font></b></span>")
				to_chat(H, "<span class='notice'><b><font size=2>As the operative you are here under false pretense, masquerading as a Crewman. In this role you must further the aims of your secret benefactor by whatever means necessary(make something up)</font></b></span>")
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/metal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/duster, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/stub/talon, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/pistol/small/ap, slot_in_backpack)
		if(current_title == "Pathfinder")
			to_chat(H,"<span class='danger'><b><font size=4>THE PATHFINDER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Pathfinder, you’re tasked with leading the way on deadly planets and through uncharted terrain, scouring every grim corner for threats and relics.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/dufflebag, slot_l_hand)
			if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/ranger2, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
			else if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger/alt, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/ranger3, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/metal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/duster, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
		if(current_title == "Deck Scum")
			to_chat(H,"<span class='danger'><b><font size=4>DECK SCUM</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As Deck Scum, you’re the bottom rung, drifting through whatever job you’re handed next. Your service may be a punishment for a crime, it may be that you were stolen from your world and enslaved, or worse... that you chose this life for yourself. You are a dredge of society now, an outcast, surviving in the underbelly of the Rogue Trader's corvette.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.species.weaken_mod = 0.75
			H.species.stun_mod = 0.75
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/smuggler, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/steroid, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/steroid, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/steroid, slot_in_backpack)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/leatherjacket, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/drugs, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/pill/zoom, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/dropper/peridaxon, slot_in_backpack)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/slumcoat, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatpain, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/antirad, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatstim, slot_in_backpack)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/scum, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/mindbreaker, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/detox, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/pain, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/mindbreaker, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/detox, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/pain, slot_in_backpack)
		if(current_title == "Miner")
			to_chat(H,"<span class='danger'><b><font size=4>THE MINER</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.species.brute_mod = 0.71
			H.species.weaken_mod = 0.73
			H.species.stun_mod = 0.73
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/hero, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate/brigandine, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hauberk, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/hauberkheavy, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/breastplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/siege, slot_head)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/cuirass, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/feudal, slot_head)
	return ..()

/datum/job/qm
	title = "Chief Steward"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 28)
	ideal_character_age = 35
	economic_power = 6
	minimal_player_age = 7
	supervisors = "the Executive Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chief_steward
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	min_skill = list( // 9 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_COOKING = SKILL_TRAINED, // 2 points
		SKILL_BOTANY = SKILL_BASIC, // 1 point
		SKILL_CHEMISTRY = SKILL_BASIC // 4 points
	)
	access = list(
		access_bridge,
		access_torch_fax,
		access_chief_steward,
		access_solgov_crew,
		access_radio_comm,
		access_radio_serv,
		access_emergency_storage,
		access_janitor,
		access_commissary,
		access_hydroponics,
		access_kitchen,
		access_o_mess
	)
