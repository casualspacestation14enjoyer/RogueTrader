/singleton/hierarchy/outfit/job/torch/crew/medical
	hierarchy_type = /singleton/hierarchy/outfit/job/torch/crew/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store
	l_pocket = /obj/item/device/flashlight/lantern

/singleton/hierarchy/outfit/job/torch/crew/medical/hospitaller
	name = OUTFIT_JOB_NAME("Hospitaller")
	head = /obj/item/clothing/head/helmet/pilgrimcap/hospitallerhelm
	mask = /obj/item/clothing/mask/gas/half
	glasses = /obj/item/clothing/glasses/night/aviators
	belt = /obj/item/storage/belt/medical
	suit = /obj/item/clothing/suit/armor/sister/hospitaller
	shoes = /obj/item/clothing/shoes/jackboots
	uniform = /obj/item/clothing/under/rank/medical
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/headset_med
	l_hand = null
	gloves = /obj/item/clothing/gloves/prac_gloves
	id_types = list(/obj/item/card/id/torch/crew/medical/senior)
	pda_type = /obj/item/modular_computer/pda/medical
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/pen = 1, /obj/item/gun/projectile/pistol/bolt_pistol/sob = 1, /obj/item/ammo_magazine/bolt_pistol_magazine = 1)

/singleton/hierarchy/outfit/job/torch/crew/medical/hospitaller/fleet
	name = OUTFIT_JOB_NAME("Physician - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/pharmacologis
	name = OUTFIT_JOB_NAME("Pharmacologis")
	head = /obj/item/clothing/head/helmet/pilgrimcap/medicae
	mask = /obj/item/clothing/mask/gas/prac_mask
	glasses = /obj/item/clothing/glasses/night/aviators
	belt = /obj/item/storage/belt/medical
	suit = /obj/item/clothing/suit/armor/grim/medicae
	shoes = /obj/item/clothing/shoes/jackboots/prac_boots
	uniform = /obj/item/clothing/under/rank/victorian/black
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/headset_med
	l_hand = null
	gloves = /obj/item/clothing/gloves/prac_gloves
	id_types = list(/obj/item/card/id/torch/crew/medical/senior)
	pda_type = /obj/item/modular_computer/pda/medical
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/pen = 1)

/singleton/hierarchy/outfit/job/torch/crew/medical/medicae
	name = OUTFIT_JOB_NAME("Medicae")
	head = /obj/item/clothing/head/helmet/pilgrimcap/medicae
	mask = /obj/item/clothing/mask/gas/prac_mask
	glasses = /obj/item/clothing/glasses/night/aviators
	belt = /obj/item/storage/belt/medical
	suit = /obj/item/clothing/suit/armor/grim/medicae
	shoes = /obj/item/clothing/shoes/jackboots/prac_boots
	uniform = /obj/item/clothing/under/rank/victorian/black
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/headset_med
	l_hand = null
	gloves = /obj/item/clothing/gloves/prac_gloves
	id_types = list(/obj/item/card/id/torch/crew/medical/senior)
	pda_type = /obj/item/modular_computer/pda/medical
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/pen = 1)

/singleton/hierarchy/outfit/job/torch/crew/medical/medicae/fleet
	name = OUTFIT_JOB_NAME("Medical Technician - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/headset_corpsman

/singleton/hierarchy/outfit/job/torch/crew/medical/contractor
	name = OUTFIT_JOB_NAME("Medical Technician - Contractor")
	uniform = /obj/item/clothing/under/rank/medical
	shoes = /obj/item/clothing/shoes/white
	id_types = list(/obj/item/card/id/torch/contractor/medical)

/singleton/hierarchy/outfit/job/torch/crew/medical/contractor/mortus
	name = OUTFIT_JOB_NAME("Mortician")
	uniform = /obj/item/clothing/under/rank/medical/scrubs/black

/singleton/hierarchy/outfit/job/torch/crew/medical/contractor/paramedic
	name = OUTFIT_JOB_NAME("Paramedic - Torch")
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/armor/grim/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/singleton/hierarchy/outfit/job/torch/crew/medical/counselor
	name = OUTFIT_JOB_NAME("Counselor")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/white
	id_types = list(/obj/item/card/id/torch/contractor/medical/counselor)

/singleton/hierarchy/outfit/job/torch/crew/medical/counselor/ec
	name = OUTFIT_JOB_NAME("Counselor - Explorator")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/medical/counselor)

/singleton/hierarchy/outfit/job/torch/crew/medical/counselor/fleet
	name = OUTFIT_JOB_NAME("Counselor - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/medical/counselor)


/singleton/hierarchy/outfit/job/torch/crew/medical/contractor/senior
	name = OUTFIT_JOB_NAME("Physician - Contractor")
	id_types = list(/obj/item/card/id/torch/contractor/medical/senior)

/singleton/hierarchy/outfit/job/torch/crew/medical/junior
	name = OUTFIT_JOB_NAME("Medical Resident")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/medical/senior)

/singleton/hierarchy/outfit/job/torch/crew/medical/junior/fleet
	name = OUTFIT_JOB_NAME("Medical Resident - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/contractor/junior
	name = OUTFIT_JOB_NAME("Medical Resident - Contractor")
	id_types = list(/obj/item/card/id/torch/contractor/medical/senior)
