/singleton/hierarchy/mil_uniform/fleet/com //Can only be officers
	name = "Imperial Navy command"
	departments = COM

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/command,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/com/seniorofficer
	name = "Imperial Navy senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/command
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/command)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/com/flagofficer
	name = "Imperial Navy flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/flag
	service_extra = /obj/item/clothing/suit/solgov/fleet_sweater/flag

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/eng
	name = "Imperial Navy engineering"
	departments = ENG

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/engineering
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/engineering,
				/obj/item/clothing/head/beret/solgov/fleet/engineering,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

/singleton/hierarchy/mil_uniform/fleet/eng/noncom
	name = "Imperial Navy engineering NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/eng/snco
	name = "Imperial Navy engineering SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/eng/officer
	name = "Imperial Navy engineering CO"
	min_rank = 11

	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/engineering,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/beret/solgov/fleet/engineering,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/eng/officer/com //Can only be officers
	name = "Imperial Navy engineering command"
	departments = ENG|COM

/singleton/hierarchy/mil_uniform/fleet/eng/officer/com/seniorofficer
	name = "Imperial Navy engineering senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/command
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/command)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/eng/officer/com/flagofficer
	name = "Imperial Navy engineering flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/flag
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/flag)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/sec
	name = "Imperial Navy security"
	departments = SEC

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/security
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/security,
				/obj/item/clothing/head/beret/solgov/fleet/security,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)


/singleton/hierarchy/mil_uniform/fleet/sec/noncom
	name = "Imperial Navy militarum NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/sec/snco
	name = "Imperial Navy militarum SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/sec/officer
	name = "Imperial Navy militarum CO"
	min_rank = 11

	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/security,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/beret/solgov/fleet/security,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/sec/officer/com //Can only be officers
	name = "Imperial Navy militarum command"
	departments = SEC|COM

/singleton/hierarchy/mil_uniform/fleet/sec/officer/com/seniorofficer
	name = "Imperial Navy militarum senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/command
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/command)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/sec/officer/com/flagofficer
	name = "Imperial Navy militarum flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/flag
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/flag)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/med
	name = "Imperial Navy medical"
	departments = MED

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/medical
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/medical,
				/obj/item/clothing/head/beret/solgov/fleet/medical,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

/singleton/hierarchy/mil_uniform/fleet/med/noncom
	name = "Imperial Navy medical NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/med/snco
	name = "Imperial Navy medical SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/med/officer
	name = "Imperial Navy medical CO"
	min_rank = 11

	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/medical,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/beret/solgov/fleet/medical,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/med/officer/com //Can only be officers
	name = "Imperial Navy medical command"
	departments = MED|COM

/singleton/hierarchy/mil_uniform/fleet/med/officer/com/seniorofficer
	name = "Imperial Navy medical senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/command
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/command)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/command

/singleton/hierarchy/mil_uniform/fleet/med/officer/com/flagofficer
	name = "Imperial Navy medical flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/flag
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/flag)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/flag

/singleton/hierarchy/mil_uniform/fleet/sup
	name = "Imperial Navy supply"
	departments = SUP

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/supply
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/supply,
				/obj/item/clothing/head/beret/solgov/fleet/supply,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

/singleton/hierarchy/mil_uniform/fleet/sup/noncom
	name = "Imperial Navy supply NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/singleton/hierarchy/mil_uniform/fleet/sup/snco
	name = "Imperial Navy supply SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/sup/officer
	name = "Imperial Navy supply CO"
	min_rank = 11

	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/supply,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/beret/solgov/fleet/supply,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/sup/seniorofficer
	name = "Imperial Navy supply senior command"
	min_rank = 15

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/command
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/command)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/sup/flagofficer
	name = "Imperial Navy spply flag command"
	min_rank = 17

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/flag
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/flag)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/flag
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/srv
	name = "Imperial Navy service"
	departments = SRV

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/service
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/service,
				/obj/item/clothing/head/beret/solgov/fleet/service,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

/singleton/hierarchy/mil_uniform/fleet/srv/noncom
	name = "Imperial Navy service NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/srv/snco
	name = "Imperial Navy service SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/srv/officer
	name = "Imperial Navy service CO"
	min_rank = 11

	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/service,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/beret/solgov/fleet/service,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/exp
	name = "Imperial Navy exploration"
	departments = EXP

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/exploration
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/exploration,
				/obj/item/clothing/head/beret/solgov/fleet/exploration,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

/singleton/hierarchy/mil_uniform/fleet/exp/noncom
	name = "Imperial Navy exploration NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/exp/snco
	name = "Imperial Navy exploration SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/exp/officer
	name = "Imperial Navy exploration CO"
	min_rank = 11

	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/exploration,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/beret/solgov/fleet/exploration,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/spt
	name = "Imperial Navy command support"
	departments = SPT

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/command,
				/obj/item/clothing/head/beret/solgov/fleet,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

/singleton/hierarchy/mil_uniform/fleet/spt/noncom
	name = "Imperial Navy support NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)


/singleton/hierarchy/mil_uniform/fleet/spt/snco
	name = "Imperial Navy support SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/snco
	dress_extra = list(
		/obj/item/material/sword/replica/officersword/pettyofficer,
		/obj/item/clothing/head/beret/solgov/fleet/dress
	)

/singleton/hierarchy/mil_uniform/fleet/spt/officer
	name = "Imperial Navy command support CO"
	min_rank = 11

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command
	utility_extra = list(
				/obj/item/clothing/under/solgov/utility/fleet/combat/command,
				/obj/item/clothing/head/beret/solgov/fleet/command,
				/obj/item/clothing/head/ushanka/solgov/fleet,
				/obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat/solgov/fleet,
				/obj/item/clothing/head/soft/solgov/fleet,
				/obj/item/clothing/gloves/thick/duty/solgov/fleet
			)

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/officer
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/officer)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/spt/seniorofficer
	name = "Imperial Navy senior command support"
	min_rank = 15

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/command
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/command)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)

/singleton/hierarchy/mil_uniform/fleet/spt/flagofficer
	name = "Imperial Navy flag command support"
	min_rank = 17

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/armor/grim/storage/solgov/service/fleet/flag
	service_extra = list(/obj/item/clothing/suit/solgov/fleet_sweater/flag)

	dress_over = /obj/item/clothing/suit/armor/grim/storage/solgov/dress/fleet/flag
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(
		/obj/item/material/sword/replica/officersword,
		/obj/item/clothing/head/beret/solgov/fleet/dress/command
	)
