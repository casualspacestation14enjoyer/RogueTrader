GLOBAL_DATUM_INIT(genestealers, /datum/antagonist/genestealer, new)

/datum/antagonist/genestealer
	id = MODE_GENESTEALER
	role_text = "Genestealer"
	role_text_plural = "Genestealers"
	feedback_tag = "genestealer_objective"
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)
	restricted_jobs = list(/datum/job/enforcer, /datum/job/enforcer_sergeant, /datum/job/guardsman, /datum/job/rogue_trader, /datum/job/guard_captain)
	welcome_text = "Use say \"%LANGUAGE_PREFIX%g message\" to communicate with your fellow genestealers. Remember: you get all of their absorbed DNA if you absorb them."
	flags = ANTAG_SUSPICIOUS | ANTAG_RANDSPAWN | ANTAG_VOTABLE
	antaghud_indicator = "hudchangeling"

	faction = "tyranids"

/datum/antagonist/genestealer/get_welcome_text(mob/recipient)
	return replacetext(welcome_text, "%LANGUAGE_PREFIX%", recipient?.get_prefix_key(/singleton/prefix/language) || ",")

/datum/antagonist/genestealer/get_special_objective_text(datum/mind/player)
	return "<br><b>Genestealer ID:</b> [player.genestealer.genestealerID].<br><b>Genomes Absorbed:</b> [player.genestealer.absorbedcount]"

/datum/antagonist/genestealer/update_antag_mob(datum/mind/player)
	..()
	player.current.make_genestealer()

/datum/antagonist/genestealer/remove_antagonist(datum/mind/player, show_message, implanted)
	. = ..()
	if(. && player && player.current)
		player.current.remove_genestealer_powers()
		player.current.verbs -= /datum/genestealer/proc/EvolutionMenu
		player.current.remove_language(LANGUAGE_CHANGELING_GLOBAL)
		QDEL_NULL(player.genestealer)

/datum/antagonist/genestealer/create_objectives(datum/mind/genestealer)
	if(!..())
		return

	//OBJECTIVES - Always absorb 5 genomes, plus random traitor objectives.
	//If they have two objectives as well as absorb, they must survive rather than escape
	//No escape alone because genestealers aren't suited for it and it'd probably just lead to rampant robusting
	//If it seems like they'd be able to do it in play, add a 10% chance to have to escape alone

	var/datum/objective/absorb/absorb_objective = new
	absorb_objective.owner = genestealer
	absorb_objective.gen_amount_goal(2, 3)
	genestealer.objectives += absorb_objective

	var/datum/objective/assassinate/kill_objective = new
	kill_objective.owner = genestealer
	kill_objective.find_target()
	genestealer.objectives += kill_objective

	var/datum/objective/steal/steal_objective = new
	steal_objective.owner = genestealer
	steal_objective.find_target()
	genestealer.objectives += steal_objective

	switch(rand(1,100))
		if(1 to 80)
			if (!(locate(/datum/objective/escape) in genestealer.objectives))
				var/datum/objective/escape/escape_objective = new
				escape_objective.owner = genestealer
				genestealer.objectives += escape_objective
		else
			if (!(locate(/datum/objective/survive) in genestealer.objectives))
				var/datum/objective/survive/survive_objective = new
				survive_objective.owner = genestealer
				genestealer.objectives += survive_objective
	return

/datum/antagonist/genestealer/can_become_antag(datum/mind/player, ignore_role)
	if(..())
		if(player.current)
			if(ishuman(player.current))
				var/mob/living/carbon/human/H = player.current
				if(H.isSynthetic() || H.isFBP())
					return 0
				if(H.species.species_flags & SPECIES_FLAG_NO_SCAN)
					return 0
				return 1
			else if(isnewplayer(player.current))
				if(player.current.client && player.current.client.prefs)
					var/datum/species/S = all_species[player.current.client.prefs.species]
					if(S && (S.species_flags & SPECIES_FLAG_NO_SCAN))
						return 0
					if(player.current.client.prefs.organ_data[BP_CHEST] == "cyborg") // Full synthetic.
						return 0
					return 1
 	return 0
