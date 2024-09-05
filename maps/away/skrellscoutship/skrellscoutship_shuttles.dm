/obj/machinery/computer/shuttle_control/explore/skrellscoutship
	name = "Tau control console"
	req_access = list(access_skrellscoutship)
	shuttle_tag = "Tau Scout"

/obj/machinery/computer/shuttle_control/explore/skrellscoutshuttle
	name = "Tau Shuttle control console"
	req_access = list(access_skrellscoutship)
	shuttle_tag = "Tau Shuttle"

/obj/overmap/visitable/ship/landable/skrellscoutship
	name = "light Tau vessel"
	shuttle = "Tau Scout"
	multiz = 1
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	color = "#ff00ff"
	vessel_mass = 1000
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Tau Shuttle" = list("nav_skrellscoutsh_dock")
	)


/obj/overmap/visitable/ship/landable/skrellscoutship/New()
	name = "Tau Scout Ship"
	..()

/obj/overmap/visitable/ship/landable/skrellscoutshuttle
	name = "Tau Shuttle"
	shuttle = "Tau Shuttle"
	fore_dir = WEST
	color = "#880088"
	vessel_mass = 750
	vessel_size = SHIP_SIZE_TINY

/datum/shuttle/autodock/overmap/skrellscoutship
	name = "Tau Scout"
	warmup_time = 5
	range = 1
	current_location = "nav_skrellscout_start"
	shuttle_area = list(
		/area/ship/skrellscoutship/command/bridge, /area/ship/skrellscoutship/wings/port, /area/ship/skrellscoutship/wings/starboard,
		/area/ship/skrellscoutship/brig, /area/ship/skrellscoutship/portcheckpoint, /area/ship/skrellscoutship/forestorage,
		/area/ship/skrellscoutship/externalwing/port, /area/ship/skrellscoutship/externalwing/starboard, /area/ship/skrellscoutship/corridor,
		/area/ship/skrellscoutship/crew/quarters, /area/ship/skrellscoutship/crew/medbay, /area/ship/skrellscoutship/crew/labs,
		/area/ship/skrellscoutship/maintenance/power, /area/ship/skrellscoutship/hangar, /area/ship/skrellscoutship/command/armory,
		/area/ship/skrellscoutship/dock, /area/ship/skrellscoutship/maintenance/atmos, /area/ship/skrellscoutship/robotics,
		/area/ship/skrellscoutship/crew/rec
	)
	defer_initialisation = TRUE
	knockdown = FALSE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skrell

/obj/shuttle_landmark/skrellscoutship/start
	name = "Uncharted Space"
	landmark_tag = "nav_skrellscout_start"

/datum/shuttle/autodock/overmap/skrellscoutshuttle
	name = "Tau Shuttle"
	warmup_time = 5
	current_location = "nav_skrellscoutsh_dock"
	range = 2
	shuttle_area = /area/ship/skrellscoutshuttle
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/skrell
	mothershuttle = "Tau Scout"

/obj/shuttle_landmark/skrellscoutshuttle/start
	name = "Dock"
	landmark_tag = "nav_skrellscoutsh_dock"
	base_area = /area/ship/skrellscoutship/hangar
	base_turf = /turf/simulated/floor/tiled/skrell
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/shuttle_landmark/skrellscout/dock
	name = "Tau Scout Docking Port"
	landmark_tag = "nav_skrellscout_dock"

/obj/shuttle_landmark/skrellscoutshuttle/altdock
	name = "Docking Port"
	landmark_tag = "nav_skrellscoutsh_altdock"

/turf/simulated/floor/shuttle_ceiling/skrell
	color = COLOR_SOL

/turf/simulated/floor/shuttle_ceiling/skrell/air
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD, GAS_NITROGEN = MOLES_N2STANDARD)
