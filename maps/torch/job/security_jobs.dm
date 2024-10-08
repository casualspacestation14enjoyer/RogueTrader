/datum/job/guard_captain
	title = "Cadian Captain"
	supervisors = "the Commanding Officer and the Executive Officer"
	economic_power = 10
	minimal_player_age = 14
	department = "Command"
	department_flag = COM
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/cadian_captain
	total_positions = 1
	spawn_positions = 1
	alt_titles = list(
		"Krieg Captain",
		"Valhallan Captain",
		"Catachan Sergeant ", // Catachan's aren't cool if they're officers.
		"Maccabian Sergeant",
		"Mordian Captain"
	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 34
	min_skill = list(
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_TRAINED,
		SKILL_DEVICES = SKILL_BASIC,
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED
	)

	max_skill = list(	SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_COMBAT = SKILL_LEGEND)

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
	return "As the Guard Captain, you command the ship's security forces, leading personnel in maintaining order and protecting the vessel. You oversee security training, manage defensive operations, and embark on critical missions alongside the Deck Sergeant and Seneschal. Your leadership keeps the crew ready for any threat, aboard the ship or beyond."

/datum/job/guard_captain/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/selected_title = alt_titles[H.mind.role_alt_title]
	switch(title) //DO NOT TOUCH THIS, IT PROBABLY WORKS
		if("Cadian Captain" || "Valhallan Captain" || "Catachan Sergeant" || "Krieg Captain" || "Maccabian Sergeant" || "Mordian Captain")
			if(title == "Catachan Sergeant")
				H.fully_replace_character_name("Sergeant [current_name]")
			if(title == "Cadian Captain")
				H.fully_replace_character_name("Captain [current_name]")
			if(title == "Maccabian Sergeant")
				H.fully_replace_character_name("Sergeant [current_name]")
			if(title == "Krieg Captain")
				H.fully_replace_character_name("Captain [current_name]")
			if(title == "Valhallan Captain")
				H.fully_replace_character_name("Captain [current_name]")
			if(title == "Mordian Captain")
				H.fully_replace_character_name("Captain [current_name]")
	to_chat(H, "<span class='notice'><b><font size=2>As the [selected_title], you command the ship's security forces, leading personnel in maintaining order and protecting the vessel. You oversee security training, manage defensive operations, and embark on critical missions alongside the Deck Sergeant and Seneschal. Your leadership keeps the crew ready for any threat, aboard the ship or beyond.</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>   The Astra Militarum, also known as the Imperial Guard in colloquial Low Gothic, is the largest coherent fighting force in the galaxy. They serve as the Imperium of Man's primary combat force and first line of defence from the myriad threats which endanger the existence of the Human race in the 41st Millennium. </font></b></span>")
	return ..()


/datum/job/enforcer_sergeant
	title = "Sergeant"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, Seneschal and Rogue Trader"
	economic_power = 5
	minimal_player_age = 7
	ideal_character_age = 35
	minimum_character_age = list(SPECIES_HUMAN = 27)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/brig_chief
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list( // 15 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_COMBAT = SKILL_BASIC, // 2 points
		SKILL_GUNS = SKILL_TRAINED, // 6 points
		SKILL_FORENSICS = SKILL_BASIC // 4 points
	)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_GUNS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	access = list(
		access_security, access_brig, access_armory, access_forensics_lockers,
		access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_eva, access_sec_doors, access_solgov_crew, access_gun, access_torch_fax,
		access_radio_sec
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/enforcer
	title = "Enforcer"
	total_positions = 4
	spawn_positions = 4
	supervisors = "Anyone with a fancy title..."
	economic_power = 4
	minimal_player_age = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 25
	alt_titles = list() // This is a hack. Overriding a list var with null does not actually override it due to the particulars of dm list init. Do not "clean up" without testing.
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/maa
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	min_skill = list( // 14 points
		SKILL_BUREAUCRACY = SKILL_BASIC, // 1 point
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_COMBAT = SKILL_BASIC, // 2 points
		SKILL_GUNS = SKILL_TRAINED, // 6 points
		SKILL_FORENSICS = SKILL_BASIC // 4 points
	)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_GUNS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_EXPERIENCED)

	access = list(
		access_security, access_brig, access_maint_tunnels,
		access_external_airlocks, access_emergency_storage,
		access_eva, access_sec_doors, access_solgov_crew,
		access_radio_sec
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/detective
	title = "Forensic Technician"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief of Security"
	economic_power = 5
	minimal_player_age = 7
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	alt_titles = list(
		"Criminal Investigator"
	)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/forensic_tech
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list( // 11 points
		SKILL_BUREAUCRACY = SKILL_BASIC, // 1 point
		SKILL_COMPUTER = SKILL_BASIC, // 1 point
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_COMBAT = SKILL_BASIC, // 2 points
		SKILL_GUNS = SKILL_BASIC, // 2 points
		SKILL_FORENSICS = SKILL_TRAINED // 4 points
	)

	max_skill = list(   SKILL_COMBAT      = SKILL_EXPERIENCED,
	                    SKILL_GUNS     = SKILL_EXPERIENCED,
	                    SKILL_FORENSICS   = SKILL_MAX)

	access = list(
		access_security, access_brig, access_forensics_lockers,
		access_maint_tunnels, access_emergency_storage,
		access_sec_doors, access_solgov_crew, access_morgue,
		access_torch_fax, access_network, access_radio_sec
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
