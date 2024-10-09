/singleton/hierarchy/outfit/job/torch/crew/command
	name = OUTFIT_JOB_NAME("Torch Command Outfit")
	hierarchy_type = /singleton/hierarchy/outfit/job/torch/crew/command
	l_ear = /obj/item/device/radio/headset/heads/bridge

/singleton/hierarchy/outfit/job/torch/crew/command/roguetrader
	name = OUTFIT_JOB_NAME("Rogue Trader")
	suit = /obj/item/clothing/suit/armor/grim/noble/rtcloak
	glasses = /obj/item/clothing/glasses/night/aviators
	uniform = /obj/item/clothing/under/rt
	mask = /obj/item/clothing/mask/gas/half/cadianrespirator/rt
	gloves = /obj/item/clothing/gloves/thick/swat/combat/warfare/rt
	l_ear = /obj/item/device/radio/headset/heads/bridge
	shoes = /obj/item/clothing/shoes/jackboots/noble/rt
	head = /obj/item/clothing/head/helmet/pilgrimcap/roguetrader
	id_types = list(/obj/item/card/id/torch/gold)
	pda_type = /obj/item/modular_computer/pda/captain
	back = /obj/item/storage/backpack/satchel/flat
	backpack_contents = list(/obj/item/pen = 1, /obj/item/gun/energy/lasgun/laspistol/lord = 1)

/singleton/hierarchy/outfit/job/torch/crew/command/seneschal
	name = OUTFIT_JOB_NAME("Seneschal")
	suit = /obj/item/clothing/suit/armor/grim/noble/seneschal
	glasses = /obj/item/clothing/glasses/night/aviators
	uniform = /obj/item/clothing/under/rank/victorian/grey
	gloves = /obj/item/clothing/gloves/thick/swat/combat/warfare
	l_ear = /obj/item/device/radio/headset/heads/bridge
	head = /obj/item/clothing/head/helmet/pilgrimcap/roguetrader/seneschal
	shoes = /obj/item/clothing/shoes/jackboots/noble
	id_types = list(/obj/item/card/id/torch/silver)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	back = /obj/item/storage/backpack/satchel/flat
	backpack_contents = list(/obj/item/pen = 1, /obj/item/gun/projectile/pistol/bolt_pistol/drusian = 1, /obj/item/ammo_magazine/bolt_pistol_magazine/ms = 1)

/singleton/hierarchy/outfit/job/torch/crew/mercenary
	name = OUTFIT_JOB_NAME("Mercenary")
	l_ear = /obj/item/device/radio/headset/headset_com
	uniform = /obj/item/clothing/under/rank/internalaffairs/plain/solgov
	suit = /obj/item/clothing/suit/armor/grim/toggle/suit/black
	shoes = /obj/item/clothing/shoes/laceup
	id_types = list(/obj/item/card/id/torch/crew/representative)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/singleton/hierarchy/outfit/job/torch/crew/command/biologis
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

/singleton/hierarchy/outfit/job/torch/crew/command/cadian_captain
	name = OUTFIT_JOB_NAME("Cadian Captain")
	head = /obj/item/clothing/head/helmet/flak/carapace
	mask = /obj/item/clothing/mask/gas/half/cadianrespirator
	glasses = /obj/item/clothing/glasses/cadiangoggles/elite
	belt = /obj/item/storage/belt/holster/security
	suit = /obj/item/clothing/suit/armor/grim/cadian/officer
	shoes = /obj/item/clothing/shoes/jackboots/cadian
	uniform = /obj/item/clothing/under/cadian_uniform
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/heads/cos
	l_hand = /obj/item/gun/energy/plasma/pistol
	r_hand = /obj/item/material/twohanded/ravenor/chainsword
	gloves = /obj/item/clothing/gloves/thick/swat/cadian
	id_types = list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	backpack_contents = list(/obj/item/pen = 1, /obj/item/cell/device/high/mechanicus = 1, /obj/item/cell/device/high/laspack = 1, /obj/item/device/flashlight/flare = 1)

/singleton/hierarchy/outfit/job/torch/crew/command/valhallan_captain
	name = OUTFIT_JOB_NAME("Valhallan Captain")
	head = /obj/item/clothing/head/helmet/guardcap/valushanka
	mask = /obj/item/clothing/mask/gas/explorer
	glasses = /obj/item/clothing/glasses/cadiangoggles/elite
	belt = /obj/item/storage/belt/holster/security
	suit = /obj/item/clothing/suit/armor/grim/valhallan/captain
	shoes = /obj/item/clothing/shoes/jackboots/cadian
	uniform = /obj/item/clothing/under/cadian_uniform
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/heads/cos
	l_hand = /obj/item/gun/projectile/automatic/boltrifle/lockebolter/drusian
	r_hand = /obj/item/gun/projectile/revolver/imperial/heavy
	gloves = /obj/item/clothing/gloves/thick/swat/cadian
	id_types = list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	backpack_contents = list(/obj/item/pen = 1, /obj/item/ammo_magazine/bolt_rifle_magazine = 1, /obj/item/ammo_magazine/speedloader/revolver = 2, /obj/item/device/flashlight/flare = 1)

/singleton/hierarchy/outfit/job/torch/crew/command/catachan_sergeant
	name = OUTFIT_JOB_NAME("Catachan Sergeant")
	l_ear = /obj/item/device/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos

/singleton/hierarchy/outfit/job/torch/crew/command/maccabian_captain
	name = OUTFIT_JOB_NAME("Maccabian Sergeant")
	l_ear = /obj/item/device/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos

/singleton/hierarchy/outfit/job/torch/crew/command/mordian_captain
	name = OUTFIT_JOB_NAME("Mordian Captain")
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
/singleton/hierarchy/outfit/job/torch/crew/command/chief_engineer/fleet
	name = OUTFIT_JOB_NAME("Chief Engineer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/seneschal/fleet
	name = OUTFIT_JOB_NAME("Executive Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/biologis/fleet
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cadian_captain/fleet
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



/singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	name = OUTFIT_JOB_NAME("Senior Enlisted Advisor - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/sea
	id_types = list(/obj/item/card/id/torch/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads
