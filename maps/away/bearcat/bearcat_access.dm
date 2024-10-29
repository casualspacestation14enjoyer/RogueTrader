var/global/const/access_demeter = "access_demeter" //998
/datum/access/demeter
	id = access_demeter
	desc = "Demeter Crewman"
	region = ACCESS_REGION_NONE

var/global/const/access_demeter_captain = "access_demeter_CAPTAIN" //999
/datum/access/demeter_captain
	id = access_demeter_captain
	desc = "Demeter Captain"
	region = ACCESS_REGION_NONE

/obj/item/card/id/demeter
	access = list(access_demeter, access_demeter_captain)

/obj/item/card/id/demeter_captain
	access = list(access_demeter, access_demeter_captain)

/obj/machinery/door/airlock/autoname/demeter

/obj/machinery/door/airlock/autoname/engineering/demeter

/obj/machinery/door/airlock/autoname/command/demeter

/obj/structure/closet/secure_closet/engineering_electrical/demeter
	req_access = list(access_demeter)

/obj/structure/closet/secure_closet/engineering_welding/demeter
	req_access = list(access_demeter)

/obj/machinery/vending/engineering/demeter
	req_access = list(access_demeter)

/obj/machinery/vending/tool/demeter
	req_access = list(access_demeter)

/obj/machinery/suit_storage_unit/engineering/salvage/demeter
	req_access = list(access_demeter)

/obj/machinery/suit_cycler/salvage/demeter
	req_access = list(access_demeter)
