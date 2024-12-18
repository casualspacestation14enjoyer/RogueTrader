/datum/access
	var/id = ""
	var/desc = ""
	var/region = ACCESS_REGION_NONE
	var/access_type = ACCESS_TYPE_STATION

/datum/access/dd_SortValue()
	return "[access_type][desc]"

/*****************
* Station access *
*****************/
var/global/const/access_dauntless = "ACCESS_DAUNTLESS" //37
/datum/access/library
	id = access_dauntless
	desc = "Dauntless Access"
	region = ACCESS_REGION_GENERAL

var/global/const/access_restricted = "ACCESS_RESTRICTED" //1
/datum/access/restricted
	id = access_restricted
	desc = "Militarum Access"
	region = ACCESS_REGION_SECURITY

var/global/const/access_restricted_command = "ACCESS_RESTRICTED_COMMAND" //2
/datum/access/restricted_command
	id = access_restricted_command
	desc = "Militarum Command"
	region = ACCESS_REGION_SECURITY

var/global/const/access_brig = "ACCESS_BRIG" // Brig timers and permabrig 3
/datum/access/holding
	id = access_brig
	desc = "Holding Cells"
	region = ACCESS_REGION_SECURITY

var/global/const/access_forensics_lockers = "ACCESS_FORENSICS" //4
/datum/access/forensics_lockers
	id = access_forensics_lockers
	desc = "Forensics"
	region = ACCESS_REGION_SECURITY

var/global/const/access_medical = "ACCESS_MEDICAL" //5
/datum/access/medical
	id = access_medical
	desc = "Medicae"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_medical_command = "ACCESS_MEDICAL_COMMAND" //6
/datum/access/medical_command
	id = access_medical_command
	desc = "Medicae Command"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_tox = "ACCESS_TOXINS" //7
/datum/access/tox
	id = access_tox
	desc = "Research Labs"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_tox_storage = "ACCESS_TOX_STORAGE" //8
/datum/access/tox_storage
	id = access_tox_storage
	desc = "Toxins Lab"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_mechanicus = "ACCESS_MECHANICUS" //10
/datum/access/mechanicus
	id = access_mechanicus
	desc = "Mechanicus"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_mechanicus_command = "ACCESS_MECHANICUS_COMMAND" //11
/datum/access/mechanicus_command
	id = access_mechanicus_command
	desc = "Mechanicus Command"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_magos = "ACCESS_MAGOS" //14
/datum/access/magos
	id = access_magos
	desc = "Magos Access"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_bridge = "ACCESS_BRIDGE" //19
/datum/access/bridge
	id = access_bridge
	desc = "Bridge"
	region = ACCESS_REGION_COMMAND

var/global/const/access_roguetrader = "ACCESS_ROGUETRADER" //20
/datum/access/roguetrader
	id = access_roguetrader
	desc = "Rogue Trader"
	region = ACCESS_REGION_COMMAND

var/global/const/access_maint_tunnels = "ACCESS_MAINT" //12
/datum/access/maint_tunnels
	id = access_maint_tunnels
	desc = "Maintenance"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_external_airlocks = "ACCESS_EXTERNAL" //13
/datum/access/external_airlocks
	id = access_external_airlocks
	desc = "External Airlocks"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_change_ids = "ACCESS_CHANGE_ID" //15
/datum/access/change_ids
	id = access_change_ids
	desc = "ID Computer"
	region = ACCESS_REGION_COMMAND

var/global/const/access_ai_upload = "ACCESS_AI_UPLOAD" //16
/datum/access/ai_upload
	id = access_ai_upload
	desc = "AI Upload"
	region = ACCESS_REGION_COMMAND

var/global/const/access_teleporter = "ACCESS_TELEPORTER" //17
/datum/access/teleporter
	id = access_teleporter
	desc = "Teleporter"
	region = ACCESS_REGION_COMMAND

var/global/const/access_eva = "ACCESS_EVA" //18
/datum/access/eva
	id = access_eva
	desc = "EVA"
	region = ACCESS_REGION_COMMAND

var/global/const/access_all_personal_lockers = "ACCESS_PERSONAL_LOCKERS" //21
/datum/access/all_personal_lockers
	id = access_all_personal_lockers
	desc = "Personal Lockers"
	region = ACCESS_REGION_COMMAND

var/global/const/access_chapel_office = "ACCESS_CHAPEL_STORAGE" //22
/datum/access/chapel_office
	id = access_chapel_office
	desc = "Chapel Office"
	region = ACCESS_REGION_GENERAL

var/global/const/access_tech_storage = "ACCESS_TECH_STORAGE" //23
/datum/access/tech_storage
	id = access_tech_storage
	desc = "Technical Storage"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_atmospherics = "ACCESS_ATMOS" //24
/datum/access/atmospherics
	id = access_atmospherics
	desc = "Atmospherics"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_janitor = "ACCESS_JANITOR" //26
/datum/access/janitor
	id = access_janitor
	desc = "Custodial Closet"
	region = ACCESS_REGION_GENERAL

var/global/const/access_crematorium = "ACCESS_CREMATORIUM" //27
/datum/access/crematorium
	id = access_crematorium
	desc = "Crematorium"
	region = ACCESS_REGION_GENERAL

var/global/const/access_kitchen = "ACCESS_KITCHEN" //28
/datum/access/kitchen
	id = access_kitchen
	desc = "Kitchen"
	region = ACCESS_REGION_GENERAL

var/global/const/access_robotics = "ACCESS_ROBOTICS" //29
/datum/access/robotics
	id = access_robotics
	desc = "Robotics"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_rd = "ACCESS_RESEARCH_DIRECTOR" //30
/datum/access/rd
	id = access_rd
	desc = "Chief Science Officer"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_cargo = "ACCESS_CARGO" //31
/datum/access/cargo
	id = access_cargo
	desc = "Cargo Bay"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_construction = "ACCESS_CONSTRUCTION" //32
/datum/access/construction
	id = access_construction
	desc = "Construction Areas"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_chemistry = "ACCESS_CHEMISTRY" //33
/datum/access/chemistry
	id = access_chemistry
	desc = "Chemistry Lab"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_cargo_bot = "ACCESS_CARGO_BOT" //34
/datum/access/cargo_bot
	id = access_cargo_bot
	desc = "Cargo Bot Delivery"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_hydroponics = "ACCESS_HYDROPONICS" //35
/datum/access/hydroponics
	id = access_hydroponics
	desc = "Hydroponics"
	region = ACCESS_REGION_GENERAL

var/global/const/access_manufacturing = "ACCESS_MANUFACTURING" //36
/datum/access/manufacturing
	id = access_manufacturing
	desc = "Manufacturing"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_lawyer = "ACCESS_LAWYER" //38
/datum/access/lawyer
	id = access_lawyer
	desc = "Internal Affairs"
	region = ACCESS_REGION_COMMAND

var/global/const/access_virology = "ACCESS_VIRO" //39
/datum/access/virology
	id = access_virology
	desc = "Virology"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_cmo = "ACCESS_CHIEF_MEDICAL_OFFICER" //40
/datum/access/cmo
	id = access_cmo
	desc = "Chief Medical Officer"
	region = ACCESS_REGION_COMMAND

var/global/const/access_qm = "ACCESS_QUARTERMASTER" //41
/datum/access/qm
	id = access_qm
	desc = "Quartermaster"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_network = "ACCESS_NETWORK" //42
/datum/access/network
	id = access_network
	desc = "Network Operations"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_network_admin = "ACCESS_NETWORK_ADMIN"
/datum/access/network_admin
	id = access_network_admin
	desc = "Network Administration"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_surgery = "ACCESS_SURGERY" //45
/datum/access/surgery
	id = access_surgery
	desc = "Surgery"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_research = "ACCESS_RESEARCH" //47
/datum/access/research
	id = access_research
	desc = "Science"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_mining = "ACCESS_MINING" //48
/datum/access/mining
	id = access_mining
	desc = "Mining"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_mining_office = "ACCESS_MINING_OFFICE" //49
/datum/access/mining_office
	id = access_mining_office
	desc = "Mining Office"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_mailsorting = "ACCESS_SORTING" //50
/datum/access/mailsorting
	id = access_mailsorting
	desc = "Cargo Office"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_heads_vault = "ACCESS_VAULT"  //53
/datum/access/heads_vault
	id = access_heads_vault
	desc = "Main Vault"
	region = ACCESS_REGION_COMMAND

var/global/const/access_mining_station = "ACCESS_MINING_EVA" //54
/datum/access/mining_station
	id = access_mining_station
	desc = "Mining EVA"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_xenobiology = "ACCESS_XENOBIO" //55
/datum/access/xenobiology
	id = access_xenobiology
	desc = "Xenobiology Lab"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_ce = "ACCESS_CHIEF_ENGINEER" //56
/datum/access/ce
	id = access_ce
	desc = "Magos Explorator"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_hop = "ACCESS_HEAD_OF_PERSONNEL" //57
/datum/access/hop
	id = access_hop
	desc = "Head of Personnel"
	region = ACCESS_REGION_COMMAND

var/global/const/access_hos = "ACCESS_HEAD_OF_SECURITY" //58
/datum/access/hos
	id = access_hos
	desc = "Head of Security"
	region = ACCESS_REGION_SECURITY

var/global/const/access_RC_announce = "ACCESS_REQUEST_ANNOUCE" //Request console announcements 59
/datum/access/RC_announce
	id = access_RC_announce
	desc = "RC Announcements"
	region = ACCESS_REGION_COMMAND

var/global/const/access_keycard_auth = "ACCESS_KEYCARD_AUTH" //Used for events which require at least two people to confirm them 60
/datum/access/keycard_auth
	id = access_keycard_auth
	desc = "Keycode Auth. Device"
	region = ACCESS_REGION_COMMAND

var/global/const/access_tcomsat ="ACCESS_TELECOMS" // has access to the entire telecomms satellite / machinery 61
/datum/access/tcomsat
	id = access_tcomsat
	desc = "Telecommunications"
	region = ACCESS_REGION_COMMAND

var/global/const/access_gateway = "ACCESS_GATEWAY" //62
/datum/access/gateway
	id = access_gateway
	desc = "Gateway"
	region = ACCESS_REGION_COMMAND

var/global/const/access_sec_doors = "ACCESS_SEC_DOORS" // Security front doors //63
/datum/access/sec_doors
	id = access_sec_doors
	desc = "Security"
	region = ACCESS_REGION_SECURITY

var/global/const/access_psychiatrist = "ACCESS_PSYCHIATRIST" // Psychiatrist's office 64
/datum/access/psychiatrist
	id = access_psychiatrist
	desc = "Counselor's Office"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_xenoarch = "ACCESS_XENOARCH" //65
/datum/access/xenoarch
	id = access_xenoarch
	desc = "Xenoarchaeology"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_medical_equip = "ACCESS_MEDICAL_EQUIP" //66
/datum/access/medical_equip
	id = access_medical_equip
	desc = "Medical Equipment"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_heads = "ACCESS_HEADS" //67
/datum/access/heads
	id = access_heads
	desc = "Command"
	region = ACCESS_REGION_COMMAND

var/global/const/access_research_storage = "ACCESS_RESEARCH_STORAGE"
/datum/access/research_storage
	id = access_research_storage
	desc = "Science Storage"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_pilot = "ACCESS_PILOT"
/datum/access/pilot
	id = access_pilot
	desc = "Pilot"
	region = ACCESS_REGION_GENERAL

/******************
* Central Command *
******************/
var/global/const/access_cent_general = "ACCESS_CENT_GENERAL" //101
/datum/access/cent_general
	id = access_cent_general
	desc = "Code Grey"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_thunder = "ACCESS_CENT_THUNDERDOME" //102
/datum/access/cent_thunder
	id = access_cent_thunder
	desc = "Code Yellow"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_specops = "ACCESS_CENT_SPECOPS" //103
/datum/access/cent_specops
	id = access_cent_specops
	desc = "Code Black"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_medical = "ACCESS_CENT_MEDBAY" //104
/datum/access/cent_medical
	id = access_cent_medical
	desc = "Code White"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_living = "ACCESS_CENT_LIVING" //105
/datum/access/cent_living
	id = access_cent_living
	desc = "Code Green"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_storage = "ACCESS_CENT_STORAGE" //106
/datum/access/cent_storage
	id = access_cent_storage
	desc = "Code Orange"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_teleporter = "ACCESS_CENT_TELEPORTER" //107
/datum/access/cent_teleporter
	id = access_cent_teleporter
	desc = "Code Blue"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_creed = "ACCESS_CENT_CREED" //108
/datum/access/cent_creed
	id = access_cent_creed
	desc = "Code Silver"
	access_type = ACCESS_TYPE_CENTCOM

var/global/const/access_cent_captain = "ACCESS_CENT_CAPTAIN" //109
/datum/access/cent_captain
	id = access_cent_captain
	desc = "Code Gold"
	access_type = ACCESS_TYPE_CENTCOM

/***************
* Antag access *
***************/
var/global/const/access_syndicate = "ACCESS_SYNDICATE" //150
/datum/access/syndicate
	id = access_syndicate
	desc = "Heretic"
	access_type = ACCESS_TYPE_SYNDICATE

/*******
* Misc *
*******/
var/global/const/access_synth = "ACCESS_SYNTH" //199
/datum/access/synthetic
	id = access_synth
	desc = "Synthetic"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_crate_cash = "ACCESS_MERCHANT_CASH" //300
/datum/access/crate_cash
	id = access_crate_cash
	desc = "Crate cash"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_merchant = "ACCESS_MERCHANT" //301
/datum/access/merchant
	id = access_merchant
	desc = "Merchant"
	access_type = ACCESS_TYPE_NONE
