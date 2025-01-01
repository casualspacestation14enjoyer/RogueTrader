/obj/structure/closet/secure_closet/engineering_chief
	name = "magos explorator's locker"
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering/ce
	req_access = list(access_mechanicus_command)

/obj/structure/closet/secure_closet/engineering_chief/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/clothing/accessory/storage/brown_vest = 70, /obj/item/clothing/accessory/storage/webbing = 30)),
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/industrial, /obj/item/storage/backpack/satchel/eng)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/eng, 50),
		/obj/item/blueprints,
		/obj/item/clothing/under/rank/chief_engineer,
		/obj/item/clothing/head/hardhat/firefighter/chief,
		/obj/item/clothing/head/welding,
		/obj/item/clothing/gloves/insulated,
		/obj/item/clothing/shoes/brown,
		/obj/item/device/radio/headset/heads/ce,
		/obj/item/storage/toolbox/mechanical,
		/obj/item/clothing/suit/armor/grim/storage/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/device/multitool,
		/obj/item/device/flash,
		/obj/item/taperoll/engineering,
		/obj/item/material/twohanded/jack
	)

/obj/structure/closet/secure_closet/engineering_electrical
	name = "electrical supplies"
	req_access = list(access_mechanicus_command)
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering/electrical

/obj/structure/closet/secure_closet/engineering_electrical/WillContain()
	return list(
		/obj/item/clothing/gloves/insulated = 2,
		/obj/item/storage/toolbox/electrical = 2,
		/obj/item/module/power_control = 3,
		/obj/item/device/multitool = 2
	)

/obj/structure/closet/secure_closet/engineering_welding
	name = "welding supplies"
	req_access = list(access_dauntless)
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering/welding

/obj/structure/closet/secure_closet/engineering_welding/WillContain()
	return list(
		/obj/item/clothing/head/welding = 3,
		/obj/item/weldingtool/largetank = 3,
		/obj/item/storage/backpack/weldpack = 1,
		/obj/item/clothing/glasses/welding = 3,
		/obj/item/welder_tank = 2
	)

/obj/structure/closet/secure_closet/engineering_personal
	name = "tech priest's locker"
	req_access = list(access_mechanicus_command)
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/engineering_personal/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/clothing/accessory/storage/brown_vest = 70, /obj/item/clothing/accessory/storage/webbing = 30)),
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/industrial, /obj/item/storage/backpack/satchel/eng)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/eng, 50),
		/obj/item/storage/toolbox/mechanical,
		/obj/item/device/radio/headset/headset_mechanicus,
		/obj/item/clothing/suit/armor/grim/storage/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/glasses/meson,
		/obj/item/taperoll/engineering
	)

/obj/structure/closet/secure_closet/atmos_personal
	name = "technician's locker"
	req_access = list(access_dauntless)
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering/atmos

/obj/structure/closet/secure_closet/atmos_personal/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/clothing/accessory/storage/brown_vest = 70, /obj/item/clothing/accessory/storage/webbing = 30)),
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/industrial, /obj/item/storage/backpack/satchel/eng)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/eng, 50),
		/obj/item/clothing/suit/fire/firefighter,
		/obj/item/device/flashlight,
		/obj/item/extinguisher,
		/obj/item/device/radio/headset/headset_mechanicus,
		/obj/item/clothing/suit/armor/grim/storage/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/taperoll/atmos
	)
