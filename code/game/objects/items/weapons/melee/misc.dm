/obj/item/melee/whip
	name = "whip"
	desc = "A generic whip."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	icon_state = "chain"
	item_state = "chain"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 10
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 4)
	attack_verb = list("flicked", "whipped", "lashed")

/obj/item/melee/whip/abyssal
	name = "abyssal whip"
	desc = "A weapon from the abyss. Requires 70 attack to wield."
	icon_state = "whip"
	item_state = "whip"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 16 //max hit with 60 strength and no equipment. Duel Arena no No forfeit - Snapshot
	throwforce = 7
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 4)
	attack_verb = list("flicked", "whipped", "lashed")

/obj/item/melee/whip/tail
	name = "drake's tail"
	desc = "The tail of a large scaled creature, obviously evolved as some kind of whipping weapon. It's razor sharp and incredibly tough, though relatively lightweight."
	icon_state = "tailwhip"
	item_state = "whip"
	obj_flags = null
	force = 19
	edge = TRUE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 5)

/obj/item/melee/whip/chainofcommand
	name = "chain of command"
	desc = "A tool used by great men to placate the frothing masses."
	attack_verb = list("flogged", "whipped", "lashed", "disciplined")
	icon_state = "chain"
	item_state = "whip"

/obj/item/material/sword/replica/officersword
	name = "fleet officer's sword"
	desc = "A polished sword issued to officers of the fleet."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	icon_state = "officersword"
	item_state = "officersword"
	slot_flags = SLOT_BELT
	applies_material_colour = FALSE

/obj/item/material/sword/replica/officersword/pettyofficer
	name = "chief petty officer's cutlass"
	desc = "A polished cutlass issued to chief petty officers of the fleet."
	icon_state = "pettyofficersword"
	item_state = "pettyofficersword"

/obj/item/melee/powerfist/mounted
	icon_state = "powerfist"
	item_state = "powerfist"
	name = "hardsuit powerfist"
	icon = 'icons/obj/augment.dmi'
	desc = "Hardsuit gauntlet powered-up by servomotors. Capable of prying airlock open, but can't make people fly."
	base_parry_chance = 12
	force = 15
	attack_cooldown = SLOW_WEAPON_COOLDOWN
	hitsound = 'sound/effects/bang.ogg'
	attack_verb = list("smashed", "bludgeoned", "hammered", "battered")
	var/mob/living/creator

/obj/item/melee/powerfist/mounted/dropped()
	..()
	QDEL_IN(src, 0)


/obj/item/melee/powerfist/mounted/get_storage_cost()
	return ITEM_SIZE_NO_CONTAINER


/obj/item/melee/powerfist/mounted/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)


/obj/item/melee/powerfist/mounted/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()


/obj/item/melee/powerfist/mounted/attack_self(mob/user as mob)
	user.drop_from_inventory(src)


/obj/item/melee/powerfist/mounted/use_before(atom/target, mob/living/user, click_parameters)
	if (user.a_intent == I_HELP || !istype(target, /obj/machinery/door/airlock))
		return FALSE

	var/obj/machinery/door/airlock/A = target

	if (A.operating)
		return FALSE

	if (A.locked)
		to_chat(user, SPAN_WARNING("The airlock's bolts prevent it from being forced."))
		return TRUE

	if (A.welded)
		A.visible_message(SPAN_DANGER("\The [user] forces the fingers of \the [src] in through the welded metal, beginning to pry \the [A] open!"))
		if (do_after(user, 11 SECONDS, A, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS) && !A.locked)
			A.welded = FALSE
			A.update_icon()
			playsound(A, 'sound/effects/bang.ogg', 100, 1)
			playsound(A, 'sound/machines/airlock_creaking.ogg', 100, 1)
			A.visible_message(SPAN_DANGER("\The [user] tears \the [A] open with \a [src]!"))
			addtimer(new Callback(A, /obj/machinery/door/airlock/.proc/open, TRUE), 0)
			A.set_broken(TRUE)
		return TRUE
	else
		A.visible_message(SPAN_DANGER("\The [user] pries the fingers of \a [src] in, beginning to force \the [A]!"))
		if ((MACHINE_IS_BROKEN(A) || !A.is_powered() || do_after(user, 8 SECONDS, A, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS)) && !(A.operating || A.welded || A.locked))
			playsound(A, 'sound/machines/airlock_creaking.ogg', 100, 1)
			if (A.density)
				addtimer(new Callback(A, /obj/machinery/door/airlock/.proc/open, TRUE), 0)
				if(!MACHINE_IS_BROKEN(A) && A.is_powered())
					A.set_broken(TRUE)
				A.visible_message(SPAN_DANGER("\The [user] forces \the [A] open with \a [src]!"))
			else
				addtimer(new Callback(A, /obj/machinery/door/airlock/.proc/close, TRUE), 0)
				if (!MACHINE_IS_BROKEN(A) && A.is_powered())
					A.set_broken(TRUE)
				A.visible_message(SPAN_DANGER("\The [user] forces \the [A] closed with \a [src]!"))
		return TRUE

// 40k melee

/*
// A breakdown for how force works. The default material steel -- 1000 is the multiplier.
Your force divisor(unwielded) or force multiplier(wielded) is * against 100. Which gives you total force damage. E.G. Hardness 100 and unwielded divisor of .5 would mean force 50.
To find relevant hardness use VSC Search[hardness = ] to find material values.
Steel = 1000 / Ceramite = 120 / Ceramite Plasteel = 140

All weapons should use twohanded/warhammer -- otherwise it will break.
	*/

/obj/item/material/twohanded/warhammer
	name = "You shouldn't see this"
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "mekmace"
	item_state = "mekmace"
	applies_material_name = FALSE
	var/wielded_item_state // For two handed icon. Only add if it has it.
	applies_material_colour = 0
	sharp = FALSE // For decap chance.
	edge = FALSE // If blunt set to FALSE. Otherwise TRUE.

/obj/item/material/twohanded/warhammer/on_update_icon()
	..()
	if(wielded_item_state)
		icon_state = "[icon_state]"
		item_state_slots[slot_l_hand_str] = wielded_item_state
		item_state_slots[slot_r_hand_str] = wielded_item_state
		item_state_slots[slot_back_str] = icon_state
	else
		icon_state = "[icon_state]"
		item_state_slots[slot_l_hand_str] = initial(item_state)
		item_state_slots[slot_r_hand_str] = initial(item_state)
		item_state_slots[slot_back_str] = icon_state

/obj/item/material/twohanded/warhammer/orkmace
	name = "Scrap Mace"
	desc = "A mace normally used by the ork meks, made of scrap."
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "mekmace"
	item_state = "mekmace"
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "poked", "jabbed", "torn", "gored")
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BELT
	max_force = 45
	force_multiplier = 0.39 // 39 Force with hardness 100 (steel)
	unwielded_force_divisor = 0.35
	thrown_force_multiplier = 0.28
	armor_penetration = 8 // Ork Magic.
	throw_speed = 3
	edge = TRUE
	sharp = TRUE // Ork mace so big it make head go bye bye.
	default_material = MATERIAL_STEEL
	does_spin = TRUE // Does it spin when thrown?
	base_parry_chance = 15 // Ork parry should come from species code.
	wielded_parry_bonus = 0 // Orks don't two hand melee.
	attack_cooldown_modifier = 0.5 // Negative value is faster. High value is slower.
	melee_accuracy_bonus = 10 // Too big to miss.

/obj/item/material/twohanded/warhammer/orkmace/New() // Waagh speed
	..()
	slowdown_per_slot[slot_r_hand] = -0.1
	slowdown_per_slot[slot_l_hand] = -0.1

/obj/item/material/twohanded/warhammer/lashoftorment
	name = "Lash Of Torment"
	desc = "Made up of lascivious coils and barbed hooks, a Lash of Torment moves with a mind of its own."
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "lash"
	item_state = "lash"
	hitsound = 'sound/weapons/whip.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 5)
	attack_verb = list("flicked", "whipped", "lashed")
	max_force = 38
	force_multiplier = 0.33
	unwielded_force_divisor = 0.31
	thrown_force_multiplier = 0.25
	armor_penetration = 7 // Chaos Magic.
	throw_speed = 4
	edge = TRUE
	sharp = TRUE
	default_material = MATERIAL_STEEL
	does_spin = TRUE
	base_parry_chance = 15
	wielded_parry_bonus = 10
	attack_cooldown_modifier = 0.3 // Negative value is faster. High value is slower.
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/warhammer/lashoftorment/New() // Magic
	..()
	slowdown_per_slot[slot_r_hand] = -0.1
	slowdown_per_slot[slot_l_hand] = -0.1

/obj/item/material/twohanded/warhammer/lashoftorment/apply_hit_effect(mob/living/target, mob/living/user, hit_zone)
	if(usr.gender == MALE)
		playsound(usr.loc, 'sound/voice/Screams_Male_3.ogg', 100, 1, 1)
	else if(usr.gender == FEMALE)
		playsound(usr.loc, 'sound/voice/Screams_Woman_1.ogg', 100, 1, 1)
	if (prob(50))
		user.visible_message(SPAN_DANGER("[user] painfully whips [target], leaving an alien mark on their back!"))
		user.do_attack_animation(target)

		var/blocked = target.get_blocked_ratio(hit_zone, DAMAGE_BURN, damage = 10)
		target.Weaken(rand(0-6) * (1 - blocked))
		target.apply_damage(20, DAMAGE_BURN, hit_zone, src)
		return 1


	return ..()
/*
#define EFFECT_STUN     "stun"
#define EFFECT_WEAKEN   "weaken"
#define EFFECT_PARALYZE "paralize"
#define EFFECT_STUTTER  "stutter"
#define EFFECT_EYE_BLUR "eye_blur"
#define EFFECT_DROWSY   "drowsy"
#define EFFECT_PAIN     "pain" // These are ur melee effects
	*/
