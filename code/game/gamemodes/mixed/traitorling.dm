/datum/game_mode/traitorling
	name = "Genestealer & Traitor"
	round_description = "There are traitors and alien genestealers. Do not let the genestealers succeed!"
	extended_round_description = "Traitors and genestealers both spawn during this mode."
	config_tag = "traitorling"
	required_players = 10
	required_enemies = 5
	end_on_antag_death = FALSE
	antag_tags = list(MODE_GENESTEALER, MODE_TRAITOR)
	require_all_templates = TRUE
