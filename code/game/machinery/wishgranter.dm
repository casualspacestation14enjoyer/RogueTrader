/obj/machinery/wish_granter
	name = "\improper Beacon Of Ruin"
	desc = "You're not so sure about this, anymore..."
	icon = 'icons/obj/structures/syndicate_beacon.dmi'
	icon_state = "syndbeacon"

	use_power = POWER_USE_OFF
	uncreated_component_parts = null
	interact_offline = TRUE
	anchored = TRUE
	density = TRUE

	var/charges = 1
	var/insisting = 0

// Just override; we're special.
/obj/machinery/wish_granter/attack_hand(mob/user as mob)
	usr.set_machine(src)

	if(charges <= 0)
		to_chat(user, "The beacon lies silent.")
		return

	else if(!istype(user, /mob/living/carbon/human))
		to_chat(user, "You feel a dark stirring inside of the beacon, something you want nothing of. Your instincts are better than any man's.")
		return
	else if (!insisting)
		to_chat(user, "Your first touch makes the beacon stir, listening to you.  Are you really sure you want to do this?")
		insisting++

	else // Why not add options? There should be choices and results. With if probs on how the choice turns out. Have like 10.
		var/message = "You speak.  [pick("I want the [station_name()] to disappear","Humanity is corrupt, mankind must be destroyed","I want to be rich", "I want to rule the world","I want immortality.")].  The beacon answers."
		to_chat(user, message)
		to_chat(user, "Your head pounds for a moment, before your vision clears.  You are the avatar of the beacon, and your power is LIMITLESS!  And it's all yours.")
		charges--
		insisting = 0

		if (!(MUTATION_FERAL in user.mutations))
			user.mutations.Add(MUTATION_FERAL)

		if (!(MUTATION_LASER in user.mutations))
			user.mutations.Add(MUTATION_LASER)

		if (!(MUTATION_XRAY in user.mutations))
			user.mutations.Add(MUTATION_XRAY)
			user.set_sight(user.sight|SEE_MOBS|SEE_OBJS|SEE_TURFS)
			user.set_see_in_dark(8)
			user.set_see_invisible(SEE_INVISIBLE_LEVEL_TWO)

		if (!(MUTATION_COLD_RESISTANCE in user.mutations))
			user.mutations.Add(MUTATION_COLD_RESISTANCE)

		if(!(MUTATION_HEAL in user.mutations))
			user.mutations.Add(MUTATION_HEAL)

		user.update_mutations()
		user.mind.special_role = "CHAOS"
		to_chat(user, "You have a very bad feeling about this.")
	return
