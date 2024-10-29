/datum/job/submap/noble
	title = "Mercenary" // We will put SOB/Ordos on a planet POI.
	total_positions = 2
	outfit_type = /singleton/hierarchy/outfit/job/demeter/crew
	supervisors = "yourself"
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	alt_titles = list(
		"Witch Hunter",
		"Bounty Hunter",
		"Paladin",
		"Deserter" // PDF role
	)
	skill_points = 21 // 3 more points then deck scum
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/noble/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Witch Hunter" || current_title == "Paladin" || current_title == "Mercenary" || current_title == "Bounty Hunter" || current_title == "Deserter")
		if(current_title == "Witch Hunter")
			to_chat(H,"<span class='danger'><b><font size=4>THE WITCH HUNTER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Witch Hunter, you’re a zealot of the Ecclesiarchy, a disgraced agent now plying your trade as a sell-sword. Warp-touched and marked by your encounters with the foul, you hunt down heretics and those tainted by Chaos, seeking atonement through your merciless pursuit of the unholy.</font></b></span>")
			H.species.brute_mod = 0.7 // Warp touched witch hunter
			H.species.burn_mod = 0.65
			H.species.toxins_mod = 0.5
			H.species.radiation_mod = 0.4
			H.species.weaken_mod = 0.71
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 1.25
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/witch, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/witch, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/broadsword, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/stub/snub, slot_belt)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/witch, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/fullplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/slug/old, slot_belt)
		if(current_title == "Paladin")
			to_chat(H,"<span class='danger'><b><font size=4>THE PALADIN</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Paladin aboard the Demeter, you’re a disgraced zealot of the Ecclesiarchy turned sellsword. Once a staunch defender of faith, you now roam the stars seeking redemption and purpose, willing to take on any job that aligns with your warped sense of righteousness.</font></b></span>")
			H.species.brute_mod = 0.7
			H.species.burn_mod = 0.7
			H.species.weaken_mod = 0.71
			H.species.stun_mod = 0.71
			H.species.slowdown = -0.15
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/broadsword/adamantine, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/hero, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate/brigandine, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/cutro/adamantine, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hauberk, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/hauberkheavy, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/bardiche/adamantine, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/breastplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/spear/fuscina/adamantine, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/siege, slot_head)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/cuirass, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/saintie/adamantine, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/feudal, slot_head)
		if(current_title == "Mercenary")
			to_chat(H,"<span class='danger'><b><font size=4>THE MERCENARY</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Mercenary aboard the Demeter, you’re a passenger seeking new contracts in the Ghoul Stars. Once a soldier, you now sell your skills to the highest bidder, always on the lookout for lucrative opportunities that finally lead to an early retirement.</font></b></span>")
			H.species.brute_mod = 0.7
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 1.15
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/bowie, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/dufflebag, slot_l_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/tactical, slot_w_uniform)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/heavyflak, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/krieg, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/autogun/ap, slot_in_backpack)
			else if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/stubber, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/autogunheavy, slot_in_backpack)
			else if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger/alt, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace3, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/slugrifle, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/heavy/ap, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace2, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/heavysniper/boltaction/imperial/crucible, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/clip/stub/ap, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/clip/stub/ms, slot_in_backpack)
		if(current_title == "Bounty Hunter")
			to_chat(H,"<span class='danger'><b><font size=4>THE BOUNTY HUNTER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Bounty Hunter aboard the Demeter, you are adrift after your last client met an untimely demise on the ship. With your skills underutilized, you now navigate the dangerous Ghoul Stars, seeking new contracts and opportunities to reclaim your place in the hunt.</font></b></span>")
			H.species.brute_mod = 0.7
			H.species.weaken_mod = 0.71
			H.species.stun_mod = 0.71
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/bountyhunter, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/bountyhead, slot_head)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/mateba, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/ms, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/ms, slot_in_backpack)
		if(current_title == "Deserter")
			to_chat(H,"<span class='danger'><b><font size=4>THE DESERTER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Deserter aboard the Demeter, you've abandoned the PDF in search of fortune as a mercenary. Once loyal to the captain, your knowledge of Militarum codes and procedures now serves you as you navigate the dangerous life of a hired gun.</font></b></span>")
			H.species.brute_mod = 0.7
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/guard/uniform, slot_w_uniform)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/heavy, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat/deserter, slot_l_hand) // has gloves, mask, shoes and detpack
			if(prob(5))
				H.equip_to_slot_or_store_or_drop(new /obj/item/card/emag, slot_in_backpack)
			else if(prob(5))
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/radio_jammer, slot_in_backpack)
			if(prob(40))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/pdf, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/kantrael, slot_belt)
			else if(prob(25))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/medic, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/medic, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/assault_rifle, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/firstaid/adv, slot_in_backpack)
			else if(prob(35))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/heavy, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/heavy, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/stubber, slot_belt)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/capt, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/captain, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/hellpistol, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/lucius, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/cell/device/high/laspack, slot_in_backpack)
	return ..()

/datum/job/submap/demeter_crew
	title = "Crewman"
	supervisors = "yourself"
	total_positions = 3
	outfit_type = /singleton/hierarchy/outfit/job/demeter/crew
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler drifting far from \
	Imperial trade routes. With the captain lost and the true crew mostly dead, the task of holding this broken ship \
	together falls on you and the few survivors. It’s time to choose an acting captain and salvage what little remains \
	—before the dark claims the rest."
	alt_titles = list(
		"Detective",
		"Thief",
		"Heretek",
		"Merchant",
		"Bard",
	)
	skill_points = 20
	min_skill = list(
		SKILL_PILOT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ELECTRICAL = SKILL_BASIC,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/deck_scum/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Crewman" || current_title == "Detective" || current_title == "Thief" || current_title == "Heretek" || current_title == "Merchant" || current_title == "Bard")
		if(current_title == "Crewman")
			to_chat(H,"<span class='danger'><b><font size=4>THE CREWMAN</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Crewman, you are a key member of the Demeter, a vessel once led by a captain now lost to the void. Your knowledge of the ship's operations is critical, shaped by loyalty to a dead master and the harsh realities of life within the grimdark of the ghoul stars.</font></b></span>")
			H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
			H.species.toxins_mod = 0.6
			H.species.radiation_mod = 0.55
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.65
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatpain, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/antirad, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/explorer, slot_back)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/smuggler, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/hellpistol, slot_r_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/cell/device/high/laspack/hotshot, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/trenchcoat, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/stub/talon, slot_r_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/pistol/small/ap, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/pistol/small/ap, slot_in_backpack)
		if(current_title == "Detective")
			to_chat(H,"<span class='danger'><b><font size=4>THE DETECTIVE</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Detective, you travel aboard the Demeter at great expense to your patron, hired by a mysterious client to investigate a calamity of <insert your backstory> across an ancient hive-world deep within the Ghoul Stars. Your expertise in forensics and intelligence operations makes you a valuable asset in navigating the political landscape of their world.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/briefcase/crimekit, slot_l_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/carapace, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/syndie_kit/spy, slot_in_backpack) // Kind of like a shittier Thief class but more respectable and with a big revolver.
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/autogun, slot_r_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ap, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ms, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/bounty, slot_r_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/kp, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/multitool/hacktool, slot_in_backpack)
		if(current_title == "Thief")
			to_chat(H,"<span class='danger'><b><font size=4>THE THIEF</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Thief, you travel on the Demeter, summoned by a shadowy benefactor for a high-stakes job. You should probably... recruit a crack-team to help execute the job, therefoer minimizing the risk to yourself.</font></b></span>")
			H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
			H.species.silent_steps = TRUE
			H.species.slowdown = -0.15
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/heavy, slot_back)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/smuggler, slot_wear_suit)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/trenchcoat, slot_wear_suit)
			if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat/thief1, slot_r_hand)
			if(prob(20))
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat/thief2, slot_r_hand)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat/thief3, slot_r_hand)
		if(current_title == "Heretek")
			to_chat(H,"<span class='danger'><b><font size=4>THE HERETEK</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Heretek aboard the Demeter, you are a disgraced Magos stricken with a terminal disease that has given you only months to live, obsessed with unlocking the secrets of the Machine. Cast out by the Mechanicus for your radical theories, you now seek work without the constraints of dogma, eager to conduct your experiments unimpeded.</font></b></span>")
			H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
			H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
			H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
			H.species.heat_level_1 = 600
			H.species.heat_level_2 = 700
			H.species.heat_level_3 = 2000
			H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
			H.species.hazard_low_pressure = -1
			H.species.brute_mod = 0.8 // This particular tech priest is weaker then most humans.
			H.species.burn_mod = 0.8
			H.species.toxins_mod = 0.8
			H.species.radiation_mod = 0.6
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.5
			H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/mechanicus, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/hardhat/techpriest, slot_head)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/mask/gas/techpriest, slot_wear_mask)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/shoes/jackboots/skitshoes/techpriest, slot_shoes)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/engineer, slot_w_uniform)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/gloves/thick/swat/techpriest, slot_gloves)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/techpriest, slot_back)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/wrist_blade, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/iatric_monitor, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/internal_air_system, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/popout_shotgun, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/polytool/engineer, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/implant/translator, slot_in_backpack)
		if(current_title == "Merchant")
			to_chat(H,"<span class='danger'><b><font size=4>THE MERCHANT</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Merchant aboard the Demeter, you are a passenger seeking new opportunities in the Ghoul Stars. With your keen eye for profit and trade, you aim to expand your business, hoping to capitalize on the chaos and scarcity of resources in this grim sector.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/merchant, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/bowlerhat/razor, slot_head)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/syndie_kit/clerical, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/secure/briefcase/money, slot_r_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/shotgun/cane, slot_l_hand)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/syndie_kit/cigarette, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/syndie_kit/imp_explosive, slot_in_backpack)
		if(current_title == "Bard")
			to_chat(H,"<span class='danger'><b><font size=4>THE BARD</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Bard aboard the Demeter, you're a passenger peddling your talents in song and charm. Using your wit and cunning, you spin tales to manipulate and con, seeking to charm your way into opportunities and gain favors from the crew.</font></b></span>")
			H.species.silent_steps = TRUE
			H.equip_to_slot_or_store_or_drop(new /obj/item/pen/fancy/quill, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_belt)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/musician, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat/thief3, slot_r_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/secure/briefcase/money2, slot_r_hand)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/synthesized_instrument/violin, slot_wear_suit)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/synthesized_instrument/guitar, slot_wear_suit)
	return ..()

#define DEMETER_OUTFIT_JOB_NAME(job_name) ("The Demeter" + job_name)

/singleton/hierarchy/outfit/job/demeter
	hierarchy_type = /singleton/hierarchy/outfit/job/demeter
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio/map_preset/demeter
	l_ear = /obj/item/device/radio/headset/map_preset/demeter
	r_ear = null
	backpack_contents = list(/obj/item/spacecash/bundle/c1000 = 1)

/singleton/hierarchy/outfit/job/demeter/crew
	name = ("Demeter Crew")
	id_types = list(/obj/item/card/id/demeter)
	l_ear = /obj/item/device/radio/headset/headset_service
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	pda_type = /obj/item/modular_computer/pda
	l_pocket = /obj/item/device/flashlight/lantern
	backpack_contents = list(/obj/item/device/radio/map_preset/demeter = 1, /obj/item/spacecash/bundle/c500 = 1)

/singleton/hierarchy/outfit/job/demeter/captain
	name = ("Demeter Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	id_types = list(/obj/item/card/id/demeter_captain)

/singleton/hierarchy/outfit/job/demeter/captain/post_equip(mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

#undef DEMETER_OUTFIT_JOB_NAME

/obj/submap_landmark/spawnpoint/captain
	name = "Mercenary"

/obj/submap_landmark/spawnpoint/crewman
	name = "Crewman"
