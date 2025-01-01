

/datum/job/pilgrim
	title = "Deck Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Deck Boss"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 24
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/supply/tech
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list( // 5 points
		SKILL_BUREAUCRACY = SKILL_BASIC, // 1 point
		SKILL_FINANCE = SKILL_BASIC, // 1 point
		SKILL_VIGOR = SKILL_BASIC, // 1 point
		SKILL_MECH =	SKILL_BASIC // 2 points
	)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	access = list(
		access_maint_tunnels, access_magos, access_cargo, access_guppy_helm,
		access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle,
		access_guppy, access_hangar, access_commissary, access_radio_sup
	)

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
