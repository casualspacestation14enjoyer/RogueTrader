/datum/job/magos_explorator
	title = "Magos Explorator"
	supervisors = "the Mechanicus and at times the Rogue Trader"
	department = "Mechanicus"
	department_flag = ENG
	economic_power = 12
	minimum_character_age = list(SPECIES_HUMAN = 31)
	ideal_character_age = 40
	minimal_player_age = 14
	total_positions = 1
	spawn_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 8
	min_skill = list(
		SKILL_BUREAUCRACY  = SKILL_TRAINED,
		SKILL_COMBAT = SKILL_TRAINED,
		SKILL_WEAPONS = SKILL_EXPERIENCED,
		SKILL_FORENSICS = SKILL_TRAINED,
		SKILL_SCIENCE = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_TRAINED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_PILOT = SKILL_TRAINED,
		SKILL_COMPUTER = SKILL_EXPERIENCED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_EXPERIENCED,
		SKILL_ATMOS = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_TRAINED,
		SKILL_CHEMISTRY = SKILL_TRAINED,
		SKILL_ANATOMY = SKILL_TRAINED,
		SKILL_ENGINES = SKILL_EXPERIENCED
	)

	access = list(
		access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
		access_tech_storage, access_robotics, access_atmospherics, access_janitor, access_construction,
		access_network, access_network_admin, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
		access_solgov_crew, access_aquila, access_seneng, access_hangar, access_torch_fax, access_torch_helm, access_radio_comm,
		access_radio_eng
		)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports)

/datum/job/magos_explorator/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	H.fully_replace_character_name("Magos [current_name]")
	H.say(":e Memory cache integrity at 87%... Motive force appeased. Security apparatis functional. Non organics uncorrupted.")
	to_chat(H, "<span class='notice'><b><font size=3>As the Magos Explorator, you manage the technology and exploration efforts aboard The Dauntless, working in partnership with the Rogue Trader. Your duties are divided between maintaining the sacred machinery of the ship and pursuing the discovery of lost knowledge and power across the stars. Overseeing tech-priests, bondsmen, menials, slaves, and Skitarii, you ensure their work serves the dual purpose of keeping the ship operational and advancing the Mechanicum’s quest for knowledge, all while respecting the Rogue Trader’s command.</font></b></span>")
	return ..()

/datum/job/magos_explorator/get_description_blurb()
	return "As the Magos Explorator, you manage the technology and exploration efforts aboard The Dauntless, working in partnership with the Rogue Trader. Your duties are divided between maintaining the sacred machinery of the ship and pursuing the discovery of lost knowledge and power across the stars. Overseeing tech-priests, bondsmen, menials, slaves, and Skitarii, you ensure their work serves the dual purpose of keeping the ship operational and advancing the Mechanicum’s quest for knowledge, all while respecting the Rogue Trader’s command."


/datum/job/data_smith
	title = "Data Smith"
	department = "Mechanicus"
	department_flag = ENG
	total_positions = 2 // Does science and genetics.
	spawn_positions = 2
	supervisors = "the Magos Explorator"
	selection_color = "#5b4d20"
	economic_power = 7
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 27)
	ideal_character_age = 40
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	alt_titles = list(
		"Lexmechanic",
		"Genetor",
		"Artificer",
		"Chymist",
	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 12
	min_skill = list(
		SKILL_WEAPONS = SKILL_TRAINED,
		SKILL_SCIENCE = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_TRAINED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_COMPUTER = SKILL_EXPERIENCED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_ELECTRICAL = SKILL_TRAINED,
		SKILL_ATMOS = SKILL_TRAINED,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_ENGINES = SKILL_BASIC
	)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_ELECTRICAL   = SKILL_MAX,
						SKILL_ATMOS        = SKILL_MAX,
						SKILL_ENGINES      = SKILL_MAX)

	access = list(
		access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
		access_tcomsat, access_solgov_crew, access_seneng, access_hangar, access_network, access_network_admin, access_radio_eng
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/data_smith/get_description_blurb()
	return "You are the Senior Engineer. You are a veteran SNCO. You are subordinate to the Chief Engineer though you may have many years more experience than them and your subordinates are the rest of engineering. You should be an expert in practically every engineering area and familiar and possess leadership skills. Coordinate the team and ensure the smooth running of the department along with the Chief Engineer."

/datum/job/tech_priest
	title = "Enginseer"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Magos Explorator"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 19)
	ideal_character_age = 30
	alt_titles = list(
		"Fabricator Adept",
		"Electro Priest",
		)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/engineer
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 15
	min_skill = list(
		SKILL_WEAPONS = SKILL_BASIC,
		SKILL_SCIENCE = SKILL_BASIC,
		SKILL_DEVICES = SKILL_TRAINED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_COMPUTER = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_ELECTRICAL = SKILL_TRAINED,
		SKILL_ATMOS = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ENGINES = SKILL_TRAINED
	)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(
		access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
		access_solgov_crew, access_hangar, access_network, access_radio_eng
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/tech_priest/get_description_blurb()
	return "You are an Engineer. You operate under one of many titles and may be highly specialised in a specific area of engineering. You probably have at least a general familiarity with most other areas though this is not expected. You are subordinate to the Senior Engineer and the Chief Engineer and are expected to follow them."

/datum/job/bondsman
	title = "Bondsman"
	department = "Mechanicus"
	department_flag = ENG
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Mechanicus and Rogue Trader"
	selection_color = "#5b4d20"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20

	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/bondsman
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	skill_points = 14
	min_skill = list(
		SKILL_WEAPONS = SKILL_BASIC,
		SKILL_COMBAT = SKILL_TRAINED,
		SKILL_HAULING = SKILL_TRAINED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_ELECTRICAL = SKILL_BASIC,
		SKILL_ATMOS = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ENGINES = SKILL_BASIC
	)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(
		access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_eva, access_tech_storage, access_janitor, access_construction,
		access_solgov_crew, access_hangar, access_radio_eng
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor)

/datum/job/bondsman/get_description_blurb()
	return "You are a Bondsman under the service of the Mechanicus aboard the Rogue Trader’s vessel, lifebonded to the Magos Explorator and likely a descendant of gang-pressed families taken from their homeworlds. Tasked with menial yet vital technical work, your duties include maintaining ship systems, assisting with resource extraction, and performing hazardous tasks in the ship's more dangerous zones."

/datum/job/roboticist
	title = "Roboticist"
	department = "Mechanicus"
	department_flag = ENG|ROB

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	supervisors = "the Chief Engineer."
	selection_color = "#5b4d20"
	economic_power = 6
	alt_titles = list(
		"Mechsuit Technician")
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list( // 22 points
		SKILL_COMPUTER = SKILL_TRAINED, // 2 points
		SKILL_DEVICES = SKILL_EXPERIENCED, // 4 points
		SKILL_EVA = SKILL_TRAINED, // 2 points
		SKILL_ANATOMY = SKILL_TRAINED, // 8 points
		SKILL_CONSTRUCTION = SKILL_BASIC, // 2 points
		SKILL_ELECTRICAL = SKILL_BASIC, // 2 points
		SKILL_MECH = HAS_PERK // 2 points
	)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERIENCED,
	                    SKILL_ENGINES      = SKILL_EXPERIENCED,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERIENCED,
	                    SKILL_ANATOMY      = SKILL_EXPERIENCED)

	access = list(
		access_robotics, access_engine, access_solgov_crew, access_network, access_radio_eng
	)

/datum/job/roboticist/get_description_blurb()
	return "You are the Roboticist. You are responsible for repairing, upgrading and handling ship synthetics (like robots). You are also responsible for the production of exosuits(mechs) and bots for various departments. You answer to the Chief Engineer."
