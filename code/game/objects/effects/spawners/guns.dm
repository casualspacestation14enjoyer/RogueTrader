/obj/random/lilgun
	name = "Random Light Weapon"
	desc = "This is a random sidearm."
	icon = 'icons/obj/guns/pistol.dmi'
	icon_state = "secguncomp"

/obj/random/lilgun/spawn_choices()
	return list(/obj/item/gun/projectile/pistol/slug,
				/obj/item/gun/energy/lasgun/laspistol/militarum,
				/obj/item/gun/energy/stunrevolver,
				/obj/item/gun/projectile/shotgun/doublebarrel/sawn,
				/obj/item/gun/projectile/automatic/radcarbine/radpistol,
				/obj/item/gun/energy/tau/pulsepistol,
				/obj/item/gun/energy/plasmacutter,
				/obj/item/gun/energy/lasgun/hotshot/volkite,
				/obj/item/gun/projectile/automatic/autogun,
				/obj/item/gun/projectile/pistol/holdout,
				/obj/item/gun/projectile/revolver/imperial,
				/obj/item/gun/projectile/revolver/imperial,
				/obj/item/gun/energy/lasgun/laspistol/grim,
				/obj/item/gun/projectile/pistol/slug/old,
				/obj/item/gun/energy/ionrifle/small
	)

/obj/random/biggun
	name = "Random Heavy Weapon"
	desc = "This is a random rifle."
	icon = 'icons/obj/guns/assault_rifle.dmi'
	icon_state = "arifle"

/obj/random/biggun/spawn_choices()
	return list(/obj/item/gun/projectile/automatic/radcarbine/radpistol,
				/obj/item/gun/energy/lasgun/kantrael,
				/obj/item/gun/energy/tau/pulsepistol,
				/obj/item/gun/energy/tau/pulsepistol,
				/obj/item/gun/energy/lasgun/triplex,
				/obj/item/gun/projectile/shotgun/pump/voxlegis/magrave,
				/obj/item/gun/projectile/automatic/radcarbine,
				/obj/item/gun/projectile/automatic/slugrifle,
				/obj/item/gun/projectile/heavysniper/boltaction/imperial/triangong,
				/obj/item/gun/projectile/heavysniper/boltaction/imperial/triangong,
				/obj/item/gun/projectile/automatic/autogun/a80,
				/obj/item/gun/projectile/automatic/autogun/valhalla,
				/obj/item/gun/energy/crossbow/largecrossbow,
				/obj/item/gun/projectile/shotgun/pump/voxlegis,
				/obj/item/gun/energy/plasma,
				/obj/item/gun/projectile/shotgun/pump
	)
