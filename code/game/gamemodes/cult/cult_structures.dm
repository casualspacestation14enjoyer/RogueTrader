/obj/structure/cult
	density = TRUE
	anchored = TRUE
	icon = 'icons/obj/cult.dmi'

/obj/structure/cult/talisman
	name = "Altar"
	desc = "A bloodstained altar dedicated to Nar-Sie."
	icon_state = "talismanaltar"


/obj/structure/cult/forge
	name = "Daemon forge"
	desc = "A forge used in crafting the unholy weapons used by the armies of Nar-Sie."
	icon_state = "forge"

/obj/structure/cult/pylon
	name = "pylon"
	desc = "A floating crystal that hums with an unearthly energy."
	icon = 'icons/obj/structures/pylon.dmi'
	icon_state = "pylon"
	light_power = 0.5
	light_range = 13
	light_color = "#3e0000"
	health_max = 200
	health_min_damage = 4
	damage_hitsound = 'sound/effects/Glasshit.ogg'


/obj/structure/cult/pylon/use_tool(obj/item/tool, mob/user, list/click_params)
	// Cult Builder - Repair pylon
	if (istype(tool, /obj/item/natural_weapon/cult_builder))
		if (!health_damaged())
			USE_FEEDBACK_FAILURE("\The [src] does not need repairs.")
			return TRUE
		user.visible_message(
			SPAN_NOTICE("\The [user] mends some of the cracks on \the [src]."),
			SPAN_NOTICE("You repair some of \the [src]'s damage.")
		)
		restore_health(5)
		return TRUE

	return ..()


/obj/structure/cult/tome
	name = "Desk"
	desc = "A desk covered in arcane manuscripts and tomes in unknown languages. Looking at the text makes your skin crawl."
	icon_state = "tomealtar"

//sprites for this no longer exist	-Pete
//(they were stolen from another game anyway)
/*
/obj/structure/cult/pillar
	name = "Pillar"
	desc = "This should not exist."
	icon_state = "pillar"
	icon = 'magic_pillar.dmi'
*/

/obj/gateway
	name = "gateway"
	desc = "You're pretty sure that abyss is staring back."
	icon = 'icons/effects/64x64.dmi'
	icon_state = "portal"
	pixel_x = -16
	pixel_y = -16
	plane = EFFECTS_ABOVE_LIGHTING_PLANE
	density = TRUE
	unacidable = TRUE
	anchored = TRUE
	var/spawnable = null

/obj/gateway/active
	light_range=5
	light_color="#ff0000"
	spawnable=list(
		/mob/living/simple_animal/hostile/scarybat,
		/mob/living/simple_animal/hostile/creature,
		/mob/living/simple_animal/hostile/faithless
	)

/obj/gateway/active/cult
	light_color="#ff0000"
	spawnable=list(
		/mob/living/simple_animal/hostile/scarybat/cult,
		/mob/living/simple_animal/hostile/creature/cult,
		/mob/living/simple_animal/hostile/faithless/cult
	)

/obj/gateway/active/New()
	..()
	addtimer(new Callback(src, .proc/create_and_delete), rand(30,60) SECONDS)


/obj/gateway/active/proc/create_and_delete()
	var/t = pick(spawnable)
	new t(src.loc)
	qdel(src)

/obj/gateway/active/Crossed(atom/A)
	if(!istype(A, /mob/living))
		return

	var/mob/living/M = A

	if(M.stat != DEAD)
		if(M.HasMovementHandler(/datum/movement_handler/mob/transformation))
			return
		if(M.has_brain_worms())
			return //Borer stuff - RR

		if(iscultist(M)) return
		if(!ishuman(M) && !isrobot(M)) return

		M.AddMovementHandler(/datum/movement_handler/mob/transformation)
		M.icon = null
		M.ClearOverlays()
		M.set_invisibility(INVISIBILITY_ABSTRACT)

		if(istype(M, /mob/living/silicon/robot))
			var/mob/living/silicon/robot/Robot = M
			if(Robot.mmi)
				qdel(Robot.mmi)
		else
			for(var/obj/item/W in M)
				M.drop_from_inventory(W)
				if(istype(W, /obj/item/implant))
					qdel(W)

		var/mob/living/new_mob = new /mob/living/simple_animal/passive/corgi(A.loc)
		new_mob.a_intent = I_HURT
		if(M.mind)
			M.mind.transfer_to(new_mob)
		else
			new_mob.key = M.key

		to_chat(new_mob, "<B>Your form morphs into that of a corgi.</B>")//Because we don't have cluwnes
