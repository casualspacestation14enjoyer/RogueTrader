/obj/item/device/encryptionkey/heads/torchexec
	name = "executive encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Medicae" = 1, "Militarum" = 1, "Command" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/science
	name = "science radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Biologis" = 1, "Machinarum" = 1, "Medicae" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_torchrd
	name = "chief science officer radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Biologis" = 1, "Machinarum" = 1, "Medicae" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_torchcorp
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1)

/obj/item/device/encryptionkey/headset_torchcl
	name = "corporate liaison radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_deckofficer
	name = "deck chief's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Medicae" = 1, "Militarum" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_deck
	name = "deck technician's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Machinarum" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_chief_steward
	name = "chief steward's encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Service" = 1, "Command" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/bridgeofficer
	name = "bridge officer's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Medicae" = 1, "Militarum" = 1, "Command" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Militarum" = 1, "Mechanicus" = 1, "Biologis" = 1, "Medicae" = 1, "Machinarum" = 1, "Service" = 1, "Explorator" = 1, "AI Private" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/exploration
	name = "exploration radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Explorator" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_pilot
	name = "pilot radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Medicae" = 1, "Militarum" = 1, "Command" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Machinarum" = 1)

/obj/item/storage/box/encryptionkey/exploration
	name = "box of spare exploration radio keys"
	desc = "A box full of exploration department radio keys."
	startswith = list(/obj/item/screwdriver, /obj/item/device/encryptionkey/exploration = 5)

/obj/item/device/encryptionkey/pathfinder
	name = "pathfinder's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Medicae" = 1, "Militarum" = 1, "Command" = 1, "Hailing" = 1)

/obj/item/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/device/encryptionkey/headset_sec = 3,
					  /obj/item/device/encryptionkey/headset_med = 3,
					  /obj/item/device/encryptionkey/headset_cargo = 3,
					  /obj/item/device/encryptionkey/headset_sci = 3)

/obj/item/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()

/obj/item/device/encryptionkey/heads/sea
	name = "senior enlisted advisor's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Militarum" = 1, "Mechanicus" = 1, "Medicae" = 1, "Machinarum" = 1, "Service" = 1, "Explorator" = 1, "Hailing" = 1)
