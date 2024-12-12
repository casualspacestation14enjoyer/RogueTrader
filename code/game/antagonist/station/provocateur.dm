GLOBAL_DATUM_INIT(provocateurs, /datum/antagonist/provocateur, new)

/datum/antagonist/provocateur
	id = MODE_MISC_AGITATOR
	role_text = "Deuteragonist"
	role_text_plural = "Deuteragonists"
	antaghud_indicator = "hud_traitor"
	flags = ANTAG_RANDOM_EXCEPTED
	antag_text = "This role grants you the freedom to pursue your own goals, even if they challenge the God Emperor himself. Your path is yours to shape—be it loyal, heretical, or self-serving. Just remember, your actions have consequences!"
	welcome_text = "You are a character in a side story!"
	blacklisted_jobs = list()
	skill_setter = null
	min_player_age = 0

	var/antag_text_updated
	no_prior_faction = TRUE

/datum/antagonist/provocateur/get_antag_text(mob/recipient)
	if (!antag_text_updated)
		antag_text = replacetext(antag_text, "%WORLD_NAME%", station_name())
		antag_text_updated = TRUE
	return antag_text
