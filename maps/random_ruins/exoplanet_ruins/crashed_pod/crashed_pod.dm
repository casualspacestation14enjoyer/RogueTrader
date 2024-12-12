GLOBAL_LIST_INIT(crashed_ship_areas, new)

/datum/map_template/ruin/exoplanet/crashed_ship
	name = "Crashed ship"
	id = "crashed_ship"
	description = "A Crashed ship from a freighter."
	suffixes = list("crashed_pod/crashed_pod.dmm")
	spawn_cost = 1
	player_cost = 0
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN
	spawn_weight = -1
	apc_test_exempt_areas = list(
		/area/map_template/biodome/medbay = NO_SCRUBBER|NO_VENT|NO_APC,
	)
