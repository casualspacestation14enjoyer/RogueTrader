//Torch ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/card/id/torch
	name = "identification card"
	desc = "An identification card issued to personnel aboard the Dauntless."
	job_access_type = DEFAULT_JOB_TYPE

/obj/item/card/id/torch/silver
	desc = "A silver identification card belonging to heads of staff."
	item_state = "silver_id"
	job_access_type = /datum/job/seneschal
	extra_details = list("goldstripe")
	color = "#ccecff"

/obj/item/card/id/torch/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	item_state = "gold_id"
	job_access_type = /datum/job/rogue_trader
	color = "#d4c780"
	extra_details = list("goldstripe")

// SolGov Crew and Contractors
/obj/item/card/id/torch/crew
	desc = "An identification card issued to SolGov crewmembers aboard the Dauntless."
	color = "#d3e3e1"
	job_access_type = /datum/job/deck_scum
	color = "#ccecff"


/obj/item/card/id/torch/contractor
	desc = "An identification card issued to private contractors aboard the Dauntless."
	job_access_type = DEFAULT_JOB_TYPE
	color = COLOR_GRAY80


/obj/item/card/id/torch/silver/medical
	job_access_type = /datum/job/magos_biologis
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/crew/medical
	job_access_type = /datum/job/medicae
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/crew/medical/senior
	job_access_type = /datum/job/juniormedicae

/obj/item/card/id/torch/contractor/medical
	job_access_type = /datum/job/medicae
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/contractor/medical/senior
	job_access_type = /datum/job/juniormedicae

/obj/item/card/id/torch/contractor/chemist
	job_access_type = /datum/job/pharmacologis
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/crew/medical/counselor
	job_access_type = /datum/job/rogue_guest

/obj/item/card/id/torch/contractor/medical/counselor
	job_access_type = /datum/job/rogue_guest

/obj/item/card/id/torch/silver/security
	job_access_type = /datum/job/guard_captain
	detail_color = "#e00000"

/obj/item/card/id/torch/crew/security
	job_access_type = /datum/job/enforcer
	detail_color = "#e00000"

/obj/item/card/id/torch/crew/security/brigchief
	job_access_type = /datum/job/enforcer_sergeant
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/security/forensic
	job_access_type = /datum/job/detective


/obj/item/card/id/torch/silver/engineering
	job_access_type = /datum/job/magos_explorator
	detail_color = COLOR_SUN

/obj/item/card/id/torch/crew/engineering
	job_access_type = /datum/job/tech_priest
	detail_color = COLOR_SUN

/obj/item/card/id/torch/crew/engineering/senior
	job_access_type = /datum/job/data_smith
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/contractor/engineering
	job_access_type = /datum/job/tech_priest
	detail_color = COLOR_SUN

/obj/item/card/id/torch/contractor/engineering/roboticist
	job_access_type = /datum/job/roboticist


/obj/item/card/id/torch/crew/supply/deckofficer
	job_access_type = /datum/job/noble_guest
	detail_color = COLOR_BROWN
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/supply
	job_access_type = /datum/job/pilgrim
	detail_color = COLOR_BROWN

/obj/item/card/id/torch/contractor/supply
	job_access_type = /datum/job/pilgrim
	detail_color = COLOR_BROWN

/obj/item/card/id/torch/crew/service //unused
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/torch/crew/service/chief_steward
	job_access_type = /datum/job/qm
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/service/janitor
	job_access_type = /datum/job/chamber_assistant

/obj/item/card/id/torch/crew/service/chef
	job_access_type = /datum/job/chamber_magister

/obj/item/card/id/torch/crew/service/chaplain
	job_access_type = /datum/job/chaplain_militant

/obj/item/card/id/torch/contractor/service //unused
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_CIVIE_GREEN


/obj/item/card/id/torch/crew/representative
	job_access_type = /datum/job/mercenary
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/torch/crew/sea
	job_access_type = /datum/job/sea
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/bridgeofficer
	job_access_type = /datum/job/void_officer
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/torch/crew/pathfinder
	job_access_type = /datum/job/pathfinder
	detail_color = COLOR_PURPLE
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/explorer
	job_access_type = /datum/job/explorer
	detail_color = COLOR_PURPLE

/obj/item/card/id/torch/crew/pilot
	job_access_type = /datum/job/shuttle_pilot
	detail_color = COLOR_PURPLE

// EC Science
/obj/item/card/id/torch/silver/research
	job_access_type = /datum/job/rd
	detail_color = COLOR_RESEARCH
	color = COLOR_WHITE

/obj/item/card/id/torch/crew/research
	desc = "A card issued to science personnel aboard the Dauntless."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_RESEARCH

/obj/item/card/id/torch/crew/research/senior_scientist
	job_access_type = /datum/job/senior_scientist
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/research/scientist
	job_access_type = /datum/job/scientist

//Necromundan and Passengers

/obj/item/card/id/torch/passenger
	desc = "A card issued to passengers aboard the Dauntless."
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/card/id/torch/passenger/research
	desc = "A card issued to imperial personnel aboard the Dauntless."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_BOTTLE_GREEN

/obj/item/card/id/torch/passenger/research/senior_scientist
	job_access_type = /datum/job/senior_scientist
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/passenger/research/nt_pilot
	job_access_type = /datum/job/shuttle_pilot

/obj/item/card/id/torch/passenger/research/scientist
	job_access_type = /datum/job/scientist

/obj/item/card/id/torch/passenger/research/mining
	job_access_type = /datum/job/unexpected_guest

/obj/item/card/id/torch/passenger/corporate
	color = COLOR_BOTTLE_GREEN
	detail_color = COLOR_OFF_WHITE

/obj/item/card/id/torch/passenger/corporate/liaison
	job_access_type = /datum/job/liaison
	extra_details = list("onegoldstripe")

//Merchant
/obj/item/card/id/torch/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	job_access_type = /datum/job/merchant
	color = COLOR_OFF_WHITE
	detail_color = COLOR_BEIGE
