/singleton/hierarchy/outfit/job/torch/crew/command
	name = OUTFIT_JOB_NAME("Torch Command Outfit")
	hierarchy_type = /singleton/hierarchy/outfit/job/torch/crew/command
	l_ear = /obj/item/device/radio/headset/heads/bridge

/singleton/hierarchy/outfit/job/torch/crew/command/CO
	name = OUTFIT_JOB_NAME("Rogue Trader")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	l_ear = /obj/item/device/radio/headset/heads/bridge
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/soft/solgov/expedition/co
	id_types = list(/obj/item/card/id/torch/gold)
	pda_type = /obj/item/modular_computer/pda/captain

/singleton/hierarchy/outfit/job/torch/crew/command/XO
	name = OUTFIT_JOB_NAME("Seneschal")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	l_ear = /obj/item/device/radio/headset/heads/bridge
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/silver)
	pda_type = /obj/item/modular_computer/pda/heads/hop

/singleton/hierarchy/outfit/job/torch/crew/command/cmo
	name = OUTFIT_JOB_NAME("Magos Biologis")
	head = /obj/item/clothing/head/hardhat/techpriest/biologis
	mask = /obj/item/clothing/mask/gas/techpriest/magos
	glasses = /obj/item/clothing/glasses/science/magos
	belt = /obj/item/storage/belt/medical
	suit = /obj/item/clothing/suit/armor/grim/mechanicus/biologis
	shoes = /obj/item/clothing/shoes/jackboots/skitshoes/techpriest
	uniform = /obj/item/clothing/under/rank/engineer
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/heads/bridge
	l_hand = null
	gloves = /obj/item/clothing/gloves/thick/swat/techpriest
	id_types = list(/obj/item/card/id/torch/silver/medical)
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	back = /obj/item/storage/backpack/satchel/warfare/techpriest
	backpack_contents = list(/obj/item/pen = 1, /obj/item/gun/energy/lasgun/laspistol/hellpistol = 1)

/singleton/hierarchy/outfit/job/torch/crew/command/chief_engineer
	name = OUTFIT_JOB_NAME("Magos Explorator")
	head = /obj/item/clothing/head/hardhat/techpriest/magos
	mask = /obj/item/clothing/mask/gas/techpriest/magos
	glasses = /obj/item/clothing/glasses/science/magos
	belt = /obj/item/storage/belt/utility/full
	suit = /obj/item/clothing/suit/armor/grim/mechanicus/magos
	shoes = /obj/item/clothing/shoes/jackboots/skitshoes/techpriest
	uniform = /obj/item/clothing/under/rank/chief_engineer
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/heads/ce
	l_hand = null
	gloves = /obj/item/clothing/gloves/thick/swat/techpriest
	id_types = list(/obj/item/card/id/torch/silver/engineering)
	pda_type = /obj/item/modular_computer/pda/heads/ce
	back = /obj/item/storage/backpack/satchel/warfare/techpriest
	backpack_contents = list(/obj/item/pen = 1, /obj/item/gun/energy/plasma/pistol/mechanicus = 1)

/singleton/hierarchy/outfit/job/torch/crew/command/chief_engineer/fleet
	name = OUTFIT_JOB_NAME("Chief Engineer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cos
	name = OUTFIT_JOB_NAME("Chief of Security")
	l_ear = /obj/item/device/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos


/singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	name = OUTFIT_JOB_NAME("Bridge Officer")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/bridgeofficer)
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/device/radio/headset/heads/bridge

// DONT USE
/singleton/hierarchy/outfit/job/torch/crew/command/XO/fleet
	name = OUTFIT_JOB_NAME("Executive Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cmo/fleet
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cos/fleet
	name = OUTFIT_JOB_NAME("Chief of Security - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots


/singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer/fleet
	name = OUTFIT_JOB_NAME("Bridge Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/passenger/workplace_liaison
	name = OUTFIT_JOB_NAME("Workplace Liaison")
	l_ear = /obj/item/device/radio/headset/heads/torchntcommand
	uniform = /obj/item/clothing/under/suit_jacket/corp
	shoes = /obj/item/clothing/shoes/laceup
	id_types = list(/obj/item/card/id/torch/passenger/corporate/liaison)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher
	backpack_contents = list(/obj/item/clothing/accessory/badge/nanotrasen = 1)

/singleton/hierarchy/outfit/job/torch/crew/representative
	name = OUTFIT_JOB_NAME("SolGov Representative")
	l_ear = /obj/item/device/radio/headset/headset_com
	uniform = /obj/item/clothing/under/rank/internalaffairs/plain/solgov
	suit = /obj/item/clothing/suit/armor/grim/toggle/suit/black
	shoes = /obj/item/clothing/shoes/laceup
	id_types = list(/obj/item/card/id/torch/crew/representative)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	name = OUTFIT_JOB_NAME("Senior Enlisted Advisor - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/sea
	id_types = list(/obj/item/card/id/torch/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads
