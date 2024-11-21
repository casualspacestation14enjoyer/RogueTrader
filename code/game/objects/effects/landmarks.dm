/obj/landmark
	name = "landmark"
	icon = 'icons/effects/landmarks.dmi'
	icon_state = "x2"
	anchored = TRUE
	unacidable = TRUE
	simulated = FALSE
	invisibility = INVISIBILITY_ABSTRACT
	var/delete_me = 0

/obj/landmark/New()
	..()
	tag = "landmark*[name]"

	//TODO clean up this mess
	switch(name)			//some of these are probably obsolete
		if("monkey")
			GLOB.monkeystart += loc
			delete_me = 1
			return
		if("start")
			GLOB.newplayer_start += loc
			delete_me = 1
			return
		if("JoinLate")
			GLOB.latejoin += loc
			delete_me = 1
			return
		if("JoinLateGateway")
			GLOB.latejoin_gateway += loc
			delete_me = 1
			return
		if("JoinLateCryo")
			GLOB.latejoin_cryo += loc
			delete_me = 1
			return
		if("JoinLateCyborg")
			GLOB.latejoin_cyborg += loc
			delete_me = 1
			return
		if("prisonwarp")
			GLOB.prisonwarp += loc
			delete_me = 1
			return
		if("tdome1")
			GLOB.tdome1 += loc
		if("tdome2")
			GLOB.tdome2 += loc
		if("tdomeadmin")
			GLOB.tdomeadmin += loc
		if("tdomeobserve")
			GLOB.tdomeobserve += loc
		if("prisonsecuritywarp")
			GLOB.prisonsecuritywarp += loc
			delete_me = 1
			return
		if("endgame_exit")
			endgame_safespawns += loc
			delete_me = 1
			return
		if("bluespacerift")
			endgame_exits += loc
			delete_me = 1
			return

	landmarks_list += src
	return 1

/obj/landmark/proc/delete()
	delete_me = 1

/obj/landmark/Initialize()
	. = ..()
	if(delete_me)
		return INITIALIZE_HINT_QDEL

/obj/landmark/Destroy()
	landmarks_list -= src
	return ..()

/obj/landmark/start
	name = "start"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x"
	anchored = TRUE
	invisibility = INVISIBILITY_ABSTRACT

/obj/landmark/start/New()
	..()
	tag = "start*[name]"
	return 1

//Costume spawner landmarks
/obj/landmark/costume/New() //costume spawner, selects a random subclass and disappears
	SHOULD_CALL_PARENT(FALSE) // TODO: Replace this entire set of New() overrides with Initialize() and qdel hints
	var/list/options = typesof(/obj/landmark/costume)
	var/PICK= options[rand(1,length(options))]
	new PICK(src.loc)
	delete_me = 1

//SUBCLASSES.  Spawn a bunch of items and disappear likewise
/obj/landmark/costume/chameleon/New()
	new /obj/item/clothing/mask/chameleon(src.loc)
	new /obj/item/clothing/under/chameleon(src.loc)
	new /obj/item/clothing/glasses/chameleon(src.loc)
	new /obj/item/clothing/shoes/chameleon(src.loc)
	new /obj/item/clothing/gloves/chameleon(src.loc)
	new /obj/item/clothing/suit/chameleon(src.loc)
	new /obj/item/clothing/head/chameleon(src.loc)
	new /obj/item/storage/backpack/chameleon(src.loc)
	delete_me = 1

/obj/landmark/costume/gladiator/New()
	new /obj/item/clothing/under/gladiator(src.loc)
	new /obj/item/clothing/head/helmet/gladiator(src.loc)
	delete_me = 1

/obj/landmark/costume/madscientist/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/suit/armor/grim/toggle/labcoat/mad(src.loc)
	new /obj/item/clothing/glasses/green(src.loc)
	delete_me = 1

/obj/landmark/costume/elpresidente/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/mask/smokable/cigarette/cigar/havana(src.loc)
	new /obj/item/clothing/shoes/jackboots(src.loc)
	delete_me = 1

/obj/landmark/costume/nyangirl/New()
	new /obj/item/clothing/under/schoolgirl(src.loc)
	new /obj/item/clothing/head/kitty(src.loc)
	delete_me = 1

/obj/landmark/costume/maid/New()
	new /obj/item/clothing/under/skirt(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/beret , /obj/item/clothing/head/rabbitears )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/blindfold(src.loc)
	delete_me = 1

/obj/landmark/costume/butler/New()
	new /obj/item/clothing/accessory/waistcoat/black(src.loc)
	new /obj/item/clothing/under/suit_jacket(src.loc)
	new /obj/item/clothing/head/that(src.loc)
	delete_me = 1

/obj/landmark/costume/scratch/New()
	new /obj/item/clothing/gloves/white(src.loc)
	new /obj/item/clothing/shoes/white(src.loc)
	new /obj/item/clothing/under/scratch(src.loc)
	if (prob(30))
		new /obj/item/clothing/head/cueball(src.loc)
	delete_me = 1

/obj/landmark/costume/prig/New()
	new /obj/item/clothing/accessory/waistcoat/black(src.loc)
	new /obj/item/clothing/glasses/monocle(src.loc)
	var/CHOICE= pick( /obj/item/clothing/head/bowler, /obj/item/clothing/head/that)
	new CHOICE(src.loc)
	new /obj/item/clothing/shoes/black(src.loc)
	new /obj/item/cane(src.loc)
	new /obj/item/clothing/under/sl_suit(src.loc)
	new /obj/item/clothing/mask/fakemoustache(src.loc)
	delete_me = 1

/obj/landmark/costume/plaguedoctor/New()
	new /obj/item/clothing/suit/armor/grim/bio_suit/plaguedoctorsuit(src.loc)
	new /obj/item/clothing/head/plaguedoctorhat(src.loc)
	delete_me = 1

/obj/landmark/costume/nightowl/New()
	new /obj/item/clothing/under/owl(src.loc)
	new /obj/item/clothing/mask/gas/owl_mask(src.loc)
	delete_me = 1

/obj/landmark/costume/waiter/New()
	var/CHOICE= pick( /obj/item/clothing/head/kitty, /obj/item/clothing/head/rabbitears)
	new CHOICE(src.loc)
	new /obj/item/clothing/suit/apron(src.loc)
	delete_me = 1

/obj/landmark/costume/pirate/New()
	new /obj/item/clothing/under/pirate(src.loc)
	new /obj/item/clothing/suit/pirate(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/pirate , /obj/item/clothing/mask/bandana/red)
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/eyepatch(src.loc)
	delete_me = 1

/obj/landmark/costume/commie/New()
	new /obj/item/clothing/under/soviet(src.loc)
	new /obj/item/clothing/head/ushanka(src.loc)
	delete_me = 1

/obj/landmark/costume/imperium_monk/New()
	new /obj/item/clothing/suit/imperium_monk(src.loc)
	if (prob(25))
		new /obj/item/clothing/mask/gas/cyborg(src.loc)
	delete_me = 1

/obj/landmark/costume/holiday_priest/New()
	new /obj/item/clothing/suit/holidaypriest(src.loc)
	delete_me = 1

/obj/landmark/costume/marisawizard/fake/New()
	new /obj/item/clothing/head/wizard/marisa/fake(src.loc)
	new/obj/item/clothing/suit/wizrobe/marisa/fake(src.loc)
	delete_me = 1

/obj/landmark/costume/cutewitch/New()
	new /obj/item/clothing/under/sundress(src.loc)
	new /obj/item/clothing/head/witchwig(src.loc)
	new /obj/item/staff/broom(src.loc)
	delete_me = 1

/obj/landmark/costume/fakewizard/New()
	new /obj/item/clothing/suit/wizrobe/fake(src.loc)
	new /obj/item/clothing/head/wizard/fake(src.loc)
	new /obj/item/staff/(src.loc)
	delete_me = 1

/obj/landmark/costume/sexyclown/New()
	new /obj/item/clothing/mask/gas/sexyclown(src.loc)
	new /obj/item/clothing/under/sexyclown(src.loc)
	delete_me = 1

/obj/landmark/costume/sexymime/New()
	new /obj/item/clothing/mask/gas/sexymime(src.loc)
	new /obj/item/clothing/under/sexymime(src.loc)
	delete_me = 1

/obj/landmark/costume/savagehunter/New()
	new /obj/item/clothing/mask/spirit(src.loc)
	new /obj/item/clothing/under/savage_hunter(src.loc)
	delete_me = 1

/obj/landmark/costume/savagehuntress/New()
	new /obj/item/clothing/mask/spirit(src.loc)
	new /obj/item/clothing/under/savage_hunter/female(src.loc)
	delete_me = 1

/obj/landmark/ruin
	var/datum/map_template/ruin/ruin_template

/obj/landmark/ruin/New(loc, my_ruin_template)
	name = "ruin_[sequential_id(/obj/landmark/ruin)]"
	..(loc)
	ruin_template = my_ruin_template
	GLOB.ruin_landmarks |= src

/obj/landmark/ruin/Destroy()
	GLOB.ruin_landmarks -= src
	ruin_template = null
	. = ..()

/obj/random/exploration
	name = "random exploration loot"
	desc = "Low grade loot that is often around 50-100 thrones worth."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "giftpaper"

/obj/random/exploration/spawn_choices()
	return list(/obj/item/exploration_loot = 3,
				/obj/item/exploration_loot/cloth_roll = 4,
				/obj/item/exploration_loot/sealed_enve = 2,
				/obj/item/exploration_loot/chem_package = 2,
			    /obj/item/exploration_loot/package = 3,
				/obj/item/exploration_loot/case = 2,
				/obj/item/exploration_loot/odd_book = 2,
				/obj/item/exploration_loot/guard_diary = 1,
				/obj/item/exploration_loot/shiny_gem = 1,
				/obj/item/exploration_loot/map = 1,
				/obj/item/exploration_loot/spicecase = 1,
				/obj/item/exploration_loot/lootbox = 1,
				/obj/item/exploration_loot/imperial_book = 1)

/obj/random/exploration/high
	name = "random high quality exploration loot"
	desc = "High grade loot that is often around 100-250 thrones worth."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "zrbite"

/obj/random/exploration/high/spawn_choices()
	return list(/obj/item/exploration_loot/map = 3,
			    /obj/item/exploration_loot/drugs = 3,
				/obj/item/exploration_loot/elerium = 1,
				/obj/item/exploration_loot/guard_diary = 2,
				/obj/item/exploration_loot/bm_file = 1,
				/obj/item/exploration_loot/shiny_gem = 2,
				/obj/item/exploration_loot/zrbite = 1,
				/obj/item/exploration_loot/elerium = 1,
				/obj/item/exploration_loot/elerium_ingot = 0.7,
				/obj/item/exploration_loot/zrbite_ingot = 0.7,
				/obj/item/exploration_loot/artiaxe = 0.5,
				/obj/item/exploration_loot/goldbar = 0.5)


/obj/random/loot/tech1
	name = "LOW TECH SPAWNER"
	desc = "spawns low tech"
	icon_state = "armoraccessory"

/obj/random/loot/tech1/spawn_choices()
	return list(/obj/item/rnd/eng3 = 12,
				/obj/item/rnd/eng5 = 8,
				/obj/item/rnd/eng8 = 4,
				/obj/item/rnd/combat3 = 14,
				/obj/item/rnd/combat5 = 10,
				/obj/item/rnd/combat8 = 5,
				/obj/item/reagent_containers/food/snacks/poo = 6,
				/obj/item/rnd/power3 = 10,
				/obj/item/rnd/power5 = 6,
				/obj/item/rnd/power8 = 3,
				/obj/item/reagent_containers/food/snacks/poo = 6,
				/obj/item/rnd/biospace3 = 10,
				/obj/item/rnd/biospace5 = 6,
				/obj/item/rnd/biospace8 = 3,
				/obj/item/reagent_containers/food/snacks/poo = 6,
				/obj/item/rnd/eng5 = 1)

/obj/random/loot/tech2
	name = "HIGH TECH SPAWNER"
	desc = "spawn high tech"
	icon_state = "armoraccessory"

/obj/random/loot/tech2/spawn_choices()
	return list(/obj/item/rnd/eng3 = 12,
				/obj/item/rnd/eng5 = 8,
				/obj/item/rnd/eng8 = 5,
				/obj/item/rnd/combat3 = 14,
				/obj/item/rnd/combat5 = 10,
				/obj/item/rnd/combat8 = 7,
				/obj/item/rnd/combat5 = 2,
				/obj/item/rnd/power3 = 10,
				/obj/item/rnd/power5 = 6,
				/obj/item/rnd/power8 = 3,
				/obj/item/rnd/power5 = 1,
				/obj/item/rnd/biospace3 = 10,
				/obj/item/rnd/biospace5 = 6,
				/obj/item/rnd/biospace8 = 3,
				/obj/item/rnd/biospace5 = 1,
				/obj/item/rnd/illegal3 = 12,
				/obj/item/rnd/illegal5 = 8,
				/obj/item/rnd/illegal8 = 4,
				/obj/item/rnd/illegal5 = 2,
				/obj/item/rnd/eng5 = 1)

/obj/random/loot/armorinserts
	name = "Armor accessories"
	desc = "This is a loot spawner that chest inserts and bodygloves."
	icon_state = "armoraccessory"

/obj/random/loot/guardgear/spawn_choices()
	return list(/obj/item/clothing/accessory/armor_plate = 5,
				/obj/item/clothing/accessory/armor_plate/flak = 20,
				/obj/item/clothing/accessory/armor_plate/flakheavy = 10,
				/obj/item/clothing/accessory/armor_plate/flaklamellar = 5,
				/obj/item/clothing/accessory/armor_plate/flaktribal = 3,
				/obj/item/clothing/accessory/armor_plate/carapace = 4,
				/obj/item/clothing/accessory/armor_plate/carapaceheavy = 2,
				/obj/item/clothing/accessory/armor_plate/paddingmech = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglove = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovebio = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovemech = 1)

/obj/random/loot/armorinsertsrare
	name = "Rare Armor accessories"
	desc = "This is a loot spawner that spawns rare chest inserts/bodygloves."
	icon_state = "armoraccessory"

/obj/random/loot/guardgear/spawn_choices()
	return list(/obj/item/clothing/accessory/armor_plate/flakheavy = 4,
				/obj/item/clothing/accessory/armor_plate/carapace = 4,
				/obj/item/clothing/accessory/armor_plate/carapaceheavy = 2,
				/obj/item/clothing/accessory/armor_plate/mechplate = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovemech = 1)

/obj/random/loot/arminserts
	name = "Arm accessories"
	desc = "This is a loot spawner that spawns arm accessories."
	icon_state = "armoraccessory"

/obj/random/loot/guardgear/spawn_choices()
	return list(/obj/item/clothing/accessory/arm_guards = 4,
				/obj/item/clothing/accessory/arm_guards/merc = 6,
				/obj/item/clothing/accessory/arm_guards/flak = 12,
				/obj/item/clothing/accessory/arm_guards/reactivelas = 1,
				/obj/item/clothing/accessory/arm_guards/reactiveslug = 1)

/obj/random/loot/leginserts
	name = "Leg accessories"
	desc = "This is a loot spawner that spawns leg accessories."
	icon_state = "armoraccessory"

/obj/random/loot/guardgear/spawn_choices()
	return list(/obj/item/clothing/accessory/leg_guards = 6,
				/obj/item/clothing/accessory/leg_guards/merc = 6,
				/obj/item/clothing/accessory/leg_guards/flak = 10,
				/obj/item/clothing/accessory/leg_guards/reactivelas = 1,
				/obj/item/clothing/accessory/leg_guards/reactiveslug = 1)

/obj/random/loot/lightmelee
	name = "Light Melee"
	desc = "This is a weapon loot spawner with a high chance of spawning common light melee weapons."
	icon_state = "lightmelee"

/obj/random/loot/lightmelee/spawn_choices()
	return list(/obj/item/material/hatchet = 1,
				/obj/item/material/hatchet/machete = 4,
				/obj/item/material/hatchet/machete/deluxe = 2,
				/obj/item/material/twohanded/ravenor/knife = 8,
				/obj/item/material/twohanded/ravenor/knife/bowie = 6,
				/obj/item/material/twohanded/ravenor/knife/trench = 5,
				/obj/item/material/twohanded/ravenor/knife/glaive = 4,
				/obj/item/material/twohanded/ravenor/sword/cutro/adamantine = 1,
				/obj/item/material/twohanded/ravenor/sword/cutro = 2)

/obj/random/loot/heavymelee // need to also make a sword only spawner without traditional melee. then a traditional melee spawner.
	name = "Heavy Melee"
	desc = "This is a weapon loot spawner with a high chance of spawning common heavy melee weapons."
	icon_state = "heavymelee"

/obj/random/loot/heavymelee/spawn_choices()
	return list(/obj/item/material/twohanded/ravenor/sword/chopper/heavy = 8,
				/obj/item/material/twohanded/ravenor/sword/chopper/heavy/adamantine = 1,
				/obj/item/material/twohanded/ravenor/sword/broadsword = 8,
				/obj/item/material/twohanded/ravenor/sword/broadsword/adamantine = 1,
				/obj/item/material/twohanded/ravenor/powermaul = 1,
				/obj/item/material/twohanded/ravenor/axe = 4,
				/obj/item/material/twohanded/ravenor/axe/bardiche = 3,
				/obj/item/material/twohanded/ravenor/axe/bardiche/adamantine = 1,
				/obj/item/material/twohanded/ravenor/axe/saintie = 2,
				/obj/item/material/twohanded/ravenor/axe/spear = 2,
				/obj/item/material/twohanded/ravenor/axe/spear/adamantine = 1,
				/obj/item/material/twohanded/ravenor/axe/spear/fuscina = 2,
				/obj/item/material/twohanded/ravenor/axe/spear/fuscina/adamantine = 1)

/obj/random/loot/swordmelee // need to also make a sword only spawner without traditional melee. then a traditional melee spawner.
	name = "Heavy Melee"
	desc = "This is a weapon loot spawner with a high chance of spawning common heavy melee weapons."
	icon_state = "heavymelee"

/obj/random/loot/heavymelee/spawn_choices()
	return list(/obj/item/material/twohanded/ravenor/sword/chopper/heavy = 16,
				/obj/item/material/twohanded/ravenor/sword/chopper/heavy/adamantine = 3,
				/obj/item/material/twohanded/ravenor/sword/broadsword = 16,
				/obj/item/material/twohanded/ravenor/sword/broadsword/adamantine = 3,
				/obj/item/material/twohanded/ravenor/sword/cutro/adamantine = 2,
				/obj/item/material/twohanded/ravenor/chainsword = 3,
				/obj/item/material/twohanded/ravenor/chainsword/guard = 4,
				/obj/item/material/twohanded/ravenor/chainsword/eviscerator = 1,
				/obj/item/material/twohanded/ravenor/chainsword/drusian = 2)

/obj/random/loot/ammobundle
	name = "Ammo Bundle"
	desc = "This is a ammo loot spawner which spawns an RNG bundle of related ammo.."
	icon_state = "heavymelee"

/obj/random/loot/sidearmammo/spawn_choices()
	// Define groups of items with weights
	var/list/grouped_spawns = list(
		list(/obj/item/ammo_magazine/shotholder, /obj/item/ammo_magazine/shotholder) = 2,
		list(/obj/item/ammo_magazine/shotholder, /obj/item/ammo_magazine/shotholder) = 2
	)


	var/list/selected_group = pickweight(grouped_spawns)

	return selected_group

/obj/random/loot/sidearmbundle
	name = "Sidearm Bundle"
	desc = "This is a sidearm loot spawner which spawns an RNG pistol with it's ammo."
	icon_state = "heavymelee"

/obj/random/loot/sidearmbundle/spawn_choices()
	// Define groups of items with weights
	var/list/grouped_spawns = list(
		list(/obj/item/gun/projectile/pistol/stub, /obj/item/ammo_magazine/pistol) = 12,
		list(/obj/item/gun/projectile/pistol/stub/villiers, /obj/item/ammo_magazine/pistol) = 10,
		list(/obj/item/gun/projectile/pistol/stub/talon, /obj/item/ammo_magazine/pistol/ap) = 6,
		list(/obj/item/gun/projectile/pistol/stub/snub, /obj/item/ammo_magazine/pistol/ap) = 10,
		list(/obj/item/gun/projectile/pistol/slug, /obj/item/ammo_magazine/magnum) = 9,
		list(/obj/item/gun/projectile/pistol/slug/old, /obj/item/ammo_magazine/magnum/ms) = 8,
		list(/obj/item/gun/projectile/pistol/slug/shotgun, /obj/item/ammo_magazine/shotholder/flechette) = 1,
		list(/obj/item/gun/projectile/revolver/imperial, /obj/item/ammo_magazine/speedloader, /obj/item/ammo_magazine/speedloader) = 3,
		list(/obj/item/gun/projectile/revolver/imperial/holdout, /obj/item/ammo_magazine/speedloader/small, /obj/item/ammo_magazine/speedloader/small) = 2,
		list(/obj/item/gun/projectile/revolver/imperial/heavy, /obj/item/ammo_magazine/speedloader/revolver, /obj/item/ammo_magazine/speedloader/revolver/ms) = 4,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/mateba, /obj/item/ammo_magazine/speedloader/revolver/ap, /obj/item/ammo_magazine/speedloader/revolver/ms) = 1,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/bounty, /obj/item/ammo_magazine/speedloader/revolver, /obj/item/ammo_magazine/speedloader/revolver/ms) = 1,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/autogun, /obj/item/ammo_magazine/speedloader/militarum, /obj/item/ammo_magazine/speedloader/militarum/ap) = 1,
		list(/obj/item/gun/projectile/pistol/bolt_pistol, /obj/item/ammo_magazine/bolt_pistol_magazine) = 1,
		list(/obj/item/gun/projectile/pistol/bolt_pistol/drusian, /obj/item/ammo_magazine/bolt_pistol_magazine) = 1,
		list(/obj/item/gun/energy/lasgun/laspistol, /obj/item/cell/device/standard) = 4,
		list(/obj/item/gun/energy/lasgun/laspistol/accatran, /obj/item/cell/device/high/laspack) = 1,
		list(/obj/item/gun/energy/lasgun/laspistol/grim, /obj/item/cell/device/high) = 3,
		list(/obj/item/gun/energy/lasgun/laspistol/lucius, /obj/item/cell/device/high/laspack) = 1,
		list(/obj/item/gun/energy/lasgun/laspistol/militarum, /obj/item/cell/device/high/laspack) = 1,
		list(/obj/item/gun/projectile/shotgun/doublebarrel/sawn, /obj/item/ammo_magazine/shotholder) = 6
	)


	var/list/selected_group = pickweight(grouped_spawns)

	return selected_group

/obj/random/loot/raresidearmbundle
	name = "Rare Sidearm Bundle"
	desc = "This is a sidearm loot spawner which spawns an RNG rare sidearm with it's ammo."
	icon_state = "heavymelee"

/obj/random/loot/raresidearmbundle/spawn_choices()
	// Define groups of items with weights
	var/list/grouped_spawns = list(
		list(/obj/item/gun/projectile/pistol/stub/talon, /obj/item/ammo_magazine/pistol/kp) = 5,
		list(/obj/item/gun/projectile/pistol/slug, /obj/item/ammo_magazine/magnum/ap) = 5,
		list(/obj/item/gun/energy/lasgun/laspistol/hellpistol, /obj/item/cell/device/high/laspack/hotshot) = 3,
		list(/obj/item/gun/energy/plasma/pistol) = 1,
		list(/obj/item/gun/energy/plasma/pistol/archeotech) = 1,
		list(/obj/item/gun/energy/plasma/pistol/mechanicus) = 1,
		list(/obj/item/gun/energy/plasma/pistol/xenos) = 1,
		list(/obj/item/gun/energy/plasma/pistol/chaos) = 1,
		list(/obj/item/gun/projectile/pistol/slug/old, /obj/item/ammo_magazine/magnum/ms) = 4,
		list(/obj/item/gun/projectile/pistol/slug/shotgun, /obj/item/ammo_magazine/shotholder/ms) = 3,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/mateba, /obj/item/ammo_magazine/speedloader/revolver/ap, /obj/item/ammo_magazine/speedloader/revolver/ms) = 8,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/bounty, /obj/item/ammo_magazine/speedloader/revolver/ms, /obj/item/ammo_magazine/speedloader/revolver/ms) = 8,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/autogun, /obj/item/ammo_magazine/speedloader/militarum/ap, /obj/item/ammo_magazine/speedloader/militarum/ap) = 8,
		list(/obj/item/gun/projectile/pistol/bolt_pistol, /obj/item/ammo_magazine/bolt_pistol_magazine) = 2,
		list(/obj/item/gun/energy/lasgun/laspistol/lucius, /obj/item/cell/device/high/laspack) = 6,
		list(/obj/item/gun/energy/lasgun/laspistol/militarum, /obj/item/cell/device/high/laspack) = 7,
		list(/obj/item/gun/projectile/pistol/bolt_pistol/drusian, /obj/item/ammo_magazine/bolt_pistol_magazine) = 1
	)


	var/list/selected_group = pickweight(grouped_spawns)

	return selected_group

/obj/random/loot/sidearmbundle
	name = "Sidearm Bundle"
	desc = "This is a sidearm loot spawner which spawns an RNG pistol with it's ammo."
	icon_state = "heavymelee"

/obj/random/loot/sidearmbundle/spawn_choices()
	// Define groups of items with weights
	var/list/grouped_spawns = list(
		list(/obj/item/gun/projectile/pistol/stub, /obj/item/ammo_magazine/pistol) = 12,
		list(/obj/item/gun/projectile/pistol/stub/villiers, /obj/item/ammo_magazine/pistol) = 10,
		list(/obj/item/gun/projectile/pistol/stub/talon, /obj/item/ammo_magazine/pistol/ap) = 6,
		list(/obj/item/gun/projectile/pistol/stub/snub, /obj/item/ammo_magazine/pistol/ap) = 10,
		list(/obj/item/gun/projectile/pistol/slug, /obj/item/ammo_magazine/magnum) = 9,
		list(/obj/item/gun/projectile/pistol/slug/old, /obj/item/ammo_magazine/magnum/ms) = 8,
		list(/obj/item/gun/projectile/pistol/slug/shotgun, /obj/item/ammo_magazine/shotholder/flechette) = 1,
		list(/obj/item/gun/projectile/revolver/imperial, /obj/item/ammo_magazine/speedloader, /obj/item/ammo_magazine/speedloader) = 3,
		list(/obj/item/gun/projectile/revolver/imperial/holdout, /obj/item/ammo_magazine/speedloader/small, /obj/item/ammo_magazine/speedloader/small) = 2,
		list(/obj/item/gun/projectile/revolver/imperial/heavy, /obj/item/ammo_magazine/speedloader/revolver, /obj/item/ammo_magazine/speedloader/revolver/ms) = 4,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/mateba, /obj/item/ammo_magazine/speedloader/revolver/ap, /obj/item/ammo_magazine/speedloader/revolver/ms) = 1,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/bounty, /obj/item/ammo_magazine/speedloader/revolver, /obj/item/ammo_magazine/speedloader/revolver/ms) = 1,
		list(/obj/item/gun/projectile/revolver/imperial/heavy/autogun, /obj/item/ammo_magazine/speedloader/militarum, /obj/item/ammo_magazine/speedloader/militarum/ap) = 1,
		list(/obj/item/gun/projectile/pistol/bolt_pistol, /obj/item/ammo_magazine/bolt_pistol_magazine) = 1,
		list(/obj/item/gun/projectile/pistol/bolt_pistol/drusian, /obj/item/ammo_magazine/bolt_pistol_magazine) = 1,
		list(/obj/item/gun/energy/lasgun/laspistol, /obj/item/cell/device/standard) = 4,
		list(/obj/item/gun/energy/lasgun/laspistol/accatran, /obj/item/cell/device/high/laspack) = 1,
		list(/obj/item/gun/energy/lasgun/laspistol/grim, /obj/item/cell/device/high) = 3,
		list(/obj/item/gun/energy/lasgun/laspistol/lucius, /obj/item/cell/device/high/laspack) = 1,
		list(/obj/item/gun/energy/lasgun/laspistol/militarum, /obj/item/cell/device/high/laspack) = 1,
		list(/obj/item/gun/projectile/shotgun/doublebarrel/sawn, /obj/item/ammo_magazine/shotholder) = 6
	)


	var/list/selected_group = pickweight(grouped_spawns)

	return selected_group

// WARHAMMER 40k

/*

/obj/random/loot/sidearms
	name = "Sidearms"
	desc = "This is a weapon loot spawner with a high chance of spawning common sidearms"
	icon_state = "sidearm"

/obj/random/loot/sidearms/spawn_choices()
	return list(
				/obj/item/gun/energy/las/laspistol = 4,
				/obj/item/gun/energy/las/laspistol/shitty = 5,
				/obj/item/gun/energy/las/laspistol/accatran = 1,
				/obj/item/gun/energy/las/laspistol/militarum/lucius = 2,
				/obj/item/gun/energy/las/laspistol/militarum = 2,
				/obj/item/gun/projectile/talon/renegade = 1,
				/obj/item/gun/projectile/revolver/mateba = 1,
				/obj/item/gun/projectile/revolver/villiers = 1,
				/obj/item/gun/projectile/necros = 1,
				/obj/item/gun/projectile/slugrevolver = 1,
				/obj/item/gun/projectile/pistol/pewter = 3,
				/obj/item/gun/projectile/pistol/kieji = 3,
				/obj/item/gun/projectile/pistol/kieji/snub = 3,
				/obj/item/gun/projectile/pistol/villiers = 3,
				/obj/item/gun/projectile/bolter_pistol = 1)

/obj/random/loot/randomammo1
	name = "Random Ammo"
	desc = "This is a random ammo spawner of projectile weaponry."
	icon_state = "randomammo"

/obj/random/loot/randomammo1/spawn_choices()
	return list(
		/obj/item/ammo_magazine/c556 = 6,
		/obj/item/ammo_box/shotgun = 4,
		/obj/item/ammo_magazine/smgmc9mm = 2,
		/obj/item/ammo_box/shotgun/slug = 3,
		/obj/item/storage/box/sniperammo = 1,
		/obj/item/ammo_magazine/handful/brifle_handful = 3,
		/obj/item/ammo_magazine/handful/brifle_handful/ms = 2,
		/obj/item/ammo_magazine/handful/brifle_handful/ap = 1,
		/obj/item/ammo_magazine/a762 = 3,
		/obj/item/ammo_magazine/box/a556/mg08 = 3
		)

/obj/random/loot/randomammosidearm
	name = "Random Sidearm Ammo"
	desc = "This is a random ammo spawner of projectile weaponry."
	icon_state = "randomammo"

/obj/random/loot/randomammosidearm/spawn_choices()
	return list(
		/obj/item/ammo_magazine/mc45mm = 9,
		/obj/item/ammo_magazine/a357 = 6,
		/obj/item/ammo_magazine/handful/a50 = 3,
		/obj/item/ammo_magazine/bolt_pistol_magazine = 1,
		/obj/item/cell/lasgun/hotshot = 1,
		/obj/item/cell/lasgun = 3,
		/obj/item/ammo_magazine/c44 = 5
		)

/obj/random/loot/randomlasammo
	name = "Random Lasgun Ammo"
	desc = "This is a random ammo spawner for energy weapons."
	icon_state = "randomammo"

/obj/random/loot/randomlasammo/spawn_choices()
	return list(
		/obj/item/cell/lasgun/small = 10,
		/obj/item/cell/lasgun/hotshot = 3,
		/obj/item/cell/plasma = 1,
		/obj/item/cell/lasgun = 20
		)


/obj/effect/landmark/poopie/New() // Difficulty: Medium. Guard level threat.
	if (prob(20))
		new /obj/item/reagent_containers/food/snacks/poo(src.loc)
		new /obj/item/reagent_containers/food/snacks/poo(src.loc)
		new /obj/item/reagent_containers/food/snacks/poo(src.loc)
	else
		new /obj/item/reagent_containers/food/snacks/vegetablesoup(src.loc)
	delete_me = 1

/obj/random/loot/badweapon
	name = "Bad Weapon Spawner 1" // This spawner creates projectile weapons
	desc = "This is a weapon loot spawner that spawns mostly low quality weapons."
	icon_state = "badranged"

/obj/random/loot/badweapon/spawn_choices()
	return list(
		/obj/item/gun/projectile/shotgun/pump/boltaction = 4,
		/obj/item/gun/projectile/shotgun/pump/boltaction/sharpshooter = 2,
		/obj/item/gun/projectile/shotgun/pump/boltaction/shitty/tinkered = 2,
		/obj/item/gun/projectile/shotgun/pump/boltaction/shitty/leverchester = 2,
		/obj/item/gun/projectile/shotgun/pump/boltaction/shitty/glory = 1,
		/obj/item/gun/projectile/shotgun/pump/voxlegis = 4,
		/obj/item/gun/projectile/shotgun/pump/shitty/sawn = 2,
		/obj/item/gun/projectile/shotgun/pump/shitty/magrave = 2,
		/obj/item/gun/projectile/automatic/m22/warmonger/m14/battlerifle = 1,
		/obj/item/gun/projectile/automatic/m22/combatrifle = 2,
		/obj/item/gun/projectile/automatic/heavystubber = 1,
		/obj/item/gun/projectile/automatic/heavystubber/villiers = 1,
		/obj/item/gun/projectile/automatic/machinepistol = 4,
		/obj/item/gun/projectile/automatic/machinepistol/a80 = 3,
		/obj/item/gun/projectile/automatic/autogrim = 2,
		/obj/item/gun/projectile/automatic/autogrim/krieg = 1,
		/obj/item/gun/projectile/automatic/agripinaaii = 1,
		/obj/item/gun/projectile/automatic/messina = 1,
		/obj/item/gun/projectile/thrower = 1,
		/obj/item/storage/backpack/satchel/heavy = 1
	)


/obj/random/loot/badweaponlas
	name = "Bad Weapon Spawner Las" // This spawner creates las weapons
	desc = "This is a weapon loot spawner that spawns mostly low quality weapons."
	icon_state = "badranged"

/obj/random/loot/badweaponlas/spawn_choices()
	return list(
		/obj/item/gun/energy/las/laspistol/shitty = 9,
		/obj/item/gun/energy/las/lasgun/shitty = 7,
		/obj/item/gun/energy/las/laspistol = 5,
		/obj/item/gun/energy/las/laspistol/militarum = 3,
		/obj/item/gun/energy/las/laspistol/militarum/lucius = 2,
		/obj/item/gun/energy/las/lasgun/lucius = 3,
		/obj/item/gun/energy/las/lasgun/catachan = 1,
		/obj/item/gun/energy/las/lasgun/accatran = 1,
		/obj/item/gun/energy/las/lasgun = 4
	)

/obj/random/loot/goodweapon
	name = "Good Weapon Spawner" // plasma, bolter, fancy lasguns
	desc = "This is a weapon loot spawner that spawns mostly high quality weapons."
	icon_state = "goodranged"

/obj/random/loot/goodweapon/spawn_choices()
	return list(
				/obj/item/gun/projectile/lockebolter = 1,
				/obj/item/gun/projectile/bolter_pistol/inquis = 1,
				/obj/item/gun/energy/pulse/plasma/rifle = 1,
				/obj/item/gun/energy/pulse/plasma/pistol = 3,
				/obj/item/gun/energy/las/hotshot = 2,
				/obj/item/gun/energy/melta/handheld = 1,
				/obj/item/gun/energy/las/lasgun/longlas = 2,
				/obj/item/gun/energy/las/lasgun/longlas/krieg = 2,
				/obj/item/gun/projectile/heavysniper = 2
				)

/obj/random/loot/randomarmor
	name = "Random Armor"
	desc = "This is a loot spawner that spawns pilgrim and pilgrim+ level armor"
	icon_state = "randomarmor"

/obj/random/loot/randomarmor/spawn_choices()
	return list(/obj/item/clothing/suit/armor/militia = 1,
				/obj/item/clothing/suit/cloak = 1,
				/obj/item/clothing/suit/armor/brigandine = 1,
//				/obj/item/clothing/suit/armor/slaverobe = 1,
				/obj/item/clothing/suit/armor/templar = 1,
				/obj/item/clothing/suit/armor/hauberk = 1,
				/obj/item/clothing/suit/armor/trinet = 1,
				/obj/item/clothing/suit/armor/heavyflaksuit = 1,
				/obj/item/clothing/suit/armor/breastplate = 1,
				/obj/item/clothing/suit/armor/sniper = 1,
				/obj/item/clothing/suit/armor/cuirass = 1,
				/obj/item/clothing/suit/armor/salvage = 1,
				/obj/item/clothing/suit/armor/guardsman/mercenary = 1,
				/obj/item/clothing/suit/armor/slanclothing/maleslan = 1,
//				/obj/item/clothing/suit/armor/necromundaflak1 = 1,
//				/obj/item/clothing/suit/armor/necromundacarapace1 = 1,
				/obj/item/clothing/suit/armor/ranger3 = 1,
				/obj/item/clothing/suit/armor/ranger2 = 1,
				/obj/item/clothing/head/helmet/salvage = 1,
				/obj/item/clothing/head/helmet/mining = 1,
				/obj/item/clothing/suit/armor/heavyflaksuit = 1,
				/obj/item/clothing/suit/armor/heavyduster = 1,
//				/obj/item/clothing/suit/armor/goliath2 = 1,
//				/obj/item/clothing/suit/armor/flak1 = 1,
//				/obj/item/clothing/suit/armor/flak2 = 1,
				/obj/item/clothing/suit/armor/scum2 = 1,
				/obj/item/clothing/suit/armor/leather = 1,
				/obj/item/clothing/suit/armor/hjacket = 1,
				/obj/item/clothing/suit/armor/hjacket2 = 1,
				/obj/item/clothing/suit/armor/slumcoat = 1,
				/obj/item/clothing/suit/armor/towntrench = 1,
				/obj/item/clothing/suit/armor/tduster = 1,
				/obj/item/clothing/suit/armor/bonearmor = 1,
				/obj/item/clothing/suit/armor/carapaceduster = 1,
				/obj/item/clothing/suit/armor/armoredtrench = 1)

/obj/random/loot/randomsupply
	name = "Random Supply"
	desc = "This is a loot spawner that spawns supplies like medicine, food and materials."
	icon_state = "randomsupply"

/obj/random/loot/randomsupply/spawn_choices()
	return list(/obj/item/storage/box/ifak = 4,
				/obj/item/storage/firstaid/adv = 1,
				/obj/item/storage/firstaid/surgery = 1,
				/obj/item/storage/belt/medical/full = 1,
				/obj/item/reagent_containers/hypospray/autoinjector/revive = 4,
				/obj/item/stack/barbwire = 3,
				/obj/random/canned_food = 1,
				/obj/item/flame/lighter/zippo = 1,
				/obj/item/device/flashlight/lantern = 1,
				/obj/item/storage/pill_bottle/happy = 1,
				/obj/item/stack/material/silver/ten = 1,
				/obj/item/stack/material/glass/fifty = 1,
				/obj/item/clothing/under/rank/victorian = 1,
				/obj/item/stack/material/steel/fifty = 2)

/obj/random/loot/randomitemcaves // make this a grenade spawn?
	name = "Random Item Caves"
	desc = "This is a loot spawner that spawns random items."
	icon_state = "randompilgrim"

/obj/random/loot/randomitemcaves/spawn_choices()
	return list(/obj/item/shovel = 3,
				/obj/item/clothing/glasses/night = 3,
				/obj/item/pickaxe = 3,
				/obj/item/storage/firstaid/combat = 2,
				/obj/item/storage/firstaid/surgery = 2,
				/obj/item/reagent_containers/hypospray/autoinjector/revive = 6,
				/obj/item/clothing/accessory/holster/waist = 6,
				/obj/item/clothing/accessory/storage/webbing = 8,
				/obj/item/stack/thrones3/ten = 4,
				/obj/item/stack/thrones3/twenty = 2,
				/obj/item/stack/thrones2/ten = 1,
				/obj/item/grenade/frag/high_yield/homemade = 1,
				/obj/item/grenade/frag = 1,
				/obj/item/storage/backpack/satchel/heavy = 1,
				/obj/item/clothing/under/rank/victorian = 1,
				/obj/item/grenade/frag/high_yield/krak = 1)

/obj/random/loot/randomitemtown
	name = "Random Item Pilgrim"
	desc = "This is a loot spawner that spawns random items that will be useful for any pilgrim."
	icon_state = "randompilgrim"

/obj/random/loot/randomitemtown/spawn_choices()
	return list(/obj/item/device/binoculars = 2,
				/obj/item/storage/box/ifak = 5,
				/obj/item/storage/firstaid/adv = 1,
				/obj/item/stack/thrones3/ten = 1,
				/obj/item/stack/thrones3/twenty = 1,
				/obj/item/clothing/suit/armor/militia = 2,
				/obj/item/melee/sword/combat_knife = 1,
				/obj/item/stack/thrones2/ten = 2,
				/obj/item/storage/backpack/satchel/heavy = 1,
				/obj/item/clothing/accessory/holster/waist = 3,
				/obj/item/clothing/accessory/storage/webbing = 5,
				/obj/item/storage/belt/utility/full = 2,
				/obj/item/clothing/accessory/legguards = 2,
				/obj/item/clothing/accessory/armguards/ballistic = 2,
				/obj/item/clothing/under/rank/victorian = 1,
				/obj/item/grenade/frag/high_yield/homemade = 1)



*/
