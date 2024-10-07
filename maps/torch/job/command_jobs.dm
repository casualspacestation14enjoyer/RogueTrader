/datum/job/rogue_trader
	title = "Rogue Trader"
	supervisors = "the God Emperor and your own ambition."
	minimal_player_age = 14
	economic_power = 16
	minimum_character_age = list(SPECIES_HUMAN = 40)
	ideal_character_age = 50
	total_positions = 1
	spawn_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 20
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED,
		SKILL_FINANCE = SKILL_TRAINED,
		SKILL_HAULING = SKILL_TRAINED,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_DEVICES = SKILL_BASIC,
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_WEAPONS = SKILL_EXPERIENCED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_COMPUTER = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)
/datum/job/rogue_trader/get_description_blurb()
	return "You are the Rogue Trader, commander of the Dauntless, an Imperial corvette exploratory vessel. Tasked with navigating the uncharted terror -- the Ghoul Stars, you lead a diverse retinue representing many factions, each serving a crucial role aboard your ship. While you hold ultimate authority, you work closely with your Magos Explorator, whose resources and personnel are vital to your survival in this cursed region. Rely on your officers to manage the deck scum, explore forgotten worlds, and broker alliances or hostilities with the human, alien, and worse. The emperor protects..."

/datum/job/rogue_trader/post_equip_rank(mob/person, alt_title)
	captain_announcement.Announce("All crew, [alt_title || title] [person.real_name] on deck!")
	..()

/datum/job/seneschal
	title = "Seneschal"
	supervisors = "the Rogue Trader and your own ambition."
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 14
	economic_power = 14
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 45
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/XO
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 36
	min_skill = list( // 5 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_COMPUTER = SKILL_BASIC, // 1 point
		SKILL_PILOT = SKILL_BASIC // 2 points
	)


	access = list(
		access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
		access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
		access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
		access_atmospherics, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
		access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
		access_qm, access_network, access_network_admin, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
		access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
		access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar, access_guppy_helm,
		access_expedition_shuttle_helm, access_aquila, access_aquila_helm, access_solgov_crew, access_nanotrasen, access_chief_steward,
		access_emergency_armory, access_sec_guard, access_gun, access_expedition_shuttle, access_guppy, access_seneng, access_senmed, access_senadv,
		access_explorer, access_pathfinder, access_pilot, access_commissary, access_petrov, access_petrov_helm, access_petrov_analysis, access_petrov_phoron,
		access_petrov_toxins, access_petrov_chemistry, access_petrov_control, access_petrov_maint, access_rd, access_petrov_rd, access_torch_fax, access_torch_helm,
		access_radio_comm, access_radio_eng, access_radio_med, access_radio_sec, access_radio_sup, access_radio_serv, access_radio_exp, access_radio_sci, access_research_storage
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/seneschal/get_description_blurb()
	return "You are the Executive Officer. You are an experienced senior officer, second in command of the ship, and are responsible for the smooth operation of the ship under your Commanding Officer. In their absence, you are expected to take their place. Your primary duty is directly managing department heads and all those outside a department heading. You are also responsible for the contractors and passengers aboard the ship. Consider the Senior Enlisted Advisor and Bridge Officers tools at your disposal."

/datum/job/rd
	title = "Chief Science Officer"
	supervisors = "the Commanding Officer"
	economic_power = 12
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 60
	total_positions = 0
	spawn_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/research/cso
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	skill_points = 36
	min_skill = list( // 16 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_COMPUTER = SKILL_BASIC, // 1 point
		SKILL_FINANCE = SKILL_TRAINED, // 2 points
		SKILL_BOTANY = SKILL_BASIC, // 1 point
		SKILL_ANATOMY = SKILL_BASIC, // 4 points
		SKILL_DEVICES = SKILL_BASIC, // 2 points
		SKILL_SCIENCE = SKILL_TRAINED // 4 points
	)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(
		access_tox, access_tox_storage, access_emergency_storage, access_teleporter, access_bridge, access_rd,
		access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology, access_aquila,
		access_RC_announce, access_keycard_auth, access_xenoarch, access_nanotrasen, access_sec_guard, access_heads,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_rd,
		access_petrov_control, access_petrov_maint, access_pathfinder, access_explorer, access_eva, access_solgov_crew,
		access_expedition_shuttle, access_expedition_shuttle_helm, access_maint_tunnels, access_torch_fax, access_radio_comm,
		access_radio_sci, access_radio_exp, access_research_storage
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/aidiag,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/rd/get_description_blurb()
	return "You are the Chief Science Officer. You are responsible for the research department. You handle the science aspects of the project and liase with the imperial interests of the Explorator Organisation. Make sure science gets done, do some yourself, and get your scientists on away missions to find things to benefit the project. Advise the CO on science matters."



/datum/job/guard_captain
	title = "Cadian Captain"
	supervisors = "the Commanding Officer and the Executive Officer"
	economic_power = 10
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/cos
	total_positions = 1
	spawn_positions = 1
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 34
	min_skill = list( // 15 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_COMBAT = SKILL_BASIC, // 2 points
		SKILL_WEAPONS = SKILL_TRAINED, // 6 points
		SKILL_FORENSICS = SKILL_BASIC // 4 points
	)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	access = list(
		access_security, access_brig, access_armory, access_forensics_lockers,
		access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_bridge, access_heads, access_aquila,
		access_hos, access_RC_announce, access_keycard_auth, access_sec_doors,
		access_solgov_crew, access_gun, access_emergency_armory, access_hangar, access_torch_fax,
		access_radio_comm, access_radio_sec
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/guard_captain/get_description_blurb()
	return "You are the Chief of Security. You manage ship security. The Masters at Arms and the Militarum Police, as well as the Brig Chief and the Forensic Technician. You keep the vessel safe. You handle both internal and external security matters. You are the law. You are subordinate to the CO and the XO. You are expected to know the SCMJ and Sol law and Alert Procedure to a very high degree along with general regulations."

/datum/job/representative
	title = "SolGov Representative"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sol Central Government and the Imperial Charter"
	selection_color = "#2f2f7f"
	economic_power = 16
	minimal_player_age = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/representative
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	total_positions = 0
	spawn_positions = 0
	skill_points = 26
	min_skill = list( // 5 points
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED, // 4 points
		SKILL_FINANCE = SKILL_BASIC // 1 point
	)
	minimum_character_age = list(SPECIES_HUMAN = 27)

	access = list(
		access_representative, access_security, access_medical,
		access_bridge, access_cargo, access_solgov_crew,
		access_hangar, access_torch_fax, access_radio_comm
	)

	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/representative/get_description_blurb()
	return "You are the Imperium Representative. You are a civilian assigned as both a diplomatic liaison for first contact and foreign affair situations on board. You are also responsible for monitoring for any serious missteps of justice, sol law or other ethical or legal issues aboard and informing and advising the Commanding Officer of them. You are a mid-level bureaucrat. You liaise between the crew and imperial interests on board. Send faxes back to Sol on mission progress and important events."

/datum/job/sea
	title = "Senior Enlisted Advisor"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 14
	economic_power = 11
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 45
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 34
	min_skill = list( // 5 points
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_COMBAT = SKILL_BASIC, // 2 points
		SKILL_WEAPONS = SKILL_BASIC // 2 points
	)

	max_skill = list(	SKILL_PILOT        = SKILL_TRAINED,
	                    SKILL_COMBAT       = SKILL_EXPERIENCED,
	                    SKILL_WEAPONS      = SKILL_EXPERIENCED,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)


	access = list(
		access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
		access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_aquila, access_guppy_helm,
		access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_torch_fax,
		access_radio_comm, access_radio_eng, access_radio_med, access_radio_sec, access_radio_serv, access_radio_sup, access_radio_exp
		)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "You are the Senior Enlisted Advisor. You are the highest enlisted person on the ship. You are directly subordinate to the CO. You advise them on enlisted concerns and provide expertise and advice to officers. You are responsible for ensuring discipline and good conduct among enlisted, as well as notifying officers of any issues and \"advising\" them on mistakes they make. You also handle various duties on behalf of the CO and XO. You are an experienced enlisted person, very likely equal only in experience to the CO and XO. You know the regulations better than anyone."

/datum/job/void_officer
	title = "Bridge Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Commanding Officer and heads of staff"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 22)
	ideal_character_age = 24
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list( // 5 points
		SKILL_BUREAUCRACY = SKILL_BASIC, // 1 point
		SKILL_PILOT = SKILL_TRAINED // 4 points
	)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)


	access = list(
		access_security, access_medical, access_engine, access_maint_tunnels, access_emergency_storage,
		access_bridge, access_janitor, access_kitchen, access_cargo, access_mailsorting, access_RC_announce, access_keycard_auth,
		access_solgov_crew, access_aquila, access_aquila_helm, access_guppy, access_guppy_helm, access_external_airlocks,
		access_eva, access_hangar, access_cent_creed, access_explorer, access_expedition_shuttle, access_expedition_shuttle_helm, access_teleporter,
		access_torch_fax, access_torch_helm, access_radio_comm, access_radio_eng, access_radio_exp, access_radio_serv, access_radio_sci, access_radio_sup
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/void_officer/get_description_blurb()
	return "You are a Bridge Officer. You are a very junior officer. You do not give orders of your own. You are subordinate to all of command. You handle matters on the bridge and report directly to the CO and XO. You take The Dauntless's helm and pilot the Aquila if needed. You monitor bridge cogitator programs and communications and report relevant information to command."
