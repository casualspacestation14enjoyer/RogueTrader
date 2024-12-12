/obj/machinery/computer/shuttle_control/explore/tauscoutship
	name = "Tau control console"
	req_access = list(access_tauscoutship)
	shuttle_tag = "Tau Scout"

/obj/machinery/computer/shuttle_control/explore/tauscoutshuttle
	name = "Tau Shuttle control console"
	req_access = list(access_tauscoutship)
	shuttle_tag = "Tau Shuttle"

/obj/overmap/visitable/ship/landable/tauscoutship
	name = "light Tau vessel"
	shuttle = "Tau Scout"
	multiz = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	color = "#ff00ff"
	vessel_mass = 800
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Tau Shuttle" = list("nav_tauscoutsh_dock")
	)


/obj/overmap/visitable/ship/landable/tauscoutship/New()
	name = "Tau Scout Ship"
	..()

/obj/overmap/visitable/ship/landable/tauscoutshuttle
	name = "Tau Shuttle"
	shuttle = "Tau Shuttle"
	fore_dir = WEST
	color = "#880088"
	vessel_mass = 450
	vessel_size = SHIP_SIZE_TINY

/datum/shuttle/autodock/overmap/tauscoutship
	name = "Tau Scout"
	warmup_time = 5
	range = 1
	current_location = "nav_tauscout_start"
	shuttle_area = list(
		/area/ship/tauscoutship/command/bridge, /area/ship/tauscoutship/wings/port, /area/ship/tauscoutship/wings/starboard,
		/area/ship/tauscoutship/brig, /area/ship/tauscoutship/portcheckpoint, /area/ship/tauscoutship/forestorage,
		/area/ship/tauscoutship/externalwing/port, /area/ship/tauscoutship/externalwing/starboard, /area/ship/tauscoutship/corridor,
		/area/ship/tauscoutship/crew/quarters, /area/ship/tauscoutship/crew/medbay, /area/ship/tauscoutship/crew/labs,
		/area/ship/tauscoutship/maintenance/power, /area/ship/tauscoutship/hangar, /area/ship/tauscoutship/command/armory,
		/area/ship/tauscoutship/dock, /area/ship/tauscoutship/maintenance/atmos, /area/ship/tauscoutship/robotics,
		/area/ship/tauscoutship/crew/rec
	)
	defer_initialisation = TRUE
	knockdown = FALSE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skrell

/obj/shuttle_landmark/tauscoutship/start
	name = "Uncharted Space"
	landmark_tag = "nav_tauscout_start"

/datum/shuttle/autodock/overmap/tauscoutshuttle
	name = "Tau Shuttle"
	warmup_time = 5
	current_location = "nav_tauscoutsh_dock"
	range = 2
	shuttle_area = /area/ship/tauscoutshuttle
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skrell
	mothershuttle = "Tau Scout"

/obj/shuttle_landmark/tauscoutshuttle/start
	name = "Dock"
	landmark_tag = "nav_tauscoutsh_dock"
	base_area = /area/ship/tauscoutship/hangar
	base_turf = /turf/simulated/floor/tiled/tau
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/shuttle_landmark/tauscout/dock
	name = "Tau Scout Docking Port"
	landmark_tag = "nav_tauscout_dock"

/obj/shuttle_landmark/tauscoutshuttle/altdock
	name = "Docking Port"
	landmark_tag = "nav_tauscoutsh_altdock"

/turf/simulated/floor/shuttle_ceiling/skrell
	color = COLOR_SOL

/turf/simulated/floor/shuttle_ceiling/skrell/air
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD, GAS_NITROGEN = MOLES_N2STANDARD)
