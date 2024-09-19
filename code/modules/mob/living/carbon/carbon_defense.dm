
/mob/living/carbon/hit_with_weapon(obj/item/I, mob/living/user, effective_force, hit_zone)
	if (!effective_force)
		return 0

	//Apply weapon damage
	var/damage_flags = I.damage_flags()
	var/datum/wound/created_wound = apply_damage(effective_force, I.damtype, hit_zone, damage_flags, used_weapon=I, armor_pen=I.armor_penetration)

	return TRUE
