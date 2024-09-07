/datum/species/vox
	name = SPECIES_VOX
	name_plural = SPECIES_VOX
	icobase =         'icons/mob/human_races/species/vox/body.dmi'
	deform =          'icons/mob/human_races/species/vox/body.dmi'
	husk_icon =       'icons/mob/human_races/species/vox/husk.dmi'
	damage_overlays = 'icons/mob/human_races/species/vox/damage_overlay.dmi'
	damage_mask =     'icons/mob/human_races/species/vox/damage_mask.dmi'
	blood_mask =      'icons/mob/human_races/species/vox/blood_mask.dmi'
	preview_icon = 'icons/mob/human_races/species/vox/preview.dmi'

	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/claws/strong/gloves,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite/strong
	)
	rarity_value = 4
	description = "The Tarrellians are the shattered remnants of a once-proud species, now reduced to scavenging \
	and mercenary work to sustain their dwindling numbers. These reptilian-avians stand four to five feet tall, \
	with beaked faces, tails, and a covering of quills. Among human crews, they are often disparagingly referred \
	to as 'scale-birds' due to their violent nature, foul temperament, and the distinct, unpleasant odor they emit. \
	<br/><br/> \
	Most humans will never encounter a Tarrellian directly, instead knowing of them through tales of their mercenary \
	activities or encounters with their traders. Those few who do come face to face with a Tarrellian rarely find the \
	experience enjoyable."
	codex_description = "The Tarrellians are a hostile and deeply untrustworthy species dwelling at the fringes of the \
	known galaxy. They raid isolated stations, ships, and settlements seemingly without rhyme or reason, often refusing \
	any form of communication or negotiation unless they are desperate or severely outnumbered. These reptilian-avians \
	are four to five feet tall, with beaked faces, tails, and quilled bodies."
	hidden_from_codex = FALSE

	taste_sensitivity = TASTE_DULL

	warning_low_pressure = 50
	hazard_low_pressure = 0

	cold_level_1 = 80
	cold_level_2 = 50
	cold_level_3 = -1

	min_age = 1
	max_age = 100
	brute_mod = 0.9 // Vunerable to Brute.
	burn_mod = 0.75 // Resistance to Burn.
	stun_mod = 0.8 // Resistant to concussion
	weaken_mod = 0.8 // Advanced health systems.
	paralysis_mod = 0.8
	toxins_mod = 0.8

	gluttonous = GLUT_TINY|GLUT_ITEM_NORMAL
	stomach_capacity = 12

	siemens_coefficient = 0.2

	species_flags = SPECIES_FLAG_NO_SCAN
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN
	appearance_flags = SPECIES_APPEARANCE_HAS_EYE_COLOR | SPECIES_APPEARANCE_HAS_HAIR_COLOR

	blood_color = "#2299fc"
	flesh_color = "#808d11"

	maneuvers = list(/singleton/maneuver/leap/grab)
	standing_jump_range = 5

	override_limb_types = list(
		BP_GROIN = /obj/item/organ/external/groin/vox
	)

	has_organ = list(
		BP_STOMACH =    /obj/item/organ/internal/stomach/vox,
		BP_HEART =      /obj/item/organ/internal/heart/vox,
		BP_LUNGS =      /obj/item/organ/internal/lungs/vox,
		BP_LIVER =      /obj/item/organ/internal/liver/vox,
		BP_KIDNEYS =    /obj/item/organ/internal/kidneys/vox,
		BP_BRAIN =      /obj/item/organ/internal/brain,
		BP_EYES =       /obj/item/organ/internal/eyes/vox,
		BP_STACK =      /obj/item/organ/internal/voxstack,
		BP_HINDTONGUE = /obj/item/organ/internal/hindtongue
		)

	genders = list(NEUTER)
	pronouns = list(PRONOUNS_THEY_THEM, PRONOUNS_IT_ITS)
	descriptors = list(
		/datum/mob_descriptor/height = -1,
		/datum/mob_descriptor/build = 1,
		/datum/mob_descriptor/vox_markings = 0
		)

	available_cultural_info = list(
		TAG_CULTURE =   list(
			CULTURE_VOX_ARKSHIP,
			CULTURE_VOX_SALVAGER,
			CULTURE_VOX_RAIDER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_VOX_ARK,
			HOME_SYSTEM_VOX_SHROUD,
			HOME_SYSTEM_VOX_SHIP
		),
		TAG_FACTION = list(
			FACTION_VOX_RAIDER,
			FACTION_VOX_CREW,
			FACTION_VOX_APEX
		),
		TAG_RELIGION =  list(
			RELIGION_VOX
		)
	)

	exertion_effect_chance = 10
	exertion_hydration_scale = 1
	exertion_charge_scale = 1
	exertion_reagent_scale = 5
	exertion_reagent_path = /datum/reagent/lactate
	exertion_emotes_biological = list(
		/singleton/emote/exertion/biological,
		/singleton/emote/exertion/biological/breath,
		/singleton/emote/exertion/biological/pant
	)
	exertion_emotes_synthetic = list(
		/singleton/emote/exertion/synthetic,
		/singleton/emote/exertion/synthetic/creak
	)

	ingest_amount = 20

	traits = list(/singleton/trait/general/nonpermeable_skin = TRAIT_LEVEL_EXISTS)

/datum/species/vox/equip_survival_gear(mob/living/carbon/human/H)
	H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/vox(H), slot_wear_mask)

	if(istype(H.get_equipped_item(slot_back), /obj/item/storage/backpack))
		H.equip_to_slot_or_del(new /obj/item/tank/oxygen(H), slot_r_hand)
		H.equip_to_slot_or_del(new /obj/item/storage/box/vox(H.back), slot_in_backpack)
		H.set_internals(H.r_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/tank/oxygen(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/storage/box/vox(H), slot_r_hand)
		H.set_internals(H.back)

/datum/species/vox/disfigure_msg(mob/living/carbon/human/H)
	var/datum/pronouns/P = H.choose_from_pronouns()
	return "[SPAN_DANGER("[P.His] beak-segments are cracked and chipped! [P.He] [P.is] not even recognizable.")]\n"

/obj/item/vox_changer
	name = "mouldy mirror"
	desc = "Something seems strange about this old, dirty mirror. Your reflection doesn't look like you remember it."
	icon = 'icons/obj/structures/mirror.dmi'
	icon_state = "mirror_broke"
	color = "#bcd4a9"
	anchored = TRUE
	density = FALSE
	var/allowed_role

/obj/item/vox_changer/attack_hand(mob/living/carbon/human/user)
	if (!istype(user))
		return
	if (allowed_role && user.mind?.special_role != allowed_role)
		return
	if (user.species.name == SPECIES_VOX || !is_alien_whitelisted(user, all_species[SPECIES_VOX]))
		return
	var/data = input(user, "Become Vox?", "Become Vox") as null | anything in list("No", "Compliance")
	if (isnull(data) || data == "No")
		return
	var/mob/living/carbon/human/vox/vox = new(get_turf(src), SPECIES_VOX)
	user.mind.transfer_to(vox)
	OnCreated(vox, user)
	data = sanitizeSafe(input(vox, "Enter Name:", "Enter Name", "") as text, MAX_NAME_LEN)
	if (!length(data))
		var/singleton/cultural_info/culture = SSculture.get_culture(CULTURE_VOX_RAIDER)
		data = culture.get_random_name()
	vox.real_name = data
	vox.SetName(data)
	OnReady(vox)
	qdel(user)

/obj/item/vox_changer/proc/OnCreated(mob/living/carbon/human/vox, mob/living/carbon/human/old)
	vox.equip_to_slot_or_del(new /obj/item/clothing/under/vox/vox_casual(vox), slot_w_uniform)
	vox.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/vox(vox), slot_wear_mask)
	vox.equip_to_slot_or_del(new /obj/item/tank/oxygen(vox), slot_back)
	vox.set_internals(locate(/obj/item/tank) in vox.contents)

/obj/item/vox_changer/proc/OnReady(mob/living/carbon/human/vox, mob/living/carbon/human/old)
	return
