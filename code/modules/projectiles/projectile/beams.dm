/obj/item/projectile/beam
	name = "laser"
	icon_state = "laser"
	temperature = T0C + 300
	fire_sound='sound/weapons/Laser.ogg'
	impact_sounds = list(BULLET_IMPACT_MEAT = SOUNDS_LASER_MEAT, BULLET_IMPACT_METAL = SOUNDS_LASER_METAL)
	pass_flags = PASS_FLAG_TABLE
	damage = 40
	damage_type = DAMAGE_BURN
	sharp = TRUE
	damage_flags = DAMAGE_FLAG_LASER
	eyeblur = 4
	hitscan = TRUE
	invisibility = INVISIBILITY_ABSTRACT	//beam projectiles are invisible as they are rendered by the effect engine
	penetration_modifier = 0.3
	distance_falloff = 1.5
	damage_falloff = TRUE
	var/mob_passthrough_checker = 0
	damage_falloff_list = list(
		list(3, 0.95),
		list(5, 0.90),
		list(7, 0.80),
	)

	muzzle_type = /obj/projectile/laser/muzzle
	tracer_type = /obj/projectile/laser/tracer
	impact_type = /obj/projectile/laser/impact

/obj/item/projectile/beam/attack_mob(mob/living/target_mob, distance, miss_modifier)
	if(penetrating > 0 && damage > 20 && prob(damage))
		mob_passthrough_checker = 1
	else
		mob_passthrough_checker = 0
	. = ..()

	if(. == 1 && iscarbon(target_mob))
		damage *= 0.7 //squishy mobs absorb Heat

/obj/item/projectile/beam/check_penetrate(atom/A)
	if(QDELETED(A) || !A.density) return 1 //if whatever it was got destroyed when we hit it, then I guess we can just keep going

	if(ismob(A))
		if(!mob_passthrough_checker)
			return 0
		return 1

	var/chance = damage
	if(has_extension(A, /datum/extension/penetration))
		var/datum/extension/penetration/P = get_extension(A, /datum/extension/penetration)
		chance = P.PenetrationProbability(chance, damage, damage_type)

	if(prob(chance))
		if(A.opacity)
			//display a message so that people on the other side aren't so confused
			A.visible_message(SPAN_WARNING("\The [src] pierces through \the [A]!"))
		return 1

	return 0

/obj/item/projectile/beam/practice
	fire_sound = 'sound/weapons/Taser.ogg'
	damage = 0
	eyeblur = 2

/obj/item/projectile/beam/smalllaser
	damage = 35
	armor_penetration = 10
	distance_falloff = 2
	damage_falloff_list = list(
		list(5, 0.87),
		list(7, 0.67),
	)

/obj/item/projectile/beam/midlaser
	damage = 40
	armor_penetration = 15
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun
	icon_state = "laser"
	fire_sound = 'sound/warhammer/gunshot/lasgun2.ogg'
	damage = 50
	armor_penetration = 22
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/weak
	icon_state = "laser"
	fire_sound = 'sound/warhammer/gunshot/lasgun1.ogg'
	damage = 41
	armor_penetration = 22
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/overcharge // Overcharge rule is you add +10/20(Kantrael/Longlas) to charge cost in exchange for standard overcharge increase.
	icon_state = "heavylaser"
	fire_sound = 'sound/warhammer/gunshot/lasgun3.ogg'
	damage = 60
	armor_penetration = 35
	penetration_modifier = 0.5
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/lucius
	icon_state = "laser"
	fire_sound = 'sound/warhammer/gunshot/lasgun2.ogg'
	damage = 54
	armor_penetration = 30
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/lucius/overcharge
	icon_state = "laser"
	fire_sound = 'sound/warhammer/gunshot/lasgun2.ogg'
	damage = 66
	armor_penetration = 33
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/hotshot
	icon_state = "heavylaser"
	fire_sound = 'sound/warhammer/gunshot/lasgun3.ogg'
	damage = 61
	armor_penetration = 33
	penetration_modifier = 0.5
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/hotshot/overcharge
	icon_state = "heavylaser"
	fire_sound = 'sound/warhammer/gunshot/lasgun3.ogg'
	damage = 71
	armor_penetration = 35
	penetration_modifier = 0.5
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/lasgun/longlas
	icon_state = "heavylaser"
	fire_sound = 'sound/warhammer/gunshot/lasgun3.ogg'
	damage = 81
	armor_penetration = 35
	penetration_modifier = 0.5
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)
/obj/item/projectile/beam/lasgun/longlas/overcharge
	icon_state = "heavylaser"
	fire_sound = 'sound/warhammer/gunshot/lasgun3.ogg'
	damage = 96
	armor_penetration = 40
	penetration_modifier = 0.5
	distance_falloff = 1
	damage_falloff_list = list(
		list(6, 0.98),
		list(8, 0.92),
	)

/obj/item/projectile/beam/incendiary_laser
	name = "volkite laser blast"
	icon_state = "beam_incen"
	fire_sound= 'sound/warhammer/gunshot/lasgun3.ogg'
	damage = 66
	agony = 8
	eyeblur = 8
	damage_flags = 0
	life_span = 5
	armor_penetration = 40
	damage_falloff_list = list(
		list(3, 0.90), // Distance, Damage Multiplier. E.G. Distance of 3 or more means 0.90 damage mult.
		list(5, 0.80),
		list(7, 0.70),
	)

	muzzle_type = /obj/projectile/incen/muzzle
	tracer_type = /obj/projectile/incen/tracer
	impact_type = /obj/projectile/incen/impact

/obj/item/projectile/beam/incendiary_laser/on_hit(atom/target, blocked = 0)
	..()
	if(isliving(target))
		var/mob/living/L = target
		L.adjust_fire_stacks(rand(4,6))
		if(L.fire_stacks >= 3)
			L.IgniteMob()

/obj/item/projectile/beam/heavylaser
	name = "heavy laser"
	icon_state = "heavylaser"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'
	damage = 66
	armor_penetration = 30
	distance_falloff = 0.5
	penetration_modifier = 0.5
	damage_falloff_list = list(
		list(6, 0.97),
		list(9, 0.94),
		list(11, 0.88),
	)

	muzzle_type = /obj/projectile/laser/heavy/muzzle
	tracer_type = /obj/projectile/laser/heavy/tracer
	impact_type = /obj/projectile/laser/heavy/impact

/obj/item/projectile/beam/xray
	name = "x-ray beam"
	icon_state = "xray"
	fire_sound = 'sound/weapons/laser3.ogg'
	damage = 37
	armor_penetration = 30
	distance_falloff = 1.5
	damage_falloff_list = list(
		list(3, 0.95),
		list(5, 0.90),
		list(7, 0.80),
	)

	muzzle_type = /obj/projectile/laser/xray/muzzle
	tracer_type = /obj/projectile/laser/xray/tracer
	impact_type = /obj/projectile/laser/xray/impact

/obj/item/projectile/beam/xray/midlaser
	damage = 35
	armor_penetration = 50
	distance_falloff = 1
	damage_falloff_list = list(
		list(4, 0.96),
		list(6, 0.92),
		list(8, 0.84),
	)

/obj/item/projectile/beam/pulse
	name = "pulse"
	icon_state = "u_laser"
	fire_sound='sound/weapons/pulse.ogg'
	damage = 25 //lower damage, but fires in bursts
	armor_penetration = 25
	distance_falloff = 1.5
	damage_falloff_list = list(
		list(3, 0.95),
		list(5, 0.90),
		list(7, 0.80),
	)

	muzzle_type = /obj/projectile/laser/pulse/muzzle
	tracer_type = /obj/projectile/laser/pulse/tracer
	impact_type = /obj/projectile/laser/pulse/impact

/obj/item/projectile/beam/pulse/mid
	damage = 35
	armor_penetration = 30
	distance_falloff = 1
	damage_falloff_list = list(
		list(4, 0.96),
		list(6, 0.92),
		list(8, 0.84),
	)

/obj/item/projectile/beam/pulse/heavy
	damage = 35
	armor_penetration = 35
	distance_falloff = 0.5
	damage_falloff_list = list(
		list(6, 0.97),
		list(9, 0.94),
		list(11, 0.88),
	)

/obj/item/projectile/beam/pulse/destroy
	name = "destroyer pulse"
	damage = 70 //badmins be badmins I don't give a fuck
	armor_penetration = 40
	damage_falloff_list = list(
		list(6, 0.99),
		list(9, 0.98),
		list(11, 0.97),
	)

/obj/item/projectile/beam/pulse/skrell
	icon_state = "pu_laser"
	damage = 30
	muzzle_type = /obj/projectile/laser/pulse/skrell/muzzle
	tracer_type = /obj/projectile/laser/pulse/skrell/tracer
	impact_type = /obj/projectile/laser/pulse/skrell/impact

/obj/item/projectile/beam/pulse/skrell/heavy
	damage = 40

/obj/item/projectile/beam/pulse/skrell/single
	damage = 60

/obj/item/projectile/beam/emitter
	name = "emitter beam"
	icon_state = "emitter"
	fire_sound = 'sound/weapons/emitter.ogg'
	damage = 0 // The actual damage is computed in `/obj/machinery/power/emitter/proc/get_emitter_damage()`

	muzzle_type = /obj/projectile/laser/emitter/muzzle
	tracer_type = /obj/projectile/laser/emitter/tracer
	impact_type = /obj/projectile/laser/emitter/impact

/obj/item/projectile/beam/lastertag/blue
	name = "lasertag beam"
	icon_state = "bluelaser"
	pass_flags = PASS_FLAG_TABLE | PASS_FLAG_GLASS | PASS_FLAG_GRILLE
	damage = 0
	no_attack_log = TRUE
	damage_type = DAMAGE_BURN

	muzzle_type = /obj/projectile/laser/blue/muzzle
	tracer_type = /obj/projectile/laser/blue/tracer
	impact_type = /obj/projectile/laser/blue/impact

/obj/item/projectile/beam/lastertag/blue/on_hit(atom/target, blocked = 0)
	if(istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/M = target
		if(istype(M.wear_suit, /obj/item/clothing/suit/redtag))
			M.Weaken(5)
	return 1

/obj/item/projectile/beam/lastertag/red
	name = "lasertag beam"
	icon_state = "laser"
	pass_flags = PASS_FLAG_TABLE | PASS_FLAG_GLASS | PASS_FLAG_GRILLE
	damage = 0
	no_attack_log = TRUE
	damage_type = DAMAGE_BURN

/obj/item/projectile/beam/lastertag/red/on_hit(atom/target, blocked = 0)
	if(istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/M = target
		if(istype(M.wear_suit, /obj/item/clothing/suit/bluetag))
			M.Weaken(5)
	return 1

/obj/item/projectile/beam/lastertag/omni//A laser tag bolt that stuns EVERYONE
	name = "lasertag beam"
	icon_state = "omnilaser"
	pass_flags = PASS_FLAG_TABLE | PASS_FLAG_GLASS | PASS_FLAG_GRILLE
	damage = 0
	damage_type = DAMAGE_BURN

	muzzle_type = /obj/projectile/laser/omni/muzzle
	tracer_type = /obj/projectile/laser/omni/tracer
	impact_type = /obj/projectile/laser/omni/impact

/obj/item/projectile/beam/lastertag/omni/on_hit(atom/target, blocked = 0)
	if(istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/M = target
		if((istype(M.wear_suit, /obj/item/clothing/suit/bluetag))||(istype(M.wear_suit, /obj/item/clothing/suit/redtag)))
			M.Weaken(5)
	return 1

/obj/item/projectile/beam/sniper
	name = "sniper beam"
	icon_state = "xray"
	fire_sound = 'sound/weapons/marauder.ogg'
	damage = 55
	penetration_modifier = 0.5
	armor_penetration = 20
	damage_falloff_list = null

	muzzle_type = /obj/projectile/laser/xray/muzzle
	tracer_type = /obj/projectile/laser/xray/tracer
	impact_type = /obj/projectile/laser/xray/impact

/obj/item/projectile/beam/stun
	name = "stun beam"
	icon_state = "stun"
	fire_sound = 'sound/weapons/Taser.ogg'
	damage_flags = 0
	sharp = FALSE
	damage = 1//flavor burn! still not a laser, dmg will be reduce by energy resistance not laser resistances
	damage_type = DAMAGE_BURN
	eyeblur = 1//Some feedback that you've been hit
	agony = 40
	distance_falloff = 1.5
	damage_falloff_list = list(
		list(3, 0.95),
		list(5, 0.90),
		list(7, 0.80),
	)

	muzzle_type = /obj/projectile/stun/muzzle
	tracer_type = /obj/projectile/stun/tracer
	impact_type = /obj/projectile/stun/impact

/obj/item/projectile/beam/stun/smalllaser
	distance_falloff = 2
	damage_falloff_list = list(
		list(3, 0.90),
		list(5, 0.80),
		list(7, 0.60),
	)

/obj/item/projectile/beam/stun/heavy
	name = "heavy stun beam"
	damage = 2
	agony = 70
	distance_falloff = 1
	damage_falloff_list = list(
		list(5, 0.97),
		list(7, 0.94),
		list(9, 0.88),
	)

/obj/item/projectile/beam/stun/shock
	name = "shock beam"
	agony = 0
	damage = 15
	damage_type = DAMAGE_SHOCK
	fire_sound='sound/weapons/pulse.ogg'
	distance_falloff = 1.5
	damage_falloff_list = list(
		list(3, 0.95),
		list(5, 0.90),
		list(7, 0.80),
	)

/obj/item/projectile/beam/stun/shock/smalllaser
	distance_falloff = 2
	damage_falloff_list = list(
		list(3, 0.90),
		list(5, 0.80),
		list(7, 0.60),
	)

/obj/item/projectile/beam/stun/shock/heavy
	name = "heavy shock beam"
	damage = 40
	distance_falloff = 1
	damage_falloff_list = list(
		list(5, 0.97),
		list(7, 0.94),
		list(9, 0.88),
	)

/obj/item/projectile/beam/plasmacutter
	name = "plasma arc"
	icon_state = "omnilaser"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	damage = 35
	armor_penetration = 30
	edge = TRUE
	damage_type = DAMAGE_BURN
	life_span = 5
	pass_flags = PASS_FLAG_TABLE
	distance_falloff = 2
	damage_falloff_list = list(
		list(2, 0.80),
		list(3, 0.60),
		list(4, 0.40),
	)

	muzzle_type = /obj/projectile/trilaser/muzzle
	tracer_type = /obj/projectile/trilaser/tracer
	impact_type = /obj/projectile/trilaser/impact

/obj/item/projectile/beam/plasmacutter/on_impact(atom/A)
	if(istype(A, /turf/simulated/mineral))
		var/turf/simulated/mineral/M = A
		M.GetDrilled(1)
	. = ..()

/obj/item/projectile/beam/confuseray
	name = "disorientator ray"
	icon_state = "beam_grass"
	fire_sound='sound/weapons/confuseray.ogg'
	damage = 2
	agony = 7
	sharp = FALSE
	distance_falloff = 5
	damage_flags = 0
	damage_type = DAMAGE_STUN
	life_span = 3
	penetration_modifier = 0.4
	var/potency_min = 4
	var/potency_max = 6

	muzzle_type = /obj/projectile/confuseray/muzzle
	tracer_type = /obj/projectile/confuseray/tracer
	impact_type = /obj/projectile/confuseray/impact

/obj/item/projectile/beam/confuseray/on_hit(atom/target, blocked = 0)
	if(istype(target, /mob/living))
		var/mob/living/L = target
		var/potency = rand(potency_min, potency_max)
		L.mod_confused(potency)
		L.eye_blurry += potency
		if(L.is_confused(10))
			L.Stun(1)
			L.drop_l_hand()
			L.drop_r_hand()

	return 1

/obj/item/projectile/beam/particle
	name = "particle lance"
	icon_state = "particle"
	damage = 45
	armor_penetration = 50
	muzzle_type = /obj/projectile/laser_particle/muzzle
	tracer_type = /obj/projectile/laser_particle/tracer
	impact_type = /obj/projectile/laser_particle/impact
	penetration_modifier = 0.8

/obj/item/projectile/beam/particle/small
	name = "particle beam"
	damage = 40
	armor_penetration = 20
	penetration_modifier = 0.6

/obj/item/projectile/beam/darkmatter
	name = "dark matter bolt"
	icon_state = "darkb"
	damage = 50
	armor_penetration = 35
	damage_type = DAMAGE_BRUTE
	muzzle_type = /obj/projectile/darkmatter/muzzle
	tracer_type = /obj/projectile/darkmatter/tracer
	impact_type = /obj/projectile/darkmatter/impact

/obj/item/projectile/beam/stun/darkmatter
	name = "dark matter wave"
	icon_state = "darkt"
	damage_flags = 0
	sharp = FALSE
	agony = 50
	damage_type = DAMAGE_STUN
	muzzle_type = /obj/projectile/stun/darkmatter/muzzle
	tracer_type = /obj/projectile/stun/darkmatter/tracer
	impact_type = /obj/projectile/stun/darkmatter/impact

/obj/item/projectile/beam/pointdefense
	name = "point defense salvo"
	icon_state = "laser"
	damage = 15
	armor_penetration = 10
	damage_type = DAMAGE_BURN //You should be safe inside a voidsuit
	sharp = FALSE //"Wide" spectrum beam
	muzzle_type = /obj/projectile/pointdefense/muzzle
	tracer_type = /obj/projectile/pointdefense/tracer
	impact_type = /obj/projectile/pointdefense/impact

/obj/item/projectile/beam/blue
	damage = 30

	muzzle_type = /obj/projectile/laser/blue/muzzle
	tracer_type = /obj/projectile/laser/blue/tracer
	impact_type = /obj/projectile/laser/blue/impact

/obj/item/projectile/beam/xenofauna
	damage = 0
	agony = 5

	muzzle_type = /obj/projectile/xenofauna/muzzle
	tracer_type = /obj/projectile/xenofauna/tracer
	impact_type = /obj/projectile/xenofauna/impact

/obj/projectile/xenofauna
	light_color = COLOR_RED_LIGHT

/obj/projectile/xenofauna/tracer
	icon_state = "redstun"

/obj/projectile/xenofauna/muzzle
	icon_state = "muzzle_redstun"

/obj/projectile/xenofauna/impact
	icon_state = "impact_redstun"


/obj/item/projectile/beam/xenofauna/on_hit(atom/target, blocked)
	..()
	if (!istype(target, /mob/living/simple_animal))
		return
	if (istype(target, /mob/living/simple_animal/hostile/human))
		return
	target.damage_health(35, DAMAGE_BURN)
