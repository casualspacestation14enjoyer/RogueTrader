
/mob/living/carbon/hit_with_weapon(obj/item/I, mob/living/user, effective_force, hit_zone)
	if (!effective_force)
		return 0

	// Adjust effective_force based on skill levels
	var/X = 1.5  // Default multiplier for no skill
	if (user.skill_check(SKILL_COMBAT, SKILL_DEMIGOD))
		X = 6.3
	else if (user.skill_check(SKILL_COMBAT, SKILL_PRIMARIS))
		X = 5.3
	else if (user.skill_check(SKILL_COMBAT, SKILL_LEGEND))
		X = 3.1
	else if (user.skill_check(SKILL_COMBAT, SKILL_MASTER))
		X = 2.5
	else if (user.skill_check(SKILL_COMBAT, SKILL_EXPERIENCED))
		X = 2
	else if (user.skill_check(SKILL_COMBAT, SKILL_TRAINED)) // At baseline levels damage increase is smaller.
		X = 1.7
	else if (user.skill_check(SKILL_COMBAT, SKILL_BASIC))
		X = 1.5
	else
		X = 1.5  // Default multiplier if no skill is found

	// Apply the skill-based force adjustment
	effective_force += 2 * ((0.2 * effective_force) + (0.1 * X * effective_force))

	// Apply weapon damage
	var/damage_flags = I.damage_flags()
	var/datum/wound/created_wound = apply_damage(effective_force, I.damtype, hit_zone, damage_flags, used_weapon=I, armor_pen=I.armor_penetration)

	// Melee weapon embedded object code.
	if (istype(created_wound) && I && I.can_embed() && I.damtype == DAMAGE_BRUTE && !I.anchored && !is_robot_module(I))
		var/damage = effective_force // Just the effective damage used for sorting out embedding, no further damage is applied here
		damage *= 1 - get_blocked_ratio(hit_zone, I.damtype, I.damage_flags(), I.armor_penetration, I.force)

	return TRUE
